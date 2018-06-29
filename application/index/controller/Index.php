<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use Request;
use Url;
class Index extends Controller
{
//

    public function index()
    {
//        $ulist=[
//            ['name'=>'我的评价（第一张）','add'=>url("user"),'style'=>'btn-info','uico'=>"glyphicon-user"],
//            ['name'=>'所有订单（第二张）','add'=>'order.html','style'=>'btn-primary','uico'=>"glyphicon-align-justify"],
//            ['name'=>'我的信誉（第三张）','add'=>'aa.php','style'=>'btn-success','uico'=>"glyphicon-heart-empty"],
//            ['name'=>'看淘气值（第四张）','add'=>'aa.php','style'=>'btn-warning','uico'=>"glyphicon-search"],
//            ['name'=>'退款管理（第五张）','add'=>'aa.php','style'=>'btn-warning','uico'=>"glyphicon-user"],
//            ['name'=>'信用中心（第六张）','add'=>'aa.php','style'=>'btn-danger','uico'=>"glyphicon-yen"]
//
//        ];
        if (Request::isGet()){
            $sid=Request::get("sid");

            $this->assign(['ubtn'=>"", 'webtitle'=>'LEUI验号系统', 'title'=>'非法访问','msg'=>""]);
            if ($sid){
                $kdb=Db::name('kouling')->where('sid',$sid)->where('status',"1")->find();

                if ($kdb){

                    if (($kdb['usenumber'] < $kdb['maxnumber'])&&(time()<$kdb['endtime'])){
                    $menu=Db::name('yhhome')->select();

                    $use=$kdb['usenumber'];
                    $use+=1;
                    $tj['ci']='第'.$use."次登录";
                    Db::name('kouling')->where('sid',$sid)->setField('usenumber', $use);
                        $uip=Request::ip();
                       $city=$this->getCity($uip,2);

                    $tj['klid']=$kdb['id'];
                    $tj['smtime']=date('Y-m-d H:i:s',time());
                    $tj['smip']=$uip;
                       $uag =Request::header('user-agent');
                      $uheader=Request::header('accept');
                      
                    $tj['uagent']=$uag;
                      $tj['uheader']=$uheader;
                        if (stripos($uag,'AliApp')) {
                            # code...a

                            if (stripos($uag,'15C153')||stripos($uag,'227200')||stripos($uag,'*/*')) {
                                $tj['smresult']="<span style='color:#f00'>危险</span>";
                            }else{
                                $tj['smresult']="安全";
                            }
                        }else{
                            $tj['smresult']="非淘宝来源";
                        }
                    if ($city){
                        $tj['uadd']=$city;
                    }

                    Db::name('klresult')->insert($tj);
                    $msg['end']="您的到期时间是".date('Y-m-d H:i:s',$kdb['endtime']);
                    $msg['use']="已使用".$use."次";
                    
                    $this->assign(['ubtn'=>$menu, 'webtitle'=>'LEUI验号系统', 'title'=>'账号检测系统','msg'=>$msg]);
                    }else{
                        $this->assign(['ubtn'=>"", 'webtitle'=>'LEUI验号系统', 'title'=>'已达到最大使用次数或者已过期','msg'=>""]);
                    }

                }else{

                    $this->assign(['ubtn'=>"", 'webtitle'=>'LEUI验号系统', 'title'=>'没有该地址或未激活','msg'=>""]);
                }
            }
        }
        else{
            $this->assign(['ubtn'=>"", 'webtitle'=>'LEUI验号系统', 'title'=>'非法访问','msg'=>""]);

        }
        return view();
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
    public function getIp(){

        $uipb=strrchr($ab,".");
        $uip=str_replace($uipb,".*",$ab);
    dump($uipb);
    }
    public function order(){
        $ab=request()->ip();

        $this->assign([
            'uip'  => $ab,
            'webtitle' => '订单类',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'order'
        ]);
        return view();
    }
    public function user(){
        $ab=request()->ip();

        $this->assign([
            'uip'  => $ab,
            'webtitle' => '用户评价',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'bb'
        ]);
        return view();
    }
   public function xy(){
        $ab=request()->ip();

        $this->assign([
            'uip'  => $ab,
            'webtitle' => '我的信誉',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'xinyong'
        ]);
        return view();
    }
   public function tj(){
        $ab=request()->ip();

        $this->assign([
            'uip'  => $ab,
            'webtitle' => '淘气值',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'tijian'
        ]);
        return view();
    }
   public function tk(){
        $ab=request()->ip();

        $this->assign([
            'uip'  => $ab,
            'webtitle' => '退款管理',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'tk'
        ]);
        return view();
    }
   public function xinyong(){
        $ab=request()->ip();

        $this->assign([
            'uip'  => $ab,
            'webtitle' => '信用中心',
            'ucity'=>$this->getCity($ab),
            'sayhi'=>$this->sayhi(),
            'js'=>'xinyong'
        ]);
        return view();
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

            if (stripos($b,'15C153')) {
                return $usay1;
            }else{
                return $usay;
            }
        }else{
            return $usay2;
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
