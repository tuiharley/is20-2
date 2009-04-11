<?php
  include("wizards/inc/const.inc.php");
  include("wizards/inc/function.inc.php");
  include("wizards/inc/db_data.inc.php");
  include("wizards/inc/mobile.inc.php");

  if(getenv("REQUEST_METHOD") == "POST"){
      // connect database
      mysql_connect($dbhost, $dbuser, $dbpasswd) or die("Can not connect Server.");
      mysql_select_db($dbname) or die("Can not Database");

      $iCount = 0;
      $sqlCmd  = "SELECT COUNT(*) I_COUNT ";
      $sqlCmd .= "FROM   member ";
      $sqlCmd .= "WHERE  mobile_no = '$Mobile_No' ";
      $sqlCmd .= "AND    password = '$Password' ";
      $result = mysql_query($sqlCmd) or die("Can not select data<br>$sqlCmd");
      if($row = mysql_fetch_array($result)){
        $iCount= $row['I_COUNT'];
      }
      mysql_free_result($result);
      mysql_close();

      if($iCount > 0){
          session_register("m_culture");
          $m_culture= $Mobile_No;
          $Msg = "ขอต้อนรับเข้าสู่ระบบคะ";
      }else{
          $Msg = "รหัสผ่านไม่ถูกต้อง กรุณาตรวจสอบอีกครั้ง ขอบคุณคะ";
      }
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
  }
?>
