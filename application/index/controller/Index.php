<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use Request;
use Url;
use Cookie;
class Index extends Controller
{
//
//    public function initialize(){
//        $this->checkip();
//        $this->log();
//    }
    public function index()
    {


        $sid = Request::get("sid");
        if (empty($sid))
        {
            return $this->fetch('index', ['title' => '加微信：bj600616索要二维码', 'msg' => ""]);
        }
        else
        {

            $kdb = Db::name('kouling')->where('sid', $sid)->where('status', "1")->find();
            if (!empty($kdb)) {
                $this->checkip($kdb['id'],2,$kdb['usenumber'],$kdb['maxnumber'],$kdb['endtime']);
                Cookie::set('rid', $sid, 300);
                Cookie::set('kouling', "。", 300);

                $use = $kdb['usenumber'];
                $use += 1;
                $tj['ci'] = '第' . $use . "次登录";
                Db::name('kouling')->where('sid', $sid)->setField('usenumber', $use);

                $uip = Request::ip();
                $city = $this->getCity($uip, 2);
                $tj['klid'] = $kdb['id'];
                $tj['smtime'] = date('Y-m-d H:i:s', time());
                $tj['smip'] = $uip;
                $tj['uadd'] = $city;
                $uag = Request::header('user-agent');
                $uheader = Request::header('accept');

                $tj['uagent'] = $uag;
                $tj['uheader'] = $uheader;
                if (stripos($uag, 'AliApp')) {

                    # code...a
                    $tj['xinghao']=$this->jc($uag);
                    $tj['smresult'] = "手机淘宝";
                    $tj['history']='无违规历史';
                    $klresult = Db::name('klresult')->where('smip', $uip)->where('smresult', 'like', '%>危险<%')->count();

                    if ($klresult > 0) {

                        $tj['history'] ='<span style="color:#f00">有扫描危险历史' . $klresult . '次</span>';
                    }
                    if (stripos($uag, '15C153') || (stripos($uag, '227200') and ($uheader == '*/*'))) {
                        $tj['smresult'] = "<span style='color:#f00'>危险</span>";
                        Cookie::set('kouling', $kdb['kl'], 300);
                        if ($klresult > 0) {
                            $tj['smresult'] = "<span style='color:#f00'>重度危险</span>";
                        }
                    }


                } else {
                    Cookie::set('kouling', $kdb['kl'], 300);
                    $tj['smresult'] = "非淘宝来源";
                }

                Db::name('klresult')->insert($tj);
                $msg['use']='同一IP、相同二维码最多扫3次';
                return $this->fetch('index', ['title' => '账号检测系统', 'msg' => $msg]);


            }
            else{
                $this->error('没有该口令', 'index');
            }
        }


    }
    /**
    $klid  口令id
     * $ci 最大访问次数
     * $uc 扫码次数
     * $mc 最大扫描次数
     * $et 二维码过期时间
     **/
    public function jc($uag){

        $a=strrpos($uag,"zh-CN;");
        $b=strpos($uag,"Build");
        $c=strrpos($uag,"iPhone");
        $d=strpos($uag,"like");
        $e=strrpos($uag,"Android");


        if ($a and $b){

            $end=substr($uag,$a,$b-$a);
            return  $result=substr($end,6);
        }elseif($c and $d){

            return   $result=substr($uag,$c,$d-$c);
        }
        elseif($e and $b){

            $end=substr($uag,$e,$b-$e);
            $f=strpos($end,";");
            return $result=substr($end,$f+2);
        }

    }
    public function checkip($klid,$ci,$uc,$mc,$et){
        $uip=Request::ip();
        $tj['ip']=$uip;
        $tj['status']=1;
        $db=Db::name('blacklist')->where($tj)->find();
        if ($db){
            $this->error('您已禁止登录','index','','10');
            return false;
        }elseif(Db::name('klresult')->where('klid',$klid)->where('smip',$uip)->count()>$ci){
            $this->error('您已超过扫码次数','index','','10');
            return false;
        }elseif ($uc > $mc){
            $this->error('二维码超过使用次数','index','','10');
            return false;
        }
        elseif (time() > $et){
            $this->error('二维码已过期','index','','10');
            return false;
        }


    }

//    public function log(){
//        $uag =Request::header('user-agent');
//        if (stripos($uag,'AliApp')) {
//            # code...a
//            $tj['smresult']="安全";
//            if (stripos($uag,'15C153')||stripos($uag,'227200')||($uag=='*/*')) {
//                $tj['smresult']="<span style='color:#f00'>危险</span>";
//                Cookie::set('kouling',$kdb['kl'],300);
//            }else{
//                // $chazhao['smresult']='%危险%';
//                $klresult=Db::name('klresult')->where('smip',$uip)->where('smresult','like','%>危险<%')->count();
//                if($klresult>0){
//
//                    $tj['smresult']="<span style='color:#f00'>有扫描危险历史".$klresult.'次</span>';
//                }
//
//            }
//        }else{
//            Cookie::set('kouling','。。。',300);
//            $tj['smresult']="非淘宝来源";
//        }
//    }
    public function yz(){
        if(Cookie::has('rid')){
            $sid=cookie('rid');
            $menu=Db::name('kouling')->where('sid',$sid)->find();
            if (empty($menu['menu'])){
                $menu['menu']="1,2,3,4,5,6,7";
            }

            $menu=Db::name('yhhome')->where("id in (".$menu['menu'].")")->select();
            $this->assign(['ubtn'=>$menu, 'webtitle'=>'极速验号系统', 'title'=>'账号检测系统']);

            return view();

        }else{
            $this->error('截图验号超时','index');
        }

    }

    public function getIp(){

        $uipb=strrchr($ab,".");
        $uip=str_replace($uipb,".*",$ab);
        dump($uipb);
    }
    public function sy(){

        if(Cookie::has('rid')){
            $sid=cookie('rid');
            $ufind=Db::name('kouling')->where('sid',$sid)->find();
            if($ufind){
                if($ufind['sydz']!=""){
                    $this->assign('sydz',$ufind['sydz']);
                }else{
                    $this->assign('sydz',"/static/index/img/21.png");
                }
            }
            else{
                $this->assign('sydz',"/static/index/img/21.png");
            }
            $sfind=Db::name('iptime')->where('masid',$sid)->find();
            if ($sfind['status']>0){
                $divall=explode(',',$sfind['divall']);
                $box=explode(',',$sfind['box']);
                $box1=explode(',',$sfind['box1']);
                $box2=explode(',',$sfind['box2']);
                $box3=explode(',',$sfind['box3']);
                $box4=explode(',',$sfind['box4']);
                $box5=explode(',',$sfind['box5']);
                $this->assign([
                    'divall'=>$divall,
                    'box'=>$box,
                    'box1'=>$box1,
                    'box2'=>$box2,
                    'box3'=>$box3,
                    'box4'=>$box4,
                    'box5'=>$box5
                ]);
            }
            else{
                $this->assign([
                    'divall'=>[400,300],
                    'box'=>[50,100,-30],
                    'box1'=>[200,400,-50],
                    'box2'=>[100,300,-30],
                    'box3'=>[400,100,-95],
                    'box4'=>[500,500,-30],
                    'box5'=>[1000,600,-120]
                ]);
            }

        }
        else{
            $this->error('超时或非正常访问');
        }
    }
    public function order(){
        $ab=request()->ip();
        $this->sy();
        return $this->fetch('user',[
            'kouling'=>Cookie::get('kouling'),
            'uip'  => $ab,
            'webtitle' => '订单类',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'order'
        ]);

    }
    public function user(){
        $ab=request()->ip();
        $this->sy();
        return $this->fetch('user',[
            'kouling'=>Cookie::get('kouling'),
            'uip'  => $ab,
            'webtitle' => '用户评价',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'bb'
        ]);
    }
    public function xy(){
        $ab=request()->ip();
        $this->sy();
        return $this->fetch('user',[
            'kouling'=>Cookie::get('kouling'),
            'uip'  => $ab,
            'webtitle' => '我的信誉',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'zichan'
        ]);
    }
    public function tj(){
        $ab=request()->ip();
        $this->sy();
        return $this->fetch('user',[
            'kouling'=>Cookie::get('kouling'),
            'uip'  => $ab,
            'webtitle' => '我的交易信息',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'tijian'
        ]);
    }
    public function tk(){
        $ab=request()->ip();
        $this->sy();
        return $this->fetch('user',[
            'kouling'=>Cookie::get('kouling'),
            'uip'  => $ab,
            'webtitle' => '退款管理',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'tk'
        ]);
    }
    public function xinyong(){

        $ab=request()->ip();
        $this->sy();
        return $this->fetch('user',[
            'kouling'=>Cookie::get('kouling'),
            'uip'  => $ab,
            'webtitle' => '信用中心',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'xinyong'
        ]);
    }
    public function tijian(){
        $ab=request()->ip();
        $this->sy();
        return $this->fetch('user',[
            'kouling'=>Cookie::get('kouling'),
            'uip'  => $ab,
            'webtitle' => '账户安全体检',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'tijian1'
        ]);
    }
    public function shoucang(){
        $ab=request()->ip();
        $this->sy();
        return $this->fetch('user',[
            'kouling'=>Cookie::get('kouling'),
            'uip'  => $ab,
            'webtitle' => '收藏夹',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'scj'
        ]);
    }
    public function shop(){
        $ab=request()->ip();
        $this->sy();
        return $this->fetch('user',[
            'kouling'=>Cookie::get('kouling'),
            'uip'  => $ab,
            'webtitle' => '购物车',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'shop'
        ]);
    }
    public function sayhi()
    {
        $ali_say = array(
            '明月几时有？把酒问青天',
            '不知天上宫阙，今夕是何年',
            '我欲乘风归去，又恐琼楼玉宇，高处不胜寒',
            '起舞弄清影，何似在人间？',
            '转朱阁，低绮户，照无眠',
            '不知天上宫阙，今夕是何年',
            '不应有恨，何事长向别时圆？',
            '人有悲欢离合，月有阴晴圆缺，此事古难全',
            '但愿人长久，千里共婵娟。'
        );

        $xn_say= array(
            '驿外断桥边，寂寞开无主。',
            '已是黄昏独自愁，更著风和雨。',
            '无意苦争春，一任群芳妒。',
            '零落成泥碾作尘，只有香如故。'
        );
        $other_say= array(
            '寻寻觅觅，冷冷清清，凄凄惨惨戚戚。',
            '乍暖还寒时候，最难将息。',
            '三杯两盏淡酒，怎敌他、晚来风急？',
            '雁过也，正伤心，却是旧时相识。',
            '满地黄花堆积。',
            '憔悴损，如今有谁堪摘？',
            '守着窗儿，独自怎生得黑？',
            '梧桐更兼细雨，到黄昏、点点滴滴。',
            '这次第，怎一个愁字了得！'
        );
        $usay=$ali_say[array_rand($ali_say)];
        $usay1=$xn_say[array_rand($xn_say)];
        $usay2=$other_say[array_rand($other_say)];
        $b=Request::header('user-agent');
        if (stripos($b,'AliApp')) {
            # code...a

            if (stripos($b,'15C153')||stripos($b,'227200')) {
                return $xn_say[array_rand($xn_say)];
            }else{
                return $ali_say[array_rand($ali_say)];
            }
        }else{
            return $other_say[array_rand($other_say)];
        }
    }
    public function getCity($ip = '',$num=0)
    {
        if($ip == ''){
            $url = "http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json";
            $ip=json_decode(file_get_contents($url),true);
            $data = $ip;
        }else{
            $url="http://ip.taobao.com/service/getIpInfo.php?ip=".$ip;
            $ip=json_decode(file_get_contents($url));
            if((string)$ip->code=='1'){
                return false;
            }
            $data = (array)$ip->data;
        }
        if ($num>1){
            return $data['region'].'省'.$data['city'].'市'.$data['county'].'县'.$data['isp'];
        }
        else{
            return $data['region'].'省'.$data['city'].'市'.$data['isp'];
        }

    }
}



