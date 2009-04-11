<?php
  include("wizards/inc/const.inc.php");
  include("wizards/inc/function.inc.php");
  include("wizards/inc/db_data.inc.php");
  include("wizards/inc/mobile.inc.php");

  session_start();

  // connect database
  mysql_connect($dbhost, $dbuser, $dbpasswd) or die("Can not connect Server.");
  mysql_select_db($dbname) or die("Can not Database");

  if($Action == "Load"){
    $i = Send_Content($m_culture, "11", $Content_Code);
    if($i == 1){
        $sqlCmd  = "INSERT INTO send_log(send_date, mobile_no, detail) VALUES(now(), '$m_culture', '11" . $Content_Code . "') ";
        mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");

        $Msg = "ระบบได้ทำการจัดส่งโมโนไปยังมือถือของท่านเรียบร้อยแล้ว ขอบคุณมากคะ";
    }else{
        $Msg = "ระบบไม่สามารถทำการจัดส่งโมโนไปยังมือถือของท่านได้ กรุณาตรวจสอบอีกครั้ง ขอบคุณมากคะ";
    }
    mysql_close();
?>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=tis-620" />
      <SCRIPT LANGUAGE="JavaScript">
      <!--
      alert('<?php print $Msg; ?>');
      window.close();
      //-->
      </SCRIPT>
  </head>
</hmtl>
<?php
  }else{
    $sqlCmd  = "SELECT title, artist ";
    $sqlCmd .= "FROM   content ";
    $sqlCmd .= "WHERE  category_code = '1' ";
    $sqlCmd .= "AND    content_code = '$Content_Code' ";
    $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
    if($row = mysql_fetch_array($result)){
      $Title = $row['title'];
      $Artist = $row['artist'];
    }
    mysql_free_result($result);

    if( !session_is_registered("m_culture") ){
      $Msg = "ถ้าต้องการโหลดเพลงนี้ กรุณา Log in ก่อนคะ";
    }else{
      $iCount = 0;
      $sqlCmd  = "SELECT COUNT(*) I_COUNT ";
      $sqlCmd .= "FROM   send_log ";
      $sqlCmd .= "WHERE  DATE_FORMAT(send_date, '%Y%m%d') = '" . date("Ymd") . "' ";
      $sqlCmd .= "AND    mobile_no = '" . $m_culture . "' ";
      $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
      if($row = mysql_fetch_array($result)){
        $iCount = $row['I_COUNT'];
      }
      mysql_free_result($result);
      if($iCount > 5){
        $Msg = "วันนี้คุณโหลดไป " . $iCount . " ครั้งแล้วคะ ไม่สามารถโหลดเพลงนี้ได้ ";
      }else{
        $Msg = "<a href='mono.php?Action=Load&Content_Code=" . $Content_Code . "'>โหลดได้เลยคะ</a>";
      }
    }
    mysql_close();
  }
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>กระทรวงวัฒนธรรม</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<link href="ministrystss.css" rel="stylesheet" type="text/css">
</head>
<SCRIPT LANGUAGE="JavaScript">
        document.onkeydown = function(){
        if(event.keyCode >= 1 && event.keyCode <= 255){
        return false;
        }
}
</script>
<script language=JavaScript>
<!--
var message="";
///////////////////////////////////
function OpenIE() {if (document.all) {(message);return false;}}
function OpenNS(e) {if
(document.layers||(document.getElementById&&!document.all)) {
if (e.which==2||e.which==3) {(message);return false;}}}
if (document.layers)
{document.captureEvents(Event.MOUSEDOWN);document.onmousedown=OpenNS;}
else{document.onmouseup=OpenNS;document.oncontextmenu=OpenIE;}
document.oncontextmenu=new Function("return false")
// -->
</script>
<script language="JavaScript1.2">
function disableselect(e){
return false
}
function reEnable(){
return true
}
if (window.sidebar){
        document.onmousedown=disableselect
        document.onclick=reEnable
}
</script>
<script language="JavaScript">

ver=parseInt(navigator.appVersion);
ie4=(ver>3  && navigator.appName!="Netscape")?1:0
ns4=(ver>3  && navigator.appName=="Netscape")?1:0
ns3=(ver==3 && navigator.appName=="Netscape")?1:0
function playsound(song)
{
                 if (ie4) 
			document.all['BGSOUND_ID'].src=song;
		 else
			alert(song);
                 if ((ns4||ns3)
                  && navigator.javaEnabled()
                  && navigator.mimeTypes['audio/x-midi']
                  && self.document.Bach.IsReady()
                 )
                 {
                                  self.document.Bach.play();
                 }

}
</SCRIPT>
<BGSOUND id="BGSOUND_ID" LOOP=1>
<body background="image/background1.gif" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="playsound('song/11/<?php print $Content_Code; ?>.mid');">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align=center>
  <tr> 
    <td width="780"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="120" background="image/banner.gif"></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="30" background="image/bk_02.gif" class="Box4"><b>&nbsp;โมโน</b></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="100%" align="center" valign="top" bgcolor="#FFFFFF">
            <table border="1" cellpadding="2" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber51">
              <tr>
                <td width="200" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber56">
                  <tr>
                    <td width="100%">
                    <div align="center">
                      <center>
                      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="162" id="AutoNumber57">
                        <tr>
                          <td width="100%" colspan="3" align="center">
                          <img border="0" src="image/phone_01.gif" width="162" height="30"></td>
                        </tr>
                        <tr>
                          <td width="18" align="left">
                          <img border="0" src="image/phone_02.gif" width="16" height="128"></td>
                          <td width="128" align="left" valign="top" background="image/phone_bk_blue.gif">
                          <p align="center">
                          <!--img border="0" src="color/128x128/<?php print $Content_Code; ?>.gif" width="128" height="128"--></td>
                          <td width="18" align="right">
                          <img border="0" src="image/phone_03.gif" width="18" height="128"></td>
                        </tr>
                        <tr>
                          <td width="100%" colspan="3" align="center">
                          <img border="0" src="image/phone_04.gif" width="162" height="30"></td>
                        </tr>
                      </table>
                      </center>
                    </div>
                    </td>
                  </tr>
                </table>
                </td>
                <td valign="top">
                <table id="AutoNumber5" style="border-collapse: collapse" borderColor="#111111" cellSpacing="1" cellPadding="4" width="100%" bgColor="#ffffff" border="1">
                  <tr>
                    <td width="80"><b><font face="MS Sans Serif" size="1">ชื่อเพลง<span lang="en-us"> 
                    ::</span></font></b></td>
                    <td width="160"><span lang="en-us"><b>
                    <font face="MS Sans Serif" color="#ff6600" size="1"><?php print $Title; ?></font></b></span></td>
                  </tr>
                  <tr>
                    <td width="80"><b><font face="MS Sans Serif" size="1">ศิลปิน<span lang="en-us"> 
                    ::</span></font></b></td>
                    <td width="160"><span lang="en-us"><b>
                    <font face="MS Sans Serif" color="#ff6600" size="1"><?php print $Artist; ?></font></b></span></td>
                  </tr>
                  <tr>
                    <td width="80"><b><font face="MS Sans Serif" size="1">รหัส<span lang="en-us"> 
                    ::</span></font></b></td>
                    <td width="160"><b>
                    <font face="MS Sans Serif" color="#ff6600" size="1">11<?php print $Content_Code; ?></font></b></td>
                  </tr>
                  <tr>
                    <td colspan=2><font face="MS Sans Serif" color="#ff6600" size="1"><?php print $Msg; ?></font></td>
                  </tr>
                </table>
                </td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="4"></td>
              </tr>
            </table>
          </td>
        </tr>
      </table> </td>
    <td background="image/bk_01.gif">&nbsp;</td>
  </tr>
  <tr>
    <td height="40" align="center" bgcolor="#DABEF5" class="textnormal1">Copyright 2006@Ministry of 
      Culture </td>
    <td background="image/bk_01.gif">&nbsp;</td>
  </tr>
</table>
</body>
</html>
