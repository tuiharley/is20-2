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
<title>Current Gas Quality</title>
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
	timerID = setTimeout(document.location='9_1.asp',300000);	  
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
	  Gas Quality</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="663">
  <tr class="head"> 
	<td bgcolor="#1774DB" align="left" colspan="16"  ><strong>ON LINE MONITOR 
	  BY GAS CHROMATOGRAPH - CURRENT</strong></td>
  </tr>
  <tr align="center" bgcolor="#4192EB" class="head2"> 
	<td WIDTH="106" rowspan="2" ><font color="#FFFFFF">TIME</font></td>
	<td  colspan="4" >ON#1 (AT BV.12)</td>
	<td  colspan="4" >MTP (AT DPCU)</td>
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
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>882.7881</td>
	<td align=center>977.1890</td>
	<td align=center>0.7366000</td>
	<td align=center>1138.5780</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:40</td>
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>882.8207</td>
	<td align=center>977.2107</td>
	<td align=center>0.7372000</td>
	<td align=center>1138.1400</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:35</td>
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>882.8889</td>
	<td align=center>977.3172</td>
	<td align=center>0.7358000</td>
	<td align=center>1139.3460</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:30</td>
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>882.9380</td>
	<td align=center>977.4213</td>
	<td align=center>0.7335000</td>
	<td align=center>1141.2520</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:25</td>
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>883.7603</td>
	<td align=center>978.3251</td>
	<td align=center>0.7331000</td>
	<td align=center>1142.6190</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:20</td>
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>883.3998</td>
	<td align=center>977.9263</td>
	<td align=center>0.7335000</td>
	<td align=center>1141.8420</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:15</td>
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>883.4421</td>
	<td align=center>977.9829</td>
	<td align=center>0.7330000</td>
	<td align=center>1142.2980</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:10</td>
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>883.8795</td>
	<td align=center>978.4489</td>
	<td align=center>0.7335000</td>
	<td align=center>1142.4520</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:05</td>
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>884.0687</td>
	<td align=center>978.6357</td>
	<td align=center>0.7344000</td>
	<td align=center>1141.9700</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>876.1730</td>
	<td align=center>970.0179</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.3760</td>
	<td align=center>884.3521</td>
	<td align=center>978.9574</td>
	<td align=center>0.7338000</td>
	<td align=center>1142.8120</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:55</td>
	<td align=center>875.8068</td>
	<td align=center>969.6761</td>
	<td align=center>0.7345000</td>
	<td align=center>1131.4380</td>
	<td align=center>884.8528</td>
	<td align=center>979.4995</td>
	<td align=center>0.7339000</td>
	<td align=center>1143.3670</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:50</td>
	<td align=center>875.8068</td>
	<td align=center>969.6761</td>
	<td align=center>0.7336000</td>
	<td align=center>1132.1320</td>
	<td align=center>885.1578</td>
	<td align=center>979.8403</td>
	<td align=center>0.7336000</td>
	<td align=center>1143.9990</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:45</td>
	<td align=center>876.9970</td>
	<td align=center>970.9186</td>
	<td align=center>0.7362000</td>
	<td align=center>1131.5790</td>
	<td align=center>883.2367</td>
	<td align=center>977.7572</td>
	<td align=center>0.7334000</td>
	<td align=center>1141.7230</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:40</td>
	<td align=center>877.9431</td>
	<td align=center>971.8813</td>
	<td align=center>0.7392000</td>
	<td align=center>1130.4000</td>
	<td align=center>883.0519</td>
	<td align=center>977.5637</td>
	<td align=center>0.7331000</td>
	<td align=center>1141.7300</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:35</td>
	<td align=center>877.7294</td>
	<td align=center>971.6329</td>
	<td align=center>0.7393000</td>
	<td align=center>1130.0350</td>
	<td align=center>883.2839</td>
	<td align=center>977.8052</td>
	<td align=center>0.7336000</td>
	<td align=center>1141.6230</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:30</td>
	<td align=center>877.4853</td>
	<td align=center>971.3845</td>
	<td align=center>0.7395000</td>
	<td align=center>1129.5930</td>
	<td align=center>883.7352</td>
	<td align=center>978.3193</td>
	<td align=center>0.7325000</td>
	<td align=center>1143.0800</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:25</td>
	<td align=center>877.3327</td>
	<td align=center>971.1982</td>
	<td align=center>0.7395000</td>
	<td align=center>1129.3770</td>
	<td align=center>882.2258</td>
	<td align=center>976.6904</td>
	<td align=center>0.7319000</td>
	<td align=center>1141.6450</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:20</td>
	<td align=center>877.6379</td>
	<td align=center>971.5397</td>
	<td align=center>0.7395000</td>
	<td align=center>1129.7740</td>
	<td align=center>881.5400</td>
	<td align=center>975.9581</td>
	<td align=center>0.7313000</td>
	<td align=center>1141.2570</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:15</td>
	<td align=center>877.5463</td>
	<td align=center>971.4155</td>
	<td align=center>0.7399000</td>
	<td align=center>1129.3240</td>
	<td align=center>881.2408</td>
	<td align=center>975.6537</td>
	<td align=center>0.7304000</td>
	<td align=center>1141.6040</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:10</td>
	<td align=center>877.8515</td>
	<td align=center>971.7882</td>
	<td align=center>0.7396000</td>
	<td align=center>1129.9860</td>
	<td align=center>880.9128</td>
	<td align=center>975.3100</td>
	<td align=center>0.7298000</td>
	<td align=center>1141.6700</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:05</td>
	<td align=center>878.2483</td>
	<td align=center>972.1920</td>
	<td align=center>0.7397000</td>
	<td align=center>1130.3790</td>
	<td align=center>880.7719</td>
	<td align=center>975.1610</td>
	<td align=center>0.7296000</td>
	<td align=center>1141.6520</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>878.2483</td>
	<td align=center>972.1920</td>
	<td align=center>0.7398000</td>
	<td align=center>1130.3030</td>
	<td align=center>881.2261</td>
	<td align=center>975.6322</td>
	<td align=center>0.7305000</td>
	<td align=center>1141.5000</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:55</td>
	<td align=center>878.7976</td>
	<td align=center>972.7822</td>
	<td align=center>0.7401000</td>
	<td align=center>1130.7600</td>
	<td align=center>881.4442</td>
	<td align=center>975.8243</td>
	<td align=center>0.7325000</td>
	<td align=center>1140.1650</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:50</td>
	<td align=center>879.3164</td>
	<td align=center>973.3412</td>
	<td align=center>0.7401000</td>
	<td align=center>1131.4100</td>
	<td align=center>881.4190</td>
	<td align=center>975.7864</td>
	<td align=center>0.7330000</td>
	<td align=center>1139.7320</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:45</td>
	<td align=center>880.0183</td>
	<td align=center>974.1176</td>
	<td align=center>0.7403000</td>
	<td align=center>1132.1590</td>
	<td align=center>882.1741</td>
	<td align=center>976.5519</td>
	<td align=center>0.7354000</td>
	<td align=center>1138.7630</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:40</td>
	<td align=center>879.4385</td>
	<td align=center>973.4965</td>
	<td align=center>0.7401000</td>
	<td align=center>1131.5900</td>
	<td align=center>882.4028</td>
	<td align=center>976.7964</td>
	<td align=center>0.7357000</td>
	<td align=center>1138.8160</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:35</td>
	<td align=center>879.0417</td>
	<td align=center>973.0306</td>
	<td align=center>0.7402000</td>
	<td align=center>1130.9720</td>
	<td align=center>882.2349</td>
	<td align=center>976.6293</td>
	<td align=center>0.7349000</td>
	<td align=center>1139.2410</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:30</td>
	<td align=center>878.8586</td>
	<td align=center>972.8752</td>
	<td align=center>0.7400000</td>
	<td align=center>1130.9440</td>
	<td align=center>882.5258</td>
	<td align=center>976.9423</td>
	<td align=center>0.7349000</td>
	<td align=center>1139.6060</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:25</td>
	<td align=center>878.8586</td>
	<td align=center>972.8752</td>
	<td align=center>0.7397000</td>
	<td align=center>1131.1740</td>
	<td align=center>882.5258</td>
	<td align=center>976.9547</td>
	<td align=center>0.7345000</td>
	<td align=center>1139.9310</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:20</td>
	<td align=center>878.8586</td>
	<td align=center>972.8752</td>
	<td align=center>0.7395000</td>
	<td align=center>1131.3270</td>
	<td align=center>881.5991</td>
	<td align=center>975.9254</td>
	<td align=center>0.7353000</td>
	<td align=center>1138.1100</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:15</td>
	<td align=center>878.7671</td>
	<td align=center>972.7510</td>
	<td align=center>0.7397000</td>
	<td align=center>1131.0290</td>
	<td align=center>880.6798</td>
	<td align=center>974.9478</td>
	<td align=center>0.7343000</td>
	<td align=center>1137.7440</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:10</td>
	<td align=center>879.0723</td>
	<td align=center>973.1237</td>
	<td align=center>0.7396000</td>
	<td align=center>1131.5390</td>
	<td align=center>880.2500</td>
	<td align=center>974.4892</td>
	<td align=center>0.7339000</td>
	<td align=center>1137.5190</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:05</td>
	<td align=center>878.5840</td>
	<td align=center>972.5957</td>
	<td align=center>0.7389000</td>
	<td align=center>1131.4610</td>
	<td align=center>879.2477</td>
	<td align=center>973.4125</td>
	<td align=center>0.7332000</td>
	<td align=center>1136.8040</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>878.7366</td>
	<td align=center>972.7822</td>
	<td align=center>0.7383000</td>
	<td align=center>1132.1370</td>
	<td align=center>877.9521</td>
	<td align=center>972.0136</td>
	<td align=center>0.7327000</td>
	<td align=center>1135.5580</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:55</td>
	<td align=center>877.4548</td>
	<td align=center>971.4155</td>
	<td align=center>0.7381000</td>
	<td align=center>1130.7000</td>
	<td align=center>877.4396</td>
	<td align=center>971.4446</td>
	<td align=center>0.7332000</td>
	<td align=center>1134.5060</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:50</td>
	<td align=center>877.4548</td>
	<td align=center>971.4155</td>
	<td align=center>0.7375000</td>
	<td align=center>1131.1600</td>
	<td align=center>877.1495</td>
	<td align=center>971.1464</td>
	<td align=center>0.7324000</td>
	<td align=center>1134.7770</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:45</td>
	<td align=center>877.2411</td>
	<td align=center>971.1670</td>
	<td align=center>0.7370000</td>
	<td align=center>1131.2540</td>
	<td align=center>877.1289</td>
	<td align=center>971.1313</td>
	<td align=center>0.7320000</td>
	<td align=center>1135.0690</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:40</td>
	<td align=center>876.9360</td>
	<td align=center>970.8564</td>
	<td align=center>0.7365000</td>
	<td align=center>1131.2760</td>
	<td align=center>876.4658</td>
	<td align=center>970.4916</td>
	<td align=center>0.7283000</td>
	<td align=center>1137.1990</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:35</td>
	<td align=center>877.3022</td>
	<td align=center>971.2292</td>
	<td align=center>0.7363000</td>
	<td align=center>1131.8640</td>
	<td align=center>875.8511</td>
	<td align=center>969.8419</td>
	<td align=center>0.7275000</td>
	<td align=center>1137.0630</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:30</td>
	<td align=center>876.6918</td>
	<td align=center>970.6080</td>
	<td align=center>0.7366000</td>
	<td align=center>1130.9100</td>
	<td align=center>876.2401</td>
	<td align=center>970.2540</td>
	<td align=center>0.7280000</td>
	<td align=center>1137.1550</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:25</td>
	<td align=center>876.9055</td>
	<td align=center>970.7944</td>
	<td align=center>0.7361000</td>
	<td align=center>1131.5110</td>
	<td align=center>874.1442</td>
	<td align=center>968.0508</td>
	<td align=center>0.7246000</td>
	<td align=center>1137.2320</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:20</td>
	<td align=center>876.9055</td>
	<td align=center>970.7944</td>
	<td align=center>0.7358000</td>
	<td align=center>1131.7420</td>
	<td align=center>866.7543</td>
	<td align=center>960.3714</td>
	<td align=center>0.7085000</td>
	<td align=center>1140.9570</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:15</td>
	<td align=center>876.9055</td>
	<td align=center>970.7944</td>
	<td align=center>0.7366000</td>
	<td align=center>1131.1270</td>
	<td align=center>855.4476</td>
	<td align=center>948.6893</td>
	<td align=center>0.6809000</td>
	<td align=center>1149.6940</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:10</td>
	<td align=center>876.9055</td>
	<td align=center>970.7944</td>
	<td align=center>0.7369000</td>
	<td align=center>1130.8970</td>
	<td align=center>846.6401</td>
	<td align=center>939.5815</td>
	<td align=center>0.6600000</td>
	<td align=center>1156.5450</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:05</td>
	<td align=center>876.9055</td>
	<td align=center>970.7944</td>
	<td align=center>0.7373000</td>
	<td align=center>1130.5900</td>
	<td align=center>846.5955</td>
	<td align=center>939.5308</td>
	<td align=center>0.6601000</td>
	<td align=center>1156.3950</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>876.6308</td>
	<td align=center>970.5148</td>
	<td align=center>0.7373000</td>
	<td align=center>1130.2640</td>
	<td align=center>847.6959</td>
	<td align=center>940.7542</td>
	<td align=center>0.6590000</td>
	<td align=center>1158.8670</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:55</td>
	<td align=center>876.3561</td>
	<td align=center>970.1732</td>
	<td align=center>0.7375000</td>
	<td align=center>1129.7130</td>
	<td align=center>847.9028</td>
	<td align=center>940.9720</td>
	<td align=center>0.6593000</td>
	<td align=center>1158.8710</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:50</td>
	<td align=center>876.3561</td>
	<td align=center>970.1732</td>
	<td align=center>0.7373000</td>
	<td align=center>1129.8670</td>
	<td align=center>849.5911</td>
	<td align=center>942.8170</td>
	<td align=center>0.6590000</td>
	<td align=center>1161.4080</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:45</td>
	<td align=center>877.0886</td>
	<td align=center>970.9807</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.5770</td>
	<td align=center>864.9241</td>
	<td align=center>958.5892</td>
	<td align=center>0.6993000</td>
	<td align=center>1146.3070</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:40</td>
	<td align=center>877.6074</td>
	<td align=center>971.5397</td>
	<td align=center>0.7380000</td>
	<td align=center>1130.9210</td>
	<td align=center>876.1674</td>
	<td align=center>970.2219</td>
	<td align=center>0.7258000</td>
	<td align=center>1138.8400</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:35</td>
	<td align=center>876.4477</td>
	<td align=center>970.2974</td>
	<td align=center>0.7374000</td>
	<td align=center>1129.9350</td>
	<td align=center>876.3313</td>
	<td align=center>970.4033</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.1310</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:30</td>
	<td align=center>876.2341</td>
	<td align=center>970.0800</td>
	<td align=center>0.7371000</td>
	<td align=center>1129.9110</td>
	<td align=center>876.8918</td>
	<td align=center>971.0222</td>
	<td align=center>0.7252000</td>
	<td align=center>1140.2500</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:25</td>
	<td align=center>876.2341</td>
	<td align=center>970.0800</td>
	<td align=center>0.7370000</td>
	<td align=center>1129.9880</td>
	<td align=center>876.9266</td>
	<td align=center>971.0607</td>
	<td align=center>0.7252000</td>
	<td align=center>1140.2960</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:20</td>
	<td align=center>875.9899</td>
	<td align=center>969.8005</td>
	<td align=center>0.7367000</td>
	<td align=center>1129.8920</td>
	<td align=center>876.4581</td>
	<td align=center>970.5709</td>
	<td align=center>0.7244000</td>
	<td align=center>1140.3500</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:15</td>
	<td align=center>875.7458</td>
	<td align=center>969.6761</td>
	<td align=center>0.7364000</td>
	<td align=center>1129.9780</td>
	<td align=center>875.7659</td>
	<td align=center>969.8348</td>
	<td align=center>0.7236000</td>
	<td align=center>1140.1150</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:10</td>
	<td align=center>875.7458</td>
	<td align=center>969.5209</td>
	<td align=center>0.7362000</td>
	<td align=center>1129.9500</td>
	<td align=center>875.2639</td>
	<td align=center>969.2838</td>
	<td align=center>0.7239000</td>
	<td align=center>1139.2310</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:05</td>
	<td align=center>875.5932</td>
	<td align=center>969.5209</td>
	<td align=center>0.7363000</td>
	<td align=center>1129.8730</td>
	<td align=center>875.4071</td>
	<td align=center>969.4502</td>
	<td align=center>0.7234000</td>
	<td align=center>1139.8200</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>875.7458</td>
	<td align=center>969.5209</td>
	<td align=center>0.7364000</td>
	<td align=center>1129.7970</td>
	<td align=center>875.5116</td>
	<td align=center>969.5774</td>
	<td align=center>0.7228000</td>
	<td align=center>1140.4430</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:55</td>
	<td align=center>876.3561</td>
	<td align=center>970.2042</td>
	<td align=center>0.7366000</td>
	<td align=center>1130.4390</td>
	<td align=center>876.4525</td>
	<td align=center>970.5854</td>
	<td align=center>0.7234000</td>
	<td align=center>1141.1550</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:50</td>
	<td align=center>876.6918</td>
	<td align=center>970.5768</td>
	<td align=center>0.7369000</td>
	<td align=center>1130.6430</td>
	<td align=center>876.3553</td>
	<td align=center>970.4747</td>
	<td align=center>0.7236000</td>
	<td align=center>1140.8670</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:45</td>
	<td align=center>876.9665</td>
	<td align=center>970.8875</td>
	<td align=center>0.7367000</td>
	<td align=center>1131.1590</td>
	<td align=center>876.6276</td>
	<td align=center>970.7402</td>
	<td align=center>0.7250000</td>
	<td align=center>1140.0770</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:40</td>
	<td align=center>877.1496</td>
	<td align=center>971.0429</td>
	<td align=center>0.7370000</td>
	<td align=center>1131.1100</td>
	<td align=center>876.6389</td>
	<td align=center>970.7561</td>
	<td align=center>0.7248000</td>
	<td align=center>1140.2530</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:35</td>
	<td align=center>877.1496</td>
	<td align=center>971.0429</td>
	<td align=center>0.7372000</td>
	<td align=center>1130.9560</td>
	<td align=center>877.1077</td>
	<td align=center>971.2497</td>
	<td align=center>0.7255000</td>
	<td align=center>1140.2820</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:30</td>
	<td align=center>877.1496</td>
	<td align=center>971.0429</td>
	<td align=center>0.7371000</td>
	<td align=center>1131.0330</td>
	<td align=center>876.6540</td>
	<td align=center>970.7745</td>
	<td align=center>0.7248000</td>
	<td align=center>1140.2740</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:25</td>
	<td align=center>877.1496</td>
	<td align=center>971.0429</td>
	<td align=center>0.7375000</td>
	<td align=center>1130.7260</td>
	<td align=center>877.6412</td>
	<td align=center>971.8486</td>
	<td align=center>0.7248000</td>
	<td align=center>1141.5360</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:20</td>
	<td align=center>876.9360</td>
	<td align=center>970.8254</td>
	<td align=center>0.7373000</td>
	<td align=center>1130.6260</td>
	<td align=center>877.5625</td>
	<td align=center>971.7673</td>
	<td align=center>0.7246000</td>
	<td align=center>1141.5980</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:15</td>
	<td align=center>877.2411</td>
	<td align=center>971.1360</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.7580</td>
	<td align=center>877.0994</td>
	<td align=center>971.2793</td>
	<td align=center>0.7240000</td>
	<td align=center>1141.4970</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:10</td>
	<td align=center>876.9970</td>
	<td align=center>970.8564</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.4320</td>
	<td align=center>877.7466</td>
	<td align=center>971.9753</td>
	<td align=center>0.7243000</td>
	<td align=center>1142.0790</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:05</td>
	<td align=center>876.9970</td>
	<td align=center>970.8564</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.4320</td>
	<td align=center>876.1628</td>
	<td align=center>970.2934</td>
	<td align=center>0.7226000</td>
	<td align=center>1141.4430</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>876.8444</td>
	<td align=center>970.7011</td>
	<td align=center>0.7380000</td>
	<td align=center>1129.9450</td>
	<td align=center>876.9752</td>
	<td align=center>971.1507</td>
	<td align=center>0.7237000</td>
	<td align=center>1141.5830</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:55</td>
	<td align=center>876.7529</td>
	<td align=center>970.6080</td>
	<td align=center>0.7380000</td>
	<td align=center>1129.8370</td>
	<td align=center>875.8679</td>
	<td align=center>969.9666</td>
	<td align=center>0.7228000</td>
	<td align=center>1140.9000</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:50</td>
	<td align=center>876.7529</td>
	<td align=center>970.6080</td>
	<td align=center>0.7379000</td>
	<td align=center>1129.9130</td>
	<td align=center>875.7269</td>
	<td align=center>969.7737</td>
	<td align=center>0.7245000</td>
	<td align=center>1139.3340</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:45</td>
	<td align=center>876.9360</td>
	<td align=center>970.9496</td>
	<td align=center>0.7379000</td>
	<td align=center>1130.3110</td>
	<td align=center>875.6226</td>
	<td align=center>969.6726</td>
	<td align=center>0.7240000</td>
	<td align=center>1139.6090</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:40</td>
	<td align=center>876.9360</td>
	<td align=center>970.7944</td>
	<td align=center>0.7380000</td>
	<td align=center>1130.0540</td>
	<td align=center>876.1246</td>
	<td align=center>970.1776</td>
	<td align=center>0.7258000</td>
	<td align=center>1138.7880</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:35</td>
	<td align=center>876.9360</td>
	<td align=center>970.7944</td>
	<td align=center>0.7379000</td>
	<td align=center>1130.1300</td>
	<td align=center>876.1871</td>
	<td align=center>970.2327</td>
	<td align=center>0.7264000</td>
	<td align=center>1138.3820</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:30</td>
	<td align=center>877.1496</td>
	<td align=center>971.0429</td>
	<td align=center>0.7379000</td>
	<td align=center>1130.4200</td>
	<td align=center>877.3010</td>
	<td align=center>971.4298</td>
	<td align=center>0.7267000</td>
	<td align=center>1139.5510</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:25</td>
	<td align=center>877.5158</td>
	<td align=center>971.2913</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.9390</td>
	<td align=center>877.3010</td>
	<td align=center>971.3835</td>
	<td align=center>0.7291000</td>
	<td align=center>1137.6200</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:20</td>
	<td align=center>877.5158</td>
	<td align=center>971.4466</td>
	<td align=center>0.7377000</td>
	<td align=center>1131.0430</td>
	<td align=center>876.6339</td>
	<td align=center>970.7057</td>
	<td align=center>0.7269000</td>
	<td align=center>1138.5450</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:15</td>
	<td align=center>877.5158</td>
	<td align=center>971.4466</td>
	<td align=center>0.7380000</td>
	<td align=center>1130.8130</td>
	<td align=center>877.9418</td>
	<td align=center>972.1139</td>
	<td align=center>0.7275000</td>
	<td align=center>1139.7260</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:10</td>
	<td align=center>877.2717</td>
	<td align=center>971.0429</td>
	<td align=center>0.7378000</td>
	<td align=center>1130.4960</td>
	<td align=center>876.9053</td>
	<td align=center>971.0042</td>
	<td align=center>0.7267000</td>
	<td align=center>1139.0520</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:05</td>
	<td align=center>877.2717</td>
	<td align=center>971.3224</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.9750</td>
	<td align=center>876.9233</td>
	<td align=center>971.0477</td>
	<td align=center>0.7256000</td>
	<td align=center>1139.9660</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>877.2717</td>
	<td align=center>971.3224</td>
	<td align=center>0.7374000</td>
	<td align=center>1131.1280</td>
	<td align=center>876.6351</td>
	<td align=center>970.7089</td>
	<td align=center>0.7267000</td>
	<td align=center>1138.7050</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:55</td>
	<td align=center>877.4243</td>
	<td align=center>971.3224</td>
	<td align=center>0.7373000</td>
	<td align=center>1131.2050</td>
	<td align=center>876.3925</td>
	<td align=center>970.4874</td>
	<td align=center>0.7248000</td>
	<td align=center>1139.9370</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:50</td>
	<td align=center>877.4243</td>
	<td align=center>971.4777</td>
	<td align=center>0.7373000</td>
	<td align=center>1131.3860</td>
	<td align=center>875.8194</td>
	<td align=center>969.8822</td>
	<td align=center>0.7240000</td>
	<td align=center>1139.8550</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:45</td>
	<td align=center>877.5768</td>
	<td align=center>971.4777</td>
	<td align=center>0.7375000</td>
	<td align=center>1131.2320</td>
	<td align=center>876.2296</td>
	<td align=center>970.3415</td>
	<td align=center>0.7235000</td>
	<td align=center>1140.7890</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:40</td>
	<td align=center>877.5768</td>
	<td align=center>971.4777</td>
	<td align=center>0.7375000</td>
	<td align=center>1131.2320</td>
	<td align=center>875.9764</td>
	<td align=center>970.0596</td>
	<td align=center>0.7238000</td>
	<td align=center>1140.2210</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:35</td>
	<td align=center>877.5768</td>
	<td align=center>971.4777</td>
	<td align=center>0.7375000</td>
	<td align=center>1131.2320</td>
	<td align=center>875.7626</td>
	<td align=center>969.8378</td>
	<td align=center>0.7234000</td>
	<td align=center>1140.2760</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:30</td>
	<td align=center>877.8515</td>
	<td align=center>971.7882</td>
	<td align=center>0.7377000</td>
	<td align=center>1131.4410</td>
	<td align=center>876.0952</td>
	<td align=center>970.1789</td>
	<td align=center>0.7243000</td>
	<td align=center>1139.9680</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:25</td>
	<td align=center>877.8515</td>
	<td align=center>971.7882</td>
	<td align=center>0.7378000</td>
	<td align=center>1131.3640</td>
	<td align=center>876.6754</td>
	<td align=center>970.7798</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.5730</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:20</td>
	<td align=center>877.5768</td>
	<td align=center>971.5087</td>
	<td align=center>0.7381000</td>
	<td align=center>1130.8090</td>
	<td align=center>877.0070</td>
	<td align=center>971.1248</td>
	<td align=center>0.7264000</td>
	<td align=center>1139.4290</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:15</td>
	<td align=center>877.5768</td>
	<td align=center>971.5087</td>
	<td align=center>0.7380000</td>
	<td align=center>1130.8850</td>
	<td align=center>876.6707</td>
	<td align=center>970.7332</td>
	<td align=center>0.7274000</td>
	<td align=center>1138.1860</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:10</td>
	<td align=center>877.5768</td>
	<td align=center>971.5087</td>
	<td align=center>0.7380000</td>
	<td align=center>1130.8850</td>
	<td align=center>876.9439</td>
	<td align=center>971.0192</td>
	<td align=center>0.7280000</td>
	<td align=center>1138.0520</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:05</td>
	<td align=center>877.5768</td>
	<td align=center>971.5087</td>
	<td align=center>0.7378000</td>
	<td align=center>1131.0380</td>
	<td align=center>876.7097</td>
	<td align=center>970.7783</td>
	<td align=center>0.7273000</td>
	<td align=center>1138.3170</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>877.8820</td>
	<td align=center>971.7262</td>
	<td align=center>0.7376000</td>
	<td align=center>1131.4450</td>
	<td align=center>876.9147</td>
	<td align=center>970.9861</td>
	<td align=center>0.7279000</td>
	<td align=center>1138.0910</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:55</td>
	<td align=center>877.6684</td>
	<td align=center>971.7262</td>
	<td align=center>0.7379000</td>
	<td align=center>1131.2150</td>
	<td align=center>876.9856</td>
	<td align=center>971.0654</td>
	<td align=center>0.7277000</td>
	<td align=center>1138.3410</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:50</td>
	<td align=center>877.6684</td>
	<td align=center>971.5709</td>
	<td align=center>0.7378000</td>
	<td align=center>1131.1110</td>
	<td align=center>876.1923</td>
	<td align=center>970.2382</td>
	<td align=center>0.7262000</td>
	<td align=center>1138.5450</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:45</td>
	<td align=center>877.6684</td>
	<td align=center>971.5709</td>
	<td align=center>0.7380000</td>
	<td align=center>1130.9580</td>
	<td align=center>876.2520</td>
	<td align=center>970.3131</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.0250</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:40</td>
	<td align=center>877.6684</td>
	<td align=center>971.5709</td>
	<td align=center>0.7384000</td>
	<td align=center>1130.6510</td>
	<td align=center>876.6262</td>
	<td align=center>970.7234</td>
	<td align=center>0.7256000</td>
	<td align=center>1139.5850</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:35</td>
	<td align=center>877.5768</td>
	<td align=center>971.4466</td>
	<td align=center>0.7393000</td>
	<td align=center>1129.8180</td>
	<td align=center>876.3201</td>
	<td align=center>970.3885</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:30</td>
	<td align=center>877.5768</td>
	<td align=center>971.4466</td>
	<td align=center>0.7397000</td>
	<td align=center>1129.5130</td>
	<td align=center>876.2436</td>
	<td align=center>970.3063</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.0170</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:25</td>
	<td align=center>877.8820</td>
	<td align=center>971.8193</td>
	<td align=center>0.7397000</td>
	<td align=center>1129.9460</td>
	<td align=center>875.8643</td>
	<td align=center>969.8668</td>
	<td align=center>0.7268000</td>
	<td align=center>1137.6390</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:20</td>
	<td align=center>877.8820</td>
	<td align=center>971.8193</td>
	<td align=center>0.7393000</td>
	<td align=center>1130.2520</td>
	<td align=center>876.0928</td>
	<td align=center>970.1180</td>
	<td align=center>0.7267000</td>
	<td align=center>1138.0120</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:15</td>
	<td align=center>877.8820</td>
	<td align=center>971.8193</td>
	<td align=center>0.7386000</td>
	<td align=center>1130.7870</td>
	<td align=center>876.5411</td>
	<td align=center>970.5815</td>
	<td align=center>0.7277000</td>
	<td align=center>1137.7740</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:10</td>
	<td align=center>877.3022</td>
	<td align=center>971.2603</td>
	<td align=center>0.7358000</td>
	<td align=center>1132.2850</td>
	<td align=center>876.7271</td>
	<td align=center>970.7702</td>
	<td align=center>0.7283000</td>
	<td align=center>1137.5260</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:05</td>
	<td align=center>877.5158</td>
	<td align=center>971.4777</td>
	<td align=center>0.7354000</td>
	<td align=center>1132.8460</td>
	<td align=center>877.3360</td>
	<td align=center>971.3986</td>
	<td align=center>0.7297000</td>
	<td align=center>1137.1700</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>877.5158</td>
	<td align=center>971.4777</td>
	<td align=center>0.7354000</td>
	<td align=center>1132.8460</td>
	<td align=center>877.4572</td>
	<td align=center>971.5494</td>
	<td align=center>0.7289000</td>
	<td align=center>1137.9700</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:55</td>
	<td align=center>877.5158</td>
	<td align=center>971.4777</td>
	<td align=center>0.7356000</td>
	<td align=center>1132.6920</td>
	<td align=center>878.0301</td>
	<td align=center>972.1624</td>
	<td align=center>0.7294000</td>
	<td align=center>1138.2980</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:50</td>
	<td align=center>878.1262</td>
	<td align=center>972.1299</td>
	<td align=center>0.7363000</td>
	<td align=center>1132.9140</td>
	<td align=center>877.9110</td>
	<td align=center>972.0463</td>
	<td align=center>0.7288000</td>
	<td align=center>1138.6300</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:45</td>
	<td align=center>878.5535</td>
	<td align=center>972.5647</td>
	<td align=center>0.7371000</td>
	<td align=center>1132.8050</td>
	<td align=center>878.3873</td>
	<td align=center>972.5613</td>
	<td align=center>0.7289000</td>
	<td align=center>1139.1560</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:40</td>
	<td align=center>878.7976</td>
	<td align=center>972.8132</td>
	<td align=center>0.7376000</td>
	<td align=center>1132.7110</td>
	<td align=center>878.8116</td>
	<td align=center>973.0122</td>
	<td align=center>0.7294000</td>
	<td align=center>1139.2930</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:35</td>
	<td align=center>879.2859</td>
	<td align=center>973.3101</td>
	<td align=center>0.7394000</td>
	<td align=center>1131.9090</td>
	<td align=center>877.3865</td>
	<td align=center>971.4777</td>
	<td align=center>0.7288000</td>
	<td align=center>1137.9640</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:30</td>
	<td align=center>879.2859</td>
	<td align=center>973.3101</td>
	<td align=center>0.7398000</td>
	<td align=center>1131.6030</td>
	<td align=center>877.3130</td>
	<td align=center>971.4059</td>
	<td align=center>0.7284000</td>
	<td align=center>1138.1930</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:25</td>
	<td align=center>879.4690</td>
	<td align=center>973.4965</td>
	<td align=center>0.7405000</td>
	<td align=center>1131.2850</td>
	<td align=center>877.4147</td>
	<td align=center>971.4949</td>
	<td align=center>0.7294000</td>
	<td align=center>1137.5160</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:20</td>
	<td align=center>879.4690</td>
	<td align=center>973.4965</td>
	<td align=center>0.7407000</td>
	<td align=center>1131.1320</td>
	<td align=center>876.3698</td>
	<td align=center>970.3798</td>
	<td align=center>0.7284000</td>
	<td align=center>1136.9900</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:15</td>
	<td align=center>879.7131</td>
	<td align=center>973.7759</td>
	<td align=center>0.7409000</td>
	<td align=center>1131.3040</td>
	<td align=center>876.2620</td>
	<td align=center>970.2582</td>
	<td align=center>0.7287000</td>
	<td align=center>1136.6140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:10</td>
	<td align=center>879.7131</td>
	<td align=center>973.7449</td>
	<td align=center>0.7413000</td>
	<td align=center>1130.9620</td>
	<td align=center>876.3304</td>
	<td align=center>970.3168</td>
	<td align=center>0.7293000</td>
	<td align=center>1136.2150</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:05</td>
	<td align=center>879.8657</td>
	<td align=center>973.9001</td>
	<td align=center>0.7413000</td>
	<td align=center>1131.1430</td>
	<td align=center>876.4859</td>
	<td align=center>970.4893</td>
	<td align=center>0.7292000</td>
	<td align=center>1136.4950</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>879.8657</td>
	<td align=center>973.9001</td>
	<td align=center>0.7416000</td>
	<td align=center>1130.9140</td>
	<td align=center>876.6873</td>
	<td align=center>970.7031</td>
	<td align=center>0.7294000</td>
	<td align=center>1136.5890</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:55</td>
	<td align=center>880.2319</td>
	<td align=center>974.3040</td>
	<td align=center>0.7417000</td>
	<td align=center>1131.3070</td>
	<td align=center>876.7288</td>
	<td align=center>970.7440</td>
	<td align=center>0.7296000</td>
	<td align=center>1136.4810</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:50</td>
	<td align=center>880.2319</td>
	<td align=center>974.3040</td>
	<td align=center>0.7416000</td>
	<td align=center>1131.3830</td>
	<td align=center>877.1381</td>
	<td align=center>971.1678</td>
	<td align=center>0.7305000</td>
	<td align=center>1136.2770</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:45</td>
	<td align=center>880.2319</td>
	<td align=center>974.3040</td>
	<td align=center>0.7418000</td>
	<td align=center>1131.2300</td>
	<td align=center>876.9502</td>
	<td align=center>970.9830</td>
	<td align=center>0.7296000</td>
	<td align=center>1136.7610</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:40</td>
	<td align=center>880.5371</td>
	<td align=center>974.6145</td>
	<td align=center>0.7422000</td>
	<td align=center>1131.2860</td>
	<td align=center>876.3125</td>
	<td align=center>970.2796</td>
	<td align=center>0.7300000</td>
	<td align=center>1135.6260</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:35</td>
	<td align=center>880.5371</td>
	<td align=center>974.6145</td>
	<td align=center>0.7427000</td>
	<td align=center>1130.9050</td>
	<td align=center>876.5543</td>
	<td align=center>970.5251</td>
	<td align=center>0.7307000</td>
	<td align=center>1135.3700</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:30</td>
	<td align=center>880.2930</td>
	<td align=center>974.3660</td>
	<td align=center>0.7426000</td>
	<td align=center>1130.6930</td>
	<td align=center>876.3345</td>
	<td align=center>970.2958</td>
	<td align=center>0.7303000</td>
	<td align=center>1135.4120</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:25</td>
	<td align=center>880.2930</td>
	<td align=center>974.3660</td>
	<td align=center>0.7423000</td>
	<td align=center>1130.9210</td>
	<td align=center>875.8799</td>
	<td align=center>969.7970</td>
	<td align=center>0.7305000</td>
	<td align=center>1134.6730</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:20</td>
	<td align=center>880.0793</td>
	<td align=center>974.1176</td>
	<td align=center>0.7420000</td>
	<td align=center>1130.8610</td>
	<td align=center>875.6213</td>
	<td align=center>969.5208</td>
	<td align=center>0.7302000</td>
	<td align=center>1134.5830</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:15</td>
	<td align=center>879.9268</td>
	<td align=center>973.9623</td>
	<td align=center>0.7416000</td>
	<td align=center>1130.9860</td>
	<td align=center>875.4535</td>
	<td align=center>969.3308</td>
	<td align=center>0.7306000</td>
	<td align=center>1134.0500</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:10</td>
	<td align=center>879.9268</td>
	<td align=center>973.9623</td>
	<td align=center>0.7415000</td>
	<td align=center>1131.0620</td>
	<td align=center>875.2427</td>
	<td align=center>969.1226</td>
	<td align=center>0.7296000</td>
	<td align=center>1134.5830</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:05</td>
	<td align=center>879.7437</td>
	<td align=center>973.7759</td>
	<td align=center>0.7413000</td>
	<td align=center>1130.9990</td>
	<td align=center>875.0924</td>
	<td align=center>968.9609</td>
	<td align=center>0.7295000</td>
	<td align=center>1134.4720</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>879.7437</td>
	<td align=center>973.7759</td>
	<td align=center>0.7411000</td>
	<td align=center>1131.1510</td>
	<td align=center>874.6282</td>
	<td align=center>968.4837</td>
	<td align=center>0.7283000</td>
	<td align=center>1134.8470</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:55</td>
	<td align=center>879.7437</td>
	<td align=center>973.7759</td>
	<td align=center>0.7411000</td>
	<td align=center>1131.1510</td>
	<td align=center>874.0984</td>
	<td align=center>967.9254</td>
	<td align=center>0.7275000</td>
	<td align=center>1134.8160</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:50</td>
	<td align=center>879.7437</td>
	<td align=center>973.7759</td>
	<td align=center>0.7411000</td>
	<td align=center>1131.1510</td>
	<td align=center>873.7402</td>
	<td align=center>967.5388</td>
	<td align=center>0.7274000</td>
	<td align=center>1134.4410</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:45</td>
	<td align=center>879.7437</td>
	<td align=center>973.7759</td>
	<td align=center>0.7410000</td>
	<td align=center>1131.2270</td>
	<td align=center>873.6423</td>
	<td align=center>967.4628</td>
	<td align=center>0.7260000</td>
	<td align=center>1135.4450</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:40</td>
	<td align=center>879.4995</td>
	<td align=center>973.5275</td>
	<td align=center>0.7409000</td>
	<td align=center>1131.0150</td>
	<td align=center>873.9050</td>
	<td align=center>967.7333</td>
	<td align=center>0.7267000</td>
	<td align=center>1135.2150</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:35</td>
	<td align=center>879.7131</td>
	<td align=center>973.7759</td>
	<td align=center>0.7409000</td>
	<td align=center>1131.3040</td>
	<td align=center>874.4753</td>
	<td align=center>968.3741</td>
	<td align=center>0.7258000</td>
	<td align=center>1136.6710</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:30</td>
	<td align=center>880.1099</td>
	<td align=center>974.1796</td>
	<td align=center>0.7404000</td>
	<td align=center>1132.1550</td>
	<td align=center>874.2320</td>
	<td align=center>968.1024</td>
	<td align=center>0.7261000</td>
	<td align=center>1136.1170</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:25</td>
	<td align=center>879.8962</td>
	<td align=center>973.9933</td>
	<td align=center>0.7399000</td>
	<td align=center>1132.3210</td>
	<td align=center>873.6395</td>
	<td align=center>967.4681</td>
	<td align=center>0.7257000</td>
	<td align=center>1135.6860</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:20</td>
	<td align=center>879.3774</td>
	<td align=center>973.4033</td>
	<td align=center>0.7396000</td>
	<td align=center>1131.8640</td>
	<td align=center>873.3805</td>
	<td align=center>967.1828</td>
	<td align=center>0.7259000</td>
	<td align=center>1135.1940</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:15</td>
	<td align=center>878.5229</td>
	<td align=center>972.5026</td>
	<td align=center>0.7381000</td>
	<td align=center>1131.9650</td>
	<td align=center>872.7285</td>
	<td align=center>966.5285</td>
	<td align=center>0.7234000</td>
	<td align=center>1136.3850</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:10</td>
	<td align=center>878.1262</td>
	<td align=center>972.0989</td>
	<td align=center>0.7376000</td>
	<td align=center>1131.8790</td>
	<td align=center>872.6537</td>
	<td align=center>966.4363</td>
	<td align=center>0.7239000</td>
	<td align=center>1135.8840</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:05</td>
	<td align=center>877.5768</td>
	<td align=center>971.5087</td>
	<td align=center>0.7373000</td>
	<td align=center>1131.4220</td>
	<td align=center>871.4642</td>
	<td align=center>965.1586</td>
	<td align=center>0.7233000</td>
	<td align=center>1134.8530</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>877.0275</td>
	<td align=center>970.9186</td>
	<td align=center>0.7368000</td>
	<td align=center>1131.1180</td>
	<td align=center>871.7089</td>
	<td align=center>965.4125</td>
	<td align=center>0.7238000</td>
	<td align=center>1134.7590</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:55</td>
	<td align=center>875.4406</td>
	<td align=center>969.2725</td>
	<td align=center>0.7330000</td>
	<td align=center>1132.1240</td>
	<td align=center>870.3815</td>
	<td align=center>964.0004</td>
	<td align=center>0.7224000</td>
	<td align=center>1134.1970</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:50</td>
	<td align=center>874.8608</td>
	<td align=center>968.7134</td>
	<td align=center>0.7308000</td>
	<td align=center>1133.1730</td>
	<td align=center>870.7704</td>
	<td align=center>964.4158</td>
	<td align=center>0.7227000</td>
	<td align=center>1134.4500</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:45</td>
	<td align=center>874.8608</td>
	<td align=center>968.7134</td>
	<td align=center>0.7298000</td>
	<td align=center>1133.9490</td>
	<td align=center>871.6204</td>
	<td align=center>965.3599</td>
	<td align=center>0.7218000</td>
	<td align=center>1136.2680</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:40</td>
	<td align=center>875.3796</td>
	<td align=center>969.2414</td>
	<td align=center>0.7313000</td>
	<td align=center>1133.4020</td>
	<td align=center>871.0172</td>
	<td align=center>964.7150</td>
	<td align=center>0.7212000</td>
	<td align=center>1135.9810</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:35</td>
	<td align=center>878.7976</td>
	<td align=center>972.8752</td>
	<td align=center>0.7363000</td>
	<td align=center>1133.7820</td>
	<td align=center>870.6091</td>
	<td align=center>964.2967</td>
	<td align=center>0.7201000</td>
	<td align=center>1136.3560</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:30</td>
	<td align=center>879.8657</td>
	<td align=center>973.9312</td>
	<td align=center>0.7399000</td>
	<td align=center>1132.2490</td>
	<td align=center>870.4771</td>
	<td align=center>964.1311</td>
	<td align=center>0.7210000</td>
	<td align=center>1135.4510</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:25</td>
	<td align=center>879.4995</td>
	<td align=center>973.5275</td>
	<td align=center>0.7403000</td>
	<td align=center>1131.4730</td>
	<td align=center>870.4372</td>
	<td align=center>964.0878</td>
	<td align=center>0.7212000</td>
	<td align=center>1135.2430</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:20</td>
	<td align=center>878.8892</td>
	<td align=center>972.8752</td>
	<td align=center>0.7399000</td>
	<td align=center>1131.0210</td>
	<td align=center>871.0734</td>
	<td align=center>964.7770</td>
	<td align=center>0.7213000</td>
	<td align=center>1135.9750</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:15</td>
	<td align=center>878.8892</td>
	<td align=center>972.8752</td>
	<td align=center>0.7398000</td>
	<td align=center>1131.0970</td>
	<td align=center>869.3144</td>
	<td align=center>962.8801</td>
	<td align=center>0.7207000</td>
	<td align=center>1134.2140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:10</td>
	<td align=center>878.7366</td>
	<td align=center>972.7200</td>
	<td align=center>0.7397000</td>
	<td align=center>1130.9930</td>
	<td align=center>869.5521</td>
	<td align=center>963.1321</td>
	<td align=center>0.7210000</td>
	<td align=center>1134.2750</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:05</td>
	<td align=center>878.7366</td>
	<td align=center>972.7200</td>
	<td align=center>0.7397000</td>
	<td align=center>1130.9930</td>
	<td align=center>869.7839</td>
	<td align=center>963.3973</td>
	<td align=center>0.7205000</td>
	<td align=center>1134.9810</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>879.3774</td>
	<td align=center>973.4033</td>
	<td align=center>0.7397000</td>
	<td align=center>1131.7880</td>
	<td align=center>869.7568</td>
	<td align=center>963.3575</td>
	<td align=center>0.7208000</td>
	<td align=center>1134.6980</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:55</td>
	<td align=center>879.3774</td>
	<td align=center>973.4033</td>
	<td align=center>0.7399000</td>
	<td align=center>1131.6350</td>
	<td align=center>869.6313</td>
	<td align=center>963.2156</td>
	<td align=center>0.7212000</td>
	<td align=center>1134.2160</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:50</td>
	<td align=center>878.8281</td>
	<td align=center>972.8442</td>
	<td align=center>0.7396000</td>
	<td align=center>1131.2140</td>
	<td align=center>869.9033</td>
	<td align=center>963.4711</td>
	<td align=center>0.7228000</td>
	<td align=center>1133.2600</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:45</td>
	<td align=center>879.3774</td>
	<td align=center>973.4343</td>
	<td align=center>0.7392000</td>
	<td align=center>1132.2070</td>
	<td align=center>870.4304</td>
	<td align=center>964.0165</td>
	<td align=center>0.7241000</td>
	<td align=center>1132.8830</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:40</td>
	<td align=center>879.3774</td>
	<td align=center>973.4343</td>
	<td align=center>0.7389000</td>
	<td align=center>1132.4360</td>
	<td align=center>871.6320</td>
	<td align=center>965.2721</td>
	<td align=center>0.7264000</td>
	<td align=center>1132.5620</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:35</td>
	<td align=center>879.6521</td>
	<td align=center>973.7449</td>
	<td align=center>0.7389000</td>
	<td align=center>1132.7980</td>
	<td align=center>872.6953</td>
	<td align=center>966.3707</td>
	<td align=center>0.7289000</td>
	<td align=center>1131.9040</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:30</td>
	<td align=center>879.6521</td>
	<td align=center>973.7449</td>
	<td align=center>0.7389000</td>
	<td align=center>1132.7980</td>
	<td align=center>874.9542</td>
	<td align=center>968.7094</td>
	<td align=center>0.7343000</td>
	<td align=center>1130.4640</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:25</td>
	<td align=center>879.8047</td>
	<td align=center>973.9001</td>
	<td align=center>0.7391000</td>
	<td align=center>1132.8250</td>
	<td align=center>876.6338</td>
	<td align=center>970.4897</td>
	<td align=center>0.7365000</td>
	<td align=center>1130.8490</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:20</td>
	<td align=center>880.2319</td>
	<td align=center>974.3349</td>
	<td align=center>0.7395000</td>
	<td align=center>1133.0240</td>
	<td align=center>877.3158</td>
	<td align=center>971.1886</td>
	<td align=center>0.7384000</td>
	<td align=center>1130.2060</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:15</td>
	<td align=center>880.3540</td>
	<td align=center>974.5213</td>
	<td align=center>0.7389000</td>
	<td align=center>1133.7010</td>
	<td align=center>878.2563</td>
	<td align=center>972.2213</td>
	<td align=center>0.7380000</td>
	<td align=center>1131.7150</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:10</td>
	<td align=center>879.5911</td>
	<td align=center>973.6517</td>
	<td align=center>0.7392000</td>
	<td align=center>1132.4590</td>
	<td align=center>878.2748</td>
	<td align=center>972.2457</td>
	<td align=center>0.7379000</td>
	<td align=center>1131.8200</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:05</td>
	<td align=center>879.7742</td>
	<td align=center>973.8380</td>
	<td align=center>0.7392000</td>
	<td align=center>1132.6760</td>
	<td align=center>877.7467</td>
	<td align=center>971.6761</td>
	<td align=center>0.7377000</td>
	<td align=center>1131.3100</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>879.4690</td>
	<td align=center>973.5275</td>
	<td align=center>0.7389000</td>
	<td align=center>1132.5450</td>
	<td align=center>877.1998</td>
	<td align=center>971.0845</td>
	<td align=center>0.7375000</td>
	<td align=center>1130.7750</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:55</td>
	<td align=center>879.6521</td>
	<td align=center>973.7138</td>
	<td align=center>0.7389000</td>
	<td align=center>1132.7610</td>
	<td align=center>877.1141</td>
	<td align=center>970.9852</td>
	<td align=center>0.7377000</td>
	<td align=center>1130.5060</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:50</td>
	<td align=center>879.9268</td>
	<td align=center>974.0555</td>
	<td align=center>0.7385000</td>
	<td align=center>1133.4660</td>
	<td align=center>876.7020</td>
	<td align=center>970.5389</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.0630</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:45</td>
	<td align=center>879.9268</td>
	<td align=center>974.0555</td>
	<td align=center>0.7385000</td>
	<td align=center>1133.4660</td>
	<td align=center>876.9454</td>
	<td align=center>970.8054</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.3730</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:40</td>
	<td align=center>879.9268</td>
	<td align=center>974.0555</td>
	<td align=center>0.7384000</td>
	<td align=center>1133.5430</td>
	<td align=center>877.0855</td>
	<td align=center>970.9460</td>
	<td align=center>0.7382000</td>
	<td align=center>1130.0770</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:35</td>
	<td align=center>880.3235</td>
	<td align=center>974.4592</td>
	<td align=center>0.7387000</td>
	<td align=center>1133.7820</td>
	<td align=center>877.0855</td>
	<td align=center>970.9460</td>
	<td align=center>0.7381000</td>
	<td align=center>1130.1540</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:30</td>
	<td align=center>880.3235</td>
	<td align=center>974.4592</td>
	<td align=center>0.7384000</td>
	<td align=center>1134.0120</td>
	<td align=center>877.3699</td>
	<td align=center>971.2596</td>
	<td align=center>0.7380000</td>
	<td align=center>1130.5950</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:25</td>
	<td align=center>880.5371</td>
	<td align=center>974.7076</td>
	<td align=center>0.7387000</td>
	<td align=center>1134.0710</td>
	<td align=center>877.9267</td>
	<td align=center>971.8378</td>
	<td align=center>0.7392000</td>
	<td align=center>1130.3500</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:20</td>
	<td align=center>880.2930</td>
	<td align=center>974.4282</td>
	<td align=center>0.7386000</td>
	<td align=center>1133.8230</td>
	<td align=center>877.7719</td>
	<td align=center>971.6617</td>
	<td align=center>0.7395000</td>
	<td align=center>1129.9160</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:15</td>
	<td align=center>880.2625</td>
	<td align=center>974.3972</td>
	<td align=center>0.7388000</td>
	<td align=center>1133.6330</td>
	<td align=center>877.8969</td>
	<td align=center>971.8000</td>
	<td align=center>0.7395000</td>
	<td align=center>1130.0760</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:10</td>
	<td align=center>880.2625</td>
	<td align=center>974.3972</td>
	<td align=center>0.7389000</td>
	<td align=center>1133.5570</td>
	<td align=center>878.4050</td>
	<td align=center>972.3497</td>
	<td align=center>0.7396000</td>
	<td align=center>1130.6390</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:05</td>
	<td align=center>880.0488</td>
	<td align=center>974.1796</td>
	<td align=center>0.7389000</td>
	<td align=center>1133.3030</td>
	<td align=center>878.0529</td>
	<td align=center>971.9633</td>
	<td align=center>0.7397000</td>
	<td align=center>1130.1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>879.4080</td>
	<td align=center>973.4653</td>
	<td align=center>0.7393000</td>
	<td align=center>1132.1660</td>
	<td align=center>878.4544</td>
	<td align=center>972.3992</td>
	<td align=center>0.7398000</td>
	<td align=center>1130.5440</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:55</td>
	<td align=center>879.4080</td>
	<td align=center>973.4653</td>
	<td align=center>0.7395000</td>
	<td align=center>1132.0130</td>
	<td align=center>878.3007</td>
	<td align=center>972.2362</td>
	<td align=center>0.7396000</td>
	<td align=center>1130.5070</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:50</td>
	<td align=center>879.5605</td>
	<td align=center>973.6517</td>
	<td align=center>0.7387000</td>
	<td align=center>1132.8430</td>
	<td align=center>878.0571</td>
	<td align=center>971.9789</td>
	<td align=center>0.7393000</td>
	<td align=center>1130.4370</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:45</td>
	<td align=center>879.5605</td>
	<td align=center>973.6517</td>
	<td align=center>0.7386000</td>
	<td align=center>1132.9190</td>
	<td align=center>877.9438</td>
	<td align=center>971.8737</td>
	<td align=center>0.7385000</td>
	<td align=center>1130.9270</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:40</td>
	<td align=center>879.1028</td>
	<td align=center>973.1548</td>
	<td align=center>0.7382000</td>
	<td align=center>1132.6480</td>
	<td align=center>877.2578</td>
	<td align=center>971.1108</td>
	<td align=center>0.7393000</td>
	<td align=center>1129.4280</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:35</td>
	<td align=center>879.2554</td>
	<td align=center>973.3101</td>
	<td align=center>0.7382000</td>
	<td align=center>1132.8290</td>
	<td align=center>877.5691</td>
	<td align=center>971.4457</td>
	<td align=center>0.7394000</td>
	<td align=center>1129.7410</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:30</td>
	<td align=center>879.2554</td>
	<td align=center>973.3101</td>
	<td align=center>0.7381000</td>
	<td align=center>1132.9050</td>
	<td align=center>877.8234</td>
	<td align=center>971.7220</td>
	<td align=center>0.7394000</td>
	<td align=center>1130.0620</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:25</td>
	<td align=center>879.1028</td>
	<td align=center>973.1548</td>
	<td align=center>0.7380000</td>
	<td align=center>1132.8010</td>
	<td align=center>877.4221</td>
	<td align=center>971.3240</td>
	<td align=center>0.7377000</td>
	<td align=center>1130.9000</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:20</td>
	<td align=center>879.1028</td>
	<td align=center>973.1548</td>
	<td align=center>0.7381000</td>
	<td align=center>1132.7250</td>
	<td align=center>877.3704</td>
	<td align=center>971.2903</td>
	<td align=center>0.7367000</td>
	<td align=center>1131.6280</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:15</td>
	<td align=center>879.4080</td>
	<td align=center>973.4965</td>
	<td align=center>0.7385000</td>
	<td align=center>1132.8150</td>
	<td align=center>877.0419</td>
	<td align=center>970.9225</td>
	<td align=center>0.7372000</td>
	<td align=center>1130.8160</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:10</td>
	<td align=center>879.4080</td>
	<td align=center>973.4965</td>
	<td align=center>0.7386000</td>
	<td align=center>1132.7390</td>
	<td align=center>876.1209</td>
	<td align=center>969.9272</td>
	<td align=center>0.7369000</td>
	<td align=center>1129.8870</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:05</td>
	<td align=center>879.4080</td>
	<td align=center>973.4965</td>
	<td align=center>0.7384000</td>
	<td align=center>1132.8920</td>
	<td align=center>876.0703</td>
	<td align=center>969.8830</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.2190</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>879.4080</td>
	<td align=center>973.4965</td>
	<td align=center>0.7384000</td>
	<td align=center>1132.8920</td>
	<td align=center>876.3033</td>
	<td align=center>970.1364</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.5140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:55</td>
	<td align=center>879.9878</td>
	<td align=center>974.1176</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.0780</td>
	<td align=center>875.9383</td>
	<td align=center>969.7382</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.0500</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:50</td>
	<td align=center>879.9878</td>
	<td align=center>974.1176</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.0780</td>
	<td align=center>876.5369</td>
	<td align=center>970.4037</td>
	<td align=center>0.7358000</td>
	<td align=center>1131.2860</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:45</td>
	<td align=center>879.9878</td>
	<td align=center>974.1176</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.0780</td>
	<td align=center>877.1531</td>
	<td align=center>971.0422</td>
	<td align=center>0.7371000</td>
	<td align=center>1131.0320</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:40</td>
	<td align=center>879.9878</td>
	<td align=center>974.1176</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.0780</td>
	<td align=center>876.3397</td>
	<td align=center>970.1785</td>
	<td align=center>0.7362000</td>
	<td align=center>1130.7170</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:35</td>
	<td align=center>879.9878</td>
	<td align=center>974.1176</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.0780</td>
	<td align=center>876.2170</td>
	<td align=center>970.0583</td>
	<td align=center>0.7356000</td>
	<td align=center>1131.0370</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:30</td>
	<td align=center>879.9878</td>
	<td align=center>974.1176</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.0780</td>
	<td align=center>876.7279</td>
	<td align=center>970.6020</td>
	<td align=center>0.7361000</td>
	<td align=center>1131.2870</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:25</td>
	<td align=center>879.9878</td>
	<td align=center>974.1176</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.0780</td>
	<td align=center>876.0670</td>
	<td align=center>969.8772</td>
	<td align=center>0.7365000</td>
	<td align=center>1130.1350</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:20</td>
	<td align=center>879.9878</td>
	<td align=center>974.1176</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.0780</td>
	<td align=center>876.3345</td>
	<td align=center>970.1346</td>
	<td align=center>0.7379000</td>
	<td align=center>1129.3620</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:15</td>
	<td align=center>880.3845</td>
	<td align=center>974.5213</td>
	<td align=center>0.7393000</td>
	<td align=center>1133.3940</td>
	<td align=center>876.5775</td>
	<td align=center>970.3806</td>
	<td align=center>0.7386000</td>
	<td align=center>1129.1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:10</td>
	<td align=center>880.3845</td>
	<td align=center>974.5213</td>
	<td align=center>0.7390000</td>
	<td align=center>1133.6240</td>
	<td align=center>876.2031</td>
	<td align=center>969.9713</td>
	<td align=center>0.7387000</td>
	<td align=center>1128.5610</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:05</td>
	<td align=center>880.3845</td>
	<td align=center>974.5213</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.5480</td>
	<td align=center>875.8831</td>
	<td align=center>969.6267</td>
	<td align=center>0.7385000</td>
	<td align=center>1128.3120</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>880.5371</td>
	<td align=center>974.6766</td>
	<td align=center>0.7394000</td>
	<td align=center>1133.4980</td>
	<td align=center>875.7232</td>
	<td align=center>969.4702</td>
	<td align=center>0.7377000</td>
	<td align=center>1128.7420</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:55</td>
	<td align=center>880.5371</td>
	<td align=center>974.6766</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.7280</td>
	<td align=center>876.7996</td>
	<td align=center>970.6147</td>
	<td align=center>0.7387000</td>
	<td align=center>1129.3090</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:50</td>
	<td align=center>880.3540</td>
	<td align=center>974.4903</td>
	<td align=center>0.7392000</td>
	<td align=center>1133.4350</td>
	<td align=center>875.4440</td>
	<td align=center>969.1625</td>
	<td align=center>0.7377000</td>
	<td align=center>1128.3830</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:45</td>
	<td align=center>880.5676</td>
	<td align=center>974.7388</td>
	<td align=center>0.7391000</td>
	<td align=center>1133.8010</td>
	<td align=center>874.6360</td>
	<td align=center>968.2763</td>
	<td align=center>0.7381000</td>
	<td align=center>1127.0460</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:40</td>
	<td align=center>880.7202</td>
	<td align=center>974.8940</td>
	<td align=center>0.7387000</td>
	<td align=center>1134.2880</td>
	<td align=center>874.5211</td>
	<td align=center>968.1678</td>
	<td align=center>0.7373000</td>
	<td align=center>1127.5310</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:35</td>
	<td align=center>880.7202</td>
	<td align=center>974.8940</td>
	<td align=center>0.7390000</td>
	<td align=center>1134.0580</td>
	<td align=center>874.4593</td>
	<td align=center>968.1089</td>
	<td align=center>0.7369000</td>
	<td align=center>1127.7680</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:30</td>
	<td align=center>881.1475</td>
	<td align=center>975.3600</td>
	<td align=center>0.7387000</td>
	<td align=center>1134.8300</td>
	<td align=center>874.1058</td>
	<td align=center>967.7575</td>
	<td align=center>0.7354000</td>
	<td align=center>1128.5080</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:25</td>
	<td align=center>881.1475</td>
	<td align=center>975.3600</td>
	<td align=center>0.7386000</td>
	<td align=center>1134.9070</td>
	<td align=center>873.9915</td>
	<td align=center>967.6241</td>
	<td align=center>0.7357000</td>
	<td align=center>1128.1230</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:20</td>
	<td align=center>881.1475</td>
	<td align=center>975.3600</td>
	<td align=center>0.7387000</td>
	<td align=center>1134.8300</td>
	<td align=center>873.5198</td>
	<td align=center>967.1046</td>
	<td align=center>0.7360000</td>
	<td align=center>1127.2870</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:15</td>
	<td align=center>880.9644</td>
	<td align=center>975.1736</td>
	<td align=center>0.7386000</td>
	<td align=center>1134.6900</td>
	<td align=center>873.6087</td>
	<td align=center>967.2104</td>
	<td align=center>0.7355000</td>
	<td align=center>1127.7940</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:10</td>
	<td align=center>880.7812</td>
	<td align=center>974.9873</td>
	<td align=center>0.7387000</td>
	<td align=center>1134.3970</td>
	<td align=center>874.2150</td>
	<td align=center>967.8679</td>
	<td align=center>0.7356000</td>
	<td align=center>1128.4840</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:05</td>
	<td align=center>880.7812</td>
	<td align=center>974.9873</td>
	<td align=center>0.7384000</td>
	<td align=center>1134.6270</td>
	<td align=center>874.3632</td>
	<td align=center>968.0125</td>
	<td align=center>0.7364000</td>
	<td align=center>1128.0390</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>880.7812</td>
	<td align=center>974.9873</td>
	<td align=center>0.7387000</td>
	<td align=center>1134.3970</td>
	<td align=center>875.9533</td>
	<td align=center>969.7370</td>
	<td align=center>0.7365000</td>
	<td align=center>1129.9720</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:55</td>
	<td align=center>880.4456</td>
	<td align=center>974.6145</td>
	<td align=center>0.7387000</td>
	<td align=center>1133.9630</td>
	<td align=center>876.2130</td>
	<td align=center>969.9937</td>
	<td align=center>0.7376000</td>
	<td align=center>1129.4280</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:50</td>
	<td align=center>880.4761</td>
	<td align=center>974.6456</td>
	<td align=center>0.7387000</td>
	<td align=center>1133.9990</td>
	<td align=center>876.1843</td>
	<td align=center>969.9756</td>
	<td align=center>0.7369000</td>
	<td align=center>1129.9430</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:45</td>
	<td align=center>880.4761</td>
	<td align=center>974.6456</td>
	<td align=center>0.7384000</td>
	<td align=center>1134.2290</td>
	<td align=center>876.5899</td>
	<td align=center>970.3958</td>
	<td align=center>0.7377000</td>
	<td align=center>1129.8190</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:40</td>
	<td align=center>880.8423</td>
	<td align=center>975.0183</td>
	<td align=center>0.7385000</td>
	<td align=center>1134.5860</td>
	<td align=center>876.4586</td>
	<td align=center>970.2436</td>
	<td align=center>0.7381000</td>
	<td align=center>1129.3360</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:35</td>
	<td align=center>880.8423</td>
	<td align=center>975.0183</td>
	<td align=center>0.7388000</td>
	<td align=center>1134.3560</td>
	<td align=center>876.3410</td>
	<td align=center>970.1180</td>
	<td align=center>0.7380000</td>
	<td align=center>1129.2660</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:30</td>
	<td align=center>880.6897</td>
	<td align=center>974.8630</td>
	<td align=center>0.7390000</td>
	<td align=center>1134.0220</td>
	<td align=center>876.4727</td>
	<td align=center>970.2650</td>
	<td align=center>0.7379000</td>
	<td align=center>1129.5140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:25</td>
	<td align=center>880.8728</td>
	<td align=center>975.0804</td>
	<td align=center>0.7386000</td>
	<td align=center>1134.5820</td>
	<td align=center>875.9380</td>
	<td align=center>969.6761</td>
	<td align=center>0.7381000</td>
	<td align=center>1128.6760</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:20</td>
	<td align=center>881.3306</td>
	<td align=center>975.5774</td>
	<td align=center>0.7384000</td>
	<td align=center>1135.3140</td>
	<td align=center>875.7110</td>
	<td align=center>969.4181</td>
	<td align=center>0.7387000</td>
	<td align=center>1127.9170</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:15</td>
	<td align=center>881.3306</td>
	<td align=center>975.5774</td>
	<td align=center>0.7382000</td>
	<td align=center>1135.4680</td>
	<td align=center>875.1860</td>
	<td align=center>968.8559</td>
	<td align=center>0.7381000</td>
	<td align=center>1127.7210</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:10</td>
	<td align=center>881.5442</td>
	<td align=center>975.8257</td>
	<td align=center>0.7378000</td>
	<td align=center>1136.0640</td>
	<td align=center>876.2181</td>
	<td align=center>969.9720</td>
	<td align=center>0.7384000</td>
	<td align=center>1128.7910</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:05</td>
	<td align=center>881.5442</td>
	<td align=center>975.6705</td>
	<td align=center>0.7380000</td>
	<td align=center>1135.7300</td>
	<td align=center>876.1135</td>
	<td align=center>969.8650</td>
	<td align=center>0.7381000</td>
	<td align=center>1128.8950</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>881.5442</td>
	<td align=center>975.8257</td>
	<td align=center>0.7384000</td>
	<td align=center>1135.6030</td>
	<td align=center>875.9337</td>
	<td align=center>969.6714</td>
	<td align=center>0.7380000</td>
	<td align=center>1128.7460</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:55</td>
	<td align=center>881.3916</td>
	<td align=center>975.6395</td>
	<td align=center>0.7385000</td>
	<td align=center>1135.3090</td>
	<td align=center>876.2307</td>
	<td align=center>969.9921</td>
	<td align=center>0.7381000</td>
	<td align=center>1129.0430</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:50</td>
	<td align=center>881.1169</td>
	<td align=center>975.3290</td>
	<td align=center>0.7382000</td>
	<td align=center>1135.1780</td>
	<td align=center>876.4981</td>
	<td align=center>970.2738</td>
	<td align=center>0.7386000</td>
	<td align=center>1128.9890</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:45</td>
	<td align=center>881.1169</td>
	<td align=center>975.3290</td>
	<td align=center>0.7384000</td>
	<td align=center>1135.0250</td>
	<td align=center>875.8026</td>
	<td align=center>969.5186</td>
	<td align=center>0.7386000</td>
	<td align=center>1128.1100</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:40</td>
	<td align=center>880.9644</td>
	<td align=center>975.1736</td>
	<td align=center>0.7384000</td>
	<td align=center>1134.8440</td>
	<td align=center>875.6315</td>
	<td align=center>969.3373</td>
	<td align=center>0.7384000</td>
	<td align=center>1128.0520</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:35</td>
	<td align=center>881.3916</td>
	<td align=center>975.6395</td>
	<td align=center>0.7386000</td>
	<td align=center>1135.2320</td>
	<td align=center>875.8221</td>
	<td align=center>969.5490</td>
	<td align=center>0.7382000</td>
	<td align=center>1128.4510</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:30</td>
	<td align=center>881.2390</td>
	<td align=center>975.4531</td>
	<td align=center>0.7385000</td>
	<td align=center>1135.0920</td>
	<td align=center>876.0936</td>
	<td align=center>969.8661</td>
	<td align=center>0.7372000</td>
	<td align=center>1129.5860</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:25</td>
	<td align=center>881.2390</td>
	<td align=center>975.4531</td>
	<td align=center>0.7387000</td>
	<td align=center>1134.9390</td>
	<td align=center>876.2931</td>
	<td align=center>970.0657</td>
	<td align=center>0.7379000</td>
	<td align=center>1129.2820</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:20</td>
	<td align=center>881.2390</td>
	<td align=center>975.4531</td>
	<td align=center>0.7391000</td>
	<td align=center>1134.6310</td>
	<td align=center>876.5035</td>
	<td align=center>970.2990</td>
	<td align=center>0.7377000</td>
	<td align=center>1129.7070</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:15</td>
	<td align=center>880.9338</td>
	<td align=center>975.1115</td>
	<td align=center>0.7391000</td>
	<td align=center>1134.2340</td>
	<td align=center>876.5401</td>
	<td align=center>970.3345</td>
	<td align=center>0.7379000</td>
	<td align=center>1129.5950</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:10</td>
	<td align=center>880.9338</td>
	<td align=center>975.1115</td>
	<td align=center>0.7393000</td>
	<td align=center>1134.0810</td>
	<td align=center>876.3573</td>
	<td align=center>970.1404</td>
	<td align=center>0.7376000</td>
	<td align=center>1129.5990</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:05</td>
	<td align=center>880.9338</td>
	<td align=center>975.1115</td>
	<td align=center>0.7391000</td>
	<td align=center>1134.2340</td>
	<td align=center>876.7692</td>
	<td align=center>970.5746</td>
	<td align=center>0.7382000</td>
	<td align=center>1129.6450</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>880.9338</td>
	<td align=center>975.1115</td>
	<td align=center>0.7391000</td>
	<td align=center>1134.2340</td>
	<td align=center>876.8035</td>
	<td align=center>970.6083</td>
	<td align=center>0.7384000</td>
	<td align=center>1129.5310</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:55</td>
	<td align=center>881.1169</td>
	<td align=center>975.3290</td>
	<td align=center>0.7395000</td>
	<td align=center>1134.1800</td>
	<td align=center>876.5122</td>
	<td align=center>970.2859</td>
	<td align=center>0.7386000</td>
	<td align=center>1129.0030</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:50</td>
	<td align=center>881.9104</td>
	<td align=center>976.1675</td>
	<td align=center>0.7401000</td>
	<td align=center>1134.6950</td>
	<td align=center>876.3382</td>
	<td align=center>970.1116</td>
	<td align=center>0.7380000</td>
	<td align=center>1129.2590</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:45</td>
	<td align=center>880.3235</td>
	<td align=center>974.6145</td>
	<td align=center>0.7387000</td>
	<td align=center>1133.9630</td>
	<td align=center>876.0802</td>
	<td align=center>969.8372</td>
	<td align=center>0.7377000</td>
	<td align=center>1129.1690</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:40</td>
	<td align=center>880.3235</td>
	<td align=center>974.4592</td>
	<td align=center>0.7390000</td>
	<td align=center>1133.5520</td>
	<td align=center>876.2211</td>
	<td align=center>969.9926</td>
	<td align=center>0.7376000</td>
	<td align=center>1129.4260</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:35</td>
	<td align=center>880.1709</td>
	<td align=center>974.3040</td>
	<td align=center>0.7388000</td>
	<td align=center>1133.5250</td>
	<td align=center>876.5149</td>
	<td align=center>970.3179</td>
	<td align=center>0.7374000</td>
	<td align=center>1129.9580</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:30</td>
	<td align=center>879.3164</td>
	<td align=center>973.3722</td>
	<td align=center>0.7388000</td>
	<td align=center>1132.4410</td>
	<td align=center>876.8904</td>
	<td align=center>970.7203</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.2740</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:25</td>
	<td align=center>879.4690</td>
	<td align=center>973.5585</td>
	<td align=center>0.7388000</td>
	<td align=center>1132.6580</td>
	<td align=center>876.2473</td>
	<td align=center>970.0341</td>
	<td align=center>0.7371000</td>
	<td align=center>1129.8580</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:20</td>
	<td align=center>879.4690</td>
	<td align=center>973.5585</td>
	<td align=center>0.7388000</td>
	<td align=center>1132.6580</td>
	<td align=center>876.5221</td>
	<td align=center>970.3366</td>
	<td align=center>0.7368000</td>
	<td align=center>1130.4400</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:15</td>
	<td align=center>879.4690</td>
	<td align=center>973.5585</td>
	<td align=center>0.7380000</td>
	<td align=center>1133.2710</td>
	<td align=center>876.5475</td>
	<td align=center>970.3366</td>
	<td align=center>0.7382000</td>
	<td align=center>1129.3680</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:10</td>
	<td align=center>879.4995</td>
	<td align=center>973.6207</td>
	<td align=center>0.7377000</td>
	<td align=center>1133.5740</td>
	<td align=center>876.9354</td>
	<td align=center>970.7293</td>
	<td align=center>0.7395000</td>
	<td align=center>1128.8310</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:05</td>
	<td align=center>879.1638</td>
	<td align=center>973.2480</td>
	<td align=center>0.7377000</td>
	<td align=center>1133.1400</td>
	<td align=center>877.0129</td>
	<td align=center>970.8015</td>
	<td align=center>0.7401000</td>
	<td align=center>1128.4580</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>879.3164</td>
	<td align=center>973.4033</td>
	<td align=center>0.7371000</td>
	<td align=center>1133.7820</td>
	<td align=center>877.2001</td>
	<td align=center>970.9874</td>
	<td align=center>0.7408000</td>
	<td align=center>1128.1400</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:55</td>
	<td align=center>879.2859</td>
	<td align=center>973.3722</td>
	<td align=center>0.7369000</td>
	<td align=center>1133.9000</td>
	<td align=center>877.6293</td>
	<td align=center>971.4535</td>
	<td align=center>0.7409000</td>
	<td align=center>1128.6060</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:50</td>
	<td align=center>879.2859</td>
	<td align=center>973.3722</td>
	<td align=center>0.7370000</td>
	<td align=center>1133.8230</td>
	<td align=center>877.9882</td>
	<td align=center>971.8571</td>
	<td align=center>0.7403000</td>
	<td align=center>1129.5320</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:45</td>
	<td align=center>879.2554</td>
	<td align=center>973.3412</td>
	<td align=center>0.7374000</td>
	<td align=center>1133.4790</td>
	<td align=center>877.9221</td>
	<td align=center>971.8191</td>
	<td align=center>0.7387000</td>
	<td align=center>1130.7100</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:40</td>
	<td align=center>879.2554</td>
	<td align=center>973.3412</td>
	<td align=center>0.7377000</td>
	<td align=center>1133.2490</td>
	<td align=center>877.1047</td>
	<td align=center>970.9990</td>
	<td align=center>0.7357000</td>
	<td align=center>1132.0570</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:35</td>
	<td align=center>878.7366</td>
	<td align=center>972.7822</td>
	<td align=center>0.7365000</td>
	<td align=center>1133.5200</td>
	<td align=center>876.6024</td>
	<td align=center>970.4885</td>
	<td align=center>0.7341000</td>
	<td align=center>1132.6940</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:30</td>
	<td align=center>878.1567</td>
	<td align=center>972.1920</td>
	<td align=center>0.7356000</td>
	<td align=center>1133.5250</td>
	<td align=center>876.8941</td>
	<td align=center>970.8136</td>
	<td align=center>0.7337000</td>
	<td align=center>1133.3830</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:25</td>
	<td align=center>878.8281</td>
	<td align=center>972.9063</td>
	<td align=center>0.7359000</td>
	<td align=center>1134.1270</td>
	<td align=center>876.5356</td>
	<td align=center>970.4088</td>
	<td align=center>0.7343000</td>
	<td align=center>1132.4470</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:20</td>
	<td align=center>878.8281</td>
	<td align=center>972.9063</td>
	<td align=center>0.7362000</td>
	<td align=center>1133.8960</td>
	<td align=center>877.0123</td>
	<td align=center>970.9130</td>
	<td align=center>0.7349000</td>
	<td align=center>1132.5730</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:15</td>
	<td align=center>879.3774</td>
	<td align=center>973.4653</td>
	<td align=center>0.7370000</td>
	<td align=center>1133.9310</td>
	<td align=center>877.4799</td>
	<td align=center>971.4161</td>
	<td align=center>0.7352000</td>
	<td align=center>1132.9290</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:10</td>
	<td align=center>879.3774</td>
	<td align=center>973.4653</td>
	<td align=center>0.7371000</td>
	<td align=center>1133.8540</td>
	<td align=center>878.4002</td>
	<td align=center>972.3836</td>
	<td align=center>0.7366000</td>
	<td align=center>1132.9790</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:05</td>
	<td align=center>879.7742</td>
	<td align=center>973.9001</td>
	<td align=center>0.7371000</td>
	<td align=center>1134.3610</td>
	<td align=center>878.9112</td>
	<td align=center>972.9019</td>
	<td align=center>0.7384000</td>
	<td align=center>1132.2000</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>879.5605</td>
	<td align=center>973.6828</td>
	<td align=center>0.7368000</td>
	<td align=center>1134.3390</td>
	<td align=center>879.7934</td>
	<td align=center>973.8215</td>
	<td align=center>0.7401000</td>
	<td align=center>1131.9680</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:55</td>
	<td align=center>879.6521</td>
	<td align=center>973.8069</td>
	<td align=center>0.7373000</td>
	<td align=center>1134.0990</td>
	<td align=center>879.6650</td>
	<td align=center>973.6646</td>
	<td align=center>0.7409000</td>
	<td align=center>1131.1740</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:50</td>
	<td align=center>879.6521</td>
	<td align=center>973.8069</td>
	<td align=center>0.7369000</td>
	<td align=center>1134.4060</td>
	<td align=center>880.1143</td>
	<td align=center>974.1402</td>
	<td align=center>0.7415000</td>
	<td align=center>1131.2690</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:45</td>
	<td align=center>879.6521</td>
	<td align=center>973.8069</td>
	<td align=center>0.7364000</td>
	<td align=center>1134.7910</td>
	<td align=center>879.5261</td>
	<td align=center>973.4985</td>
	<td align=center>0.7415000</td>
	<td align=center>1130.5240</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:40</td>
	<td align=center>879.2859</td>
	<td align=center>973.4033</td>
	<td align=center>0.7365000</td>
	<td align=center>1134.2440</td>
	<td align=center>879.7692</td>
	<td align=center>973.7439</td>
	<td align=center>0.7424000</td>
	<td align=center>1130.1230</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:35</td>
	<td align=center>879.2859</td>
	<td align=center>973.4033</td>
	<td align=center>0.7362000</td>
	<td align=center>1134.4750</td>
	<td align=center>880.0119</td>
	<td align=center>974.0076</td>
	<td align=center>0.7424000</td>
	<td align=center>1130.4290</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:30</td>
	<td align=center>879.2859</td>
	<td align=center>973.4033</td>
	<td align=center>0.7360000</td>
	<td align=center>1134.6290</td>
	<td align=center>880.1157</td>
	<td align=center>974.1154</td>
	<td align=center>0.7426000</td>
	<td align=center>1130.4020</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:25</td>
	<td align=center>879.1333</td>
	<td align=center>973.2480</td>
	<td align=center>0.7364000</td>
	<td align=center>1134.1400</td>
	<td align=center>880.4274</td>
	<td align=center>974.4625</td>
	<td align=center>0.7422000</td>
	<td align=center>1131.1090</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:20</td>
	<td align=center>878.9807</td>
	<td align=center>973.0306</td>
	<td align=center>0.7364000</td>
	<td align=center>1133.8860</td>
	<td align=center>880.2950</td>
	<td align=center>974.3019</td>
	<td align=center>0.7430000</td>
	<td align=center>1130.3140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:15</td>
	<td align=center>879.4995</td>
	<td align=center>973.5896</td>
	<td align=center>0.7375000</td>
	<td align=center>1133.6920</td>
	<td align=center>880.6171</td>
	<td align=center>974.6507</td>
	<td align=center>0.7431000</td>
	<td align=center>1130.6430</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:10</td>
	<td align=center>879.8962</td>
	<td align=center>974.0245</td>
	<td align=center>0.7382000</td>
	<td align=center>1133.6600</td>
	<td align=center>880.9852</td>
	<td align=center>975.0395</td>
	<td align=center>0.7436000</td>
	<td align=center>1130.7130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:05</td>
	<td align=center>881.1475</td>
	<td align=center>975.3290</td>
	<td align=center>0.7393000</td>
	<td align=center>1134.3330</td>
	<td align=center>880.8496</td>
	<td align=center>974.8771</td>
	<td align=center>0.7443000</td>
	<td align=center>1129.9930</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>881.9714</td>
	<td align=center>976.2297</td>
	<td align=center>0.7406000</td>
	<td align=center>1134.3840</td>
	<td align=center>880.4684</td>
	<td align=center>974.4697</td>
	<td align=center>0.7440000</td>
	<td align=center>1129.7490</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:55</td>
	<td align=center>880.6287</td>
	<td align=center>974.7698</td>
	<td align=center>0.7401000</td>
	<td align=center>1133.0700</td>
	<td align=center>880.6083</td>
	<td align=center>974.6268</td>
	<td align=center>0.7438000</td>
	<td align=center>1130.0830</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:50</td>
	<td align=center>880.7812</td>
	<td align=center>974.9252</td>
	<td align=center>0.7399000</td>
	<td align=center>1133.4040</td>
	<td align=center>880.2999</td>
	<td align=center>974.3057</td>
	<td align=center>0.7431000</td>
	<td align=center>1130.2420</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:45</td>
	<td align=center>880.9949</td>
	<td align=center>975.1736</td>
	<td align=center>0.7398000</td>
	<td align=center>1133.7700</td>
	<td align=center>880.0023</td>
	<td align=center>974.0009</td>
	<td align=center>0.7422000</td>
	<td align=center>1130.5740</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:40</td>
	<td align=center>881.2390</td>
	<td align=center>975.4531</td>
	<td align=center>0.7397000</td>
	<td align=center>1134.1710</td>
	<td align=center>879.8701</td>
	<td align=center>973.8621</td>
	<td align=center>0.7420000</td>
	<td align=center>1130.5650</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:35</td>
	<td align=center>881.0559</td>
	<td align=center>975.2668</td>
	<td align=center>0.7395000</td>
	<td align=center>1134.1080</td>
	<td align=center>879.5051</td>
	<td align=center>973.4696</td>
	<td align=center>0.7417000</td>
	<td align=center>1130.3380</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:30</td>
	<td align=center>880.8728</td>
	<td align=center>975.0494</td>
	<td align=center>0.7393000</td>
	<td align=center>1134.0080</td>
	<td align=center>879.1719</td>
	<td align=center>973.1053</td>
	<td align=center>0.7418000</td>
	<td align=center>1129.8390</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:25</td>
	<td align=center>880.4150</td>
	<td align=center>974.5524</td>
	<td align=center>0.7400000</td>
	<td align=center>1132.8940</td>
	<td align=center>879.4461</td>
	<td align=center>973.3986</td>
	<td align=center>0.7420000</td>
	<td align=center>1130.0270</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:20</td>
	<td align=center>880.4150</td>
	<td align=center>974.5524</td>
	<td align=center>0.7400000</td>
	<td align=center>1132.8940</td>
	<td align=center>879.7942</td>
	<td align=center>973.7857</td>
	<td align=center>0.7416000</td>
	<td align=center>1130.7810</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:15</td>
	<td align=center>879.9573</td>
	<td align=center>974.0555</td>
	<td align=center>0.7387000</td>
	<td align=center>1133.3120</td>
	<td align=center>879.4055</td>
	<td align=center>973.3555</td>
	<td align=center>0.7420000</td>
	<td align=center>1129.9770</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:10</td>
	<td align=center>879.9573</td>
	<td align=center>974.0555</td>
	<td align=center>0.7384000</td>
	<td align=center>1133.5430</td>
	<td align=center>879.6343</td>
	<td align=center>973.6168</td>
	<td align=center>0.7415000</td>
	<td align=center>1130.6610</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:05</td>
	<td align=center>880.1709</td>
	<td align=center>974.3040</td>
	<td align=center>0.7383000</td>
	<td align=center>1133.9090</td>
	<td align=center>879.8124</td>
	<td align=center>973.8083</td>
	<td align=center>0.7415000</td>
	<td align=center>1130.8840</td>
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




