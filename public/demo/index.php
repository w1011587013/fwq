<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/6/9
 * Time: 8:17
 */
class Site{
    public $siteName=null;


    public function username($name='zhanghao'){
        return $name;
    }
}
class SiteRead{
    public static function create(){
       return new Site();
    }
}
$obj=SiteRead::create(1111);

var_dump($obj->username());