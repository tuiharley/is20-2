<%Response.Expires = -1%>
<%
	On Error Resume Next
	Set FSO = Server.CreateObject("Scripting.FileSystemObject")
	Set LogFile = FSO.OpenTextFile("F:\CSCLOGS\OGC_" & (Year(Now)*100+Month(Now)) & ".log",8,true)
	LogFile.WriteLine(Date & " " & Time & " " & Request.ServerVariables("REMOTE_ADDR") & " " & Request.ServerVariables("PATH_INFO"))
	LogFile.Close	
	FSO = Nothing
%>
<html>
<head>
<title>Gas Composition Past 7 Days (NPC)</title>
<style type="text/css">
<!--
.head { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#FFFFFF }
.head2 { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#FFFFFF }
.head3 { font-family: MS Sans Serif; font-size:8pt;  color:#FFFFFF }
.head4 { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#000000 }
.body1 { font-family: MS Sans Serif; font-size:6pt;color:#FF0000 }
.body2 { font-family: MS Sans Serif; font-size:6pt; }
-->
</style>
<script language="JavaScript">
<!-- Hide the script from old browsers 
var timerID = null;
function ShowDoc () {
	timerID = setTimeout("ShowDoc2()",300000);	  //60000=1 minute
}

function ShowDoc2 () {
	document.clear 
	timerID = setTimeout(document.location='9_23.asp',300000);	  
}
//  -->
</script>
<base target="bottom">
<link rel="stylesheet" href="../csc-text.css" type="text/css">
</head>

<body bgcolor="#FFFFFF" leftmargin="5" topmargin="0" onload="javascript:ShowDoc()">
<!-- #include file = "header.asp" -->
<table width="829" border="0" cellspacing="0" cellpadding="0">
  <tr> 
	<td width="20" bgcolor="#000066">&nbsp;</td>
	<td width="809" class="head4" bgcolor="#000066"><font color="#FFFFFF">Gas Composition Past 7 days (NPC)</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="832">
  <tr class="head">
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT NPC - PAST 7 DAYS</strong></td>
  </tr>
  
  <tr align="center" bgcolor="#B3A377" class="head2">
	<td WIDTH="104">TIME</td>
	<td WIDTH="40">CO<sub>2</sub></td>
	<td WIDTH="42">C<sub>1</sub></td>
	<td WIDTH="36">C<sub>2</sub></td>	
	<td WIDTH="37">C<sub>3</sub></td>
	<td WIDTH="37">iC<sub>4</sub></td>
	<td WIDTH="37">nC<sub>4</sub></td>
	<td WIDTH="32">iC<sub>5</sub></td>
	<td WIDTH="38">nC<sub>5</sub></td>
	<td WIDTH="36">C<sub>6</sub>+</td>
	<td WIDTH="41">N<sub>2</sub></td>
	<td WIDTH="66"> 
	  <table border="0" cellspacing="0" width="100%" bgcolor="#B3A377">
	  <tr class="head2" align="center">
		<td width="100%">HHV(dry)</td>
	  </tr>
	  <tr class="head3" align="center">
		<td width="100%">(BTU/SCF)</td>
	  </tr>
	  </table>
	</td>
	<td WIDTH="44">SG.</td>
	<td WIDTH="59"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="head2" align="center">
		<td width="100%">WI</td>
	  </tr>
	  <tr class="head3" align="center">
		<td width="100%">(BTU/SCF)</td>
	  </tr>
	</table>
	</td> 
  </tr>

  
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:01</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;10:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;09:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;08:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;07:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;06:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;05:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;04:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;03:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;02:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;01:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;00:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;23:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;22:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;21:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;20:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;19:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;18:01</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;17:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;16:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;15:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;14:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;13:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;12:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;11:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;10:02</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;09:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;08:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;07:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;06:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;05:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;04:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;03:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;02:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;01:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;00:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;23:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;22:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;21:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;20:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;19:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;18:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;17:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;16:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;15:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;14:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;13:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;12:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;11:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;10:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;09:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;08:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;07:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;06:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;05:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;04:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;03:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;02:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;01:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;00:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;23:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;22:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;21:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;20:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;19:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;18:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;17:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;16:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;15:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;14:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;13:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;12:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;11:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;10:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;09:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;08:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;07:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;06:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;05:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;04:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;03:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;02:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;01:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;00:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;23:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;22:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;21:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;20:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;19:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;18:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;17:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;16:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;15:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;14:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;13:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;12:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;11:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;10:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;09:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;08:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;07:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;06:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;05:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;04:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;03:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;02:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;01:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;00:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;23:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;22:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;21:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;20:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;19:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;18:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;17:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;16:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;15:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;14:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;13:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;12:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;11:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;10:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;09:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;08:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;07:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;06:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;05:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;04:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;03:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;02:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;01:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;00:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;23:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;22:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;21:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;20:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;19:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;18:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;17:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;16:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;15:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;14:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;13:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;12:00</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center>0.000000</td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td>
	<td align=center></td> 
  </tr>
	
 </table>
<p><strong><font face="MS Sans Serif"><small>*** ตัวอักษร สีดำ หมายถึง ค่าเฉลี่ยต่อชั่วโมง 
  และ <font
color="#FF0000">สีแดง</font> หมายถึง ค่าปัจจุบัน ***</small></font></strong></p>
<p><u><strong><font face="MS Sans Serif"><small>หมายเหตุ</small></font></strong></u></p>
<blockquote> 
  <p><font face="MS Sans Serif"><small>1. ไม่ใช่ข้อมูลที่ใช้ซื้อขาย</small></font></p>
  <p><font face="MS Sans Serif"><small>2. ข้อมูลอาจ ERROR จากกำลังสอบเทียบ</small></font></p>
  <!--p><font face="MS Sans Serif"><small>3. Wobbe Index = HHV(dry)/SQR(SG)</small></font></p>
  <p><font face="MS Sans Serif"><small>4. HHV(dry) x 0.9826 = HHV(sat)</small></font></p-->
  <p><font face="MS Sans Serif"><small>3. กรณี ค่าที่แสดงผลเกินค่าควบคุม  ขอให้ติดต่อกับ CCR โรงแยกก๊าซฯ ระยอง   โทร. (038) 685012</small></font></p>
</blockquote>
</body>
</html>
