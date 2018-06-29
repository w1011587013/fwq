<?php
/**
 * Created by PhpStorm.
 * User: a1111
 * Date: 2018/6/25
 * Time: 08:48
 */
namespace app\admin\controller;
use app\common\controller\AdminBase;
use think\Db;
use think\facade\Request;
use Session;
use think\helper\Time;
use Env;
class Verify extends AdminBase
{
    public function index(){
        $data['status'] = 0;
        $data['msg'] ='添加失败';
        if (Request::isPost()){
            $kl=Request::post("kouling");
            $zt=Request::post("zt");
            if($zt==""){
                $zt='0';
            }
            $sid=md5($kl.time());
         //   $maurl=$this->qrcode('http://wx.vlezhu.com/yh?sid='.$sid);
            $beizhu=Request::post("beizhu");
            $ctime=time();
            $end=Time::daysAfter(7);
            $b=session('vip_admin.id');
          $ucount=Db::name('kouling')->where('kluid',$b)->count();
          $maxcount=Db::name('MustSystemUser')->where('id',$b)->find();
          
          if($ucount<$maxcount['klnumber']){
            $neirong =['status'=>$zt,'kluid'=>$b,'createtime'=>$ctime,"kl"=>$kl,'endtime'=>$end,'maxnumber'=>50,'beizhu'=>$beizhu,'sid'=>$sid];

           $db=Db::name('kouling')->insert($neirong);

            if ($db){
                $data['status'] = 1;
                $data['msg'] = '添加成功';

            }
          }else{
          $data['msg'] ='已超过最大添加次数！添加失败';
          	
          }
           // $data['msg'] =dump($db);
            $this->ajaxReturn($data);

        }
        else{
            return view();
        }

       //$a=$this->qrcode('http://www.baidu.com');
      // echo $a;
//        $a=Env::get('root_path') . 'vendor/';
//        echo $a;

    }
    public function qrcode($urla){
        header("Content-type: text/html; charset=utf-8");
        $a=Env::get('root_path') . 'vendor/';
        require_once $a.'phpqrcode/phpqrcode.php';
        //生成二维码图片
        $object = new \QRcode();
        $url=$urla;//网址或者是文本内容
        $level=3;
        $size=7;
        $errorCorrectionLevel =intval($level) ;//容错级别
        $matrixPointSize = intval($size);//生成图片大小
        $object->png($url, false, $errorCorrectionLevel, $matrixPointSize, 2);
       // $errorLevel = "L";
//定义生成图片宽度和高度;默认为3
//        $size = "5";
//        $content="微信公众平台：思维与逻辑;公众号:siweiyuluoji";
//调用QRcode类的静态方法png生成二维码图片//
  //      $object::png($content, false, $errorLevel, $size);
//生成网址类型
//        $url=$urla;
//        $object::png($url, false, $errorLevel, $size);
        exit();
    }

    public function kladmin(){//口令管理

        if(Request::isPost()){
            $uid=session('vip_admin.id');
            $show=Db::name('kouling')->where('kluid',$uid)->select();
            // 返回JSON
            foreach ($show as $key=>$v){
                    $show[$key]['createtime']=date('Y-m-d H:i:s',$v['createtime']);
                    $show[$key]['endtime']=date('Y-m-d H:i:s',$v['endtime']);
            }
            $this->ajaxReturn(['data'=>$show]);
        }else{
            // 渲染视图
            return view();
        }

    }
    public function klStatus(){//status开关
        $data['status'] = 0;
        $data['msg'] = '未接收到请求';
        if(Request::isPost()){
            $POST = $this->request->post();
            // 设置状态
            if($this->setTableStatus('kouling',$POST['id'],$POST['status'])){
                $data['status'] = 1;
                $data['msg'] = '修改成功';
            }else{
                $data['msg'] = '修改失败';
            }
        }
        // 返回数据
        $this->ajaxReturn($data);
    }
    public function editKl(){//二维码生成
        if (Request::isGet()){
            $sid=Request::Get("sid");

            $this->qrcode('http://www.sd1888.cn?sid='.$sid);
        }
        else{
            echo "暂时没有二维码";
        }
    }
    public function klresult(){
//        $uid=session('vip_admin.id');
//        $show=Db::name('kouling')
//            ->alias('a')
//            ->join('klresult r','a.id = r.klid')
//            ->where('kluid',$uid)
//            ->select();
//        dump($show);
        if(Request::isPost()){
            $uid=session('vip_admin.id');
            $show=Db::name('kouling')
                ->alias('a')
                ->join('klresult r','a.id = r.klid')
                ->where('kluid',$uid)
                ->select();
            // 返回JSON
            foreach ($show as $key=>$v){
                $show[$key]['createtime']=date('Y-m-d H:i:s',$v['createtime']);

            }
           // $show['usenumber'];
            $this->ajaxReturn(['data'=>$show]);
        }else{
            // 渲染视图
            return view();
        }
    }
      public function kldelete(){
        // 通用删除方法
        if($this->commonDelete('kouling')){
            $data['status'] = 1;
        }else{
            $data['status'] = 0;
        }
        // 返回的消息
        $data['msg'] = $this->msg;
        // 返回JSON
        $this->ajaxReturn($data);
    }
    public function jgdelete(){
        // 通用删除方法
        if($this->commonDelete('klresult')){
            $data['status'] = 1;
        }else{
            $data['status'] = 0;
        }
        // 返回的消息
        $data['msg'] = $this->msg;
        // 返回JSON
        $this->ajaxReturn($data);
    }
}