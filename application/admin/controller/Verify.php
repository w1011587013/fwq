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
            $post=Request::post();


            if(!isset($post['shuiyin'])){
                $post['sydz']="/static/index/img/21.png";

            }
            if(!isset($post['status'])){
                $post['status']='0';
            }
            if (!isset($post['menu'])){
                $post['menu']=[1,2,3,4,5,6,7];
            }
            $post['sid']=md5($post['kl'].time());
            $post['createtime']=time();
            $post['endtime']=Time::daysAfter(7);
            $post['kluid']=session('vip_admin.id');
            $post['menu']=array_values($post['menu']);
            $post['menu']=implode(",",$post['menu']);
         //$ucount=Db::name('yhhome')->where("id in (".$post['menu'].")")->select();
        //  $maxcount=Db::name('MustSystemUser')->where('id',$b)->find();

           $db=Db::name('kouling')->insert($post);

            if ($db>0){
                  $syyz['masid']=$post['sid'];
               if( Db::name('iptime')->insert($syyz)){
                   $data['status'] = 1;
                   $data['msg'] = '添加成功';

               };

            }
          	$data['cont']=$db;
            $this->ajaxReturn($data);

        }
        else{
            return view();
        }

    }
    public function shuiyin(){
        $data['msg']="";
        if (Request::isPost()) {


              $file = request()->file('uimg');
            $info = $file->move('./uploads');
            if($info){
                $aa=$info->getSaveName();
                $data['msg']='上传成功';
                $data['src']=$aa;
                $this->ajaxReturn($data);
            }else{
                $data['msg']="上传失败";
                $this->ajaxReturn($data);
            }
        }else{
            $data['msg']="未收到数据";
            $this->ajaxReturn($data);
        }
     
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
            $url=Request::root(true);
            $this->qrcode($url.'?sid='.$sid);
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
                ->where('status',1)
                ->order('r.id', 'desc')
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
   public function set(){
        if(Request::isGet()){
            if (Request::get('sid'));{
                $sid=Request::get('sid');
                $sfind=Db::name('iptime')->where('masid',$sid)->find();
                if ($sfind){
                    $masid=$sfind['masid'];
                    $divall=explode(',',$sfind['divall']);
                    $box=explode(',',$sfind['box']);
                    $box1=explode(',',$sfind['box1']);
                    $box2=explode(',',$sfind['box2']);
                    $box3=explode(',',$sfind['box3']);
                    $box4=explode(',',$sfind['box4']);
                    $box5=explode(',',$sfind['box5']);
                    return $this->fetch('set',[
                        'masid'=>$masid,
                        'divall'=>$divall,
                        'box'=>$box,
                        'box1'=>$box1,
                        'box2'=>$box2,
                        'box3'=>$box3,
                        'box4'=>$box4,
                        'box5'=>$box5
                    ]);
                }else{
                    $this->error('没有该水印数据，会有显示默认数据');
                }
            }
        }else{
           $this->error('未知参数','index');
        }

    }
    public function setyz(){
        $data['msg']='未收到';
        $data['status']=0;
        if(Request::isPOST()){

            $post=Request::post();
            $tj['box']=$post['boxtop'].",".$post['boxleft'].','.$post['boxdeg'];
            $tj['box1']=$post['box1top'].','.$post['box1left'].','.$post['box1deg'];
            $tj['box2']=$post['box2top'].','.$post['box2left'].','.$post['box2deg'];
            $tj['box3']=$post['box3top'].','.$post['box3left'].','.$post['box3deg'];
            $tj['box4']=$post['box4top'].','.$post['box4left'].','.$post['box4deg'];
            $tj['box5']=$post['box5top'].','.$post['box5left'].','.$post['box5deg'];

            $tj['masid']=$post['masid'];
            $tj['divall']=$post['width'].','.$post['height'];
           $tj['status']=1;
            $db=Db::name('iptime');
//            $dbt=$db->insert($tj);
           $dbt=$db->where('masid', $post['masid'])->update($tj);
            if($dbt){
                $data['msg']='更新成功';
               
            }else{
                $data['msg']='更新失败';
            }
            $data['status']=1;
            $data['tj']=$tj;
            $this->ajaxReturn($data);
        }else{
            $this->ajaxReturn($data);
        }

    }
}