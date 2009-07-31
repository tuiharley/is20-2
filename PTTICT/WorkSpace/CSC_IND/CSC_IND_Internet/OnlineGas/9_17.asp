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
<table BORDER="0" CELLPADDING="2" width="663" >
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
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.3460</td>
	<td align=center>-</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.5407</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>848.3350</td>
	<td align=center>0.7200000</td>
	<td align=center>999.7723</td>
	<td align=center>-</td>
	<td align=center>848.7136</td>
	<td align=center>0.7222000</td>
	<td align=center>998.5755</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>847.7930</td>
	<td align=center>0.7200000</td>
	<td align=center>999.1337</td>
	<td align=center>-</td>
	<td align=center>849.1858</td>
	<td align=center>0.7223000</td>
	<td align=center>998.9146</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>848.4713</td>
	<td align=center>0.7201000</td>
	<td align=center>999.8635</td>
	<td align=center>-</td>
	<td align=center>848.9570</td>
	<td align=center>0.7222000</td>
	<td align=center>998.9585</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>848.2382</td>
	<td align=center>0.7202000</td>
	<td align=center>999.5195</td>
	<td align=center>-</td>
	<td align=center>849.5184</td>
	<td align=center>0.7223000</td>
	<td align=center>999.2178</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>848.0510</td>
	<td align=center>0.7203000</td>
	<td align=center>999.2296</td>
	<td align=center>-</td>
	<td align=center>848.9379</td>
	<td align=center>0.7223000</td>
	<td align=center>999.2353</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>847.5191</td>
	<td align=center>0.7203000</td>
	<td align=center>998.6028</td>
	<td align=center>-</td>
	<td align=center>848.8949</td>
	<td align=center>0.7222000</td>
	<td align=center>998.8386</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>848.6275</td>
	<td align=center>0.7203000</td>
	<td align=center>999.9088</td>
	<td align=center>-</td>
	<td align=center>849.3196</td>
	<td align=center>0.7222000</td>
	<td align=center>998.9636</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>847.4564</td>
	<td align=center>0.7203000</td>
	<td align=center>998.5289</td>
	<td align=center>-</td>
	<td align=center>848.5869</td>
	<td align=center>0.7221000</td>
	<td align=center>998.7366</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>847.8813</td>
	<td align=center>0.7204000</td>
	<td align=center>998.9603</td>
	<td align=center>-</td>
	<td align=center>848.6989</td>
	<td align=center>0.7220000</td>
	<td align=center>998.5586</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>848.1321</td>
	<td align=center>0.7204000</td>
	<td align=center>999.2557</td>
	<td align=center>-</td>
	<td align=center>849.1898</td>
	<td align=center>0.7223000</td>
	<td align=center>998.9950</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>848.7985</td>
	<td align=center>0.7207000</td>
	<td align=center>999.8327</td>
	<td align=center>-</td>
	<td align=center>849.3951</td>
	<td align=center>0.7227000</td>
	<td align=center>998.6970</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>849.3891</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.5280</td>
	<td align=center>-</td>
	<td align=center>849.7249</td>
	<td align=center>0.7229000</td>
	<td align=center>999.2042</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>849.3055</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.3610</td>
	<td align=center>-</td>
	<td align=center>849.3986</td>
	<td align=center>0.7228000</td>
	<td align=center>998.9039</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>848.7286</td>
	<td align=center>0.7207000</td>
	<td align=center>999.7503</td>
	<td align=center>-</td>
	<td align=center>850.1022</td>
	<td align=center>0.7229000</td>
	<td align=center>999.8005</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>849.3257</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.3840</td>
	<td align=center>-</td>
	<td align=center>849.3670</td>
	<td align=center>0.7226000</td>
	<td align=center>999.3155</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>850.1111</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.3090</td>
	<td align=center>-</td>
	<td align=center>849.1003</td>
	<td align=center>0.7225000</td>
	<td align=center>998.9507</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>848.7641</td>
	<td align=center>0.7207000</td>
	<td align=center>999.7922</td>
	<td align=center>-</td>
	<td align=center>847.9813</td>
	<td align=center>0.7224000</td>
	<td align=center>997.7762</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>848.9361</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.0640</td>
	<td align=center>-</td>
	<td align=center>848.5824</td>
	<td align=center>0.7225000</td>
	<td align=center>997.6323</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>849.2219</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.3310</td>
	<td align=center>-</td>
	<td align=center>848.1644</td>
	<td align=center>0.7225000</td>
	<td align=center>998.6013</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>849.7717</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.6320</td>
	<td align=center>-</td>
	<td align=center>848.3069</td>
	<td align=center>0.7224000</td>
	<td align=center>998.3172</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>849.9494</td>
	<td align=center>0.7214000</td>
	<td align=center>1000.7030</td>
	<td align=center>-</td>
	<td align=center>847.5076</td>
	<td align=center>0.7223000</td>
	<td align=center>996.7924</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>850.4612</td>
	<td align=center>0.7215000</td>
	<td align=center>1001.2360</td>
	<td align=center>-</td>
	<td align=center>848.5641</td>
	<td align=center>0.7224000</td>
	<td align=center>998.6518</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>850.2314</td>
	<td align=center>0.7214000</td>
	<td align=center>1001.0350</td>
	<td align=center>-</td>
	<td align=center>848.4271</td>
	<td align=center>0.7222000</td>
	<td align=center>998.3642</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>849.0699</td>
	<td align=center>0.7209000</td>
	<td align=center>1000.0140</td>
	<td align=center>-</td>
	<td align=center>847.3150</td>
	<td align=center>0.7221000</td>
	<td align=center>996.9438</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>849.0327</td>
	<td align=center>0.7210000</td>
	<td align=center>999.9005</td>
	<td align=center>-</td>
	<td align=center>848.5825</td>
	<td align=center>0.7224000</td>
	<td align=center>998.0936</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>848.1453</td>
	<td align=center>0.7209000</td>
	<td align=center>998.9247</td>
	<td align=center>-</td>
	<td align=center>848.6918</td>
	<td align=center>0.7220000</td>
	<td align=center>998.8359</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>847.6857</td>
	<td align=center>0.7208000</td>
	<td align=center>998.4526</td>
	<td align=center>-</td>
	<td align=center>849.3656</td>
	<td align=center>0.7220000</td>
	<td align=center>999.2224</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>848.0505</td>
	<td align=center>0.7209000</td>
	<td align=center>998.8130</td>
	<td align=center>-</td>
	<td align=center>849.2424</td>
	<td align=center>0.7220000</td>
	<td align=center>999.3913</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>848.5942</td>
	<td align=center>0.7210000</td>
	<td align=center>999.3841</td>
	<td align=center>-</td>
	<td align=center>848.1957</td>
	<td align=center>0.7218000</td>
	<td align=center>998.4827</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>848.4960</td>
	<td align=center>0.7210000</td>
	<td align=center>999.2684</td>
	<td align=center>-</td>
	<td align=center>849.2503</td>
	<td align=center>0.7220000</td>
	<td align=center>999.1343</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>848.5811</td>
	<td align=center>0.7211000</td>
	<td align=center>999.2994</td>
	<td align=center>-</td>
	<td align=center>847.7147</td>
	<td align=center>0.7219000</td>
	<td align=center>997.5870</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>847.6846</td>
	<td align=center>0.7208000</td>
	<td align=center>998.4513</td>
	<td align=center>-</td>
	<td align=center>847.7979</td>
	<td align=center>0.7218000</td>
	<td align=center>997.9835</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>847.6390</td>
	<td align=center>0.7205000</td>
	<td align=center>998.6055</td>
	<td align=center>-</td>
	<td align=center>847.3542</td>
	<td align=center>0.7217000</td>
	<td align=center>997.1364</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>848.7780</td>
	<td align=center>0.7206000</td>
	<td align=center>999.8779</td>
	<td align=center>-</td>
	<td align=center>847.6066</td>
	<td align=center>0.7218000</td>
	<td align=center>997.7918</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>848.4539</td>
	<td align=center>0.7211000</td>
	<td align=center>999.1496</td>
	<td align=center>-</td>
	<td align=center>847.2617</td>
	<td align=center>0.7217000</td>
	<td align=center>997.5780</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>848.6097</td>
	<td align=center>0.7203000</td>
	<td align=center>999.8878</td>
	<td align=center>-</td>
	<td align=center>846.9219</td>
	<td align=center>0.7217000</td>
	<td align=center>996.8494</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>848.6151</td>
	<td align=center>0.7204000</td>
	<td align=center>999.8248</td>
	<td align=center>-</td>
	<td align=center>847.7327</td>
	<td align=center>0.7219000</td>
	<td align=center>997.5496</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>849.2063</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.3820</td>
	<td align=center>-</td>
	<td align=center>848.1262</td>
	<td align=center>0.7219000</td>
	<td align=center>998.0115</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>848.1599</td>
	<td align=center>0.7204000</td>
	<td align=center>999.2885</td>
	<td align=center>-</td>
	<td align=center>847.6567</td>
	<td align=center>0.7219000</td>
	<td align=center>997.6689</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>848.6384</td>
	<td align=center>0.7203000</td>
	<td align=center>999.9217</td>
	<td align=center>-</td>
	<td align=center>847.2379</td>
	<td align=center>0.7219000</td>
	<td align=center>997.1060</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>847.6680</td>
	<td align=center>0.7202000</td>
	<td align=center>998.8477</td>
	<td align=center>-</td>
	<td align=center>847.3246</td>
	<td align=center>0.7218000</td>
	<td align=center>996.9444</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>848.1342</td>
	<td align=center>0.7204000</td>
	<td align=center>999.2582</td>
	<td align=center>-</td>
	<td align=center>847.0503</td>
	<td align=center>0.7218000</td>
	<td align=center>996.2835</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>847.3927</td>
	<td align=center>0.7204000</td>
	<td align=center>998.3846</td>
	<td align=center>-</td>
	<td align=center>846.5594</td>
	<td align=center>0.7217000</td>
	<td align=center>996.4531</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>847.3417</td>
	<td align=center>0.7204000</td>
	<td align=center>998.3245</td>
	<td align=center>-</td>
	<td align=center>847.1198</td>
	<td align=center>0.7219000</td>
	<td align=center>996.4880</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>846.8174</td>
	<td align=center>0.7202000</td>
	<td align=center>997.8453</td>
	<td align=center>-</td>
	<td align=center>846.8043</td>
	<td align=center>0.7217000</td>
	<td align=center>997.1921</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>847.9706</td>
	<td align=center>0.7205000</td>
	<td align=center>998.9961</td>
	<td align=center>-</td>
	<td align=center>846.1954</td>
	<td align=center>0.7217000</td>
	<td align=center>996.4189</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>847.2293</td>
	<td align=center>0.7202000</td>
	<td align=center>998.3307</td>
	<td align=center>-</td>
	<td align=center>846.3782</td>
	<td align=center>0.7218000</td>
	<td align=center>996.3723</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>847.8559</td>
	<td align=center>0.7204000</td>
	<td align=center>998.9304</td>
	<td align=center>-</td>
	<td align=center>847.4182</td>
	<td align=center>0.7218000</td>
	<td align=center>998.4594</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>847.9255</td>
	<td align=center>0.7204000</td>
	<td align=center>999.0123</td>
	<td align=center>-</td>
	<td align=center>847.0448</td>
	<td align=center>0.7219000</td>
	<td align=center>996.5048</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>846.7499</td>
	<td align=center>0.7202000</td>
	<td align=center>997.7658</td>
	<td align=center>-</td>
	<td align=center>846.1406</td>
	<td align=center>0.7217000</td>
	<td align=center>996.1510</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>846.8007</td>
	<td align=center>0.7202000</td>
	<td align=center>997.8256</td>
	<td align=center>-</td>
	<td align=center>846.2440</td>
	<td align=center>0.7217000</td>
	<td align=center>996.2514</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>846.5201</td>
	<td align=center>0.7200000</td>
	<td align=center>997.6335</td>
	<td align=center>-</td>
	<td align=center>846.3210</td>
	<td align=center>0.7216000</td>
	<td align=center>996.3875</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>846.8116</td>
	<td align=center>0.7203000</td>
	<td align=center>997.7692</td>
	<td align=center>-</td>
	<td align=center>846.5570</td>
	<td align=center>0.7216000</td>
	<td align=center>996.6804</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>847.0226</td>
	<td align=center>0.7202000</td>
	<td align=center>998.0872</td>
	<td align=center>-</td>
	<td align=center>847.2053</td>
	<td align=center>0.7217000</td>
	<td align=center>997.4157</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>847.2587</td>
	<td align=center>0.7203000</td>
	<td align=center>998.2960</td>
	<td align=center>-</td>
	<td align=center>845.4518</td>
	<td align=center>0.7215000</td>
	<td align=center>995.1976</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>846.9858</td>
	<td align=center>0.7203000</td>
	<td align=center>997.9744</td>
	<td align=center>-</td>
	<td align=center>846.0378</td>
	<td align=center>0.7210000</td>
	<td align=center>996.0517</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>845.5918</td>
	<td align=center>0.7202000</td>
	<td align=center>996.4011</td>
	<td align=center>-</td>
	<td align=center>847.0219</td>
	<td align=center>0.7211000</td>
	<td align=center>996.5880</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>847.7225</td>
	<td align=center>0.7206000</td>
	<td align=center>998.6345</td>
	<td align=center>-</td>
	<td align=center>846.7348</td>
	<td align=center>0.7198000</td>
	<td align=center>997.7985</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>847.0485</td>
	<td align=center>0.7203000</td>
	<td align=center>998.0483</td>
	<td align=center>-</td>
	<td align=center>846.4863</td>
	<td align=center>0.7198000</td>
	<td align=center>997.4154</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>846.6653</td>
	<td align=center>0.7202000</td>
	<td align=center>997.6661</td>
	<td align=center>-</td>
	<td align=center>849.9770</td>
	<td align=center>0.7022000</td>
	<td align=center>995.9263</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>846.8458</td>
	<td align=center>0.7202000</td>
	<td align=center>997.8787</td>
	<td align=center>-</td>
	<td align=center>847.5591</td>
	<td align=center>0.7201000</td>
	<td align=center>998.5672</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>846.3961</td>
	<td align=center>0.7200000</td>
	<td align=center>997.4874</td>
	<td align=center>-</td>
	<td align=center>847.0300</td>
	<td align=center>0.7201000</td>
	<td align=center>998.3831</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>846.7767</td>
	<td align=center>0.7199000</td>
	<td align=center>998.0052</td>
	<td align=center>-</td>
	<td align=center>847.4883</td>
	<td align=center>0.7201000</td>
	<td align=center>998.3214</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>846.4150</td>
	<td align=center>0.7201000</td>
	<td align=center>997.4404</td>
	<td align=center>-</td>
	<td align=center>847.9312</td>
	<td align=center>0.7202000</td>
	<td align=center>998.9069</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>845.1542</td>
	<td align=center>0.7199000</td>
	<td align=center>996.0929</td>
	<td align=center>-</td>
	<td align=center>847.0300</td>
	<td align=center>0.7202000</td>
	<td align=center>998.5962</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>845.5275</td>
	<td align=center>0.7200000</td>
	<td align=center>996.4637</td>
	<td align=center>-</td>
	<td align=center>847.2440</td>
	<td align=center>0.7202000</td>
	<td align=center>998.0654</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>846.3713</td>
	<td align=center>0.7194000</td>
	<td align=center>997.8740</td>
	<td align=center>-</td>
	<td align=center>846.4635</td>
	<td align=center>0.7199000</td>
	<td align=center>998.0880</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>847.1360</td>
	<td align=center>0.7188000</td>
	<td align=center>999.1924</td>
	<td align=center>-</td>
	<td align=center>846.4268</td>
	<td align=center>0.7198000</td>
	<td align=center>997.6144</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>847.7421</td>
	<td align=center>0.7189000</td>
	<td align=center>999.8377</td>
	<td align=center>-</td>
	<td align=center>846.1619</td>
	<td align=center>0.7200000</td>
	<td align=center>997.3418</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>847.7758</td>
	<td align=center>0.7187000</td>
	<td align=center>1000.0170</td>
	<td align=center>-</td>
	<td align=center>846.8557</td>
	<td align=center>0.7202000</td>
	<td align=center>997.4394</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>847.1127</td>
	<td align=center>0.7186000</td>
	<td align=center>999.3040</td>
	<td align=center>-</td>
	<td align=center>846.5076</td>
	<td align=center>0.7203000</td>
	<td align=center>996.2610</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>847.6639</td>
	<td align=center>0.7187000</td>
	<td align=center>999.8845</td>
	<td align=center>-</td>
	<td align=center>846.1705</td>
	<td align=center>0.7206000</td>
	<td align=center>997.2357</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>848.4225</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.6400</td>
	<td align=center>-</td>
	<td align=center>846.7750</td>
	<td align=center>0.7205000</td>
	<td align=center>997.2742</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>846.8603</td>
	<td align=center>0.7187000</td>
	<td align=center>998.9366</td>
	<td align=center>-</td>
	<td align=center>847.4937</td>
	<td align=center>0.7202000</td>
	<td align=center>998.3402</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>846.9503</td>
	<td align=center>0.7186000</td>
	<td align=center>999.1124</td>
	<td align=center>-</td>
	<td align=center>847.3140</td>
	<td align=center>0.7203000</td>
	<td align=center>998.5890</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>846.1375</td>
	<td align=center>0.7184000</td>
	<td align=center>998.2925</td>
	<td align=center>-</td>
	<td align=center>847.1302</td>
	<td align=center>0.7213000</td>
	<td align=center>997.5433</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>846.7220</td>
	<td align=center>0.7185000</td>
	<td align=center>998.9125</td>
	<td align=center>-</td>
	<td align=center>846.7058</td>
	<td align=center>0.7213000</td>
	<td align=center>996.6518</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>847.0628</td>
	<td align=center>0.7187000</td>
	<td align=center>999.1755</td>
	<td align=center>-</td>
	<td align=center>847.1872</td>
	<td align=center>0.7212000</td>
	<td align=center>997.9525</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>846.2911</td>
	<td align=center>0.7187000</td>
	<td align=center>998.2653</td>
	<td align=center>-</td>
	<td align=center>846.6152</td>
	<td align=center>0.7212000</td>
	<td align=center>997.0306</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>846.8543</td>
	<td align=center>0.7190000</td>
	<td align=center>998.7212</td>
	<td align=center>-</td>
	<td align=center>846.5242</td>
	<td align=center>0.7213000</td>
	<td align=center>996.9088</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>846.6390</td>
	<td align=center>0.7189000</td>
	<td align=center>998.5367</td>
	<td align=center>-</td>
	<td align=center>847.8324</td>
	<td align=center>0.7215000</td>
	<td align=center>998.2048</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>847.4147</td>
	<td align=center>0.7189000</td>
	<td align=center>999.4515</td>
	<td align=center>-</td>
	<td align=center>846.7212</td>
	<td align=center>0.7216000</td>
	<td align=center>997.4523</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>847.3986</td>
	<td align=center>0.7188000</td>
	<td align=center>999.5021</td>
	<td align=center>-</td>
	<td align=center>847.9072</td>
	<td align=center>0.7216000</td>
	<td align=center>998.8799</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>847.3519</td>
	<td align=center>0.7188000</td>
	<td align=center>999.4470</td>
	<td align=center>-</td>
	<td align=center>847.6683</td>
	<td align=center>0.7216000</td>
	<td align=center>997.7952</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>847.5363</td>
	<td align=center>0.7198000</td>
	<td align=center>998.9699</td>
	<td align=center>-</td>
	<td align=center>847.9573</td>
	<td align=center>0.7215000</td>
	<td align=center>998.0896</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>847.2396</td>
	<td align=center>0.7198000</td>
	<td align=center>998.6202</td>
	<td align=center>-</td>
	<td align=center>845.5760</td>
	<td align=center>0.7214000</td>
	<td align=center>991.7371</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>847.1569</td>
	<td align=center>0.7197000</td>
	<td align=center>998.5920</td>
	<td align=center>-</td>
	<td align=center>845.8524</td>
	<td align=center>0.7215000</td>
	<td align=center>996.1699</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>846.0472</td>
	<td align=center>0.7195000</td>
	<td align=center>997.4226</td>
	<td align=center>-</td>
	<td align=center>847.4238</td>
	<td align=center>0.7215000</td>
	<td align=center>997.9634</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>847.0950</td>
	<td align=center>0.7199000</td>
	<td align=center>998.3804</td>
	<td align=center>-</td>
	<td align=center>847.3323</td>
	<td align=center>0.7214000</td>
	<td align=center>997.5743</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>846.8845</td>
	<td align=center>0.7199000</td>
	<td align=center>998.1322</td>
	<td align=center>-</td>
	<td align=center>846.5476</td>
	<td align=center>0.7213000</td>
	<td align=center>996.8218</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>846.2043</td>
	<td align=center>0.7206000</td>
	<td align=center>996.8461</td>
	<td align=center>-</td>
	<td align=center>846.0518</td>
	<td align=center>0.7215000</td>
	<td align=center>995.6991</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>848.0156</td>
	<td align=center>0.7200000</td>
	<td align=center>999.3959</td>
	<td align=center>-</td>
	<td align=center>846.1430</td>
	<td align=center>0.7214000</td>
	<td align=center>995.8044</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>847.9031</td>
	<td align=center>0.7200000</td>
	<td align=center>999.2634</td>
	<td align=center>-</td>
	<td align=center>846.1967</td>
	<td align=center>0.7215000</td>
	<td align=center>996.3569</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>847.7164</td>
	<td align=center>0.7200000</td>
	<td align=center>999.0434</td>
	<td align=center>-</td>
	<td align=center>845.5725</td>
	<td align=center>0.7216000</td>
	<td align=center>995.5693</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>843.8851</td>
	<td align=center>0.7196000</td>
	<td align=center>994.8044</td>
	<td align=center>-</td>
	<td align=center>846.7455</td>
	<td align=center>0.7218000</td>
	<td align=center>995.1454</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>844.9868</td>
	<td align=center>0.7197000</td>
	<td align=center>996.0341</td>
	<td align=center>-</td>
	<td align=center>847.7581</td>
	<td align=center>0.7218000</td>
	<td align=center>996.6931</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>848.7541</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.1970</td>
	<td align=center>-</td>
	<td align=center>847.0651</td>
	<td align=center>0.7217000</td>
	<td align=center>997.1984</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>848.1085</td>
	<td align=center>0.7201000</td>
	<td align=center>999.4360</td>
	<td align=center>-</td>
	<td align=center>846.4133</td>
	<td align=center>0.7216000</td>
	<td align=center>996.3051</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>847.2846</td>
	<td align=center>0.7200000</td>
	<td align=center>998.5345</td>
	<td align=center>-</td>
	<td align=center>846.2482</td>
	<td align=center>0.7217000</td>
	<td align=center>995.8410</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>846.9647</td>
	<td align=center>0.7199000</td>
	<td align=center>998.2267</td>
	<td align=center>-</td>
	<td align=center>845.5841</td>
	<td align=center>0.7216000</td>
	<td align=center>995.1790</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>845.5057</td>
	<td align=center>0.7199000</td>
	<td align=center>996.5072</td>
	<td align=center>-</td>
	<td align=center>845.2947</td>
	<td align=center>0.7215000</td>
	<td align=center>995.0917</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>845.3807</td>
	<td align=center>0.7199000</td>
	<td align=center>996.3599</td>
	<td align=center>-</td>
	<td align=center>845.4811</td>
	<td align=center>0.7215000</td>
	<td align=center>996.7527</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>846.2084</td>
	<td align=center>0.7200000</td>
	<td align=center>997.2661</td>
	<td align=center>-</td>
	<td align=center>845.9583</td>
	<td align=center>0.7218000</td>
	<td align=center>996.6930</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>847.0907</td>
	<td align=center>0.7199000</td>
	<td align=center>998.3753</td>
	<td align=center>-</td>
	<td align=center>849.5920</td>
	<td align=center>0.7204000</td>
	<td align=center>999.9905</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>844.9850</td>
	<td align=center>0.7200000</td>
	<td align=center>995.8244</td>
	<td align=center>-</td>
	<td align=center>847.9169</td>
	<td align=center>0.7205000</td>
	<td align=center>998.5660</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>847.3502</td>
	<td align=center>0.7203000</td>
	<td align=center>998.4038</td>
	<td align=center>-</td>
	<td align=center>848.6449</td>
	<td align=center>0.7206000</td>
	<td align=center>999.4445</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>846.9309</td>
	<td align=center>0.7203000</td>
	<td align=center>997.9097</td>
	<td align=center>-</td>
	<td align=center>848.7872</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.0990</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>846.5506</td>
	<td align=center>0.7202000</td>
	<td align=center>997.5309</td>
	<td align=center>-</td>
	<td align=center>850.5765</td>
	<td align=center>0.7197000</td>
	<td align=center>1002.0870</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>845.6459</td>
	<td align=center>0.7201000</td>
	<td align=center>996.5341</td>
	<td align=center>-</td>
	<td align=center>848.5107</td>
	<td align=center>0.7205000</td>
	<td align=center>999.0419</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>846.0528</td>
	<td align=center>0.7203000</td>
	<td align=center>996.8751</td>
	<td align=center>-</td>
	<td align=center>848.2633</td>
	<td align=center>0.7205000</td>
	<td align=center>999.3734</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>845.7584</td>
	<td align=center>0.7201000</td>
	<td align=center>996.6666</td>
	<td align=center>-</td>
	<td align=center>848.1727</td>
	<td align=center>0.7206000</td>
	<td align=center>999.3027</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>846.7612</td>
	<td align=center>0.7203000</td>
	<td align=center>997.7098</td>
	<td align=center>-</td>
	<td align=center>848.8162</td>
	<td align=center>0.7204000</td>
	<td align=center>999.4979</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>846.9258</td>
	<td align=center>0.7201000</td>
	<td align=center>998.0423</td>
	<td align=center>-</td>
	<td align=center>848.4528</td>
	<td align=center>0.7204000</td>
	<td align=center>999.3953</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>845.5106</td>
	<td align=center>0.7201000</td>
	<td align=center>996.3746</td>
	<td align=center>-</td>
	<td align=center>848.0977</td>
	<td align=center>0.7204000</td>
	<td align=center>999.2310</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>852.1801</td>
	<td align=center>0.7215000</td>
	<td align=center>1003.2590</td>
	<td align=center>-</td>
	<td align=center>848.2050</td>
	<td align=center>0.7205000</td>
	<td align=center>999.4970</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>847.6951</td>
	<td align=center>0.7191000</td>
	<td align=center>999.6432</td>
	<td align=center>-</td>
	<td align=center>848.2560</td>
	<td align=center>0.7204000</td>
	<td align=center>999.2883</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>848.8973</td>
	<td align=center>0.7191000</td>
	<td align=center>1001.0610</td>
	<td align=center>-</td>
	<td align=center>848.0981</td>
	<td align=center>0.7203000</td>
	<td align=center>999.4143</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>847.8588</td>
	<td align=center>0.7190000</td>
	<td align=center>999.9058</td>
	<td align=center>-</td>
	<td align=center>848.1451</td>
	<td align=center>0.7203000</td>
	<td align=center>999.4857</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>847.6829</td>
	<td align=center>0.7190000</td>
	<td align=center>999.6984</td>
	<td align=center>-</td>
	<td align=center>847.9285</td>
	<td align=center>0.7203000</td>
	<td align=center>999.6507</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>848.9934</td>
	<td align=center>0.7193000</td>
	<td align=center>1001.0350</td>
	<td align=center>-</td>
	<td align=center>848.6265</td>
	<td align=center>0.7205000</td>
	<td align=center>999.5244</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>848.5262</td>
	<td align=center>0.7192000</td>
	<td align=center>1000.5540</td>
	<td align=center>-</td>
	<td align=center>848.0740</td>
	<td align=center>0.7205000</td>
	<td align=center>999.2452</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>848.3519</td>
	<td align=center>0.7191000</td>
	<td align=center>1000.4180</td>
	<td align=center>-</td>
	<td align=center>848.4737</td>
	<td align=center>0.7205000</td>
	<td align=center>999.5654</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>848.9424</td>
	<td align=center>0.7190000</td>
	<td align=center>1001.1840</td>
	<td align=center>-</td>
	<td align=center>848.4048</td>
	<td align=center>0.7206000</td>
	<td align=center>999.5638</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>849.1561</td>
	<td align=center>0.7190000</td>
	<td align=center>1001.4360</td>
	<td align=center>-</td>
	<td align=center>848.3321</td>
	<td align=center>0.7205000</td>
	<td align=center>999.3967</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>848.4754</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.7030</td>
	<td align=center>-</td>
	<td align=center>847.9039</td>
	<td align=center>0.7205000</td>
	<td align=center>998.5456</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>847.8400</td>
	<td align=center>0.7188000</td>
	<td align=center>1000.0230</td>
	<td align=center>-</td>
	<td align=center>847.7939</td>
	<td align=center>0.7204000</td>
	<td align=center>999.3674</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>848.2009</td>
	<td align=center>0.7187000</td>
	<td align=center>1000.5180</td>
	<td align=center>-</td>
	<td align=center>848.5350</td>
	<td align=center>0.7205000</td>
	<td align=center>999.3652</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>848.2191</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.3310</td>
	<td align=center>-</td>
	<td align=center>848.4279</td>
	<td align=center>0.7205000</td>
	<td align=center>999.5093</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>848.7691</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.9790</td>
	<td align=center>-</td>
	<td align=center>848.3012</td>
	<td align=center>0.7204000</td>
	<td align=center>999.2986</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>848.1569</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.2570</td>
	<td align=center>-</td>
	<td align=center>848.4860</td>
	<td align=center>0.7205000</td>
	<td align=center>999.6722</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>848.1569</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.2570</td>
	<td align=center>-</td>
	<td align=center>848.4023</td>
	<td align=center>0.7204000</td>
	<td align=center>999.2764</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>848.1625</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.3340</td>
	<td align=center>-</td>
	<td align=center>847.7758</td>
	<td align=center>0.7204000</td>
	<td align=center>998.8774</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>847.9694</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.1060</td>
	<td align=center>-</td>
	<td align=center>848.1571</td>
	<td align=center>0.7205000</td>
	<td align=center>999.5701</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>847.6198</td>
	<td align=center>0.7190000</td>
	<td align=center>999.6240</td>
	<td align=center>-</td>
	<td align=center>848.4670</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.1510</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>847.9255</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.0540</td>
	<td align=center>-</td>
	<td align=center>848.6592</td>
	<td align=center>0.7206000</td>
	<td align=center>999.6575</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>848.2391</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.3540</td>
	<td align=center>-</td>
	<td align=center>848.1330</td>
	<td align=center>0.7204000</td>
	<td align=center>999.4064</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>847.9832</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.0530</td>
	<td align=center>-</td>
	<td align=center>848.5191</td>
	<td align=center>0.7206000</td>
	<td align=center>999.5687</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>848.7864</td>
	<td align=center>0.7190000</td>
	<td align=center>1001.0000</td>
	<td align=center>-</td>
	<td align=center>847.7232</td>
	<td align=center>0.7204000</td>
	<td align=center>998.8241</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>848.3551</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.4910</td>
	<td align=center>-</td>
	<td align=center>848.4214</td>
	<td align=center>0.7204000</td>
	<td align=center>999.0689</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>848.7001</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.9680</td>
	<td align=center>-</td>
	<td align=center>848.1967</td>
	<td align=center>0.7204000</td>
	<td align=center>999.4615</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>848.5599</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.8020</td>
	<td align=center>-</td>
	<td align=center>848.1161</td>
	<td align=center>0.7204000</td>
	<td align=center>999.4088</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>848.9858</td>
	<td align=center>0.7192000</td>
	<td align=center>1001.0960</td>
	<td align=center>-</td>
	<td align=center>848.2951</td>
	<td align=center>0.7203000</td>
	<td align=center>996.9709</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>-</td>
	<td align=center>849.1536</td>
	<td align=center>0.7192000</td>
	<td align=center>1001.2940</td>
	<td align=center>-</td>
	<td align=center>848.2903</td>
	<td align=center>0.7203000</td>
	<td align=center>999.2629</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>-</td>
	<td align=center>848.5425</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.7120</td>
	<td align=center>-</td>
	<td align=center>848.7034</td>
	<td align=center>0.7203000</td>
	<td align=center>999.5690</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>-</td>
	<td align=center>848.5169</td>
	<td align=center>0.7191000</td>
	<td align=center>1000.6120</td>
	<td align=center>-</td>
	<td align=center>848.6053</td>
	<td align=center>0.7206000</td>
	<td align=center>999.7281</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>-</td>
	<td align=center>848.0206</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.0970</td>
	<td align=center>-</td>
	<td align=center>848.8757</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.3460</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>-</td>
	<td align=center>847.8728</td>
	<td align=center>0.7189000</td>
	<td align=center>999.9918</td>
	<td align=center>-</td>
	<td align=center>848.1125</td>
	<td align=center>0.7210000</td>
	<td align=center>999.8686</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>-</td>
	<td align=center>848.7243</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.9270</td>
	<td align=center>-</td>
	<td align=center>848.1578</td>
	<td align=center>0.7207000</td>
	<td align=center>998.7553</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>-</td>
	<td align=center>848.1400</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.3070</td>
	<td align=center>-</td>
	<td align=center>849.5892</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.6310</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>-</td>
	<td align=center>847.6846</td>
	<td align=center>0.7188000</td>
	<td align=center>999.8394</td>
	<td align=center>-</td>
	<td align=center>849.2181</td>
	<td align=center>0.7204000</td>
	<td align=center>1000.5640</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>-</td>
	<td align=center>848.4365</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.6570</td>
	<td align=center>-</td>
	<td align=center>850.2193</td>
	<td align=center>0.7205000</td>
	<td align=center>1001.1500</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>-</td>
	<td align=center>848.3651</td>
	<td align=center>0.7187000</td>
	<td align=center>1000.7120</td>
	<td align=center>-</td>
	<td align=center>848.5497</td>
	<td align=center>0.7203000</td>
	<td align=center>999.7132</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>-</td>
	<td align=center>848.8917</td>
	<td align=center>0.7190000</td>
	<td align=center>1001.1240</td>
	<td align=center>-</td>
	<td align=center>848.7158</td>
	<td align=center>0.7205000</td>
	<td align=center>999.6125</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>-</td>
	<td align=center>848.6743</td>
	<td align=center>0.7192000</td>
	<td align=center>1000.7280</td>
	<td align=center>-</td>
	<td align=center>848.5795</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.1220</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>-</td>
	<td align=center>848.1688</td>
	<td align=center>0.7194000</td>
	<td align=center>999.9932</td>
	<td align=center>-</td>
	<td align=center>847.2598</td>
	<td align=center>0.7205000</td>
	<td align=center>998.7897</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>-</td>
	<td align=center>847.7678</td>
	<td align=center>0.7192000</td>
	<td align=center>999.6594</td>
	<td align=center>-</td>
	<td align=center>847.9062</td>
	<td align=center>0.7207000</td>
	<td align=center>998.2372</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>-</td>
	<td align=center>849.3438</td>
	<td align=center>0.7191000</td>
	<td align=center>1001.5870</td>
	<td align=center>-</td>
	<td align=center>846.9448</td>
	<td align=center>0.7207000</td>
	<td align=center>997.6558</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>-</td>
	<td align=center>849.1758</td>
	<td align=center>0.7189000</td>
	<td align=center>1001.5290</td>
	<td align=center>-</td>
	<td align=center>846.5587</td>
	<td align=center>0.7207000</td>
	<td align=center>997.2393</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>-</td>
	<td align=center>849.7761</td>
	<td align=center>0.7188000</td>
	<td align=center>1002.3060</td>
	<td align=center>-</td>
	<td align=center>844.8572</td>
	<td align=center>0.7205000</td>
	<td align=center>996.3004</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>-</td>
	<td align=center>847.7783</td>
	<td align=center>0.7187000</td>
	<td align=center>1000.0190</td>
	<td align=center>-</td>
	<td align=center>846.6221</td>
	<td align=center>0.7215000</td>
	<td align=center>996.9359</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>-</td>
	<td align=center>848.3521</td>
	<td align=center>0.7188000</td>
	<td align=center>1000.6270</td>
	<td align=center>-</td>
	<td align=center>846.8389</td>
	<td align=center>0.7213000</td>
	<td align=center>997.1296</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>-</td>
	<td align=center>847.4357</td>
	<td align=center>0.7187000</td>
	<td align=center>999.6154</td>
	<td align=center>-</td>
	<td align=center>847.4770</td>
	<td align=center>0.7208000</td>
	<td align=center>998.1560</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>-</td>
	<td align=center>848.8033</td>
	<td align=center>0.7187000</td>
	<td align=center>1001.2290</td>
	<td align=center>-</td>
	<td align=center>848.0602</td>
	<td align=center>0.7209000</td>
	<td align=center>998.9953</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>-</td>
	<td align=center>849.2059</td>
	<td align=center>0.7185000</td>
	<td align=center>1001.8430</td>
	<td align=center>-</td>
	<td align=center>848.5651</td>
	<td align=center>0.7210000</td>
	<td align=center>999.1085</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>-</td>
	<td align=center>847.1376</td>
	<td align=center>0.7193000</td>
	<td align=center>998.8470</td>
	<td align=center>-</td>
	<td align=center>847.9335</td>
	<td align=center>0.7208000</td>
	<td align=center>998.8354</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>-</td>
	<td align=center>847.4935</td>
	<td align=center>0.7191000</td>
	<td align=center>999.4055</td>
	<td align=center>-</td>
	<td align=center>847.5724</td>
	<td align=center>0.7207000</td>
	<td align=center>998.5645</td>
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
