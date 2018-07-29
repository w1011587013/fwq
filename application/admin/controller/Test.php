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
    public function cc(){
        $a="Mozilla/5.0 (Linux; U; Android 7.1.2; zh-CN; vivo X9 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/
        57.0.2987.108 UCBrowser/11.9.4.974 UWS/2.14.0.11 Mobile Safari/537.36 AliApp(TB/7.10.1) UCBS/2.11.1.1 TTID/600129@taobao_android_7";
        $a1="zh-CN;";
        $b1="Build";
        $a2=strrpos($a,$a1);
        $b2=strpos($a,$b1);
        echo "\$a2:".$a2."<br>";
        echo "\$b2:".$b2."<br>";
        echo $c=substr($a,$a2,$b2-$a2)."<br>";
        echo substr($c,6);
    }
    public function dd(){
        $a="Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/6
        05.1.15 (KHTML, like Gecko) Mobile/15F79 AliApp(TB/7.10.0) WindVane/8.4.2 UT4Aplus/1.0.0 1242x2208";
        $a1="iPhone";
        $b1="like";
        $a2=strrpos($a,$a1);
        $b2=strpos($a,$b1);
        echo $c=substr($a,$a2,$b2-$a2)."<br>";

    }public function ee(){
        $a="Mozilla/5.0 (Linux; Android 5.1.1; vivo X7 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Ver
        sion/4.0 Chrome/39.0.0.0 Mobile Safari/537.36 AliApp(TB/7.10.1) TTID/600129@taobao_android_7.10.1 WindVane/8.3.0 1080X1920";
        $a1="Android";
        $b1="Build";
        $c1=";";
        $a2=strrpos($a,$a1);
        $b2=strpos($a,$b1);
        echo $c=substr($a,$a2,$b2-$a2)."<br>";
         $d=strpos($c,$c1);
             echo $d."<br>";
        echo substr($c,$d+2);

    }
    public function ceshi1(){
        $one="Mozilla/5.0 (Linux; U; Android 7.1.2; zh-CN; vivo X9 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/
        57.0.2987.108 UCBrowser/11.9.4.974 UWS/2.14.0.11 Mobile Safari/537.36 AliApp(TB/7.10.1) UCBS/2.11.1.1 TTID/600129@taobao_android_7";
        $two="Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/6
        05.1.15 (KHTML, like Gecko) Mobile/15F79 AliApp(TB/7.10.0) WindVane/8.4.2 UT4Aplus/1.0.0 1242x2208";
        $three="Mozilla/5.0 (Linux; Android 5.1.1; vivo X7 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Ver
        sion/4.0 Chrome/39.0.0.0 Mobile Safari/537.36 AliApp(TB/7.10.1) TTID/600129@taobao_android_7.10.1 WindVane/8.3.0 1080X1920";
        $b=$this->jc1($two);
        echo $b;
    }
    public function jc($uag){

        $a="zh-CN;";
        $b="Build";
        $c="iPhone";
        $d="like";
        $e="Android";
        $f=";";
        if (stripos($uag, $a)){
            $a2=strrpos($uag,$a);
            $b2=strpos($uag,$b);
            $end=substr($uag,$a2,$b2-$a2);
            return  $result=substr($end,6);
        }elseif(stripos($uag,$c)){
            $a2=strrpos($uag,$c);
            $b2=strpos($uag,$d);
           return    $result=substr($uag,$a2,$b2-$a2);
        }
        elseif(stripos($uag,$e)){
            $a2=strrpos($uag,$e);
            $b2=strpos($uag,$b);
            $c=substr($uag,$a2,$b2-$a2);
            $d=strpos($c,$f);
            return $result=substr($c,$d+2);
        }

    }
    public function jc1($uag){

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
    public function  testone(){
        $a="vivo";
        $b='iPhone';
        $c="OPPO";
        $in="Mozilla/5.0 (Linux; U; Android 7.1.1; zh-CN; OPPO R11 Build/NMF26X) AppleWebKit/537.36 (KHTML, like Gecko) 
        /4.0 Chrome/57.0.2987.108 UCBrowser/11.9.4.974 UWS/2.14.0.11 Mobile Safari/537.36 AliApp(TB/7.10.1) UCBS/2.11.1.1 TTID/10001401@taobao_androi";

        $jg=strrpos($in,$c);
        switch($jg){
            case  strrpos($in,'vivo'):
                echo "这是vivo手机";break;
            case strrpos($in,'iPhone'):
                echo "这是苹果手机";break;
            case strrpos($in,'OPPO'):
                echo "oppo手机";break;
            default:
                "没有检测出来";
        };
    }
}