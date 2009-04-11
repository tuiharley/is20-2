<?php
  include("wizards/inc/const.inc.php");
  include("wizards/inc/function.inc.php");
  include("wizards/inc/mobile.inc.php");

  $i = Send_Content("019848360", "99", "18_Jun_2006.jpg");
  if($i == 1){
    $Msg = "ระบบได้ทำการจัดส่งโพลีไปยังมือถือของท่านเรียบร้อยแล้ว ขอบคุณมากคะ";
  }else{
    $Msg = "ระบบไม่สามารถทำการจัดส่งโพลีไปยังมือถือของท่านได้ กรุณาตรวจสอบอีกครั้ง ขอบคุณมากคะ";
  } 

  print $Msg;
?>
