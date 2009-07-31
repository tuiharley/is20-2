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
<title>Gas Quality Past 7 Days (West)</title>
<style type="text/css">
<!--
.head { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; }
.head2 { font-family: MS Sans Serif; font-size:8pt; }
.head4 { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#000000 }
.body { font-family: MS Sans Serif; font-size:6pt; }
-->
</style>
<link rel="stylesheet" href="../csc-text.css" type="text/css">
</head>

<body bgcolor="#ffffff" leftmargin="5" topmargin="0" >
<!-- #include file = "header.asp" -->
<table width="770" border="0" cellspacing="0" cellpadding="0">
  <tr> 
	<td width="20" bgcolor="#000066">&nbsp;</td>
	<td width="750" class="head4" bgcolor="#000066"><font color="#ffffff">Gas Quality Past 7 Days (West)</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="574" >
  <tr class="head">
	<td bgcolor="#37a4bb" align="left" colspan="16"  ><font color="#ffff80"><strong>ON LINE MONITOR BY GAS CHROMATOGRAPH  - PAST 7 DAY.</strong></font></td>
  </tr>
  <tr align="middle" bgcolor="#55caca" class="head">
	<td WIDTH="106" rowspan="2" >TIME</td>	
	<td  colspan="4" >AT Ban I Tong (BIT)</td>
	<td  colspan="4" >AT Ratchaburi (RB)</td> 
 </tr>
  
  <tr align="middle" bgcolor="#55caca">   
	<td WIDTH="65" height="3" class="head"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="head" align="middle">
		<td>LHV(dry)</td>
	  </tr>
	  <tr class="head2" align="middle">
		<td>(BTU/SCF)</td>
	  </tr>
	</table>
	</td>
	<td WIDTH="65" height="3"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="head" align="middle">
		<td>HHV(dry)</td>
	  </tr>
	  <tr class="head2" align="middle">
		<td>(BTU/SCF)</td>
	  </tr>
	</table>
	</td>
	<td WIDTH="58" height="3" class="head" >SG.</td>
	<td WIDTH="60"  height="3"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="head" align="middle">
		<td>WI</td>	  
	  </tr>
	  <tr class="head2" align="middle">
		<td>(BTU/SCF)</td>
	  </tr>
	</table>
	</td>   
	<td WIDTH="65" height="3" class="head"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="head" align="middle">
		<td>LHV(dry)</td>
	  </tr>
	  <tr class="head2" align="middle">
		<td>(BTU/SCF)</td>
	  </tr>
	</table>
	</td>
	<td WIDTH="65" height="3" class="head"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="head" align="middle">
		<td>HHV(dry)</td> 
	  </tr>
	  <tr class="head2" align="middle">
		<td>(BTU/SCF)</td>
	  </tr>
	</table>
	</td>
	<td WIDTH="60" height="3" class="head" >SG.</td>
	<td WIDTH="58"  height="3"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="head" align="middle">
		<td>WI</td>	  
	  </tr>
	  <tr class="head2" align="middle">
		<td>(BTU/SCF)</td>
	  </tr>
	</table>
	</td> 
  </tr>
  
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>995</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.70</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>992</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>844</td>
	<td align=center>0.72</td>
	<td align=center>995</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>995</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>995</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
	<td align=center>-</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>995</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
	<td align=center>-</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>851</td>
	<td align=center>0.72</td>
	<td align=center>1002</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>852</td>
	<td align=center>0.72</td>
	<td align=center>1003</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1002</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1002</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1002</td>
	<td align=center>-</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>996</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>1000</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1002</td>
	<td align=center>-</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
	<td align=center>-</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td>
  </tr>
</table>
<br>
<font face="MS Sans Serif">
<p><u><strong>หมายเหตุ</strong></u></p>

<blockquote>
  <p>1. ไม่ใช่ข้อมูลที่ใช้ซื้อขาย</p>
  <p>2. ข้อมูลอาจ ERROR จากกำลังสอบเทียบ</p>
  <p>3. Wobbe Index = HHV(dry)/SQR(SG)</p>
  <p>4. HHV(dry) x 0.9826 = HHV(sat)</p>
  <p>5. ก่อนใช้ข้อมูลปรับแต่งอุปกรณ์ ควรสอบทวนกับ Gas Control โทร. (038) 274397,9</p>
</blockquote>
</font>
</body>
</html>
