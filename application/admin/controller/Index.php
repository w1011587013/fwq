<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;

use Config;
use Db;
use Session;

class Index extends AdminBase{

    // 初始化
    public function initialize(){
        // 初始化
        parent::initialize();

    }

    // 首页
    public function index(){
        // 渲染视图并输出数据

        return $this->fetch('index',[
            'config'    => $this->getConfig(),
             'menu'      => $this->getMenu()
        ]);

    }
    public function test(){
        echo Config::get('key');
    }

    // 欢迎页
    public function welcome(){
        return $this->fetch('welcome');
    }




}
