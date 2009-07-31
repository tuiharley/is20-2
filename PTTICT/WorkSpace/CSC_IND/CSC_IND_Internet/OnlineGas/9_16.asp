<%Response.Expires =  - 1 %>
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
<title>Current Gas Quality (West)</title>
<style type="text/css">
<!--
.head { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#FFFFFF }
.head2 { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#FFD8B0 }
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
	timerID = setTimeout(document.location='9_16.asp',300000);	  
}
//  -->
</script>
</head>
<body bgcolor="#FFFFFF" leftmargin="7" topmargin="0" onload="javascript:ShowDoc()" >
<!-- #include file = "header.asp" -->
<table width="770" border="0" cellspacing="0" cellpadding="0">
  <tr> 
	<td width="20" bgcolor="#000066">&nbsp;</td>
	<td width="750" class="head4" bgcolor="#000066"><font color="#FFFFFF">Current 
	  Gas Quality (West)</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="663">
  <tr class="head"> 
	<td bgcolor="#1774DB" align="left" colspan="16"  ><strong>ON LINE MONITOR 
	  BY GAS CHROMATOGRAPH - CURRENT</strong></td>
  </tr>
  <tr align="center" bgcolor="#4192EB" class="head2"> 
	<td WIDTH="106" rowspan="2" ><font color="#FFFFFF">TIME</font></td>
	<td  colspan="4" >AT Ban I Tong (BIT)</td>
	<td  colspan="4" >AT Ratchaburi (RB)</td>
  </tr>
  <tr align="center" bgcolor="#4192EB"> 
	<td height="3" width="65" class="head">
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr class="head" align="center"> 
		  <td>LHV(dry)</td>
		</tr>
		<tr class="head3" align="center"> 
		  <td>(BTU/SCF)</td>
		</tr>
	  </table>
	</td>	  
	<td height="3" width="65"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr class="head" align="center"> 
		  <td>HHV(dry)</td>
		</tr>
		<tr class="head3" align="center"> 
		  <td>(BTU/SCF)</td>
		</tr>
	  </table>
	</td>
	<td WIDTH="58" height="3" class="head" >SG.</td>
	<td WIDTH="60"  height="3"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr class="head" align="center"> 
		  <td>WI</td>
		</tr>
		<tr class="head3" align="center"> 
		  <td>(BTU/SCF)</td>
		</tr>
	  </table>
	</td>
	<td height="3" width="65" class="head">
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr class="head" align="center"> 
		  <td>LHV(dry)</td>
		</tr>
		<tr class="head3" align="center"> 
		  <td>(BTU/SCF)</td>
		</tr>
	  </table>
	</td>
	<td height="3" width="65"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr class="head" align="center"> 
		  <td>HHV(dry)</td>
		</tr>
		<tr class="head3" align="center"> 
		  <td>(BTU/SCF)</td>
		</tr>
	  </table>
	</td>
	<td WIDTH="58" height="3" class="head" >SG.</td>
	<td WIDTH="60"  height="3"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr class="head" align="center"> 
		  <td>WI</td>
		</tr>
		<tr class="head3" align="center"> 
		  <td>(BTU/SCF)</td>
		</tr>
	  </table>
	</td>
  </tr>
  
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:45</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:40</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:35</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:30</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:25</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:20</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:15</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:10</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:05</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:55</td>
	<td align=center>-</td>
	<td align=center>848.6357</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.0570</td>
	<td align=center>-</td>
	<td align=center>849.2658</td>
	<td align=center>0.7223000</td>
	<td align=center>999.4583</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:50</td>
	<td align=center>-</td>
	<td align=center>847.9855</td>
	<td align=center>0.7200000</td>
	<td align=center>999.3605</td>
	<td align=center>-</td>
	<td align=center>850.7624</td>
	<td align=center>0.7225000</td>
	<td align=center>998.7837</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:45</td>
	<td align=center>-</td>
	<td align=center>848.9538</td>
	<td align=center>0.7203000</td>
	<td align=center>1000.2930</td>
	<td align=center>-</td>
	<td align=center>851.9626</td>
	<td align=center>0.7226000</td>
	<td align=center>999.2285</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:40</td>
	<td align=center>-</td>
	<td align=center>849.0505</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.4770</td>
	<td align=center>-</td>
	<td align=center>851.1788</td>
	<td align=center>0.7224000</td>
	<td align=center>1000.8930</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:35</td>
	<td align=center>-</td>
	<td align=center>849.0624</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.4910</td>
	<td align=center>-</td>
	<td align=center>849.9908</td>
	<td align=center>0.7222000</td>
	<td align=center>1002.1950</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:30</td>
	<td align=center>-</td>
	<td align=center>847.8824</td>
	<td align=center>0.7201000</td>
	<td align=center>999.1697</td>
	<td align=center>-</td>
	<td align=center>848.7827</td>
	<td align=center>0.7222000</td>
	<td align=center>1001.4060</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:25</td>
	<td align=center>-</td>
	<td align=center>848.1490</td>
	<td align=center>0.7202000</td>
	<td align=center>999.4144</td>
	<td align=center>-</td>
	<td align=center>848.0274</td>
	<td align=center>0.7221000</td>
	<td align=center>1000.1430</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:20</td>
	<td align=center>-</td>
	<td align=center>847.0916</td>
	<td align=center>0.7200000</td>
	<td align=center>998.3070</td>
	<td align=center>-</td>
	<td align=center>848.3434</td>
	<td align=center>0.7221000</td>
	<td align=center>997.9494</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:15</td>
	<td align=center>-</td>
	<td align=center>846.2118</td>
	<td align=center>0.7198000</td>
	<td align=center>997.4087</td>
	<td align=center>-</td>
	<td align=center>848.3957</td>
	<td align=center>0.7222000</td>
	<td align=center>998.1235</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:10</td>
	<td align=center>-</td>
	<td align=center>846.3588</td>
	<td align=center>0.7198000</td>
	<td align=center>997.5819</td>
	<td align=center>-</td>
	<td align=center>848.3087</td>
	<td align=center>0.7221000</td>
	<td align=center>998.3113</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:05</td>
	<td align=center>-</td>
	<td align=center>846.4193</td>
	<td align=center>0.7200000</td>
	<td align=center>997.5146</td>
	<td align=center>-</td>
	<td align=center>848.6115</td>
	<td align=center>0.7221000</td>
	<td align=center>998.2328</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>848.3350</td>
	<td align=center>0.7200000</td>
	<td align=center>999.7723</td>
	<td align=center>-</td>
	<td align=center>848.7136</td>
	<td align=center>0.7222000</td>
	<td align=center>998.5755</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:55</td>
	<td align=center>-</td>
	<td align=center>847.7793</td>
	<td align=center>0.7200000</td>
	<td align=center>999.1175</td>
	<td align=center>-</td>
	<td align=center>848.5195</td>
	<td align=center>0.7221000</td>
	<td align=center>998.6972</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:50</td>
	<td align=center>-</td>
	<td align=center>848.4024</td>
	<td align=center>0.7200000</td>
	<td align=center>999.8518</td>
	<td align=center>-</td>
	<td align=center>848.5677</td>
	<td align=center>0.7222000</td>
	<td align=center>998.6808</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:45</td>
	<td align=center>-</td>
	<td align=center>848.3589</td>
	<td align=center>0.7200000</td>
	<td align=center>999.8006</td>
	<td align=center>-</td>
	<td align=center>848.6287</td>
	<td align=center>0.7221000</td>
	<td align=center>998.5242</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:40</td>
	<td align=center>-</td>
	<td align=center>847.8603</td>
	<td align=center>0.7201000</td>
	<td align=center>999.1436</td>
	<td align=center>-</td>
	<td align=center>848.9047</td>
	<td align=center>0.7222000</td>
	<td align=center>998.6307</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:35</td>
	<td align=center>-</td>
	<td align=center>847.4105</td>
	<td align=center>0.7200000</td>
	<td align=center>998.6829</td>
	<td align=center>-</td>
	<td align=center>848.7257</td>
	<td align=center>0.7222000</td>
	<td align=center>999.0024</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:30</td>
	<td align=center>-</td>
	<td align=center>847.9158</td>
	<td align=center>0.7200000</td>
	<td align=center>999.2783</td>
	<td align=center>-</td>
	<td align=center>848.8703</td>
	<td align=center>0.7221000</td>
	<td align=center>998.9116</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:25</td>
	<td align=center>-</td>
	<td align=center>848.1094</td>
	<td align=center>0.7201000</td>
	<td align=center>999.4371</td>
	<td align=center>-</td>
	<td align=center>848.8790</td>
	<td align=center>0.7222000</td>
	<td align=center>998.6833</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:20</td>
	<td align=center>-</td>
	<td align=center>846.9147</td>
	<td align=center>0.7200000</td>
	<td align=center>998.0986</td>
	<td align=center>-</td>
	<td align=center>848.6060</td>
	<td align=center>0.7222000</td>
	<td align=center>998.8794</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:15</td>
	<td align=center>-</td>
	<td align=center>847.6471</td>
	<td align=center>0.7199000</td>
	<td align=center>999.0311</td>
	<td align=center>-</td>
	<td align=center>848.7603</td>
	<td align=center>0.7222000</td>
	<td align=center>998.5693</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:10</td>
	<td align=center>-</td>
	<td align=center>848.1813</td>
	<td align=center>0.7200000</td>
	<td align=center>999.5912</td>
	<td align=center>-</td>
	<td align=center>848.8124</td>
	<td align=center>0.7223000</td>
	<td align=center>998.5545</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:05</td>
	<td align=center>-</td>
	<td align=center>847.8577</td>
	<td align=center>0.7200000</td>
	<td align=center>999.2099</td>
	<td align=center>-</td>
	<td align=center>848.9134</td>
	<td align=center>0.7222000</td>
	<td align=center>998.7304</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>847.7930</td>
	<td align=center>0.7200000</td>
	<td align=center>999.1337</td>
	<td align=center>-</td>
	<td align=center>849.1858</td>
	<td align=center>0.7223000</td>
	<td align=center>998.9146</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:55</td>
	<td align=center>-</td>
	<td align=center>847.9232</td>
	<td align=center>0.7200000</td>
	<td align=center>999.2870</td>
	<td align=center>-</td>
	<td align=center>849.4453</td>
	<td align=center>0.7224000</td>
	<td align=center>998.9263</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:50</td>
	<td align=center>-</td>
	<td align=center>848.0264</td>
	<td align=center>0.7200000</td>
	<td align=center>999.4086</td>
	<td align=center>-</td>
	<td align=center>849.1357</td>
	<td align=center>0.7222000</td>
	<td align=center>999.1385</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:45</td>
	<td align=center>-</td>
	<td align=center>847.9627</td>
	<td align=center>0.7202000</td>
	<td align=center>999.1949</td>
	<td align=center>-</td>
	<td align=center>849.3657</td>
	<td align=center>0.7223000</td>
	<td align=center>999.4130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:40</td>
	<td align=center>-</td>
	<td align=center>848.7958</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.2460</td>
	<td align=center>-</td>
	<td align=center>849.1968</td>
	<td align=center>0.7223000</td>
	<td align=center>999.3785</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:35</td>
	<td align=center>-</td>
	<td align=center>847.9489</td>
	<td align=center>0.7202000</td>
	<td align=center>999.1785</td>
	<td align=center>-</td>
	<td align=center>848.8601</td>
	<td align=center>0.7222000</td>
	<td align=center>999.2294</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:30</td>
	<td align=center>-</td>
	<td align=center>848.0596</td>
	<td align=center>0.7202000</td>
	<td align=center>999.3090</td>
	<td align=center>-</td>
	<td align=center>848.9162</td>
	<td align=center>0.7222000</td>
	<td align=center>999.1624</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:25</td>
	<td align=center>-</td>
	<td align=center>848.1891</td>
	<td align=center>0.7200000</td>
	<td align=center>999.6004</td>
	<td align=center>-</td>
	<td align=center>849.1078</td>
	<td align=center>0.7223000</td>
	<td align=center>998.8031</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:20</td>
	<td align=center>-</td>
	<td align=center>847.5079</td>
	<td align=center>0.7200000</td>
	<td align=center>998.7976</td>
	<td align=center>-</td>
	<td align=center>848.9846</td>
	<td align=center>0.7222000</td>
	<td align=center>999.0837</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:15</td>
	<td align=center>-</td>
	<td align=center>848.4435</td>
	<td align=center>0.7200000</td>
	<td align=center>999.9003</td>
	<td align=center>-</td>
	<td align=center>848.6192</td>
	<td align=center>0.7221000</td>
	<td align=center>998.9536</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:10</td>
	<td align=center>-</td>
	<td align=center>848.2419</td>
	<td align=center>0.7201000</td>
	<td align=center>999.5933</td>
	<td align=center>-</td>
	<td align=center>849.0796</td>
	<td align=center>0.7222000</td>
	<td align=center>999.0090</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:05</td>
	<td align=center>-</td>
	<td align=center>848.3740</td>
	<td align=center>0.7202000</td>
	<td align=center>999.6796</td>
	<td align=center>-</td>
	<td align=center>848.9755</td>
	<td align=center>0.7222000</td>
	<td align=center>998.5886</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>848.4713</td>
	<td align=center>0.7201000</td>
	<td align=center>999.8635</td>
	<td align=center>-</td>
	<td align=center>848.9570</td>
	<td align=center>0.7222000</td>
	<td align=center>998.9585</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:55</td>
	<td align=center>-</td>
	<td align=center>848.5887</td>
	<td align=center>0.7202000</td>
	<td align=center>999.9326</td>
	<td align=center>-</td>
	<td align=center>849.0187</td>
	<td align=center>0.7222000</td>
	<td align=center>998.9685</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:50</td>
	<td align=center>-</td>
	<td align=center>847.6417</td>
	<td align=center>0.7202000</td>
	<td align=center>998.8166</td>
	<td align=center>-</td>
	<td align=center>848.9651</td>
	<td align=center>0.7222000</td>
	<td align=center>998.9535</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:45</td>
	<td align=center>-</td>
	<td align=center>847.7659</td>
	<td align=center>0.7203000</td>
	<td align=center>998.8936</td>
	<td align=center>-</td>
	<td align=center>848.9051</td>
	<td align=center>0.7222000</td>
	<td align=center>999.0019</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:40</td>
	<td align=center>-</td>
	<td align=center>848.3466</td>
	<td align=center>0.7205000</td>
	<td align=center>999.4390</td>
	<td align=center>-</td>
	<td align=center>849.0733</td>
	<td align=center>0.7222000</td>
	<td align=center>998.8724</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:35</td>
	<td align=center>-</td>
	<td align=center>849.1918</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.4350</td>
	<td align=center>-</td>
	<td align=center>849.2595</td>
	<td align=center>0.7222000</td>
	<td align=center>998.9174</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:30</td>
	<td align=center>-</td>
	<td align=center>849.1415</td>
	<td align=center>0.7204000</td>
	<td align=center>1000.4450</td>
	<td align=center>-</td>
	<td align=center>849.3229</td>
	<td align=center>0.7223000</td>
	<td align=center>999.0887</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:25</td>
	<td align=center>-</td>
	<td align=center>848.9605</td>
	<td align=center>0.7203000</td>
	<td align=center>1000.3010</td>
	<td align=center>-</td>
	<td align=center>849.4343</td>
	<td align=center>0.7223000</td>
	<td align=center>999.3024</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:20</td>
	<td align=center>-</td>
	<td align=center>848.7560</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.1300</td>
	<td align=center>-</td>
	<td align=center>849.3336</td>
	<td align=center>0.7222000</td>
	<td align=center>999.3295</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:15</td>
	<td align=center>-</td>
	<td align=center>848.0440</td>
	<td align=center>0.7204000</td>
	<td align=center>999.1520</td>
	<td align=center>-</td>
	<td align=center>849.1898</td>
	<td align=center>0.7222000</td>
	<td align=center>999.3564</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:10</td>
	<td align=center>-</td>
	<td align=center>849.1828</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.4240</td>
	<td align=center>-</td>
	<td align=center>849.2690</td>
	<td align=center>0.7222000</td>
	<td align=center>999.3835</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:05</td>
	<td align=center>-</td>
	<td align=center>848.6674</td>
	<td align=center>0.7204000</td>
	<td align=center>999.8864</td>
	<td align=center>-</td>
	<td align=center>849.2573</td>
	<td align=center>0.7223000</td>
	<td align=center>999.1843</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>848.2382</td>
	<td align=center>0.7202000</td>
	<td align=center>999.5195</td>
	<td align=center>-</td>
	<td align=center>849.5184</td>
	<td align=center>0.7223000</td>
	<td align=center>999.2178</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:55</td>
	<td align=center>-</td>
	<td align=center>849.2798</td>
	<td align=center>0.7203000</td>
	<td align=center>1000.6770</td>
	<td align=center>-</td>
	<td align=center>849.2570</td>
	<td align=center>0.7223000</td>
	<td align=center>999.6451</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:50</td>
	<td align=center>-</td>
	<td align=center>849.7957</td>
	<td align=center>0.7205000</td>
	<td align=center>1001.1460</td>
	<td align=center>-</td>
	<td align=center>849.2570</td>
	<td align=center>0.7223000</td>
	<td align=center>999.5328</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:45</td>
	<td align=center>-</td>
	<td align=center>848.5801</td>
	<td align=center>0.7203000</td>
	<td align=center>999.8530</td>
	<td align=center>-</td>
	<td align=center>849.4574</td>
	<td align=center>0.7222000</td>
	<td align=center>999.2276</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:40</td>
	<td align=center>-</td>
	<td align=center>848.2529</td>
	<td align=center>0.7203000</td>
	<td align=center>999.4675</td>
	<td align=center>-</td>
	<td align=center>849.2708</td>
	<td align=center>0.7223000</td>
	<td align=center>999.5051</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:35</td>
	<td align=center>-</td>
	<td align=center>848.7654</td>
	<td align=center>0.7203000</td>
	<td align=center>1000.0710</td>
	<td align=center>-</td>
	<td align=center>849.3280</td>
	<td align=center>0.7223000</td>
	<td align=center>999.4195</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:30</td>
	<td align=center>-</td>
	<td align=center>848.6888</td>
	<td align=center>0.7203000</td>
	<td align=center>999.9810</td>
	<td align=center>-</td>
	<td align=center>849.1420</td>
	<td align=center>0.7223000</td>
	<td align=center>999.2465</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:25</td>
	<td align=center>-</td>
	<td align=center>849.0335</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.4570</td>
	<td align=center>-</td>
	<td align=center>849.1628</td>
	<td align=center>0.7222000</td>
	<td align=center>999.2809</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:20</td>
	<td align=center>-</td>
	<td align=center>848.5942</td>
	<td align=center>0.7203000</td>
	<td align=center>999.8696</td>
	<td align=center>-</td>
	<td align=center>849.2845</td>
	<td align=center>0.7222000</td>
	<td align=center>999.1768</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:15</td>
	<td align=center>-</td>
	<td align=center>848.3201</td>
	<td align=center>0.7202000</td>
	<td align=center>999.6160</td>
	<td align=center>-</td>
	<td align=center>849.2025</td>
	<td align=center>0.7223000</td>
	<td align=center>999.1414</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:10</td>
	<td align=center>-</td>
	<td align=center>847.2347</td>
	<td align=center>0.7201000</td>
	<td align=center>998.4063</td>
	<td align=center>-</td>
	<td align=center>849.3675</td>
	<td align=center>0.7223000</td>
	<td align=center>999.3013</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:05</td>
	<td align=center>-</td>
	<td align=center>848.0863</td>
	<td align=center>0.7203000</td>
	<td align=center>999.2711</td>
	<td align=center>-</td>
	<td align=center>849.2355</td>
	<td align=center>0.7223000</td>
	<td align=center>999.1372</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>848.0510</td>
	<td align=center>0.7203000</td>
	<td align=center>999.2296</td>
	<td align=center>-</td>
	<td align=center>848.9379</td>
	<td align=center>0.7223000</td>
	<td align=center>999.2353</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:55</td>
	<td align=center>-</td>
	<td align=center>848.0319</td>
	<td align=center>0.7203000</td>
	<td align=center>999.2070</td>
	<td align=center>-</td>
	<td align=center>848.8426</td>
	<td align=center>0.7222000</td>
	<td align=center>999.4485</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:50</td>
	<td align=center>-</td>
	<td align=center>849.2137</td>
	<td align=center>0.7204000</td>
	<td align=center>1000.5300</td>
	<td align=center>-</td>
	<td align=center>848.8426</td>
	<td align=center>0.7222000</td>
	<td align=center>998.8826</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:45</td>
	<td align=center>-</td>
	<td align=center>848.3830</td>
	<td align=center>0.7203000</td>
	<td align=center>999.6207</td>
	<td align=center>-</td>
	<td align=center>848.8143</td>
	<td align=center>0.7222000</td>
	<td align=center>998.8383</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:40</td>
	<td align=center>-</td>
	<td align=center>847.9081</td>
	<td align=center>0.7203000</td>
	<td align=center>999.0612</td>
	<td align=center>-</td>
	<td align=center>848.6247</td>
	<td align=center>0.7222000</td>
	<td align=center>998.7477</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:35</td>
	<td align=center>-</td>
	<td align=center>848.6075</td>
	<td align=center>0.7204000</td>
	<td align=center>999.8159</td>
	<td align=center>-</td>
	<td align=center>848.3381</td>
	<td align=center>0.7221000</td>
	<td align=center>998.5844</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:30</td>
	<td align=center>-</td>
	<td align=center>848.4176</td>
	<td align=center>0.7203000</td>
	<td align=center>999.6615</td>
	<td align=center>-</td>
	<td align=center>848.3381</td>
	<td align=center>0.7221000</td>
	<td align=center>998.5844</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:25</td>
	<td align=center>-</td>
	<td align=center>847.8447</td>
	<td align=center>0.7202000</td>
	<td align=center>999.0558</td>
	<td align=center>-</td>
	<td align=center>848.5909</td>
	<td align=center>0.7220000</td>
	<td align=center>998.5844</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:20</td>
	<td align=center>-</td>
	<td align=center>847.8943</td>
	<td align=center>0.7202000</td>
	<td align=center>999.1143</td>
	<td align=center>-</td>
	<td align=center>848.9156</td>
	<td align=center>0.7222000</td>
	<td align=center>998.6198</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:15</td>
	<td align=center>-</td>
	<td align=center>847.9117</td>
	<td align=center>0.7203000</td>
	<td align=center>999.0654</td>
	<td align=center>-</td>
	<td align=center>849.1785</td>
	<td align=center>0.7222000</td>
	<td align=center>999.0260</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:10</td>
	<td align=center>-</td>
	<td align=center>847.5304</td>
	<td align=center>0.7201000</td>
	<td align=center>998.7548</td>
	<td align=center>-</td>
	<td align=center>848.8205</td>
	<td align=center>0.7222000</td>
	<td align=center>998.8827</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:05</td>
	<td align=center>-</td>
	<td align=center>847.2617</td>
	<td align=center>0.7201000</td>
	<td align=center>998.4381</td>
	<td align=center>-</td>
	<td align=center>848.8205</td>
	<td align=center>0.7221000</td>
	<td align=center>999.1788</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>847.5191</td>
	<td align=center>0.7203000</td>
	<td align=center>998.6028</td>
	<td align=center>-</td>
	<td align=center>848.8949</td>
	<td align=center>0.7222000</td>
	<td align=center>998.8386</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:55</td>
	<td align=center>-</td>
	<td align=center>847.0480</td>
	<td align=center>0.7203000</td>
	<td align=center>998.0477</td>
	<td align=center>-</td>
	<td align=center>848.9987</td>
	<td align=center>0.7221000</td>
	<td align=center>998.8386</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:50</td>
	<td align=center>-</td>
	<td align=center>847.8560</td>
	<td align=center>0.7202000</td>
	<td align=center>999.0692</td>
	<td align=center>-</td>
	<td align=center>848.7488</td>
	<td align=center>0.7221000</td>
	<td align=center>998.9036</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:45</td>
	<td align=center>-</td>
	<td align=center>848.1425</td>
	<td align=center>0.7203000</td>
	<td align=center>999.3373</td>
	<td align=center>-</td>
	<td align=center>849.1549</td>
	<td align=center>0.7222000</td>
	<td align=center>999.0421</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:40</td>
	<td align=center>-</td>
	<td align=center>848.3184</td>
	<td align=center>0.7203000</td>
	<td align=center>999.5446</td>
	<td align=center>-</td>
	<td align=center>849.1380</td>
	<td align=center>0.7221000</td>
	<td align=center>998.7637</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:35</td>
	<td align=center>-</td>
	<td align=center>847.7727</td>
	<td align=center>0.7202000</td>
	<td align=center>998.9709</td>
	<td align=center>-</td>
	<td align=center>849.0688</td>
	<td align=center>0.7222000</td>
	<td align=center>999.2924</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:30</td>
	<td align=center>-</td>
	<td align=center>847.5292</td>
	<td align=center>0.7203000</td>
	<td align=center>998.6147</td>
	<td align=center>-</td>
	<td align=center>849.0688</td>
	<td align=center>0.7222000</td>
	<td align=center>999.1940</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:25</td>
	<td align=center>-</td>
	<td align=center>848.4030</td>
	<td align=center>0.7203000</td>
	<td align=center>999.6443</td>
	<td align=center>-</td>
	<td align=center>848.8510</td>
	<td align=center>0.7222000</td>
	<td align=center>999.0737</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:20</td>
	<td align=center>-</td>
	<td align=center>847.5117</td>
	<td align=center>0.7201000</td>
	<td align=center>998.7328</td>
	<td align=center>-</td>
	<td align=center>849.0123</td>
	<td align=center>0.7223000</td>
	<td align=center>998.8453</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:15</td>
	<td align=center>-</td>
	<td align=center>848.0078</td>
	<td align=center>0.7202000</td>
	<td align=center>999.2479</td>
	<td align=center>-</td>
	<td align=center>849.4603</td>
	<td align=center>0.7224000</td>
	<td align=center>999.3000</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:10</td>
	<td align=center>-</td>
	<td align=center>848.3277</td>
	<td align=center>0.7202000</td>
	<td align=center>999.6249</td>
	<td align=center>-</td>
	<td align=center>849.3516</td>
	<td align=center>0.7223000</td>
	<td align=center>998.9620</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:05</td>
	<td align=center>-</td>
	<td align=center>848.4482</td>
	<td align=center>0.7201000</td>
	<td align=center>999.8364</td>
	<td align=center>-</td>
	<td align=center>849.1017</td>
	<td align=center>0.7224000</td>
	<td align=center>999.4143</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>848.6275</td>
	<td align=center>0.7203000</td>
	<td align=center>999.9088</td>
	<td align=center>-</td>
	<td align=center>849.3196</td>
	<td align=center>0.7222000</td>
	<td align=center>998.9636</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:55</td>
	<td align=center>-</td>
	<td align=center>848.5832</td>
	<td align=center>0.7203000</td>
	<td align=center>999.8566</td>
	<td align=center>-</td>
	<td align=center>849.1448</td>
	<td align=center>0.7222000</td>
	<td align=center>999.4830</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:50</td>
	<td align=center>-</td>
	<td align=center>847.7166</td>
	<td align=center>0.7202000</td>
	<td align=center>998.9049</td>
	<td align=center>-</td>
	<td align=center>849.4012</td>
	<td align=center>0.7222000</td>
	<td align=center>999.3941</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:45</td>
	<td align=center>-</td>
	<td align=center>847.8408</td>
	<td align=center>0.7202000</td>
	<td align=center>999.0513</td>
	<td align=center>-</td>
	<td align=center>849.3810</td>
	<td align=center>0.7222000</td>
	<td align=center>999.1685</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:40</td>
	<td align=center>-</td>
	<td align=center>848.5495</td>
	<td align=center>0.7203000</td>
	<td align=center>999.8169</td>
	<td align=center>-</td>
	<td align=center>848.9922</td>
	<td align=center>0.7221000</td>
	<td align=center>999.4451</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:35</td>
	<td align=center>-</td>
	<td align=center>847.4103</td>
	<td align=center>0.7203000</td>
	<td align=center>998.4747</td>
	<td align=center>-</td>
	<td align=center>848.7592</td>
	<td align=center>0.7221000</td>
	<td align=center>999.0817</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:30</td>
	<td align=center>-</td>
	<td align=center>847.4910</td>
	<td align=center>0.7204000</td>
	<td align=center>998.5004</td>
	<td align=center>-</td>
	<td align=center>848.7592</td>
	<td align=center>0.7221000</td>
	<td align=center>999.0817</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:25</td>
	<td align=center>-</td>
	<td align=center>847.7710</td>
	<td align=center>0.7201000</td>
	<td align=center>999.0383</td>
	<td align=center>-</td>
	<td align=center>848.7803</td>
	<td align=center>0.7220000</td>
	<td align=center>998.9413</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:20</td>
	<td align=center>-</td>
	<td align=center>847.6559</td>
	<td align=center>0.7203000</td>
	<td align=center>998.7640</td>
	<td align=center>-</td>
	<td align=center>848.8278</td>
	<td align=center>0.7221000</td>
	<td align=center>998.8453</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:15</td>
	<td align=center>-</td>
	<td align=center>847.3705</td>
	<td align=center>0.7203000</td>
	<td align=center>998.4278</td>
	<td align=center>-</td>
	<td align=center>848.6426</td>
	<td align=center>0.7221000</td>
	<td align=center>998.9282</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:10</td>
	<td align=center>-</td>
	<td align=center>847.2972</td>
	<td align=center>0.7202000</td>
	<td align=center>998.4106</td>
	<td align=center>-</td>
	<td align=center>848.9037</td>
	<td align=center>0.7222000</td>
	<td align=center>998.8959</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:05</td>
	<td align=center>-</td>
	<td align=center>847.2554</td>
	<td align=center>0.7202000</td>
	<td align=center>998.3615</td>
	<td align=center>-</td>
	<td align=center>848.7048</td>
	<td align=center>0.7221000</td>
	<td align=center>998.6682</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>847.4564</td>
	<td align=center>0.7203000</td>
	<td align=center>998.5289</td>
	<td align=center>-</td>
	<td align=center>848.5869</td>
	<td align=center>0.7221000</td>
	<td align=center>998.7366</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:55</td>
	<td align=center>-</td>
	<td align=center>848.2236</td>
	<td align=center>0.7203000</td>
	<td align=center>999.4329</td>
	<td align=center>-</td>
	<td align=center>848.7051</td>
	<td align=center>0.7220000</td>
	<td align=center>998.7187</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:50</td>
	<td align=center>-</td>
	<td align=center>847.9632</td>
	<td align=center>0.7204000</td>
	<td align=center>999.0568</td>
	<td align=center>-</td>
	<td align=center>848.7834</td>
	<td align=center>0.7222000</td>
	<td align=center>998.5783</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:45</td>
	<td align=center>-</td>
	<td align=center>847.1955</td>
	<td align=center>0.7204000</td>
	<td align=center>998.1523</td>
	<td align=center>-</td>
	<td align=center>848.7925</td>
	<td align=center>0.7223000</td>
	<td align=center>998.7592</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:40</td>
	<td align=center>-</td>
	<td align=center>847.6212</td>
	<td align=center>0.7202000</td>
	<td align=center>998.7924</td>
	<td align=center>-</td>
	<td align=center>848.6096</td>
	<td align=center>0.7220000</td>
	<td align=center>998.7125</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:35</td>
	<td align=center>-</td>
	<td align=center>847.8724</td>
	<td align=center>0.7204000</td>
	<td align=center>998.9498</td>
	<td align=center>-</td>
	<td align=center>848.5934</td>
	<td align=center>0.7220000</td>
	<td align=center>998.5552</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:30</td>
	<td align=center>-</td>
	<td align=center>847.3474</td>
	<td align=center>0.7204000</td>
	<td align=center>998.3312</td>
	<td align=center>-</td>
	<td align=center>848.6537</td>
	<td align=center>0.7220000</td>
	<td align=center>998.6631</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:25</td>
	<td align=center>-</td>
	<td align=center>847.6084</td>
	<td align=center>0.7204000</td>
	<td align=center>998.6387</td>
	<td align=center>-</td>
	<td align=center>848.7189</td>
	<td align=center>0.7221000</td>
	<td align=center>998.6246</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:20</td>
	<td align=center>-</td>
	<td align=center>847.4340</td>
	<td align=center>0.7203000</td>
	<td align=center>998.5025</td>
	<td align=center>-</td>
	<td align=center>848.7316</td>
	<td align=center>0.7221000</td>
	<td align=center>998.7164</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:15</td>
	<td align=center>-</td>
	<td align=center>848.4343</td>
	<td align=center>0.7204000</td>
	<td align=center>999.6118</td>
	<td align=center>-</td>
	<td align=center>848.8455</td>
	<td align=center>0.7221000</td>
	<td align=center>998.7747</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:10</td>
	<td align=center>-</td>
	<td align=center>846.6790</td>
	<td align=center>0.7203000</td>
	<td align=center>997.6130</td>
	<td align=center>-</td>
	<td align=center>848.8181</td>
	<td align=center>0.7220000</td>
	<td align=center>998.7478</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:05</td>
	<td align=center>-</td>
	<td align=center>848.3917</td>
	<td align=center>0.7205000</td>
	<td align=center>999.4922</td>
	<td align=center>-</td>
	<td align=center>848.5463</td>
	<td align=center>0.7221000</td>
	<td align=center>998.9137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>847.8813</td>
	<td align=center>0.7204000</td>
	<td align=center>998.9603</td>
	<td align=center>-</td>
	<td align=center>848.6989</td>
	<td align=center>0.7220000</td>
	<td align=center>998.5586</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:55</td>
	<td align=center>-</td>
	<td align=center>848.2184</td>
	<td align=center>0.7203000</td>
	<td align=center>999.4268</td>
	<td align=center>-</td>
	<td align=center>848.7668</td>
	<td align=center>0.7221000</td>
	<td align=center>998.5481</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:50</td>
	<td align=center>-</td>
	<td align=center>847.8571</td>
	<td align=center>0.7203000</td>
	<td align=center>999.0011</td>
	<td align=center>-</td>
	<td align=center>848.7529</td>
	<td align=center>0.7215000</td>
	<td align=center>998.7955</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:45</td>
	<td align=center>-</td>
	<td align=center>848.5507</td>
	<td align=center>0.7206000</td>
	<td align=center>999.6101</td>
	<td align=center>-</td>
	<td align=center>849.4910</td>
	<td align=center>0.7209000</td>
	<td align=center>999.2043</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:40</td>
	<td align=center>-</td>
	<td align=center>849.8397</td>
	<td align=center>0.7206000</td>
	<td align=center>1001.1290</td>
	<td align=center>-</td>
	<td align=center>849.2199</td>
	<td align=center>0.7216000</td>
	<td align=center>999.2043</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:35</td>
	<td align=center>-</td>
	<td align=center>848.9713</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.1750</td>
	<td align=center>-</td>
	<td align=center>849.3272</td>
	<td align=center>0.7224000</td>
	<td align=center>999.6531</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:30</td>
	<td align=center>-</td>
	<td align=center>849.2383</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.4200</td>
	<td align=center>-</td>
	<td align=center>849.3272</td>
	<td align=center>0.7224000</td>
	<td align=center>999.6531</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:25</td>
	<td align=center>-</td>
	<td align=center>848.2360</td>
	<td align=center>0.7207000</td>
	<td align=center>999.1701</td>
	<td align=center>-</td>
	<td align=center>849.3969</td>
	<td align=center>0.7223000</td>
	<td align=center>998.8264</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:20</td>
	<td align=center>-</td>
	<td align=center>849.1593</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.2580</td>
	<td align=center>-</td>
	<td align=center>848.9387</td>
	<td align=center>0.7222000</td>
	<td align=center>999.3626</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:15</td>
	<td align=center>-</td>
	<td align=center>851.8616</td>
	<td align=center>0.7211000</td>
	<td align=center>1003.1620</td>
	<td align=center>-</td>
	<td align=center>848.9387</td>
	<td align=center>0.7222000</td>
	<td align=center>999.1921</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:10</td>
	<td align=center>-</td>
	<td align=center>851.8427</td>
	<td align=center>0.7211000</td>
	<td align=center>1003.1400</td>
	<td align=center>-</td>
	<td align=center>849.0049</td>
	<td align=center>0.7222000</td>
	<td align=center>998.9059</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:05</td>
	<td align=center>-</td>
	<td align=center>850.3542</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.5960</td>
	<td align=center>-</td>
	<td align=center>848.9449</td>
	<td align=center>0.7222000</td>
	<td align=center>998.9534</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>848.1321</td>
	<td align=center>0.7204000</td>
	<td align=center>999.2557</td>
	<td align=center>-</td>
	<td align=center>849.1898</td>
	<td align=center>0.7223000</td>
	<td align=center>998.9950</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:55</td>
	<td align=center>-</td>
	<td align=center>848.1321</td>
	<td align=center>0.7204000</td>
	<td align=center>999.2557</td>
	<td align=center>-</td>
	<td align=center>849.3232</td>
	<td align=center>0.7224000</td>
	<td align=center>999.0759</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:50</td>
	<td align=center>-</td>
	<td align=center>848.1713</td>
	<td align=center>0.7206000</td>
	<td align=center>999.1632</td>
	<td align=center>-</td>
	<td align=center>848.8284</td>
	<td align=center>0.7221000</td>
	<td align=center>999.1492</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:45</td>
	<td align=center>-</td>
	<td align=center>848.4276</td>
	<td align=center>0.7206000</td>
	<td align=center>999.4651</td>
	<td align=center>-</td>
	<td align=center>849.1082</td>
	<td align=center>0.7222000</td>
	<td align=center>999.2612</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:40</td>
	<td align=center>-</td>
	<td align=center>848.1875</td>
	<td align=center>0.7204000</td>
	<td align=center>999.3210</td>
	<td align=center>-</td>
	<td align=center>849.3821</td>
	<td align=center>0.7225000</td>
	<td align=center>999.0913</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:35</td>
	<td align=center>-</td>
	<td align=center>848.6974</td>
	<td align=center>0.7207000</td>
	<td align=center>999.7137</td>
	<td align=center>-</td>
	<td align=center>849.1282</td>
	<td align=center>0.7226000</td>
	<td align=center>998.7650</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:30</td>
	<td align=center>-</td>
	<td align=center>848.5287</td>
	<td align=center>0.7207000</td>
	<td align=center>999.5149</td>
	<td align=center>-</td>
	<td align=center>849.2728</td>
	<td align=center>0.7225000</td>
	<td align=center>999.2194</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:25</td>
	<td align=center>-</td>
	<td align=center>848.9346</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.0620</td>
	<td align=center>-</td>
	<td align=center>849.2159</td>
	<td align=center>0.7226000</td>
	<td align=center>998.8827</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:20</td>
	<td align=center>-</td>
	<td align=center>849.0676</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.1500</td>
	<td align=center>-</td>
	<td align=center>849.7324</td>
	<td align=center>0.7228000</td>
	<td align=center>999.0015</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:15</td>
	<td align=center>-</td>
	<td align=center>848.4000</td>
	<td align=center>0.7206000</td>
	<td align=center>999.4327</td>
	<td align=center>-</td>
	<td align=center>849.7831</td>
	<td align=center>0.7229000</td>
	<td align=center>998.9196</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:10</td>
	<td align=center>-</td>
	<td align=center>849.0454</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.0540</td>
	<td align=center>-</td>
	<td align=center>849.2046</td>
	<td align=center>0.7227000</td>
	<td align=center>999.4393</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:05</td>
	<td align=center>-</td>
	<td align=center>849.1354</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.2290</td>
	<td align=center>-</td>
	<td align=center>849.1019</td>
	<td align=center>0.7228000</td>
	<td align=center>999.4681</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>848.7985</td>
	<td align=center>0.7207000</td>
	<td align=center>999.8327</td>
	<td align=center>-</td>
	<td align=center>849.3951</td>
	<td align=center>0.7227000</td>
	<td align=center>998.6970</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:55</td>
	<td align=center>-</td>
	<td align=center>848.7985</td>
	<td align=center>0.7207000</td>
	<td align=center>999.8327</td>
	<td align=center>-</td>
	<td align=center>849.3685</td>
	<td align=center>0.7227000</td>
	<td align=center>998.8900</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:50</td>
	<td align=center>-</td>
	<td align=center>849.2124</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.2510</td>
	<td align=center>-</td>
	<td align=center>849.4659</td>
	<td align=center>0.7228000</td>
	<td align=center>999.0850</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:45</td>
	<td align=center>-</td>
	<td align=center>849.2124</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.2510</td>
	<td align=center>-</td>
	<td align=center>849.3788</td>
	<td align=center>0.7227000</td>
	<td align=center>999.0519</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:40</td>
	<td align=center>-</td>
	<td align=center>849.2124</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.2510</td>
	<td align=center>-</td>
	<td align=center>849.0503</td>
	<td align=center>0.7226000</td>
	<td align=center>999.0903</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:35</td>
	<td align=center>-</td>
	<td align=center>849.2124</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.2510</td>
	<td align=center>-</td>
	<td align=center>849.2034</td>
	<td align=center>0.7227000</td>
	<td align=center>998.7678</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:30</td>
	<td align=center>-</td>
	<td align=center>848.9562</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.0180</td>
	<td align=center>-</td>
	<td align=center>849.2034</td>
	<td align=center>0.7227000</td>
	<td align=center>998.7678</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:25</td>
	<td align=center>-</td>
	<td align=center>849.2291</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.2710</td>
	<td align=center>-</td>
	<td align=center>849.2481</td>
	<td align=center>0.7228000</td>
	<td align=center>998.5226</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:20</td>
	<td align=center>-</td>
	<td align=center>849.2291</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.2710</td>
	<td align=center>-</td>
	<td align=center>848.9026</td>
	<td align=center>0.7227000</td>
	<td align=center>998.9000</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:15</td>
	<td align=center>-</td>
	<td align=center>849.3871</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.5260</td>
	<td align=center>-</td>
	<td align=center>849.1405</td>
	<td align=center>0.7228000</td>
	<td align=center>998.5137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:10</td>
	<td align=center>-</td>
	<td align=center>848.7321</td>
	<td align=center>0.7207000</td>
	<td align=center>999.7545</td>
	<td align=center>-</td>
	<td align=center>849.0217</td>
	<td align=center>0.7227000</td>
	<td align=center>998.5684</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:05</td>
	<td align=center>-</td>
	<td align=center>848.8947</td>
	<td align=center>0.7207000</td>
	<td align=center>999.9460</td>
	<td align=center>-</td>
	<td align=center>849.4905</td>
	<td align=center>0.7227000</td>
	<td align=center>998.7569</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>849.3891</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.5280</td>
	<td align=center>-</td>
	<td align=center>849.7249</td>
	<td align=center>0.7229000</td>
	<td align=center>999.2042</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:55</td>
	<td align=center>-</td>
	<td align=center>849.5162</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.6090</td>
	<td align=center>-</td>
	<td align=center>849.3871</td>
	<td align=center>0.7228000</td>
	<td align=center>998.9946</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:50</td>
	<td align=center>-</td>
	<td align=center>848.8990</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.0210</td>
	<td align=center>-</td>
	<td align=center>849.4609</td>
	<td align=center>0.7228000</td>
	<td align=center>999.3764</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:45</td>
	<td align=center>-</td>
	<td align=center>848.9931</td>
	<td align=center>0.7208000</td>
	<td align=center>999.9926</td>
	<td align=center>-</td>
	<td align=center>849.2872</td>
	<td align=center>0.7227000</td>
	<td align=center>999.0231</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:40</td>
	<td align=center>-</td>
	<td align=center>849.0955</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.1830</td>
	<td align=center>-</td>
	<td align=center>849.2588</td>
	<td align=center>0.7227000</td>
	<td align=center>998.9874</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:35</td>
	<td align=center>-</td>
	<td align=center>848.9637</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.0270</td>
	<td align=center>-</td>
	<td align=center>849.1982</td>
	<td align=center>0.7227000</td>
	<td align=center>998.9561</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:30</td>
	<td align=center>-</td>
	<td align=center>849.3659</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.5010</td>
	<td align=center>-</td>
	<td align=center>849.1982</td>
	<td align=center>0.7227000</td>
	<td align=center>998.9561</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:25</td>
	<td align=center>-</td>
	<td align=center>848.9585</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.0210</td>
	<td align=center>-</td>
	<td align=center>849.3324</td>
	<td align=center>0.7228000</td>
	<td align=center>999.0685</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:20</td>
	<td align=center>-</td>
	<td align=center>849.8720</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.0280</td>
	<td align=center>-</td>
	<td align=center>849.0564</td>
	<td align=center>0.7227000</td>
	<td align=center>998.9855</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:15</td>
	<td align=center>-</td>
	<td align=center>849.6848</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.8770</td>
	<td align=center>-</td>
	<td align=center>849.1856</td>
	<td align=center>0.7226000</td>
	<td align=center>999.2999</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:10</td>
	<td align=center>-</td>
	<td align=center>849.4180</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.6320</td>
	<td align=center>-</td>
	<td align=center>849.0814</td>
	<td align=center>0.7226000</td>
	<td align=center>998.7043</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:05</td>
	<td align=center>-</td>
	<td align=center>849.4806</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.5670</td>
	<td align=center>-</td>
	<td align=center>849.2681</td>
	<td align=center>0.7228000</td>
	<td align=center>998.9199</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>849.3055</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.3610</td>
	<td align=center>-</td>
	<td align=center>849.3986</td>
	<td align=center>0.7228000</td>
	<td align=center>998.9039</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:55</td>
	<td align=center>-</td>
	<td align=center>849.8746</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.0310</td>
	<td align=center>-</td>
	<td align=center>849.8944</td>
	<td align=center>0.7228000</td>
	<td align=center>998.8922</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:50</td>
	<td align=center>-</td>
	<td align=center>849.8320</td>
	<td align=center>0.7209000</td>
	<td align=center>1000.9110</td>
	<td align=center>-</td>
	<td align=center>849.4920</td>
	<td align=center>0.7228000</td>
	<td align=center>999.0724</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:45</td>
	<td align=center>-</td>
	<td align=center>848.6213</td>
	<td align=center>0.7207000</td>
	<td align=center>999.6240</td>
	<td align=center>-</td>
	<td align=center>850.0056</td>
	<td align=center>0.7229000</td>
	<td align=center>999.6360</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:40</td>
	<td align=center>-</td>
	<td align=center>849.6234</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.7350</td>
	<td align=center>-</td>
	<td align=center>849.9818</td>
	<td align=center>0.7229000</td>
	<td align=center>999.7049</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:35</td>
	<td align=center>-</td>
	<td align=center>849.3091</td>
	<td align=center>0.7209000</td>
	<td align=center>1000.2950</td>
	<td align=center>-</td>
	<td align=center>850.0760</td>
	<td align=center>0.7229000</td>
	<td align=center>999.1071</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:30</td>
	<td align=center>-</td>
	<td align=center>848.6514</td>
	<td align=center>0.7207000</td>
	<td align=center>999.6595</td>
	<td align=center>-</td>
	<td align=center>850.3068</td>
	<td align=center>0.7229000</td>
	<td align=center>999.6785</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:25</td>
	<td align=center>-</td>
	<td align=center>848.6514</td>
	<td align=center>0.7207000</td>
	<td align=center>999.6595</td>
	<td align=center>-</td>
	<td align=center>850.4602</td>
	<td align=center>0.7229000</td>
	<td align=center>999.7670</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:20</td>
	<td align=center>-</td>
	<td align=center>849.0172</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.1600</td>
	<td align=center>-</td>
	<td align=center>850.2545</td>
	<td align=center>0.7228000</td>
	<td align=center>1000.2560</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:15</td>
	<td align=center>-</td>
	<td align=center>849.0172</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.1600</td>
	<td align=center>-</td>
	<td align=center>850.2168</td>
	<td align=center>0.7229000</td>
	<td align=center>999.8381</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:10</td>
	<td align=center>-</td>
	<td align=center>849.1993</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.2350</td>
	<td align=center>-</td>
	<td align=center>850.0394</td>
	<td align=center>0.7228000</td>
	<td align=center>1000.0590</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:05</td>
	<td align=center>-</td>
	<td align=center>849.1666</td>
	<td align=center>0.7210000</td>
	<td align=center>1000.0580</td>
	<td align=center>-</td>
	<td align=center>850.1262</td>
	<td align=center>0.7228000</td>
	<td align=center>999.9772</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>848.7286</td>
	<td align=center>0.7207000</td>
	<td align=center>999.7503</td>
	<td align=center>-</td>
	<td align=center>850.1022</td>
	<td align=center>0.7229000</td>
	<td align=center>999.8005</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:55</td>
	<td align=center>-</td>
	<td align=center>849.6288</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.7410</td>
	<td align=center>-</td>
	<td align=center>849.8832</td>
	<td align=center>0.7229000</td>
	<td align=center>999.9217</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:50</td>
	<td align=center>-</td>
	<td align=center>848.6946</td>
	<td align=center>0.7207000</td>
	<td align=center>999.7103</td>
	<td align=center>-</td>
	<td align=center>849.9456</td>
	<td align=center>0.7229000</td>
	<td align=center>999.8403</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:45</td>
	<td align=center>-</td>
	<td align=center>848.8588</td>
	<td align=center>0.7207000</td>
	<td align=center>999.9037</td>
	<td align=center>-</td>
	<td align=center>850.0458</td>
	<td align=center>0.7228000</td>
	<td align=center>999.5558</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:40</td>
	<td align=center>-</td>
	<td align=center>848.6111</td>
	<td align=center>0.7206000</td>
	<td align=center>999.6813</td>
	<td align=center>-</td>
	<td align=center>850.1419</td>
	<td align=center>0.7228000</td>
	<td align=center>999.7931</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:35</td>
	<td align=center>-</td>
	<td align=center>848.3882</td>
	<td align=center>0.7207000</td>
	<td align=center>999.3494</td>
	<td align=center>-</td>
	<td align=center>849.3707</td>
	<td align=center>0.7225000</td>
	<td align=center>999.9462</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:30</td>
	<td align=center>-</td>
	<td align=center>848.8265</td>
	<td align=center>0.7207000</td>
	<td align=center>999.8657</td>
	<td align=center>-</td>
	<td align=center>849.3707</td>
	<td align=center>0.7225000</td>
	<td align=center>999.9462</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:25</td>
	<td align=center>-</td>
	<td align=center>848.0540</td>
	<td align=center>0.7206000</td>
	<td align=center>999.0250</td>
	<td align=center>-</td>
	<td align=center>849.3707</td>
	<td align=center>0.7224000</td>
	<td align=center>999.2203</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:20</td>
	<td align=center>-</td>
	<td align=center>847.8118</td>
	<td align=center>0.7206000</td>
	<td align=center>998.7397</td>
	<td align=center>-</td>
	<td align=center>849.1152</td>
	<td align=center>0.7225000</td>
	<td align=center>999.2203</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:15</td>
	<td align=center>-</td>
	<td align=center>848.6370</td>
	<td align=center>0.7206000</td>
	<td align=center>999.7119</td>
	<td align=center>-</td>
	<td align=center>849.5103</td>
	<td align=center>0.7225000</td>
	<td align=center>999.5514</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:10</td>
	<td align=center>-</td>
	<td align=center>849.4769</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.6320</td>
	<td align=center>-</td>
	<td align=center>849.3738</td>
	<td align=center>0.7225000</td>
	<td align=center>998.9475</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:05</td>
	<td align=center>-</td>
	<td align=center>848.9398</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.0690</td>
	<td align=center>-</td>
	<td align=center>849.4654</td>
	<td align=center>0.7225000</td>
	<td align=center>999.2241</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>849.3257</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.3840</td>
	<td align=center>-</td>
	<td align=center>849.3670</td>
	<td align=center>0.7226000</td>
	<td align=center>999.3155</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:55</td>
	<td align=center>-</td>
	<td align=center>849.1487</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.2450</td>
	<td align=center>-</td>
	<td align=center>849.3041</td>
	<td align=center>0.7225000</td>
	<td align=center>998.9132</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:50</td>
	<td align=center>-</td>
	<td align=center>849.0403</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.1870</td>
	<td align=center>-</td>
	<td align=center>849.2318</td>
	<td align=center>0.7225000</td>
	<td align=center>999.1757</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:45</td>
	<td align=center>-</td>
	<td align=center>848.5607</td>
	<td align=center>0.7207000</td>
	<td align=center>999.5526</td>
	<td align=center>-</td>
	<td align=center>849.3946</td>
	<td align=center>0.7224000</td>
	<td align=center>999.1556</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:40</td>
	<td align=center>-</td>
	<td align=center>849.1827</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.2850</td>
	<td align=center>-</td>
	<td align=center>849.3946</td>
	<td align=center>0.7225000</td>
	<td align=center>999.0661</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:35</td>
	<td align=center>-</td>
	<td align=center>849.5779</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.7510</td>
	<td align=center>-</td>
	<td align=center>849.3946</td>
	<td align=center>0.7225000</td>
	<td align=center>999.0731</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:30</td>
	<td align=center>-</td>
	<td align=center>849.7696</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.9770</td>
	<td align=center>-</td>
	<td align=center>848.7302</td>
	<td align=center>0.7224000</td>
	<td align=center>999.2220</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:25</td>
	<td align=center>-</td>
	<td align=center>849.5725</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.7440</td>
	<td align=center>-</td>
	<td align=center>848.8972</td>
	<td align=center>0.7225000</td>
	<td align=center>999.2220</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:20</td>
	<td align=center>-</td>
	<td align=center>848.6743</td>
	<td align=center>0.7206000</td>
	<td align=center>999.7557</td>
	<td align=center>-</td>
	<td align=center>849.2284</td>
	<td align=center>0.7226000</td>
	<td align=center>998.6879</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:15</td>
	<td align=center>-</td>
	<td align=center>849.2446</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.2890</td>
	<td align=center>-</td>
	<td align=center>849.2165</td>
	<td align=center>0.7226000</td>
	<td align=center>998.9330</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:10</td>
	<td align=center>-</td>
	<td align=center>849.2892</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.3410</td>
	<td align=center>-</td>
	<td align=center>849.1485</td>
	<td align=center>0.7225000</td>
	<td align=center>999.0018</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:05</td>
	<td align=center>-</td>
	<td align=center>849.7702</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.9080</td>
	<td align=center>-</td>
	<td align=center>849.1628</td>
	<td align=center>0.7225000</td>
	<td align=center>998.9780</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>850.1111</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.3090</td>
	<td align=center>-</td>
	<td align=center>849.1003</td>
	<td align=center>0.7225000</td>
	<td align=center>998.9507</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:55</td>
	<td align=center>-</td>
	<td align=center>850.2846</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.5140</td>
	<td align=center>-</td>
	<td align=center>848.8647</td>
	<td align=center>0.7224000</td>
	<td align=center>999.0754</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:50</td>
	<td align=center>-</td>
	<td align=center>849.5061</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.6660</td>
	<td align=center>-</td>
	<td align=center>849.1785</td>
	<td align=center>0.7225000</td>
	<td align=center>998.8942</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:45</td>
	<td align=center>-</td>
	<td align=center>849.3753</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.5120</td>
	<td align=center>-</td>
	<td align=center>849.0883</td>
	<td align=center>0.7225000</td>
	<td align=center>998.6805</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:40</td>
	<td align=center>-</td>
	<td align=center>849.5509</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.7190</td>
	<td align=center>-</td>
	<td align=center>849.1194</td>
	<td align=center>0.7226000</td>
	<td align=center>998.9212</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:35</td>
	<td align=center>-</td>
	<td align=center>849.2266</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.3370</td>
	<td align=center>-</td>
	<td align=center>849.1194</td>
	<td align=center>0.7225000</td>
	<td align=center>998.9607</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:30</td>
	<td align=center>-</td>
	<td align=center>848.7060</td>
	<td align=center>0.7206000</td>
	<td align=center>999.7931</td>
	<td align=center>-</td>
	<td align=center>849.0786</td>
	<td align=center>0.7225000</td>
	<td align=center>998.8730</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:25</td>
	<td align=center>-</td>
	<td align=center>848.6489</td>
	<td align=center>0.7205000</td>
	<td align=center>999.7952</td>
	<td align=center>-</td>
	<td align=center>849.1422</td>
	<td align=center>0.7225000</td>
	<td align=center>998.9006</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:20</td>
	<td align=center>-</td>
	<td align=center>848.2762</td>
	<td align=center>0.7207000</td>
	<td align=center>999.2175</td>
	<td align=center>-</td>
	<td align=center>849.3254</td>
	<td align=center>0.7225000</td>
	<td align=center>998.9739</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:15</td>
	<td align=center>-</td>
	<td align=center>848.9202</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.0450</td>
	<td align=center>-</td>
	<td align=center>849.1365</td>
	<td align=center>0.7225000</td>
	<td align=center>999.1188</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:10</td>
	<td align=center>-</td>
	<td align=center>848.5316</td>
	<td align=center>0.7206000</td>
	<td align=center>999.5876</td>
	<td align=center>-</td>
	<td align=center>848.3012</td>
	<td align=center>0.7224000</td>
	<td align=center>999.1670</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:05</td>
	<td align=center>-</td>
	<td align=center>848.9350</td>
	<td align=center>0.7208000</td>
	<td align=center>999.9241</td>
	<td align=center>-</td>
	<td align=center>848.1035</td>
	<td align=center>0.7224000</td>
	<td align=center>998.9487</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>848.7641</td>
	<td align=center>0.7207000</td>
	<td align=center>999.7922</td>
	<td align=center>-</td>
	<td align=center>847.9813</td>
	<td align=center>0.7224000</td>
	<td align=center>997.7762</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:55</td>
	<td align=center>-</td>
	<td align=center>848.5656</td>
	<td align=center>0.7206000</td>
	<td align=center>999.6277</td>
	<td align=center>-</td>
	<td align=center>847.3768</td>
	<td align=center>0.7223000</td>
	<td align=center>997.3926</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:50</td>
	<td align=center>-</td>
	<td align=center>849.1297</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.2230</td>
	<td align=center>-</td>
	<td align=center>847.3412</td>
	<td align=center>0.7223000</td>
	<td align=center>997.6473</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:45</td>
	<td align=center>-</td>
	<td align=center>847.9323</td>
	<td align=center>0.7204000</td>
	<td align=center>999.0204</td>
	<td align=center>-</td>
	<td align=center>846.8775</td>
	<td align=center>0.7223000</td>
	<td align=center>996.9940</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:40</td>
	<td align=center>-</td>
	<td align=center>848.6696</td>
	<td align=center>0.7207000</td>
	<td align=center>999.6809</td>
	<td align=center>-</td>
	<td align=center>848.2862</td>
	<td align=center>0.7225000</td>
	<td align=center>996.4614</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:35</td>
	<td align=center>-</td>
	<td align=center>848.6696</td>
	<td align=center>0.7205000</td>
	<td align=center>999.8196</td>
	<td align=center>-</td>
	<td align=center>848.4661</td>
	<td align=center>0.7225000</td>
	<td align=center>997.7552</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:30</td>
	<td align=center>-</td>
	<td align=center>848.0686</td>
	<td align=center>0.7204000</td>
	<td align=center>999.1810</td>
	<td align=center>-</td>
	<td align=center>848.0640</td>
	<td align=center>0.7224000</td>
	<td align=center>997.9810</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:25</td>
	<td align=center>-</td>
	<td align=center>848.8734</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.0600</td>
	<td align=center>-</td>
	<td align=center>848.3804</td>
	<td align=center>0.7225000</td>
	<td align=center>998.1857</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:20</td>
	<td align=center>-</td>
	<td align=center>848.5186</td>
	<td align=center>0.7204000</td>
	<td align=center>999.7111</td>
	<td align=center>-</td>
	<td align=center>848.2034</td>
	<td align=center>0.7225000</td>
	<td align=center>998.0953</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:15</td>
	<td align=center>-</td>
	<td align=center>848.9055</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.0280</td>
	<td align=center>-</td>
	<td align=center>848.3956</td>
	<td align=center>0.7225000</td>
	<td align=center>997.9753</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:10</td>
	<td align=center>-</td>
	<td align=center>848.7526</td>
	<td align=center>0.7206000</td>
	<td align=center>999.8480</td>
	<td align=center>-</td>
	<td align=center>848.1825</td>
	<td align=center>0.7224000</td>
	<td align=center>997.8703</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:05</td>
	<td align=center>-</td>
	<td align=center>848.7526</td>
	<td align=center>0.7205000</td>
	<td align=center>999.9174</td>
	<td align=center>-</td>
	<td align=center>847.9594</td>
	<td align=center>0.7224000</td>
	<td align=center>997.8890</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>848.9361</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.0640</td>
	<td align=center>-</td>
	<td align=center>848.5824</td>
	<td align=center>0.7225000</td>
	<td align=center>997.6323</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:55</td>
	<td align=center>-</td>
	<td align=center>848.6807</td>
	<td align=center>0.7205000</td>
	<td align=center>999.8326</td>
	<td align=center>-</td>
	<td align=center>848.5024</td>
	<td align=center>0.7225000</td>
	<td align=center>998.0656</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:50</td>
	<td align=center>-</td>
	<td align=center>849.6427</td>
	<td align=center>0.7192000</td>
	<td align=center>1001.8700</td>
	<td align=center>-</td>
	<td align=center>848.5839</td>
	<td align=center>0.7225000</td>
	<td align=center>998.2824</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:45</td>
	<td align=center>-</td>
	<td align=center>850.1909</td>
	<td align=center>0.7187000</td>
	<td align=center>1002.8650</td>
	<td align=center>-</td>
	<td align=center>848.0966</td>
	<td align=center>0.7225000</td>
	<td align=center>998.2361</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:40</td>
	<td align=center>-</td>
	<td align=center>849.3371</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.8840</td>
	<td align=center>-</td>
	<td align=center>848.0610</td>
	<td align=center>0.7225000</td>
	<td align=center>997.7583</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:35</td>
	<td align=center>-</td>
	<td align=center>848.6295</td>
	<td align=center>0.7205000</td>
	<td align=center>999.7723</td>
	<td align=center>-</td>
	<td align=center>848.6023</td>
	<td align=center>0.7225000</td>
	<td align=center>997.7020</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:30</td>
	<td align=center>-</td>
	<td align=center>849.3563</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.4900</td>
	<td align=center>-</td>
	<td align=center>848.1904</td>
	<td align=center>0.7225000</td>
	<td align=center>997.6912</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:25</td>
	<td align=center>-</td>
	<td align=center>849.6219</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.7330</td>
	<td align=center>-</td>
	<td align=center>848.3288</td>
	<td align=center>0.7225000</td>
	<td align=center>997.8374</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:20</td>
	<td align=center>-</td>
	<td align=center>849.8686</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.0240</td>
	<td align=center>-</td>
	<td align=center>848.2967</td>
	<td align=center>0.7224000</td>
	<td align=center>997.8374</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:15</td>
	<td align=center>-</td>
	<td align=center>848.7806</td>
	<td align=center>0.7207000</td>
	<td align=center>999.8116</td>
	<td align=center>-</td>
	<td align=center>848.3662</td>
	<td align=center>0.7223000</td>
	<td align=center>997.9824</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:10</td>
	<td align=center>-</td>
	<td align=center>848.8608</td>
	<td align=center>0.7207000</td>
	<td align=center>999.9061</td>
	<td align=center>-</td>
	<td align=center>848.2294</td>
	<td align=center>0.7224000</td>
	<td align=center>998.0125</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:05</td>
	<td align=center>-</td>
	<td align=center>849.1967</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.3020</td>
	<td align=center>-</td>
	<td align=center>848.8224</td>
	<td align=center>0.7225000</td>
	<td align=center>998.1497</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>849.2219</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.3310</td>
	<td align=center>-</td>
	<td align=center>848.1644</td>
	<td align=center>0.7225000</td>
	<td align=center>998.6013</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:55</td>
	<td align=center>-</td>
	<td align=center>849.0101</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.0130</td>
	<td align=center>-</td>
	<td align=center>848.2978</td>
	<td align=center>0.7225000</td>
	<td align=center>998.4341</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:50</td>
	<td align=center>-</td>
	<td align=center>849.1988</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.2350</td>
	<td align=center>-</td>
	<td align=center>848.0198</td>
	<td align=center>0.7225000</td>
	<td align=center>997.8044</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:45</td>
	<td align=center>-</td>
	<td align=center>848.9567</td>
	<td align=center>0.7210000</td>
	<td align=center>999.8110</td>
	<td align=center>-</td>
	<td align=center>848.5556</td>
	<td align=center>0.7225000</td>
	<td align=center>997.9712</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:40</td>
	<td align=center>-</td>
	<td align=center>849.3986</td>
	<td align=center>0.7210000</td>
	<td align=center>1000.3310</td>
	<td align=center>-</td>
	<td align=center>848.6844</td>
	<td align=center>0.7225000</td>
	<td align=center>998.2885</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:35</td>
	<td align=center>-</td>
	<td align=center>849.3347</td>
	<td align=center>0.7210000</td>
	<td align=center>1000.2560</td>
	<td align=center>-</td>
	<td align=center>848.1552</td>
	<td align=center>0.7224000</td>
	<td align=center>997.8691</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:30</td>
	<td align=center>-</td>
	<td align=center>848.7673</td>
	<td align=center>0.7210000</td>
	<td align=center>999.5880</td>
	<td align=center>-</td>
	<td align=center>848.3688</td>
	<td align=center>0.7225000</td>
	<td align=center>998.4008</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:25</td>
	<td align=center>-</td>
	<td align=center>849.3802</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.1710</td>
	<td align=center>-</td>
	<td align=center>848.4763</td>
	<td align=center>0.7225000</td>
	<td align=center>997.8387</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:20</td>
	<td align=center>-</td>
	<td align=center>849.1828</td>
	<td align=center>0.7212000</td>
	<td align=center>999.9386</td>
	<td align=center>-</td>
	<td align=center>847.8974</td>
	<td align=center>0.7224000</td>
	<td align=center>998.1924</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:15</td>
	<td align=center>-</td>
	<td align=center>849.6395</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.4070</td>
	<td align=center>-</td>
	<td align=center>848.4147</td>
	<td align=center>0.7225000</td>
	<td align=center>997.9590</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:10</td>
	<td align=center>-</td>
	<td align=center>849.1292</td>
	<td align=center>0.7212000</td>
	<td align=center>999.8755</td>
	<td align=center>-</td>
	<td align=center>847.8906</td>
	<td align=center>0.7224000</td>
	<td align=center>997.5491</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:05</td>
	<td align=center>-</td>
	<td align=center>849.9520</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.7750</td>
	<td align=center>-</td>
	<td align=center>848.5999</td>
	<td align=center>0.7225000</td>
	<td align=center>998.1099</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>849.7717</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.6320</td>
	<td align=center>-</td>
	<td align=center>848.3069</td>
	<td align=center>0.7224000</td>
	<td align=center>998.3172</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:55</td>
	<td align=center>-</td>
	<td align=center>849.2798</td>
	<td align=center>0.7214000</td>
	<td align=center>999.9141</td>
	<td align=center>-</td>
	<td align=center>848.2180</td>
	<td align=center>0.7226000</td>
	<td align=center>997.9346</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:50</td>
	<td align=center>-</td>
	<td align=center>850.0145</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.9180</td>
	<td align=center>-</td>
	<td align=center>848.0567</td>
	<td align=center>0.7225000</td>
	<td align=center>998.0267</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:45</td>
	<td align=center>-</td>
	<td align=center>849.0596</td>
	<td align=center>0.7212000</td>
	<td align=center>999.7935</td>
	<td align=center>-</td>
	<td align=center>847.6381</td>
	<td align=center>0.7223000</td>
	<td align=center>997.8073</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:40</td>
	<td align=center>-</td>
	<td align=center>848.9058</td>
	<td align=center>0.7211000</td>
	<td align=center>999.6818</td>
	<td align=center>-</td>
	<td align=center>847.8540</td>
	<td align=center>0.7224000</td>
	<td align=center>997.3193</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:35</td>
	<td align=center>-</td>
	<td align=center>848.9540</td>
	<td align=center>0.7211000</td>
	<td align=center>999.7385</td>
	<td align=center>-</td>
	<td align=center>847.8965</td>
	<td align=center>0.7224000</td>
	<td align=center>997.4945</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:30</td>
	<td align=center>-</td>
	<td align=center>849.2060</td>
	<td align=center>0.7211000</td>
	<td align=center>1000.0350</td>
	<td align=center>-</td>
	<td align=center>847.7394</td>
	<td align=center>0.7223000</td>
	<td align=center>997.5234</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:25</td>
	<td align=center>-</td>
	<td align=center>848.6376</td>
	<td align=center>0.7211000</td>
	<td align=center>999.3659</td>
	<td align=center>-</td>
	<td align=center>847.5835</td>
	<td align=center>0.7223000</td>
	<td align=center>997.5453</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:20</td>
	<td align=center>-</td>
	<td align=center>849.1088</td>
	<td align=center>0.7212000</td>
	<td align=center>999.8514</td>
	<td align=center>-</td>
	<td align=center>847.6888</td>
	<td align=center>0.7224000</td>
	<td align=center>997.2561</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:15</td>
	<td align=center>-</td>
	<td align=center>849.2891</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.0640</td>
	<td align=center>-</td>
	<td align=center>847.8196</td>
	<td align=center>0.7226000</td>
	<td align=center>997.5015</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:10</td>
	<td align=center>-</td>
	<td align=center>849.8298</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.7000</td>
	<td align=center>-</td>
	<td align=center>847.8058</td>
	<td align=center>0.7224000</td>
	<td align=center>997.3029</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:05</td>
	<td align=center>-</td>
	<td align=center>849.4429</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.1760</td>
	<td align=center>-</td>
	<td align=center>847.2256</td>
	<td align=center>0.7224000</td>
	<td align=center>997.3389</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>849.9494</td>
	<td align=center>0.7214000</td>
	<td align=center>1000.7030</td>
	<td align=center>-</td>
	<td align=center>847.5076</td>
	<td align=center>0.7223000</td>
	<td align=center>996.7924</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:55</td>
	<td align=center>-</td>
	<td align=center>849.5211</td>
	<td align=center>0.7211000</td>
	<td align=center>1000.4060</td>
	<td align=center>-</td>
	<td align=center>847.7160</td>
	<td align=center>0.7223000</td>
	<td align=center>997.6166</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:50</td>
	<td align=center>-</td>
	<td align=center>849.3170</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.0970</td>
	<td align=center>-</td>
	<td align=center>847.8514</td>
	<td align=center>0.7224000</td>
	<td align=center>997.1927</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:45</td>
	<td align=center>-</td>
	<td align=center>849.2191</td>
	<td align=center>0.7211000</td>
	<td align=center>1000.0510</td>
	<td align=center>-</td>
	<td align=center>848.0815</td>
	<td align=center>0.7226000</td>
	<td align=center>997.3948</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:40</td>
	<td align=center>-</td>
	<td align=center>848.6309</td>
	<td align=center>0.7211000</td>
	<td align=center>999.3580</td>
	<td align=center>-</td>
	<td align=center>847.9948</td>
	<td align=center>0.7226000</td>
	<td align=center>997.6707</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:35</td>
	<td align=center>-</td>
	<td align=center>849.4244</td>
	<td align=center>0.7214000</td>
	<td align=center>1000.0840</td>
	<td align=center>-</td>
	<td align=center>847.7848</td>
	<td align=center>0.7223000</td>
	<td align=center>997.5525</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:30</td>
	<td align=center>-</td>
	<td align=center>849.5579</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.3800</td>
	<td align=center>-</td>
	<td align=center>848.0761</td>
	<td align=center>0.7225000</td>
	<td align=center>997.5233</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:25</td>
	<td align=center>-</td>
	<td align=center>849.0272</td>
	<td align=center>0.7212000</td>
	<td align=center>999.7553</td>
	<td align=center>-</td>
	<td align=center>848.0761</td>
	<td align=center>0.7225000</td>
	<td align=center>997.4771</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:20</td>
	<td align=center>-</td>
	<td align=center>849.3154</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.0950</td>
	<td align=center>-</td>
	<td align=center>848.2207</td>
	<td align=center>0.7225000</td>
	<td align=center>997.7285</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:15</td>
	<td align=center>-</td>
	<td align=center>848.7987</td>
	<td align=center>0.7212000</td>
	<td align=center>999.4863</td>
	<td align=center>-</td>
	<td align=center>848.5800</td>
	<td align=center>0.7226000</td>
	<td align=center>997.8288</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:10</td>
	<td align=center>-</td>
	<td align=center>849.0707</td>
	<td align=center>0.7212000</td>
	<td align=center>999.8066</td>
	<td align=center>-</td>
	<td align=center>848.6817</td>
	<td align=center>0.7226000</td>
	<td align=center>997.8584</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:05</td>
	<td align=center>-</td>
	<td align=center>849.8295</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.7000</td>
	<td align=center>-</td>
	<td align=center>848.8757</td>
	<td align=center>0.7225000</td>
	<td align=center>998.2062</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>850.4612</td>
	<td align=center>0.7215000</td>
	<td align=center>1001.2360</td>
	<td align=center>-</td>
	<td align=center>848.5641</td>
	<td align=center>0.7224000</td>
	<td align=center>998.6518</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:55</td>
	<td align=center>-</td>
	<td align=center>849.4850</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.2250</td>
	<td align=center>-</td>
	<td align=center>848.8810</td>
	<td align=center>0.7225000</td>
	<td align=center>998.5266</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:50</td>
	<td align=center>-</td>
	<td align=center>849.5825</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.3400</td>
	<td align=center>-</td>
	<td align=center>848.8442</td>
	<td align=center>0.7224000</td>
	<td align=center>998.3199</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:45</td>
	<td align=center>-</td>
	<td align=center>850.0573</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.8990</td>
	<td align=center>-</td>
	<td align=center>848.9297</td>
	<td align=center>0.7225000</td>
	<td align=center>998.6522</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:40</td>
	<td align=center>-</td>
	<td align=center>849.6033</td>
	<td align=center>0.7214000</td>
	<td align=center>1000.2950</td>
	<td align=center>-</td>
	<td align=center>848.9064</td>
	<td align=center>0.7225000</td>
	<td align=center>998.7153</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:35</td>
	<td align=center>-</td>
	<td align=center>850.3766</td>
	<td align=center>0.7214000</td>
	<td align=center>1001.2060</td>
	<td align=center>-</td>
	<td align=center>848.6962</td>
	<td align=center>0.7225000</td>
	<td align=center>998.6772</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:30</td>
	<td align=center>-</td>
	<td align=center>850.5931</td>
	<td align=center>0.7214000</td>
	<td align=center>1001.4600</td>
	<td align=center>-</td>
	<td align=center>848.6962</td>
	<td align=center>0.7225000</td>
	<td align=center>998.6772</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:25</td>
	<td align=center>-</td>
	<td align=center>849.6339</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.4000</td>
	<td align=center>-</td>
	<td align=center>848.8936</td>
	<td align=center>0.7225000</td>
	<td align=center>998.7098</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:20</td>
	<td align=center>-</td>
	<td align=center>850.6497</td>
	<td align=center>0.7214000</td>
	<td align=center>1001.5270</td>
	<td align=center>-</td>
	<td align=center>848.1544</td>
	<td align=center>0.7225000</td>
	<td align=center>998.6467</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:15</td>
	<td align=center>-</td>
	<td align=center>849.9749</td>
	<td align=center>0.7215000</td>
	<td align=center>1000.6630</td>
	<td align=center>-</td>
	<td align=center>848.4707</td>
	<td align=center>0.7224000</td>
	<td align=center>998.3474</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:10</td>
	<td align=center>-</td>
	<td align=center>849.7869</td>
	<td align=center>0.7214000</td>
	<td align=center>1000.5110</td>
	<td align=center>-</td>
	<td align=center>848.4968</td>
	<td align=center>0.7223000</td>
	<td align=center>997.7613</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:05</td>
	<td align=center>-</td>
	<td align=center>850.0074</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.8400</td>
	<td align=center>-</td>
	<td align=center>848.5190</td>
	<td align=center>0.7223000</td>
	<td align=center>998.3642</td>
  </tr>
</table>
<p><strong><font face="MS Sans Serif"><small>*** ตัวอักษร สีดำ หมายถึง ค่าเฉลี่ยต่อชั่วโมง 
  และ <font
color="#FF0000">สีแดง</font> หมายถึง ค่าปัจจุบัน ***</small></font></strong></p>
<p><u><strong><font face="MS Sans Serif"><small>หมายเหตุ</small></font></strong></u></p>
<blockquote> 
  <p><font face="MS Sans Serif"><small>1. ไม่ใช่ข้อมูลที่ใช้ซื้อขาย</small></font></p>
  <p><font face="MS Sans Serif"><small>2. ข้อมูลอาจ ERROR จากกำลังสอบเทียบ</small></font></p>
  <p><font face="MS Sans Serif"><small>3. Wobbe Index = HHV(dry)/SQR(SG)</small></font></p>
  <p><font face="MS Sans Serif"><small>4. HHV(dry) x 0.9826 = HHV(sat)</small></font></p>
  <p><font face="MS Sans Serif"><small>5. ก่อนใช้ข้อมูลปรับแต่งอุปกรณ์ ควรสอบทวนกับ 
	Gas Control โทร. (038) 274397-9</small></font></p>
</blockquote>
</body>
</html>




