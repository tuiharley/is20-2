<?php
  include("wizards/inc/const.inc.php");
  include("wizards/inc/function.inc.php");
  include("wizards/inc/db_data.inc.php");
  include("wizards/inc/mobile.inc.php");

  if(getenv("REQUEST_METHOD") == "POST"){
      // connect database
      mysql_connect($dbhost, $dbuser, $dbpasswd) or die("Can not connect Server.");
      mysql_select_db($dbname) or die("Can not Database");

      $Status = "";
      $sqlCmd  = "SELECT status ";
      $sqlCmd .= "FROM   member ";
      $sqlCmd .= "WHERE  mobile_no = '$Mobile_No' ";
      $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
      if($row = mysql_fetch_array($result)){
        $Status = $row['status'];
      }
      mysql_free_result($result);

      if($Status == ""){
          $Password=strtolower(str_replace("0", "T", str_replace(".", "U", str_replace("/", "N", substr(crypt($Mobile_No), -8)))));
//          $Message = "รหัสผ่านของท่าน คือ " . $Password;
//          $i = Send_Content($Mobile_No, "1", $Message);
          if($i == 1){
              $sqlCmd  = "INSERT INTO member(mobile_no, password, sex, birthdate, province, email, status, reg_date) VALUES('$Mobile_No', '" . checkDB($Password) . "','$Sex', '$BirthDate', '$Province', '$Email', 'Y', now()) ";
              mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");

              $subject = 'รหัสผ่าน เว็บไซต์เพื่อให้บริการเสริมบนโทรศัพท์เคลื่อนที่ของกระทรวงวัฒนธรรม ';
              $message = 'รหัสผ่านของท่าน คือ ' . $Password;
              $headers = 'From: webmaster@m-culture.go.th' . "\r\n";
              mail($Email, $subject, $message, $headers);
              $Msg = "ระบบได้ทำการจัดส่งรหัสผ่านไปยัง อีเมล์ของท่านเรียบร้อยแล้ว ขอบคุณมากคะ";
          }else{
              $Msg = "ระบบไม่สามารถทำการจัดส่งรหัสผ่านไปยังมือถือของท่านได้ กรุณาตรวจสอบอีกครั้ง ขอบคุณมากคะ";
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
          mysql_close();
?>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=tis-620" />
      <SCRIPT LANGUAGE="JavaScript">
      <!--
      alert('เบอร์มือถือเบอร์นี้มีการเปิดใช้บริการแล้ว กรุณาตรวจสอบอีกครั้งคะ ขอบคุณมากคะ');
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
<iframe width=174 height=189 name="gToday:normal:agenda.js" id="gToday:normal:agenda.js" src="wizards/calendar/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; left:-500px; top:0px;"></iframe>

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

  function checkemail(em)
  {
    if(em == "") return false;
    if(em.indexOf('@',0) < 1) { return false; }
    else if(em.indexOf('.',0) == -1 || em.lastIndexOf('.') == em.length-1 || em.lastIndexOf('@') != em.indexOf('@',0)) { return false; }
    else if(em.indexOf('.',0) == em.indexOf('@',0)+1) { return false; }
    else {
      if (chk_char(em)) {
        return true;
      }
      else {
        return false;
      }
    }
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

    if ( trim(form.BirthDate.value) == "" )
    {
      alert("กรุณาใส่วันเกิดใหม่อีกครั้งคะ");
      form.BirthDate.focus();
      return false;
    }

    if ( trim(form.Province.value) == "0" )
    {
      alert("กรุณาเลือกจังหวัดด้วยคะ");
      form.Province.focus();
      return false;
    }

    if ( !checkemail(trim(form.Email.value)) )
    {
      alert("กรุณาใส่อีเมล์ใหม่อีดครั้งคะ");
      form.Email.focus();
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
          <td height="30" background="image/bk_02.gif" class="Box4"><b>&nbsp;สมัครสมาชิก</b></td>
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
                      <td align="center" bgcolor="#F7F1FD"><form name=composeform method=post action=member.php onSubmit="return validate(this)">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr valign="top" align="center">
                            <td height="4"></td>
                            <td colspan=2 class="textnormal1"><p align=left>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;กรุณาใส่รายละเอียดของคุณในการเข้าสู่ระบบ</p><br></td>
                          </tr>
                          <tr valign="top" align="left">
                            <td height="4"></td>
                            <td class="textnormal1"><b>เบอร์มือถือ : </b></td>
                            <td class="textnormal1"><input name="Mobile_No" type="text" class="Box2" maxlength=9></td>
                          </tr>
                          <tr valign="top" align="left">
                            <td height="4"></td>
                            <td class="textnormal1"><b>เพศ : </b></td>
                            <td class="textnormal1"><input type="radio" name="Sex" id="Sex" value="M" <?php if($Sex != "F") print "checked"; ?>>ชาย <input type="radio" name="Sex" id="Sex" value="F" <?php if($Sex == "F") print "checked"; ?>>หญิง</td>
                          </tr>
                          <tr valign="top" align="left">
                            <td height="4"></td>
                            <td class="textnormal1"><b>วันเกิด : </b></td>
                            <td class="textnormal1"><input name="BirthDate" size="11" value="<?php print $BirthDate; ?>"><a href="javascript:void(0)" onclick="gfPop.fPopCalendar(document.composeform.BirthDate);return false;" HIDEFOCUS><img name="popcal" align="absmiddle" src="wizards/calendar/calbtn.gif" width="34" height="22" border="0" alt=""></a></td>
                          </tr>
                          <tr valign="top" align="left">
                            <td height="4"></td>
                            <td class="textnormal1"><b>จัวหวัด : </b></td>
                            <td class="textnormal1">
                              <select name=Province>
                                <option value="0">เลือกจังหวัด</option>
<?php
      // connect database
      mysql_connect($dbhost, $dbuser, $dbpasswd) or die("Can not connect Server.");
      mysql_select_db($dbname) or die("Can not Database");

      $sqlCmd  = "SELECT province, province_thai ";
      $sqlCmd .= "FROM   admin_province ";
      $sqlCmd .= "ORDER BY province_thai ";
      $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
      while($row = mysql_fetch_array($result)){
?>
                                <option value="<?php print $row['province']; ?>" <?php if($Province == $row['province']) print "selected"; ?>><?php print $row['province_thai']; ?></option>
<?php
      }
      mysql_free_result($result);
      mysql_close();
?>
                              </select>
                            </td>
                          </tr>
                          <tr valign="top" align="left">
                            <td height="4"></td>
                            <td class="textnormal1"><b>อีเมล์ : </b></td>
                            <td class="textnormal1"><input type="text" name="Email" id="Email" value="<?php print $Email ?>" size="30" maxlength="100"><input name="blank" type="hidden"></td>
                          </tr>
                          <tr>
                            <td height="10"></td>
                          </tr>
                          <tr align="center">
                            <td>&nbsp;</td>
                            <td><input type=image src="image/bmember.gif" width="55" height="22" border="0"></td>
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
