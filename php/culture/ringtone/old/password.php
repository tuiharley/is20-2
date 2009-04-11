<?php
  include("wizards/inc/const.inc.php");
  include("wizards/inc/function.inc.php");
  include("wizards/inc/db_data.inc.php");
  include("wizards/inc/mobile.inc.php");

  if(getenv("REQUEST_METHOD") == "POST"){
      // connect database
      mysql_connect($dbhost, $dbuser, $dbpasswd) or die("Can not connect Server.");
      mysql_select_db($dbname) or die("Can not Database");

      $Password = "";
      $sqlCmd  = "SELECT password, email ";
      $sqlCmd .= "FROM   member ";
      $sqlCmd .= "WHERE  mobile_no = '$Mobile_No' ";
      $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
      if($row = mysql_fetch_array($result)){
        $Password = $row['password'];
        $Email = $row['email'];
      }
      mysql_free_result($result);

      if($Password != ""){
          $Message = "รหัสผ่านของท่าน คือ " . $Password;

          $subject = 'รหัสผ่าน เว็บไซต์เพื่อให้บริการเสริมบนโทรศัพท์เคลื่อนที่ของกระทรวงวัฒนธรรม ';
          $message = 'รหัสผ่านของท่าน คือ ' . $Password;
          $headers = 'From: webmaster@m-culture.go.th' . "\r\n";
          mail($Email, $subject, $message, $headers);
          $Msg = "ระบบได้ทำการจัดส่งรหัสผ่านไปยัง อีเมล์ของท่านเรียบร้อยแล้ว ขอบคุณมากคะ";
//          $i = Send_Content($Mobile_No, "1", $Message);
//          if($i == 1){
//              $sqlCmd  = "INSERT INTO send_log(send_date, mobile_no, detail) VALUES(now(), '$Mobile_No', 'รหัสผ่าน') ";
//              mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");

//              $Msg = "ระบบได้ทำการจัดส่งรหัสผ่านไปยังมือถือของท่านเรียบร้อยแล้ว ขอบคุณมากคะ";
//          }else{
//              $Msg = "ระบบไม่สามารถทำการจัดส่งรหัสผ่านไปยังมือถือของท่านได้ กรุณาตรวจสอบอีกครั้ง ขอบคุณมากคะ";
//          }
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
          mysql_close();
?>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=tis-620" />
      <SCRIPT LANGUAGE="JavaScript">
      <!--
      alert('เบอร์มือถือเบอร์นี้ไม่มีการเปิดใช้บริการ กรุณาตรวจสอบอีกครั้งคะ ขอบคุณมากคะ');
      window.close();
      //-->
      </SCRIPT>
  </head> 
</hmtl>
<?php
      }
  }
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>กระทรวงวัฒนธรรม</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<link href="ministrystss.css" rel="stylesheet" type="text/css">
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
    return true;
  }
</script>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align=center>
  <tr> 
    <td width="780"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="120" background="image/banner.gif"></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="30" background="image/bk_02.gif" class="Box4"><b>&nbsp;ลืมรหัสผ่าน</b></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="100%" align="center" valign="top" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="4"></td>
              </tr>
            </table>
            <table width="99%" border="0" cellpadding="0" cellspacing="0" class="Box1">
              <tr> 
                <td>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td align="center" bgcolor="#F7F1FD"><form method=post action=password.php onSubmit="return validate(this)">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr valign="top" align="center">
                            <td height="4"></td>
                            <td class="textnormal1"><p align=left>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;กรุณาใส่เบอร์มือถือที่คุณใช้เข้าสู่ระบบ</p><b>เบอร์มือถือ : </b> <input name="Mobile_No" type="text" class="Box2" maxlength=9></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr align="center">
                            <td>&nbsp;</td>
                            <td><input type=image src="image/bPassword.gif" width="55" height="22" border="0"></td>
                          </tr>
                        </table></form>
                      </td>
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
