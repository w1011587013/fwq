<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/6/4
 * Time: 14:00
 */
namespace app\admin\controller;
use app\common\controller\AdminBase;
use Config;
use Db;
use Session;
use Request;

class Login extends AdminBase{

    // 初始化
    public function initialize(){
        // 记录日志
        $this->log();
    }

    // 登录
    public function index(){
        // 登录请求
      if(Request::isPost()){
            // 获取POST数据
            $POST = $this->request->only(['account', 'password', 'verify']);
            // 验证数据正确性
            $result = $this->validate($POST, 'Login');
            // 验证错误
            if ($result !== true) {
                $this->error($result);
            }else{

                // 收集登录数据
                $where['account'] = $POST['account'];
                $where['password'] = md5( $POST['password'] . Config::get('key') );
                $db = Db('MustSystemUser')->where($where)->field('id,account,status,endtime')->find();
				$endtime=strtotime($db['endtime']);
            
              $thistime=time();
                if (!empty($db)) {
                    if ($db['status'] != 1) {
                        $this->error('当前用户已冻结');
                    }elseif($thistime > $endtime){
                    $this->error('当前用户已过期');
                    } else {
                        Session::set('vip_admin', $db);
                        Db('MustSystemUser')->where('id',$db['id'])->update([
                            'last_login_time' => date('Y-m-d H:i:s', time()),
                            'last_login_ip'   => $this->request->ip()
                        ]);


                       $this->success('登录成功', 'admin/Index/index');
                    }
                
                } else {
                    $this->error('账号或密码错误');
                }
            }
        }
        else{

            return $this->fetch('',[
                'config'    => $this->getConfig()
            ]);
        }
    }


    // 切换登录
    public function out(){
        session('vip_admin',null);
        $this->redirect('index');
    }


}
