<?php
  include("wizards/inc/const.inc.php");
  include("wizards/inc/function.inc.php");
  include("wizards/inc/page.inc.php");
  include("wizards/inc/db_data.inc.php");
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>กระทรวงวัฒนธรรม</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<link href="ministrystss.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
    function openwin(url)
    {
        window.open(url,'popup','width=618,height=500,resizable=no,scrollbars=yes,left=no,top=no'); void(0);
    }

    function MM_openBrWindow(theURL,winName,features) { //v2.0
        window.open(theURL,winName,features);
    }

    function clickIE() {
        if (document.all) return false;
    }

    if (document.layers) {document.onmousedown=clickNS;}
    else{document.oncontextmenu=clickIE;}
    document.oncontextmenu=new Function("return false")
    function disableselect(e){ return false }
    function reEnable(){return true}
    document.onselectstart=new Function ("return false")
    if (window.sidebar){
    document.onmousedown=disableselect
    document.onclick=reEnable
    }
</script>
</head>

<body background="image/background1.gif" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<script language="javascript">
  // Function to trim leading and trailing spaces
  function trim(strText) {
    // this will get rid of leading spaces
    while (strText.substring(0,1)==String.fromCharCode(32)){
      strText = strText.substring(1, strText.length);
      // this will get rid of trailing spaces
    }
    while (strText.substring(strText.length-1,strText.length)==String.fromCharCode(32)){
      strText = strText.substring(0, strText.length-1);
    }
    return strText;
  }

  function CheckInteger(Field)
  {
    ThisValue = Field;
    ThisLength = ThisValue.length;

    if (ThisLength != 9) return false;

    if (ThisValue.charAt(0) != "0") return false;

    if (ThisValue.charAt(1) == "0") return false;

    if (ThisValue.charAt(1) == "2") return false;

    for (i = 0; i <= ThisLength-1; i++) {
      if (ThisValue.charAt(i) < "0" || ThisValue.charAt(i) > "9") {
        return false;
      }
    }
    return true;
  }

  // Field validation function
  function validate(form)
  {
    if ( !CheckInteger(trim(form.Mobile_No.value)) )
    {
      alert("กรุณาใส่เบอร์มือถือใหม่อีกครั้งคะ");
      form.Mobile_No.focus();
      return false;
    }

    if ( trim(form.Password.value) == "")
    {
      alert("กรุณากรอกรหัสผ่านด้วยคะ");
      form.Password.focus();
      return false;
    }

    return true;
  }
</script>
<table width="780" border="0" cellspacing="0" cellpadding="0" align=center class="BDRight">
  <tr> 
    <td width="780"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <a href="index.php"><td height="120" background="image/banner.gif"></a></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="30" background="image/bk_02.gif">&nbsp;</td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="185" align="center" valign="top" bgcolor="#FFFFFF"><table width="180" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="4"></td>
              </tr>
            </table>
            <table width="178" border="0" cellpadding="0" cellspacing="0" class="Box1">
              <tr> 
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="26" background="image/left01_01.gif" class="textBold1">&nbsp;&nbsp;&nbsp;สมาชิก </td>
                    </tr>
                    <tr> 
                      <td height="111" align="center" valign="top" background="image/left01_02.gif"><form method=post action=login.php  onSubmit="return validate(this)" target=_blank><table width="98%" border="0" cellspacing="5" cellpadding="0">
                          <tr> 
                            <td width="55" align="right" class="textnormal1">เบอร์มือถือ :</td>
                            <td> <input name="Mobile_No" type="text" class="Box2"> 
                            </td>
                          </tr>
                          <tr> 
                            <td align="right" class="textnormal1">รหัสผ่าน :</td>
                            <td><input name="Password" type="password" class="Box2"></td>
                          </tr>
                          <tr> 
                            <td>&nbsp;</td>
                            <td><input type=image src="image/bLogin.gif" width="55" height="22" border="0"></td>
                          </tr>
                        </table>
                        <table width="98%" border="0" cellspacing="0" cellpadding="0">
                          <tr align="center"> 
                            <td width="60%" height="25" class="textnormal1"><img src="image/ora.gif" width="11" height="11"> 
                              <a href="#" onClick="MM_openBrWindow('member.php','Culture','scrollbars=yes,width=400,height=400')">สมัครสมาชิกฟรี</a></td>
                            <td width="40%" class="textnormal1"><img src="image/ora.gif" width="11" height="11"> 
                              <a href="#" onClick="MM_openBrWindow('password.php','Culture','scrollbars=yes,width=400,height=300')">ลืมรหัสผ่าน</a></td>
                          </tr>
                        </table><form></td>
                    </tr>
                  </table></td>
              </tr>
            </table>
            <table width="180" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="4"></td>
              </tr>
            </table>
            <table width="180" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="1" bgcolor="#B57EE5"></td>
              </tr>
            </table>
            <table width="180" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="4"></td>
              </tr>
            </table>
            <table width="178" border="0" cellpadding="0" cellspacing="0" class="Box1">
              <tr> 
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="26" background="image/left01_01.gif" class="textBold1">&nbsp;&nbsp;&nbsp;ช่วยเหลือ</td>
                    </tr>
                    <tr> 
                      <td height="81" align="center" bgcolor="#F7F1FD"><table width="170" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td width="18" height="20" align="center"><img src="image/ora.gif" width="11" height="11"></td>
                            <td class="textnormal1"><a href="#" onClick="MM_openBrWindow('mobile.html','Culture','scrollbars=yes,width=597,height=550')">รุ่นมือถือที่รองรับ</a></td>
                          </tr>
                          <tr> 
                            <td width="18" height="20" align="center"><img src="image/ora.gif" width="11" height="11"></td>
                            <td class="textnormal1">GPRS/WAP</td>
                          </tr>
                          <tr> 
                            <td width="18" height="20" align="center"></td>
                            <td class="textnormal1">&nbsp;&nbsp;&nbsp;&nbsp;- <a href="http://www.mobilelife.co.th/mobilelife/t/customertools/mobilesetting/" target=_blank>AIS</a></td>
                          </tr>
                          <tr> 
                            <td width="18" height="20" align="center"></td>
                            <td class="textnormal1">&nbsp;&nbsp;&nbsp;&nbsp;- <a href="http://www.djuice.co.th/ota2005/html/main.html" target=_blank>DTAC</a></td>
                          </tr>
                          <tr> 
                            <td width="18" height="20" align="center"></td>
                            <td class="textnormal1">&nbsp;&nbsp;&nbsp;&nbsp;- <a href="http://services.orange.co.th/phonesetting/" target=_blank>True Move</a></td>
                          </tr>
                          <tr> 
                            <td width="18" height="20" align="center"><img src="image/ora.gif" width="11" height="11"></td>
                            <td class="textnormal1"><a href="#" onClick="MM_openBrWindow('contact.html','Culture','scrollbars=yes,width=597,height=550')">ติดต่อ</a></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table>
            <table width="180" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="4"></td>
              </tr>
            </table>
            <table width="178" border="0" cellpadding="0" cellspacing="0" class="Box1">
              <tr> 
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="26" background="image/left01_01.gif" class="textBold1">&nbsp;&nbsp;&nbsp;เว็บไซต์ลิงค์</td>
                    </tr>
                    <tr> 
                      <td height="111" align="center" bgcolor="#F7F1FD"><table width="170" border="0" cellspacing="0" cellpadding="0">
<?php
    mysql_connect($dbhost, $dbuser, $dbpasswd) or die("Can not connect Server.");
    mysql_select_db($dbname) or die("Can not Database");

    $sqlCmd  = "SELECT * ";
    $sqlCmd .= "FROM   link_url ";
    $sqlCmd .= "ORDER BY link_seq ";
    $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
    while($row = mysql_fetch_array($result)){
?>
                          <tr> 
                            <td width="18" height="20" align="center"><img src="image/ora.gif" width="11" height="11"></td>
                            <td class="textnormal1"><a href="<?php print $row['link_url']; ?>" target=_blank><?php print $row['link_name']; ?></a></td>
                          </tr>
<?php
    }
    mysql_free_result($result);
?>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table>
            <table width="180" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="4"></td>
              </tr>
            </table>
<?php
    $sqlCmd  = "SELECT * ";
    $sqlCmd .= "FROM   image_url ";
    $sqlCmd .= "ORDER BY link_seq ";
    $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
    while($row = mysql_fetch_array($result)){
?>

            <table width="178" border="0" cellpadding="0" cellspacing="0" class="Box1">
              <tr> 
                <td>
                 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="4"></td>
                    </tr>
                    <tr> 
                      <td align="center"><table width="170" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td width="18" height="20" align="center">&nbsp;</td>
                            <td><a href="<?php print $row['link_url']; ?>" target=_blank><img width="121" src="<?php print $base_url; ?>/../banner/<?php print $row['link_image']; ?>" border=0></a></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr>
                      <td height="4"></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <table width="178" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="4"></td>
              </tr>
            </table>
<?php
    }
    mysql_free_result($result);
?>
          </td>
          <td width="1" bgcolor="#B57EE5"></td>
          <td align="center" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td align="center"><table width="586" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="4"></td>
                    </tr>
                  </table>
                  <table width="585" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="28" background="image/Tab1.gif"><img src="image/ring.gif" width="163" height="28"></td>
                    </tr>
                    <tr> 
                      <td height="2" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr> 
                      <td valign="top" bgcolor="#F7F1FD"><table width="100%" border="0" cellspacing="8" cellpadding="0">
                          <tr> 
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td width="25%" class="textBold2">ชื่อเพลง</td>
                                  <td width="2%" class="textBold1">&nbsp;</td>
                                  <td width="25%" class="textBold1">อัลบั้ม</td>
                                  <td width="12%" align="center" class="textBold1">โมโน</td>
                                  <td width="12%" align="center" class="textBold1">โพลี</td>
                                  <td width="12%" align="center" class="textBold1">ทรูโทน</td>
                                  <td width="12%" align="center" class="textBold1">MP3</td>
                                </tr>
                              </table></td>
                          </tr>
<?php
    $iCount = 0;
    $sqlCmd  = "SELECT COUNT(*) I_COUNT ";
    $sqlCmd .= "FROM   content ";
    $sqlCmd .= "WHERE  category_code = '1' ";
    $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
    if($row = mysql_fetch_array($result)){
        $iCount = $row['I_COUNT'];
    }
    mysql_free_result($result);
    if($iCount > 10) $iCount = $iCount - 10;

    $iRand = rand(1, $iCount);

    $iNo = 0;
    $sqlCmd  = "SELECT * ";
    $sqlCmd .= "FROM   content ";
    $sqlCmd .= "WHERE  category_code = '1' ";
    $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
    while($row = mysql_fetch_array($result)){
      $iNo++;
      if($iNo >= $iRand){
          $i++;
?>
                          <tr>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="25%" class="textnormal1"><?php print $row['title']; ?></td>
                                  <td width="2%" class="textnormal1">&nbsp;</td>
                                  <td width="25%" class="textnormal1"><?php print $row['artist']; ?></td>
                                  <td width="12%" align="center" class="textnormal1"><a href="#" onClick="MM_openBrWindow('mono.php?Content_Code=<?php print $row['content_code']; ?>','Ringtone','scrollbars=yes,width=400,height=500')"><img src="image/speaker.gif" width="13" height="13" border="0"></a> 11<?php print $row['content_code']; ?></td>
                                  <td width="12%" align="center" class="textnormal1"><a href="#" onClick="MM_openBrWindow('poly.php?Content_Code=<?php print $row['content_code']; ?>','Ringtone','scrollbars=yes,width=400,height=500')"><img src="image/speaker.gif" width="13" height="13" border="0"></a> 12<?php print $row['content_code']; ?></td>
                                  <td width="12%" align="center" class="textnormal1"><a href="#" onClick="MM_openBrWindow('truetone.php?Content_Code=<?php print $row['content_code']; ?>','Ringtone','scrollbars=yes,width=400,height=500')"><img src="image/speaker.gif" width="13" height="13" border="0"></a> 13<?php print $row['content_code']; ?></td>
                                  <td width="12%" align="center" class="textnormal1"><a href="download.php?fname=<?php print $row['content_code']; ?>"><img src="image/speaker.gif" width="13" height="13" border="0"></a> 13<?php print $row['content_code']; ?></td>
                                </tr>
                              </table></td>
                          </tr>
<?php
            if($i > 10){
              break;
            }
        }
      }
      mysql_free_result($result);
?>
                          <tr>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="30%" class="textnormal1">&nbsp;</td>
                                  <td width="34%" class="textnormal1">&nbsp;</td>
                                  <td width="12%" align="center" class="textnormal1">&nbsp;</td>
                                  <td width="12%" align="center" class="textnormal1">&nbsp;</td>
                                  <td width="12%" align="center" class="textnormal1"><a href="all_ringtone.php">ยังมีต่อ ...</a></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td height="7" background="image/Tab3.gif"></td>
                    </tr>
                  </table>
                  <table width="586" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="7"></td>
                    </tr>
                  </table>
                  <!--table width="585" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="60" align="center" class="Box4">Advertise</td>
                    </tr>
                  </table>
                  <table width="585" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="7"></td>
                    </tr>
                  </table>
                  <table width="585" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="7"></td>
                    </tr>
                  </table-->
                  <table width="585" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="28" background="image/Tab1.gif"><img src="image/ColorWallpaper.jpg"></td>
                    </tr>
                    <tr> 
                      <td height="2" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr> 
                      <td valign="top" bgcolor="#F7F1FD"><table width="585" border="0" cellspacing="0" cellpadding="0">
<?php
    $iCount = 0;
    $sqlCmd  = "SELECT COUNT(*) I_COUNT ";
    $sqlCmd .= "FROM   content ";
    $sqlCmd .= "WHERE  category_code = '2' ";
    $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
    if($row = mysql_fetch_array($result)){
        $iCount = $row['I_COUNT'];
    }
    mysql_free_result($result);
    if($iCount > 6) $iCount = $iCount - 6;

//    $iRand = rand(1, $iCount);
    $iRand = 1;

    $i = 0;
    $iNo = 0;
    $sqlCmd  = "SELECT * ";
    $sqlCmd .= "FROM   content ";
    $sqlCmd .= "WHERE  category_code = '2' ";
    $sqlCmd .= "ORDER BY content_code DESC ";
    $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
    while($row = mysql_fetch_array($result)){
        $iNo++;
        if($iNo >= $iRand){
            $i++;
            if( ($i % 3) == 1){
?>

                          <tr align="center"> 
<?php
            }
?>
                            <td width="195" height="80"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td width="80" align="center"><a href="#" onClick="MM_openBrWindow('color.php?Content_Code=<?php print $row['content_code']; ?>','Color','scrollbars=yes,width=400,height=500')"><img src="color/128x128/<?php print $row['content_code']; ?>.gif" width="64" height="64" border="1"></a></td>
                                  <td class="textnormal1"><center>14<?php print $row['content_code']; ?><br>
                                    <?php print $row['title']; ?></center></td>
                                </tr>
                              </table></td>
<?php
            if( ($i % 3) == 0){
?>
                          </tr>
<?php
            }
            if($i >= 6) break;
        }
    }
    mysql_free_result($result);
?>
                          <tr align="right"> 
                            <td width="195">&nbsp;</td>
                            <td width="195">&nbsp;</td>
                            <td width="195" class="textnormal1"><a href="all_color.php">ยังมีต่อ ...</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td height="7" background="image/Tab3.gif"></td>
                    </tr>
                  </table> 
                  <table width="585" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="7"></td>
                    </tr>
                  </table>
                  <table width="585" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td height="28" background="image/Tab1.gif"><img src="image/ScreenSaver.jpg"></td>
                    </tr>
                    <tr> 
                      <td height="2" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr> 
                      <td valign="top" bgcolor="#F7F1FD"><table width="585" border="0" cellspacing="0" cellpadding="0">
<?php
    $iCount = 0;
    $sqlCmd  = "SELECT COUNT(*) I_COUNT ";
    $sqlCmd .= "FROM   content ";
    $sqlCmd .= "WHERE  category_code = '3' ";
    $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
    if($row = mysql_fetch_array($result)){
        $iCount = $row['I_COUNT'];
    }
    mysql_free_result($result);
    if($iCount > 6) $iCount = $iCount - 6;

    $iRand = rand(1, $iCount);

    $i = 0;
    $iNo = 0;
    $sqlCmd  = "SELECT * ";
    $sqlCmd .= "FROM   content ";
    $sqlCmd .= "WHERE  category_code = '3' ";
    $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
    while($row = mysql_fetch_array($result)){
        $iNo++;
        if($iNo >= $iRand){
            $i++;
            if( ($i % 3) == 1){
?>

                          <tr align="center">
<?php
            }
?>
                            <td width="195" height="80"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="80" align="center"><a href="#" onClick="MM_openBrWindow('screen.php?Content_Code=<?php print $row['content_code']; ?>','Screen','scrollbars=yes,width=400,height=500')"><img src="screen/128x128/<?php print $row['content_code']; ?>.gif" width="64" height="64" border="1"></a></td>
                                  <td class="textnormal1"><center>15<?php print $row['content_code']; ?><br>
                                    <?php print $row['title']; ?></center></td>
                                </tr>
                              </table></td>
<?php
            if( ($i % 3) == 0){
?>
                          </tr>
<?php
            }
            if($i >= 6) break;
        }
    }
    mysql_free_result($result);
    mysql_close();
?>
                          <tr align="right">
                            <td width="195">&nbsp;</td>
                            <td width="195">&nbsp;</td>
                            <td width="195" class="textnormal1"><a href="all_screen.php">ยังมีต่อ ...</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td height="7" background="image/Tab3.gif"></td>
                    </tr>
                  </table> 
				  <table width="585" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td>&nbsp;</td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
      </table> </td>
    <!--td background="image/bk_01.gif">&nbsp;</td-->
  </tr>
  <tr>
    <td height="40" align="center" bgcolor="#DABEF5" class="textnormal1">Copyright 2006@Ministry of 
      Culture </td>
    <!--td background="image/bk_01.gif">&nbsp;</td-->
  </tr>
</table>
</body>
</html>
