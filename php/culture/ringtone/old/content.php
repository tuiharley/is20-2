<?php
    include("wizards/inc/const.inc.php");

    header("Content-type: text/vnd.wap.wml");
    echo "<?xml version=\"1.0\"?>";
    echo "<!DOCTYPE wml PUBLIC \"-//WAPFORUM//DTD WML 1.1//EN\""." \"http://www.wapforum.org/DTD/wml_1.1.xml\">";

    $ErrMsg = "";
    if(strlen($code) != 7){
        $ErrMsg = "Content not found.";
    }else{
        $Type = substr($code, 0, 2);
        $Content_Code = substr($code, 2);
        // connect database
        mysql_connect($dbsmshost, $dbsmsuser, $dbsmspasswd);
        mysql_select_db($dbsmsname);
        if($Type == "12"){
            $gourl = "song/12/" . $Content_Code . ".mid";
        }elseif($Type == "13"){
            // connect database
            mysql_connect($dbhost, $dbuser, $dbpasswd) or die("Can not connect Server.");
            mysql_select_db($dbname) or die("Can not Database");

            $sAgent = strtolower(getenv("HTTP_USER_AGENT"));
            $user_agent = "";
            $sSupport = "";
            $sql  = "SELECT user_agent, support ";
            $sql .= "FROM   content_header ";
            $result = mysql_query($sql);
            while($row = mysql_fetch_array($result)){
                $user_agent = $row['user_agent'];
                $iPos = strpos($sAgent, $user_agent);
                if(! ($iPos === false) ) {
                    $sSupport = $row['support'];
                    break;
                }
            }
            mysql_free_result($result);
            mysql_close();
            if(strlen($sSupport) <=1 ){
                $ErrMsg = "Content not support.";
            }else{
                $gourl = "song/13/" . $Content_Code . "." . $sSupport;
            }
        }elseif( ($Type == "14") || ($Type == "15") ){
            // connect database
            mysql_connect($dbhost, $dbuser, $dbpasswd) or die("Can not connect Server.");
            mysql_select_db($dbname) or die("Can not Database");

            $sAgent = strtolower(getenv("HTTP_USER_AGENT"));
            $user_agent = "";
            $sSizes = "128x128";
            $sql  = "SELECT user_agent, sizes ";
            $sql .= "FROM   content_header ";
            $result = mysql_query($sql);
            while($row = mysql_fetch_array($result)){
                $user_agent = $row['user_agent'];
                $iPos = strpos($sAgent, $user_agent);
                if(! ($iPos === false) ) {
                    $sSizes = $row['sizes'];
                    break;
                }
            }
            mysql_free_result($result);
            mysql_close();
            if(strlen($sSizes) <=1 ){
                $sSizes = "128x128";
            }
            if($Type == "14") $sPath = "color"; else $sPath = "screen";
            $gourl = $sPath . "/" . $sSizes . "/" . $Content_Code . ".gif";
        }else{
            $ErrMsg = "Content not found.";
        }
    }
    if($ErrMsg != ""){
?>
<wml>
<card id="tel2you" title="M-Culture" newcontext="true">
<p align="center">
<?php print $ErrMsg; ?>
</p>
</card>
</wml>
<?php
    }else{
?>
<wml>
<card id="tel2you" title="M-Culture" ontimer="<?php print $gourl; ?>" newcontext="true">
<timer value="1"/>
<p align="center">
<?php print "Thank you na ka. Please wait a minute."; ?>
</p>
</card>
</wml>
<?php
    }
?>
