<?php
/**
 * Created by PhpStorm.
 * User: a1111
 * Date: 2018/7/12
 * Time: 10:30
 */

namespace app\admin\controller;
use app\common\controller\AdminBase;
use think\facade\Request;
use think\Db;
use think\helper\Time;
class Blacklist extends AdminBase
{

    public function index(){//自用黑名单
        if (Request::isPost()){
            $data=Db::name('blacklist')->where('status','1')->select();

            if ($data){
                $this->ajaxReturn(['data'=>$data]);
            }
            else{
                $this->ajaxReturn(['data'=>""]);
            }

        }
        return $this->fetch('index',[
            'shenhe'=>1
        ]);
    }
    public function vblack(){  //vip黑名单
        if (Request::isPost()){
            $data=Db::name('blacklist')->where('status','1')->select();

            if ($data){
                $this->ajaxReturn(['data'=>$data]);
            }
            else{
                $this->ajaxReturn(['data'=>""]);
            }

        }
        return $this->fetch('vblack',[
            'shenhe'=>1
        ]);
    }
    public function add(){
        $data['msg']='未收到消息';

        if(Request::isPost()){
            $post=Request::post();
           // if ($post['']);
            if (isset($post['histroy'])){
                $histroy=$post['histroy'];
                $b="";
                foreach ($histroy as $item) {
                    $b.=$item.' ';
                }
                $post['histroy']=$b;
            }
            $post['time']=date('Y-m-d H:i:s',time());
            if(isset($post['aliid'])){
                if(Db::name('blacklist')->insert($post)){
                    $data['msg']='举报成功';
                    $data['status']=1;
                    $tj['smip']=$post['ip'];
                    $tj['klid']=$post['klid'];
                    Db::name('klresult')->where($tj)->update(['jubao'=>1]);
                }
            }
            $this->ajaxReturn($data);
        }
        if (Request::isGet()){
            $klid=Request::get('klid/d');
            $smip=Request::get('ip');
            if (Request::get('klid')!=""){


                return $this->fetch('add',[
                    'jb'=>'jb',
                    'klid'=>$klid,
                    'ip'=>$smip
                ]);
            }
        }
        return $this->fetch();
    }//添加
    public function jbedit(){
        if (Request::isGet('klid')!=""){
            $klid=Request::get('klid/d');
            $smip=Request::get('ip');
            $jbdb=Db::name('blacklist')->where([
                'ip'=>$smip,
                'klid'=> $klid
            ])->find();
            if ($jbdb){
                if($jbdb['status']==1){
                    $this->assign('zt',1);
                }else{
                    $this->assign('jb',1);
                };

            return $this->fetch('jbedit',[
                'yjb'=>$jbdb,
                'tj'=>'tijiao',
            ]);
            }

        }elseif(Request::isPost('klid')!=""){

            $post=Request::post();
            $tj['klid']=Request::post('klid/d');
            $tj['ip']=Request::post('ip');
            $upbj=Db::name('blacklist')->where($tj)->update($post);
            if ($upbj){
                $data['msg']='保存成功';
                $data['status']=1;

            }
            else{
                $data['msg']='未更改，保存失败';
                $data['status']=0;
            }
            $this->ajaxReturn($data);

        }else{
            $this->error('非法访问');
        }


    }
    public function biaoji(){
        if(Request::isGet()){


            if (Request::get('klid')!=""){
                $klid=Request::get('klid/d');
                $smip=Request::get('ip');
                    return $this->fetch('biaoji',[
                        'id'=>$klid,
                        'ip'=>$smip,
                        'biaoji'=>1
                    ]);
                }

            else{
                return $this->fetch();
            }
        }elseif(Request::isPost('klid')){
            $data['msg']='保存失败';
            $data['status']=0;
            if (Request::post('klid')!=""){
                $post=Request::post();
                $post['klid']=Request::post('klid/d');
                $tj['smip']=Request::post('ip');
                $tj['klid']=$post['klid'];
                $data['cont']=$post;
                $post['time']=time();
                $post['bjid']=session('vip_admin.id');
                if (Db::name('biaoji')->insert($post)){
                    $data['msg']='添加成功';
                    $data['status']=1;
                    Db::name('klresult')->where($tj)->update(['biaoji'=>1]);
                };
                $this->ajaxReturn($data);
            }
            else{
                return $this->fetch();
            }
        }
    }//标记
    public function bjedit(){
        if (Request::isGet('klid')!=""){
            $klid=Request::get('klid/d');
            $smip=Request::get('ip');
            $bjdb=Db::name('biaoji')->where([
                    'ip'=>$smip,
                    'klid'=> $klid
                ])->find();
            return $this->fetch('bjedit',[
                'ybj'=>$bjdb,
                'biaoji'=>1
            ]);

        }elseif(Request::isPost('klid')!=""){
            $data['msg']='未更改，保存失败';
            $data['status']=0;
            $post=Request::post();
            $tj['klid']=Request::post('klid/d');
            $tj['ip']=Request::post('ip');
            $post['uptime']=time();
            $post['bjid']=session('vip_admin.id');
            $upbj=Db::name('biaoji')->where($tj)->update($post);
            if ($upbj){
                $data['msg']='保存成功';
                $data['status']=1;

            }
            $this->ajaxReturn($data);

        }else{
            $this->error('非法访问');
        }

    }//编辑标记

    public function shenhe(){
        if (Request::isPost()){
            $data=Db::name('blacklist')->where('status',0)->select();

            if ($data){
                $this->ajaxReturn(['data'=>$data]);
            }else{
                $this->ajaxReturn(['data'=>""]);
            }

        }
        return $this->fetch('index',[
            'shenhe'=>0
        ]);
    }//审核黑名单
    public function blStatus(){//status开关
        $data['status'] = 0;
        $data['msg'] = '未接收到请求';
        if(Request::isPost()){
            $POST = $this->request->post();
            // 设置状态
            $endtime=Time::daysAfter(30);
            if($this->setTableSh('blacklist',$POST['id'],$POST['status'],$endtime)){
                $data['status'] = 1;
                $data['msg'] = '更改审核状态成功';
            }else{
                $data['msg'] = '审核失败';
            }
        }
        // 返回数据
        $this->ajaxReturn($data);
    }//更改审核状态
    public function setTableSh($name,$id,$status,$end){
        // 修改数据库数据
        if($num = Db::name($name)->where(['id'=>$id])->update(['status'=>$status ?: 0,'endtime'=>$end])){
            // 返回状态
            $this->msg = '操作成功';
            return $num;
        }
        // 返回状态
        $this->msg = '操作失败';
        return false;
    }
    public function bldelete(){
        // 通用删除方法
        if($this->commonDelete('blacklist')){
            $data['status'] = 1;
        }else{
            $data['status'] = 0;
        }
        // 返回的消息
        $data['msg'] = $this->msg;
        // 返回JSON
        $this->ajaxReturn($data);
    }//黑名单删除

    public function weixian(){  //危险IP
       if (Request::isPost()){
            $db=Db::name('klresult')->where('smresult', 'like','%危险%')->field('id,smip,smtime,smresult,uadd,jubao')->select();

            if ($db){
                $a=[];
                $data=[];
                foreach ($db as $key =>$val){
                    if (!in_array($val['smip'], $a)){
                        $a[]=$val['smip'];
                        $data[]=$val;
                    }
                }
                $this->ajaxReturn(['data'=>$data]);
            }
            else{
                $this->ajaxReturn(['data'=>""]);
            }

        }

        return $this->fetch('weixian',[
            'shenhe'=>1
        ]);
    }
}