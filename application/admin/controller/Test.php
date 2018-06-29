<?php
/**
 * Created by PhpStorm.
 * User: a1111
 * Date: 2018/6/23
 * Time: 11:19
 */

namespace app\admin\controller;
class Test{
    public function Index(){
//        $a="100,101,102,103,104,105,107,108,109,110,111,112,113";
//        $aa="100,101,102,103,104,105,107,108,109,110,111,112,113";
//        $aaa=[$a,$aa];
//        $aaa=[$aaa,$aaa];
//        $b=explode(',',$a);
//        $c=[];
//        foreach ($aaa as $value){
//            $c=array_merge($c,$value);
//        }

//   dump($aaa);
//        dump($c);
        $a=url("index/index/order");
        dump($a);
    }
   public function bb(){
        static $a;
        $a+=1;

    }
}