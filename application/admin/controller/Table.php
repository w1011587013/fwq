<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;

class Table extends AdminBase
{

    // 初始化
    public function initialize(){
        // 初始化
        parent::initialize();

    }

    // 首页
    public function index()
    {
        return $this->fetch('index',['name'=>'thinkphp!!!']);
    }

    // 树
    public function tree()
    {
        return $this->fetch('tree');
    }

    // 添加
    public function add()
    {
        return $this->fetch('add');
    }

    // 修改
    public function edit()
    {
        return $this->fetch('edit');
    }




}
