<?php /*a:1:{s:38:"../html_template/index/index/user.html";i:1531356720;}*/ ?>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>

<meta name="renderer" content="webkit">

<head>
   <script src="https://cdn.bootcss.com/jquery/3.3.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="/static/index/css/all.css">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel=stylesheet href="https://s3-us-west-2.amazonaws.com/colors-css/2.2.0/colors.min.css">

    <title><?php echo htmlentities($webtitle); ?></title>
<style>

    .box,.box1,.box2,.box3,.box4,.box5{
        width:<?php echo htmlentities($divall[0]); ?>px;
        height:<?php echo htmlentities($divall[1]); ?>px;
        position: fixed;
        font-size:30px;
     	opacity:0.7;
    }
    .box{

        top:<?php echo htmlentities($box[0]); ?>px;
        left:<?php echo htmlentities($box[1]); ?>px;
        transform: rotate(<?php echo htmlentities($box[2]); ?>deg);
        -ms-transform: rotate(<?php echo htmlentities($box[2]); ?>deg);		/* IE 9 */
        -webkit-transform: rotate(<?php echo htmlentities($box[2]); ?>deg);	/* Safari and Chrome */
        -o-transform: rotate(<?php echo htmlentities($box[2]); ?>deg);		/* Opera */
        -moz-transform: rotate(<?php echo htmlentities($box[2]); ?>deg);		/* Firefox */
    }
    .box1{
        top:<?php echo htmlentities($box1[0]); ?>px;
        left:<?php echo htmlentities($box1[1]); ?>px;
        transform: rotate(<?php echo htmlentities($box1[2]); ?>deg);
        -ms-transform: rotate(<?php echo htmlentities($box1[2]); ?>deg);		/* IE 9 */
        -webkit-transform: rotate(<?php echo htmlentities($box1[2]); ?>deg);	/* Safari and Chrome */
        -o-transform: rotate(<?php echo htmlentities($box1[2]); ?>deg);		/* Opera */
        -moz-transform: rotate(<?php echo htmlentities($box1[2]); ?>deg);		/* Firefox */
    } .box2{
        top:<?php echo htmlentities($box2[0]); ?>px;
        right:<?php echo htmlentities($box2[1]); ?>px;
        transform: rotate(<?php echo htmlentities($box2[2]); ?>deg);
        -ms-transform: rotate(<?php echo htmlentities($box2[2]); ?>deg);		/* IE 9 */
        -webkit-transform: rotate(<?php echo htmlentities($box2[2]); ?>deg);	/* Safari and Chrome */
        -o-transform: rotate(<?php echo htmlentities($box2[2]); ?>deg);		/* Opera */
        -moz-transform: rotate(<?php echo htmlentities($box2[2]); ?>deg);		/* Firefox */
    } .box3{
        top:<?php echo htmlentities($box3[0]); ?>px;
        left:<?php echo htmlentities($box3[1]); ?>px;
        transform: rotate(<?php echo htmlentities($box3[2]); ?>deg);
        -ms-transform: rotate(<?php echo htmlentities($box3[2]); ?>deg);		/* IE 9 */
        -webkit-transform: rotate(<?php echo htmlentities($box3[2]); ?>deg);	/* Safari and Chrome */
        -o-transform: rotate(<?php echo htmlentities($box3[2]); ?>deg);		/* Opera */
        -moz-transform: rotate(<?php echo htmlentities($box3[2]); ?>deg);		/* Firefox */
    } .box4{
        top:<?php echo htmlentities($box4[0]); ?>px;
        left:<?php echo htmlentities($box4[1]); ?>px;
        transform: rotate(<?php echo htmlentities($box4[2]); ?>deg);
        -ms-transform: rotate(<?php echo htmlentities($box4[2]); ?>deg);		/* IE 9 */
        -webkit-transform: rotate(<?php echo htmlentities($box4[2]); ?>deg);	/* Safari and Chrome */
        -o-transform: rotate(<?php echo htmlentities($box4[2]); ?>deg);		/* Opera */
        -moz-transform: rotate(<?php echo htmlentities($box4[2]); ?>deg);		/* Firefox */
    }.box5{
        top:<?php echo htmlentities($box5[0]); ?>px;
        left:<?php echo htmlentities($box5[1]); ?>px;
        transform: rotate(<?php echo htmlentities($box5[2]); ?>deg);
        -ms-transform: rotate(<?php echo htmlentities($box5[2]); ?>deg);		/* IE 9 */
        -webkit-transform: rotate(<?php echo htmlentities($box5[2]); ?>deg);	/* Safari and Chrome */
        -o-transform: rotate(<?php echo htmlentities($box5[2]); ?>deg);		/* Opera */
        -moz-transform: rotate(<?php echo htmlentities($box5[2]); ?>deg);		/* Firefox */
    }
    .time{
        position: absolute;
        color:#00F7DE;

        line-height: 30px;
    }
    .uip{

        position: absolute;
        top:60px;
        color: GREEN;

    }
    @media(max-width:768px{


    }
</style>
</head>

<body>

<body>
<div class="bb"><h3><?php echo htmlentities($sayhi); ?></h3></div>
<div class="box">
    <div class="time"> </div>
    <div class="uip"><?php echo htmlentities($uip); ?><?php echo htmlentities($ucity); ?></div>
    <div class="ukouling"><?php echo htmlentities($kouling); ?></div>
</div>
<div class="box1">
    <div class="time"> </div>
    <div class="uip"><?php echo htmlentities($uip); ?><?php echo htmlentities($ucity); ?></div>
    <div class="ukouling"><?php echo htmlentities($kouling); ?></div>
</div>
<div class="box2">
    <div class="time"> </div>
    <div class="uip"><?php echo htmlentities($uip); ?><?php echo htmlentities($ucity); ?></div>
    <div class="ukouling"><?php echo htmlentities($kouling); ?></div>
</div>
<div class="box3">
    <div class="time"> </div>
    <div class="uip"><?php echo htmlentities($uip); ?><?php echo htmlentities($ucity); ?></div>
    <div class="ukouling"><?php echo htmlentities($kouling); ?></div>
</div>
<div class="box4">
    <div class="time"> </div>
    <div class="uip"><?php echo htmlentities($uip); ?><?php echo htmlentities($ucity); ?></div>
    <div class="ukouling"><?php echo htmlentities($kouling); ?></div>
</div>
<div class="box5">
    <div class="time"> </div>
    <div class="uip"><?php echo htmlentities($uip); ?><?php echo htmlentities($ucity); ?></div>
    <div class="ukouling"><?php echo htmlentities($kouling); ?></div>
</div>



<div class="all" style="background:url(<?php echo htmlentities($sydz); ?>)"></div>

<!-- 	想看源码？



我会告诉你看不到；
 -->
<script>

    function getTime(){

        var myDate = new Date();
        myDate.getYear();        //获取当前年份(2位)
        year=myDate.getFullYear();    //获取完整的年份(4位,1970-????)
        month=myDate.getMonth()+1;       //获取当前月份(0-11,0代表1月)
        day=myDate.getDate();        //获取当前日(1-31)
        myDate.getDay();         //获取当前星期X(0-6,0代表星期天)
        myDate.getTime();        //获取当前时间(从1970.1.1开始的毫秒数)
        hours=myDate.getHours();       //获取当前小时数(0-23)
        fen=myDate.getMinutes();     //获取当前分钟数(0-59)
        miao=myDate.getSeconds();     //获取当前秒数(0-59)
        utime='当前日期:'+year+'年'+month+'月'+day+'日<br>现在时间'+hours+'时'+fen+'分'+miao+'秒';

        $(".time").html(utime);
    }

        setInterval(getTime, 1000);

</script>
<script type="text/javascript" src="/static/index/js/<?php echo htmlentities($js); ?>.js"></script>
</body>
</html>