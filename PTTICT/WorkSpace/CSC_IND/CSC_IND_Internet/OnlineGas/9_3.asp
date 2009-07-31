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
<title>Current Gas Composition</title>
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
	timerID = setTimeout(document.location='9_3.asp',300000);	  
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
	<td width="809" class="head4" bgcolor="#000066"><font color="#FFFFFF">Current 
	  Gas Composition</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="832">
  <tr class="head">
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT MTP
	  (AT DPCU) - CURRENT</strong></td>
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
	<td WIDTH="91"> 
	  <table border="0" cellspacing="0">
		  <tr class="head2" align="center">
		<td width="100%">C.Dewpoint</td>
		  </tr>
		  <tr class="head3" align="center">
		<td width="100%">(AT 630 PSI)</td>
		  </tr>
		</table>
	  
	</td> 
  </tr>
	
			
  <tr class="body1" bgcolor="#FAF9E7" align="right">
	<td align="center">28/04/2549&nbsp;17:35</td>
	<td align=center>13.70317</td>
	<td align=center>75.08141</td>
	<td align=center>6.216002</td>
	<td align=center>1.970869</td>
	<td align=center>0.413267</td>
	<td align=center>0.386533</td>
	<td align=center>0.123490</td>
	<td align=center>0.078672</td>
	<td align=center>0.080512</td>
	<td align=center>1.946075</td>
	<td align=center>960.8480</td>
	<td align=center>0.7629020</td>
	<td align=center>1100.070</td> 
	<td align=center></td> 
  </tr>
	
			
  <tr class="body1" bgcolor="#FAF9E7" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
	<td align=center>11.36990</td>
	<td align=center>77.96540</td>
	<td align=center>5.720200</td>
	<td align=center>1.849000</td>
	<td align=center>0.409200</td>
	<td align=center>0.373900</td>
	<td align=center>0.118100</td>
	<td align=center>0.074900</td>
	<td align=center>0.080200</td>
	<td align=center>2.039400</td>
	<td align=center>977.1890</td>
	<td align=center>0.7366000</td>
	<td align=center>1138.578</td> 
	<td align=center></td> 
  </tr>
  

			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
	<td align=center>11.36990</td>
	<td align=center>77.96540</td>
	<td align=center>5.720200</td>
	<td align=center>1.849000</td>
	<td align=center>0.409200</td>
	<td align=center>0.373900</td>
	<td align=center>0.118100</td>
	<td align=center>0.074900</td>
	<td align=center>0.080200</td>
	<td align=center>2.039400</td>
	<td align=center>977.1890</td>
	<td align=center>0.7366000</td>
	<td align=center>1138.578</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:40</td>
	<td align=center>11.40410</td>
	<td align=center>77.90260</td>
	<td align=center>5.729200</td>
	<td align=center>1.857400</td>
	<td align=center>0.413400</td>
	<td align=center>0.377200</td>
	<td align=center>0.117800</td>
	<td align=center>0.075400</td>
	<td align=center>0.080700</td>
	<td align=center>2.042200</td>
	<td align=center>977.2107</td>
	<td align=center>0.7372000</td>
	<td align=center>1138.140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:35</td>
	<td align=center>11.31730</td>
	<td align=center>78.04390</td>
	<td align=center>5.729100</td>
	<td align=center>1.822800</td>
	<td align=center>0.405800</td>
	<td align=center>0.372600</td>
	<td align=center>0.117000</td>
	<td align=center>0.075200</td>
	<td align=center>0.080600</td>
	<td align=center>2.035700</td>
	<td align=center>977.3172</td>
	<td align=center>0.7358000</td>
	<td align=center>1139.346</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:30</td>
	<td align=center>11.16440</td>
	<td align=center>78.27120</td>
	<td align=center>5.701900</td>
	<td align=center>1.791000</td>
	<td align=center>0.396900</td>
	<td align=center>0.363300</td>
	<td align=center>0.113900</td>
	<td align=center>0.073000</td>
	<td align=center>0.078600</td>
	<td align=center>2.045600</td>
	<td align=center>977.4213</td>
	<td align=center>0.7335000</td>
	<td align=center>1141.252</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:25</td>
	<td align=center>11.11390</td>
	<td align=center>78.30700</td>
	<td align=center>5.725900</td>
	<td align=center>1.793000</td>
	<td align=center>0.396300</td>
	<td align=center>0.363500</td>
	<td align=center>0.115700</td>
	<td align=center>0.073300</td>
	<td align=center>0.078400</td>
	<td align=center>2.032900</td>
	<td align=center>978.3251</td>
	<td align=center>0.7331000</td>
	<td align=center>1142.619</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:20</td>
	<td align=center>11.15750</td>
	<td align=center>78.28600</td>
	<td align=center>5.709500</td>
	<td align=center>1.788000</td>
	<td align=center>0.399600</td>
	<td align=center>0.367900</td>
	<td align=center>0.115400</td>
	<td align=center>0.073300</td>
	<td align=center>0.078200</td>
	<td align=center>2.024400</td>
	<td align=center>977.9263</td>
	<td align=center>0.7335000</td>
	<td align=center>1141.842</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:15</td>
	<td align=center>11.12520</td>
	<td align=center>78.33230</td>
	<td align=center>5.704200</td>
	<td align=center>1.785600</td>
	<td align=center>0.397500</td>
	<td align=center>0.364700</td>
	<td align=center>0.114200</td>
	<td align=center>0.072800</td>
	<td align=center>0.078000</td>
	<td align=center>2.025500</td>
	<td align=center>977.9829</td>
	<td align=center>0.7330000</td>
	<td align=center>1142.298</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:10</td>
	<td align=center>11.14790</td>
	<td align=center>78.30270</td>
	<td align=center>5.697900</td>
	<td align=center>1.795600</td>
	<td align=center>0.403000</td>
	<td align=center>0.371200</td>
	<td align=center>0.117700</td>
	<td align=center>0.074800</td>
	<td align=center>0.078200</td>
	<td align=center>2.011100</td>
	<td align=center>978.4489</td>
	<td align=center>0.7335000</td>
	<td align=center>1142.452</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:05</td>
	<td align=center>11.19570</td>
	<td align=center>78.21240</td>
	<td align=center>5.716200</td>
	<td align=center>1.816100</td>
	<td align=center>0.407800</td>
	<td align=center>0.374900</td>
	<td align=center>0.117100</td>
	<td align=center>0.074400</td>
	<td align=center>0.078500</td>
	<td align=center>2.006800</td>
	<td align=center>978.6357</td>
	<td align=center>0.7344000</td>
	<td align=center>1141.970</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:00</td>
	<td align=center>11.15300</td>
	<td align=center>78.26790</td>
	<td align=center>5.720200</td>
	<td align=center>1.813300</td>
	<td align=center>0.405800</td>
	<td align=center>0.372800</td>
	<td align=center>0.115800</td>
	<td align=center>0.074100</td>
	<td align=center>0.077700</td>
	<td align=center>1.999500</td>
	<td align=center>978.9574</td>
	<td align=center>0.7338000</td>
	<td align=center>1142.812</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:55</td>
	<td align=center>11.13920</td>
	<td align=center>78.25470</td>
	<td align=center>5.733200</td>
	<td align=center>1.824400</td>
	<td align=center>0.407400</td>
	<td align=center>0.373600</td>
	<td align=center>0.116700</td>
	<td align=center>0.074300</td>
	<td align=center>0.078400</td>
	<td align=center>1.998000</td>
	<td align=center>979.4995</td>
	<td align=center>0.7339000</td>
	<td align=center>1143.367</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:50</td>
	<td align=center>11.11220</td>
	<td align=center>78.29340</td>
	<td align=center>5.740300</td>
	<td align=center>1.817700</td>
	<td align=center>0.407500</td>
	<td align=center>0.374500</td>
	<td align=center>0.117100</td>
	<td align=center>0.074200</td>
	<td align=center>0.077300</td>
	<td align=center>1.985800</td>
	<td align=center>979.8403</td>
	<td align=center>0.7336000</td>
	<td align=center>1143.999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:45</td>
	<td align=center>11.18390</td>
	<td align=center>78.40080</td>
	<td align=center>5.555100</td>
	<td align=center>1.822400</td>
	<td align=center>0.407100</td>
	<td align=center>0.373600</td>
	<td align=center>0.117200</td>
	<td align=center>0.074700</td>
	<td align=center>0.077900</td>
	<td align=center>1.987200</td>
	<td align=center>977.7572</td>
	<td align=center>0.7334000</td>
	<td align=center>1141.723</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:40</td>
	<td align=center>11.16960</td>
	<td align=center>78.44760</td>
	<td align=center>5.525500</td>
	<td align=center>1.818400</td>
	<td align=center>0.405700</td>
	<td align=center>0.373400</td>
	<td align=center>0.116900</td>
	<td align=center>0.074700</td>
	<td align=center>0.078500</td>
	<td align=center>1.989800</td>
	<td align=center>977.5637</td>
	<td align=center>0.7331000</td>
	<td align=center>1141.730</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:35</td>
	<td align=center>11.19230</td>
	<td align=center>78.39280</td>
	<td align=center>5.547600</td>
	<td align=center>1.828300</td>
	<td align=center>0.406900</td>
	<td align=center>0.375100</td>
	<td align=center>0.116800</td>
	<td align=center>0.075600</td>
	<td align=center>0.079000</td>
	<td align=center>1.985700</td>
	<td align=center>977.8052</td>
	<td align=center>0.7336000</td>
	<td align=center>1141.623</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:30</td>
	<td align=center>11.09920</td>
	<td align=center>78.49620</td>
	<td align=center>5.542500</td>
	<td align=center>1.823100</td>
	<td align=center>0.405800</td>
	<td align=center>0.371900</td>
	<td align=center>0.116100</td>
	<td align=center>0.073400</td>
	<td align=center>0.077900</td>
	<td align=center>1.993900</td>
	<td align=center>978.3193</td>
	<td align=center>0.7325000</td>
	<td align=center>1143.080</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:25</td>
	<td align=center>11.12960</td>
	<td align=center>78.56410</td>
	<td align=center>5.489500</td>
	<td align=center>1.791100</td>
	<td align=center>0.399000</td>
	<td align=center>0.366200</td>
	<td align=center>0.114500</td>
	<td align=center>0.072900</td>
	<td align=center>0.076600</td>
	<td align=center>1.996700</td>
	<td align=center>976.6904</td>
	<td align=center>0.7319000</td>
	<td align=center>1141.645</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:20</td>
	<td align=center>11.11270</td>
	<td align=center>78.61820</td>
	<td align=center>5.481600</td>
	<td align=center>1.767900</td>
	<td align=center>0.392300</td>
	<td align=center>0.359200</td>
	<td align=center>0.113000</td>
	<td align=center>0.072400</td>
	<td align=center>0.076000</td>
	<td align=center>2.006500</td>
	<td align=center>975.9581</td>
	<td align=center>0.7313000</td>
	<td align=center>1141.257</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:15</td>
	<td align=center>11.06560</td>
	<td align=center>78.71890</td>
	<td align=center>5.455500</td>
	<td align=center>1.746700</td>
	<td align=center>0.388200</td>
	<td align=center>0.357100</td>
	<td align=center>0.111900</td>
	<td align=center>0.071000</td>
	<td align=center>0.075700</td>
	<td align=center>2.009300</td>
	<td align=center>975.6537</td>
	<td align=center>0.7304000</td>
	<td align=center>1141.604</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:10</td>
	<td align=center>11.04440</td>
	<td align=center>78.78420</td>
	<td align=center>5.429000</td>
	<td align=center>1.737800</td>
	<td align=center>0.386000</td>
	<td align=center>0.353000</td>
	<td align=center>0.110700</td>
	<td align=center>0.071000</td>
	<td align=center>0.074600</td>
	<td align=center>2.009200</td>
	<td align=center>975.3100</td>
	<td align=center>0.7298000</td>
	<td align=center>1141.670</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:05</td>
	<td align=center>11.03240</td>
	<td align=center>78.80850</td>
	<td align=center>5.414500</td>
	<td align=center>1.736000</td>
	<td align=center>0.385100</td>
	<td align=center>0.352200</td>
	<td align=center>0.110700</td>
	<td align=center>0.070800</td>
	<td align=center>0.074100</td>
	<td align=center>2.015700</td>
	<td align=center>975.1610</td>
	<td align=center>0.7296000</td>
	<td align=center>1141.652</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:00</td>
	<td align=center>11.06800</td>
	<td align=center>78.69030</td>
	<td align=center>5.459800</td>
	<td align=center>1.757700</td>
	<td align=center>0.389500</td>
	<td align=center>0.355500</td>
	<td align=center>0.111200</td>
	<td align=center>0.070400</td>
	<td align=center>0.075200</td>
	<td align=center>2.022400</td>
	<td align=center>975.6322</td>
	<td align=center>0.7305000</td>
	<td align=center>1141.500</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:55</td>
	<td align=center>11.18520</td>
	<td align=center>78.48190</td>
	<td align=center>5.495500</td>
	<td align=center>1.794100</td>
	<td align=center>0.397200</td>
	<td align=center>0.363200</td>
	<td align=center>0.114100</td>
	<td align=center>0.072300</td>
	<td align=center>0.076100</td>
	<td align=center>2.020300</td>
	<td align=center>975.8243</td>
	<td align=center>0.7325000</td>
	<td align=center>1140.165</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:50</td>
	<td align=center>11.21600</td>
	<td align=center>78.42100</td>
	<td align=center>5.518400</td>
	<td align=center>1.803700</td>
	<td align=center>0.398900</td>
	<td align=center>0.363400</td>
	<td align=center>0.114400</td>
	<td align=center>0.072300</td>
	<td align=center>0.073100</td>
	<td align=center>2.018800</td>
	<td align=center>975.7864</td>
	<td align=center>0.7330000</td>
	<td align=center>1139.732</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:45</td>
	<td align=center>11.33650</td>
	<td align=center>78.16730</td>
	<td align=center>5.561200</td>
	<td align=center>1.861400</td>
	<td align=center>0.414700</td>
	<td align=center>0.376800</td>
	<td align=center>0.115800</td>
	<td align=center>0.072600</td>
	<td align=center>0.074800</td>
	<td align=center>2.018900</td>
	<td align=center>976.5519</td>
	<td align=center>0.7354000</td>
	<td align=center>1138.763</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:40</td>
	<td align=center>11.34320</td>
	<td align=center>78.15360</td>
	<td align=center>5.556700</td>
	<td align=center>1.871900</td>
	<td align=center>0.418300</td>
	<td align=center>0.379300</td>
	<td align=center>0.116200</td>
	<td align=center>0.072100</td>
	<td align=center>0.074900</td>
	<td align=center>2.013900</td>
	<td align=center>976.7964</td>
	<td align=center>0.7357000</td>
	<td align=center>1138.816</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:35</td>
	<td align=center>11.30080</td>
	<td align=center>78.22180</td>
	<td align=center>5.547400</td>
	<td align=center>1.859300</td>
	<td align=center>0.413800</td>
	<td align=center>0.374400</td>
	<td align=center>0.115900</td>
	<td align=center>0.072400</td>
	<td align=center>0.073500</td>
	<td align=center>2.020700</td>
	<td align=center>976.6293</td>
	<td align=center>0.7349000</td>
	<td align=center>1139.241</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:30</td>
	<td align=center>11.28710</td>
	<td align=center>78.21720</td>
	<td align=center>5.550100</td>
	<td align=center>1.870100</td>
	<td align=center>0.414500</td>
	<td align=center>0.375700</td>
	<td align=center>0.115600</td>
	<td align=center>0.072200</td>
	<td align=center>0.073400</td>
	<td align=center>2.024200</td>
	<td align=center>976.9423</td>
	<td align=center>0.7349000</td>
	<td align=center>1139.606</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:25</td>
	<td align=center>11.25570</td>
	<td align=center>78.25080</td>
	<td align=center>5.566600</td>
	<td align=center>1.853700</td>
	<td align=center>0.412300</td>
	<td align=center>0.373600</td>
	<td align=center>0.115500</td>
	<td align=center>0.072300</td>
	<td align=center>0.072000</td>
	<td align=center>2.027500</td>
	<td align=center>976.9547</td>
	<td align=center>0.7345000</td>
	<td align=center>1139.931</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:20</td>
	<td align=center>11.33510</td>
	<td align=center>78.14550</td>
	<td align=center>5.573600</td>
	<td align=center>1.852700</td>
	<td align=center>0.413600</td>
	<td align=center>0.372700</td>
	<td align=center>0.114400</td>
	<td align=center>0.071800</td>
	<td align=center>0.071800</td>
	<td align=center>2.048800</td>
	<td align=center>975.9254</td>
	<td align=center>0.7353000</td>
	<td align=center>1138.110</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:15</td>
	<td align=center>11.30850</td>
	<td align=center>78.25610</td>
	<td align=center>5.523700</td>
	<td align=center>1.831400</td>
	<td align=center>0.406100</td>
	<td align=center>0.366300</td>
	<td align=center>0.112600</td>
	<td align=center>0.070000</td>
	<td align=center>0.070400</td>
	<td align=center>2.054900</td>
	<td align=center>974.9478</td>
	<td align=center>0.7343000</td>
	<td align=center>1137.744</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:10</td>
	<td align=center>11.28680</td>
	<td align=center>78.28700</td>
	<td align=center>5.527000</td>
	<td align=center>1.814700</td>
	<td align=center>0.401500</td>
	<td align=center>0.362600</td>
	<td align=center>0.110700</td>
	<td align=center>0.069200</td>
	<td align=center>0.069800</td>
	<td align=center>2.070700</td>
	<td align=center>974.4892</td>
	<td align=center>0.7339000</td>
	<td align=center>1137.519</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:05</td>
	<td align=center>11.27410</td>
	<td align=center>78.37620</td>
	<td align=center>5.451100</td>
	<td align=center>1.799300</td>
	<td align=center>0.397700</td>
	<td align=center>0.358600</td>
	<td align=center>0.110700</td>
	<td align=center>0.069800</td>
	<td align=center>0.069800</td>
	<td align=center>2.092700</td>
	<td align=center>973.4125</td>
	<td align=center>0.7332000</td>
	<td align=center>1136.804</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:00</td>
	<td align=center>11.28640</td>
	<td align=center>78.43850</td>
	<td align=center>5.388400</td>
	<td align=center>1.781500</td>
	<td align=center>0.394200</td>
	<td align=center>0.354000</td>
	<td align=center>0.109400</td>
	<td align=center>0.068400</td>
	<td align=center>0.068100</td>
	<td align=center>2.111200</td>
	<td align=center>972.0136</td>
	<td align=center>0.7327000</td>
	<td align=center>1135.558</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:55</td>
	<td align=center>11.33600</td>
	<td align=center>78.37710</td>
	<td align=center>5.401500</td>
	<td align=center>1.778900</td>
	<td align=center>0.392900</td>
	<td align=center>0.352900</td>
	<td align=center>0.109200</td>
	<td align=center>0.067700</td>
	<td align=center>0.068000</td>
	<td align=center>2.115800</td>
	<td align=center>971.4446</td>
	<td align=center>0.7332000</td>
	<td align=center>1134.506</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:50</td>
	<td align=center>11.28930</td>
	<td align=center>78.46860</td>
	<td align=center>5.363900</td>
	<td align=center>1.764300</td>
	<td align=center>0.389800</td>
	<td align=center>0.351800</td>
	<td align=center>0.108400</td>
	<td align=center>0.067200</td>
	<td align=center>0.068200</td>
	<td align=center>2.128700</td>
	<td align=center>971.1464</td>
	<td align=center>0.7324000</td>
	<td align=center>1134.777</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:45</td>
	<td align=center>11.26640</td>
	<td align=center>78.49850</td>
	<td align=center>5.363900</td>
	<td align=center>1.758400</td>
	<td align=center>0.389600</td>
	<td align=center>0.351200</td>
	<td align=center>0.107200</td>
	<td align=center>0.066500</td>
	<td align=center>0.066700</td>
	<td align=center>2.131500</td>
	<td align=center>971.1313</td>
	<td align=center>0.7320000</td>
	<td align=center>1135.069</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:40</td>
	<td align=center>11.05190</td>
	<td align=center>78.87890</td>
	<td align=center>5.286000</td>
	<td align=center>1.694200</td>
	<td align=center>0.371800</td>
	<td align=center>0.335500</td>
	<td align=center>0.103400</td>
	<td align=center>0.063700</td>
	<td align=center>0.064600</td>
	<td align=center>2.150100</td>
	<td align=center>970.4916</td>
	<td align=center>0.7283000</td>
	<td align=center>1137.199</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:35</td>
	<td align=center>11.02120</td>
	<td align=center>78.97330</td>
	<td align=center>5.248400</td>
	<td align=center>1.671900</td>
	<td align=center>0.367900</td>
	<td align=center>0.331000</td>
	<td align=center>0.101800</td>
	<td align=center>0.063100</td>
	<td align=center>0.064300</td>
	<td align=center>2.156900</td>
	<td align=center>969.8419</td>
	<td align=center>0.7275000</td>
	<td align=center>1137.063</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:30</td>
	<td align=center>11.03540</td>
	<td align=center>78.89250</td>
	<td align=center>5.318600</td>
	<td align=center>1.672800</td>
	<td align=center>0.366500</td>
	<td align=center>0.330000</td>
	<td align=center>0.101900</td>
	<td align=center>0.063400</td>
	<td align=center>0.064700</td>
	<td align=center>2.154100</td>
	<td align=center>970.2540</td>
	<td align=center>0.7280000</td>
	<td align=center>1137.155</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:25</td>
	<td align=center>10.91280</td>
	<td align=center>79.25520</td>
	<td align=center>5.208200</td>
	<td align=center>1.587100</td>
	<td align=center>0.346500</td>
	<td align=center>0.311100</td>
	<td align=center>0.097400</td>
	<td align=center>0.061000</td>
	<td align=center>0.061100</td>
	<td align=center>2.159600</td>
	<td align=center>968.0508</td>
	<td align=center>0.7246000</td>
	<td align=center>1137.232</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:20</td>
	<td align=center>10.16680</td>
	<td align=center>80.91180</td>
	<td align=center>4.807800</td>
	<td align=center>1.212200</td>
	<td align=center>0.260700</td>
	<td align=center>0.230800</td>
	<td align=center>0.073900</td>
	<td align=center>0.045500</td>
	<td align=center>0.044600</td>
	<td align=center>2.245900</td>
	<td align=center>960.3714</td>
	<td align=center>0.7085000</td>
	<td align=center>1140.957</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:15</td>
	<td align=center>8.83290</td>
	<td align=center>83.82290</td>
	<td align=center>4.050200</td>
	<td align=center>0.595900</td>
	<td align=center>0.116800</td>
	<td align=center>0.105800</td>
	<td align=center>0.039600</td>
	<td align=center>0.024400</td>
	<td align=center>0.024200</td>
	<td align=center>2.387300</td>
	<td align=center>948.6893</td>
	<td align=center>0.6809000</td>
	<td align=center>1149.694</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:10</td>
	<td align=center>7.84890</td>
	<td align=center>86.02230</td>
	<td align=center>3.508600</td>
	<td align=center>0.121200</td>
	<td align=center>0.007300</td>
	<td align=center>0.007700</td>
	<td align=center>0.013000</td>
	<td align=center>0.008100</td>
	<td align=center>0.000000</td>
	<td align=center>2.462900</td>
	<td align=center>939.5815</td>
	<td align=center>0.6600000</td>
	<td align=center>1156.545</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:05</td>
	<td align=center>7.86200</td>
	<td align=center>86.01690</td>
	<td align=center>3.502200</td>
	<td align=center>0.122500</td>
	<td align=center>0.008000</td>
	<td align=center>0.008300</td>
	<td align=center>0.013600</td>
	<td align=center>0.008600</td>
	<td align=center>0.000000</td>
	<td align=center>2.458000</td>
	<td align=center>939.5308</td>
	<td align=center>0.6601000</td>
	<td align=center>1156.395</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:00</td>
	<td align=center>7.75550</td>
	<td align=center>86.14350</td>
	<td align=center>3.496800</td>
	<td align=center>0.122400</td>
	<td align=center>0.008300</td>
	<td align=center>0.008800</td>
	<td align=center>0.013800</td>
	<td align=center>0.008600</td>
	<td align=center>0.000000</td>
	<td align=center>2.442300</td>
	<td align=center>940.7542</td>
	<td align=center>0.6590000</td>
	<td align=center>1158.867</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:55</td>
	<td align=center>7.76970</td>
	<td align=center>86.09140</td>
	<td align=center>3.543300</td>
	<td align=center>0.116800</td>
	<td align=center>0.009200</td>
	<td align=center>0.009600</td>
	<td align=center>0.013800</td>
	<td align=center>0.008800</td>
	<td align=center>0.000000</td>
	<td align=center>2.437500</td>
	<td align=center>940.9720</td>
	<td align=center>0.6593000</td>
	<td align=center>1158.871</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:50</td>
	<td align=center>7.70190</td>
	<td align=center>86.13310</td>
	<td align=center>3.562400</td>
	<td align=center>0.142900</td>
	<td align=center>0.015100</td>
	<td align=center>0.014900</td>
	<td align=center>0.014900</td>
	<td align=center>0.008900</td>
	<td align=center>0.000000</td>
	<td align=center>2.405800</td>
	<td align=center>942.8170</td>
	<td align=center>0.6590000</td>
	<td align=center>1161.408</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:45</td>
	<td align=center>9.65370</td>
	<td align=center>81.85640</td>
	<td align=center>4.678900</td>
	<td align=center>0.998500</td>
	<td align=center>0.211300</td>
	<td align=center>0.190000</td>
	<td align=center>0.064800</td>
	<td align=center>0.040300</td>
	<td align=center>0.042600</td>
	<td align=center>2.263500</td>
	<td align=center>958.5892</td>
	<td align=center>0.6993000</td>
	<td align=center>1146.307</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:40</td>
	<td align=center>10.89140</td>
	<td align=center>79.07230</td>
	<td align=center>5.360400</td>
	<td align=center>1.609700</td>
	<td align=center>0.353000</td>
	<td align=center>0.318200</td>
	<td align=center>0.099800</td>
	<td align=center>0.062100</td>
	<td align=center>0.064200</td>
	<td align=center>2.168900</td>
	<td align=center>970.2219</td>
	<td align=center>0.7258000</td>
	<td align=center>1138.840</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:35</td>
	<td align=center>10.88180</td>
	<td align=center>79.09950</td>
	<td align=center>5.336800</td>
	<td align=center>1.616700</td>
	<td align=center>0.355000</td>
	<td align=center>0.320000</td>
	<td align=center>0.099900</td>
	<td align=center>0.062200</td>
	<td align=center>0.064500</td>
	<td align=center>2.163500</td>
	<td align=center>970.4033</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:30</td>
	<td align=center>10.83030</td>
	<td align=center>79.13290</td>
	<td align=center>5.359700</td>
	<td align=center>1.613300</td>
	<td align=center>0.354200</td>
	<td align=center>0.319500</td>
	<td align=center>0.099800</td>
	<td align=center>0.061800</td>
	<td align=center>0.065000</td>
	<td align=center>2.163500</td>
	<td align=center>971.0222</td>
	<td align=center>0.7252000</td>
	<td align=center>1140.250</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:25</td>
	<td align=center>10.83190</td>
	<td align=center>79.14640</td>
	<td align=center>5.342300</td>
	<td align=center>1.614600</td>
	<td align=center>0.357000</td>
	<td align=center>0.322500</td>
	<td align=center>0.099300</td>
	<td align=center>0.061600</td>
	<td align=center>0.065300</td>
	<td align=center>2.159100</td>
	<td align=center>971.0607</td>
	<td align=center>0.7252000</td>
	<td align=center>1140.296</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:20</td>
	<td align=center>10.79820</td>
	<td align=center>79.24170</td>
	<td align=center>5.310500</td>
	<td align=center>1.598200</td>
	<td align=center>0.350600</td>
	<td align=center>0.315500</td>
	<td align=center>0.099100</td>
	<td align=center>0.061100</td>
	<td align=center>0.065300</td>
	<td align=center>2.159900</td>
	<td align=center>970.5709</td>
	<td align=center>0.7244000</td>
	<td align=center>1140.350</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:15</td>
	<td align=center>10.77940</td>
	<td align=center>79.32140</td>
	<td align=center>5.285900</td>
	<td align=center>1.570700</td>
	<td align=center>0.345800</td>
	<td align=center>0.311000</td>
	<td align=center>0.098100</td>
	<td align=center>0.060700</td>
	<td align=center>0.064300</td>
	<td align=center>2.162800</td>
	<td align=center>969.8348</td>
	<td align=center>0.7236000</td>
	<td align=center>1140.115</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:10</td>
	<td align=center>10.81470</td>
	<td align=center>79.29760</td>
	<td align=center>5.280900</td>
	<td align=center>1.567100</td>
	<td align=center>0.344300</td>
	<td align=center>0.308500</td>
	<td align=center>0.097500</td>
	<td align=center>0.060900</td>
	<td align=center>0.064600</td>
	<td align=center>2.163800</td>
	<td align=center>969.2838</td>
	<td align=center>0.7239000</td>
	<td align=center>1139.231</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:05</td>
	<td align=center>10.78190</td>
	<td align=center>79.32960</td>
	<td align=center>5.307800</td>
	<td align=center>1.550800</td>
	<td align=center>0.341500</td>
	<td align=center>0.307800</td>
	<td align=center>0.096700</td>
	<td align=center>0.060200</td>
	<td align=center>0.063700</td>
	<td align=center>2.160100</td>
	<td align=center>969.4502</td>
	<td align=center>0.7234000</td>
	<td align=center>1139.820</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:00</td>
	<td align=center>10.73880</td>
	<td align=center>79.40600</td>
	<td align=center>5.274800</td>
	<td align=center>1.550000</td>
	<td align=center>0.341400</td>
	<td align=center>0.306700</td>
	<td align=center>0.096100</td>
	<td align=center>0.060000</td>
	<td align=center>0.064400</td>
	<td align=center>2.161900</td>
	<td align=center>969.5774</td>
	<td align=center>0.7228000</td>
	<td align=center>1140.443</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:55</td>
	<td align=center>10.74130</td>
	<td align=center>79.30710</td>
	<td align=center>5.359000</td>
	<td align=center>1.560100</td>
	<td align=center>0.342500</td>
	<td align=center>0.306900</td>
	<td align=center>0.096500</td>
	<td align=center>0.060100</td>
	<td align=center>0.068300</td>
	<td align=center>2.158200</td>
	<td align=center>970.5854</td>
	<td align=center>0.7234000</td>
	<td align=center>1141.155</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:50</td>
	<td align=center>10.75550</td>
	<td align=center>79.28530</td>
	<td align=center>5.362200</td>
	<td align=center>1.558200</td>
	<td align=center>0.341900</td>
	<td align=center>0.307700</td>
	<td align=center>0.097000</td>
	<td align=center>0.060400</td>
	<td align=center>0.069600</td>
	<td align=center>2.162100</td>
	<td align=center>970.4747</td>
	<td align=center>0.7236000</td>
	<td align=center>1140.867</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:45</td>
	<td align=center>10.82980</td>
	<td align=center>79.13100</td>
	<td align=center>5.412300</td>
	<td align=center>1.579400</td>
	<td align=center>0.347100</td>
	<td align=center>0.311500</td>
	<td align=center>0.098600</td>
	<td align=center>0.061400</td>
	<td align=center>0.069700</td>
	<td align=center>2.159400</td>
	<td align=center>970.7402</td>
	<td align=center>0.7250000</td>
	<td align=center>1140.077</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:40</td>
	<td align=center>10.81280</td>
	<td align=center>79.14360</td>
	<td align=center>5.412400</td>
	<td align=center>1.580600</td>
	<td align=center>0.346400</td>
	<td align=center>0.311900</td>
	<td align=center>0.098100</td>
	<td align=center>0.061300</td>
	<td align=center>0.067400</td>
	<td align=center>2.165600</td>
	<td align=center>970.7561</td>
	<td align=center>0.7248000</td>
	<td align=center>1140.253</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:35</td>
	<td align=center>10.84270</td>
	<td align=center>79.05820</td>
	<td align=center>5.457300</td>
	<td align=center>1.585300</td>
	<td align=center>0.349800</td>
	<td align=center>0.317000</td>
	<td align=center>0.099500</td>
	<td align=center>0.062100</td>
	<td align=center>0.068700</td>
	<td align=center>2.159200</td>
	<td align=center>971.2497</td>
	<td align=center>0.7255000</td>
	<td align=center>1140.282</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:30</td>
	<td align=center>10.81720</td>
	<td align=center>79.15590</td>
	<td align=center>5.405000</td>
	<td align=center>1.579500</td>
	<td align=center>0.348300</td>
	<td align=center>0.313500</td>
	<td align=center>0.097600</td>
	<td align=center>0.060800</td>
	<td align=center>0.066900</td>
	<td align=center>2.155300</td>
	<td align=center>970.7745</td>
	<td align=center>0.7248000</td>
	<td align=center>1140.274</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:25</td>
	<td align=center>10.77870</td>
	<td align=center>79.16040</td>
	<td align=center>5.421400</td>
	<td align=center>1.595600</td>
	<td align=center>0.349400</td>
	<td align=center>0.314200</td>
	<td align=center>0.099900</td>
	<td align=center>0.063400</td>
	<td align=center>0.068300</td>
	<td align=center>2.148600</td>
	<td align=center>971.8486</td>
	<td align=center>0.7248000</td>
	<td align=center>1141.536</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:20</td>
	<td align=center>10.77090</td>
	<td align=center>79.17060</td>
	<td align=center>5.439200</td>
	<td align=center>1.580200</td>
	<td align=center>0.346400</td>
	<td align=center>0.312900</td>
	<td align=center>0.099700</td>
	<td align=center>0.063200</td>
	<td align=center>0.069300</td>
	<td align=center>2.147600</td>
	<td align=center>971.7673</td>
	<td align=center>0.7246000</td>
	<td align=center>1141.598</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:15</td>
	<td align=center>10.75830</td>
	<td align=center>79.27700</td>
	<td align=center>5.373300</td>
	<td align=center>1.550600</td>
	<td align=center>0.345000</td>
	<td align=center>0.317100</td>
	<td align=center>0.104900</td>
	<td align=center>0.066100</td>
	<td align=center>0.068000</td>
	<td align=center>2.139700</td>
	<td align=center>971.2793</td>
	<td align=center>0.7240000</td>
	<td align=center>1141.497</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:10</td>
	<td align=center>10.75130</td>
	<td align=center>79.24010</td>
	<td align=center>5.382700</td>
	<td align=center>1.574700</td>
	<td align=center>0.354400</td>
	<td align=center>0.324200</td>
	<td align=center>0.102700</td>
	<td align=center>0.065100</td>
	<td align=center>0.065500</td>
	<td align=center>2.139300</td>
	<td align=center>971.9753</td>
	<td align=center>0.7243000</td>
	<td align=center>1142.079</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:05</td>
	<td align=center>10.71750</td>
	<td align=center>79.40830</td>
	<td align=center>5.338100</td>
	<td align=center>1.543900</td>
	<td align=center>0.339700</td>
	<td align=center>0.305400</td>
	<td align=center>0.095700</td>
	<td align=center>0.059600</td>
	<td align=center>0.061200</td>
	<td align=center>2.130600</td>
	<td align=center>970.2934</td>
	<td align=center>0.7226000</td>
	<td align=center>1141.443</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:00</td>
	<td align=center>10.74560</td>
	<td align=center>79.28250</td>
	<td align=center>5.384200</td>
	<td align=center>1.566100</td>
	<td align=center>0.347000</td>
	<td align=center>0.312800</td>
	<td align=center>0.098500</td>
	<td align=center>0.060900</td>
	<td align=center>0.063200</td>
	<td align=center>2.139100</td>
	<td align=center>971.1507</td>
	<td align=center>0.7237000</td>
	<td align=center>1141.583</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:55</td>
	<td align=center>10.73370</td>
	<td align=center>79.37810</td>
	<td align=center>5.341400</td>
	<td align=center>1.540900</td>
	<td align=center>0.339100</td>
	<td align=center>0.304200</td>
	<td align=center>0.095700</td>
	<td align=center>0.060600</td>
	<td align=center>0.061500</td>
	<td align=center>2.144800</td>
	<td align=center>969.9666</td>
	<td align=center>0.7228000</td>
	<td align=center>1140.900</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:50</td>
	<td align=center>10.84190</td>
	<td align=center>79.18350</td>
	<td align=center>5.392300</td>
	<td align=center>1.560200</td>
	<td align=center>0.341400</td>
	<td align=center>0.307400</td>
	<td align=center>0.097400</td>
	<td align=center>0.061200</td>
	<td align=center>0.063800</td>
	<td align=center>2.150900</td>
	<td align=center>969.7737</td>
	<td align=center>0.7245000</td>
	<td align=center>1139.334</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:45</td>
	<td align=center>10.82000</td>
	<td align=center>79.24670</td>
	<td align=center>5.368600</td>
	<td align=center>1.554000</td>
	<td align=center>0.340200</td>
	<td align=center>0.306300</td>
	<td align=center>0.096100</td>
	<td align=center>0.059900</td>
	<td align=center>0.064200</td>
	<td align=center>2.144000</td>
	<td align=center>969.6726</td>
	<td align=center>0.7240000</td>
	<td align=center>1139.609</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:40</td>
	<td align=center>10.91810</td>
	<td align=center>79.03890</td>
	<td align=center>5.444200</td>
	<td align=center>1.577700</td>
	<td align=center>0.346900</td>
	<td align=center>0.313000</td>
	<td align=center>0.098500</td>
	<td align=center>0.062000</td>
	<td align=center>0.065100</td>
	<td align=center>2.135700</td>
	<td align=center>970.1776</td>
	<td align=center>0.7258000</td>
	<td align=center>1138.788</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:35</td>
	<td align=center>10.95180</td>
	<td align=center>78.97400</td>
	<td align=center>5.466500</td>
	<td align=center>1.582600</td>
	<td align=center>0.348500</td>
	<td align=center>0.314900</td>
	<td align=center>0.098900</td>
	<td align=center>0.062300</td>
	<td align=center>0.066100</td>
	<td align=center>2.134500</td>
	<td align=center>970.2327</td>
	<td align=center>0.7264000</td>
	<td align=center>1138.382</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:30</td>
	<td align=center>10.92650</td>
	<td align=center>78.97290</td>
	<td align=center>5.450000</td>
	<td align=center>1.602600</td>
	<td align=center>0.355900</td>
	<td align=center>0.325000</td>
	<td align=center>0.103400</td>
	<td align=center>0.065500</td>
	<td align=center>0.068400</td>
	<td align=center>2.130000</td>
	<td align=center>971.4298</td>
	<td align=center>0.7267000</td>
	<td align=center>1139.551</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:25</td>
	<td align=center>11.08010</td>
	<td align=center>78.69380</td>
	<td align=center>5.525600</td>
	<td align=center>1.648900</td>
	<td align=center>0.365600</td>
	<td align=center>0.328800</td>
	<td align=center>0.103000</td>
	<td align=center>0.064300</td>
	<td align=center>0.065800</td>
	<td align=center>2.124200</td>
	<td align=center>971.3835</td>
	<td align=center>0.7291000</td>
	<td align=center>1137.620</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:20</td>
	<td align=center>10.95300</td>
	<td align=center>78.92550</td>
	<td align=center>5.454700</td>
	<td align=center>1.615900</td>
	<td align=center>0.355000</td>
	<td align=center>0.319100</td>
	<td align=center>0.100600</td>
	<td align=center>0.062100</td>
	<td align=center>0.064400</td>
	<td align=center>2.149800</td>
	<td align=center>970.7057</td>
	<td align=center>0.7269000</td>
	<td align=center>1138.545</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:15</td>
	<td align=center>10.93630</td>
	<td align=center>78.83770</td>
	<td align=center>5.529900</td>
	<td align=center>1.638300</td>
	<td align=center>0.358300</td>
	<td align=center>0.322700</td>
	<td align=center>0.101600</td>
	<td align=center>0.063900</td>
	<td align=center>0.065400</td>
	<td align=center>2.145900</td>
	<td align=center>972.1139</td>
	<td align=center>0.7275000</td>
	<td align=center>1139.726</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:10</td>
	<td align=center>10.93340</td>
	<td align=center>78.93790</td>
	<td align=center>5.465100</td>
	<td align=center>1.613500</td>
	<td align=center>0.355100</td>
	<td align=center>0.320100</td>
	<td align=center>0.100300</td>
	<td align=center>0.062700</td>
	<td align=center>0.064300</td>
	<td align=center>2.147600</td>
	<td align=center>971.0042</td>
	<td align=center>0.7267000</td>
	<td align=center>1139.052</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:05</td>
	<td align=center>10.85920</td>
	<td align=center>79.04380</td>
	<td align=center>5.453600</td>
	<td align=center>1.599400</td>
	<td align=center>0.350600</td>
	<td align=center>0.314800</td>
	<td align=center>0.098500</td>
	<td align=center>0.061300</td>
	<td align=center>0.064000</td>
	<td align=center>2.154800</td>
	<td align=center>971.0477</td>
	<td align=center>0.7256000</td>
	<td align=center>1139.966</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:00</td>
	<td align=center>10.93490</td>
	<td align=center>78.91840</td>
	<td align=center>5.484200</td>
	<td align=center>1.604500</td>
	<td align=center>0.351300</td>
	<td align=center>0.317700</td>
	<td align=center>0.100200</td>
	<td align=center>0.062400</td>
	<td align=center>0.064500</td>
	<td align=center>2.161900</td>
	<td align=center>970.7089</td>
	<td align=center>0.7267000</td>
	<td align=center>1138.705</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:55</td>
	<td align=center>10.82920</td>
	<td align=center>79.12300</td>
	<td align=center>5.433500</td>
	<td align=center>1.574100</td>
	<td align=center>0.344300</td>
	<td align=center>0.311700</td>
	<td align=center>0.097900</td>
	<td align=center>0.061300</td>
	<td align=center>0.063400</td>
	<td align=center>2.161700</td>
	<td align=center>970.4874</td>
	<td align=center>0.7248000</td>
	<td align=center>1139.937</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:50</td>
	<td align=center>10.80240</td>
	<td align=center>79.19840</td>
	<td align=center>5.423300</td>
	<td align=center>1.549600</td>
	<td align=center>0.339300</td>
	<td align=center>0.306400</td>
	<td align=center>0.096100</td>
	<td align=center>0.059500</td>
	<td align=center>0.061600</td>
	<td align=center>2.163200</td>
	<td align=center>969.8822</td>
	<td align=center>0.7240000</td>
	<td align=center>1139.855</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:45</td>
	<td align=center>10.75740</td>
	<td align=center>79.26460</td>
	<td align=center>5.413000</td>
	<td align=center>1.546700</td>
	<td align=center>0.339300</td>
	<td align=center>0.305400</td>
	<td align=center>0.096800</td>
	<td align=center>0.060300</td>
	<td align=center>0.062000</td>
	<td align=center>2.154500</td>
	<td align=center>970.3415</td>
	<td align=center>0.7235000</td>
	<td align=center>1140.789</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:40</td>
	<td align=center>10.79450</td>
	<td align=center>79.23340</td>
	<td align=center>5.418100</td>
	<td align=center>1.544100</td>
	<td align=center>0.337800</td>
	<td align=center>0.305600</td>
	<td align=center>0.097000</td>
	<td align=center>0.060400</td>
	<td align=center>0.062900</td>
	<td align=center>2.146200</td>
	<td align=center>970.0596</td>
	<td align=center>0.7238000</td>
	<td align=center>1140.221</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:35</td>
	<td align=center>10.78250</td>
	<td align=center>79.29680</td>
	<td align=center>5.381400</td>
	<td align=center>1.538400</td>
	<td align=center>0.338400</td>
	<td align=center>0.305500</td>
	<td align=center>0.096000</td>
	<td align=center>0.059800</td>
	<td align=center>0.062500</td>
	<td align=center>2.138800</td>
	<td align=center>969.8378</td>
	<td align=center>0.7234000</td>
	<td align=center>1140.276</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:30</td>
	<td align=center>10.82980</td>
	<td align=center>79.19390</td>
	<td align=center>5.413600</td>
	<td align=center>1.560300</td>
	<td align=center>0.340600</td>
	<td align=center>0.307200</td>
	<td align=center>0.097900</td>
	<td align=center>0.060400</td>
	<td align=center>0.063000</td>
	<td align=center>2.133300</td>
	<td align=center>970.1789</td>
	<td align=center>0.7243000</td>
	<td align=center>1139.968</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:25</td>
	<td align=center>10.89090</td>
	<td align=center>79.06430</td>
	<td align=center>5.430800</td>
	<td align=center>1.593100</td>
	<td align=center>0.349000</td>
	<td align=center>0.315000</td>
	<td align=center>0.100100</td>
	<td align=center>0.062800</td>
	<td align=center>0.064300</td>
	<td align=center>2.129900</td>
	<td align=center>970.7798</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.573</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:20</td>
	<td align=center>10.92020</td>
	<td align=center>78.98930</td>
	<td align=center>5.454900</td>
	<td align=center>1.603900</td>
	<td align=center>0.353900</td>
	<td align=center>0.320100</td>
	<td align=center>0.100600</td>
	<td align=center>0.063000</td>
	<td align=center>0.065200</td>
	<td align=center>2.129000</td>
	<td align=center>971.1248</td>
	<td align=center>0.7264000</td>
	<td align=center>1139.429</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:15</td>
	<td align=center>10.99070</td>
	<td align=center>78.87230</td>
	<td align=center>5.459800</td>
	<td align=center>1.623500</td>
	<td align=center>0.356600</td>
	<td align=center>0.322300</td>
	<td align=center>0.101100</td>
	<td align=center>0.062800</td>
	<td align=center>0.066000</td>
	<td align=center>2.145000</td>
	<td align=center>970.7332</td>
	<td align=center>0.7274000</td>
	<td align=center>1138.186</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:10</td>
	<td align=center>11.01700</td>
	<td align=center>78.81480</td>
	<td align=center>5.481300</td>
	<td align=center>1.635500</td>
	<td align=center>0.358700</td>
	<td align=center>0.322600</td>
	<td align=center>0.102700</td>
	<td align=center>0.064000</td>
	<td align=center>0.065700</td>
	<td align=center>2.137700</td>
	<td align=center>971.0192</td>
	<td align=center>0.7280000</td>
	<td align=center>1138.052</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:05</td>
	<td align=center>10.97600</td>
	<td align=center>78.88410</td>
	<td align=center>5.465800</td>
	<td align=center>1.613000</td>
	<td align=center>0.354800</td>
	<td align=center>0.323300</td>
	<td align=center>0.102100</td>
	<td align=center>0.063800</td>
	<td align=center>0.066500</td>
	<td align=center>2.150500</td>
	<td align=center>970.7783</td>
	<td align=center>0.7273000</td>
	<td align=center>1138.317</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:00</td>
	<td align=center>10.99990</td>
	<td align=center>78.80890</td>
	<td align=center>5.487200</td>
	<td align=center>1.628300</td>
	<td align=center>0.357900</td>
	<td align=center>0.324800</td>
	<td align=center>0.103200</td>
	<td align=center>0.064800</td>
	<td align=center>0.065900</td>
	<td align=center>2.159200</td>
	<td align=center>970.9861</td>
	<td align=center>0.7279000</td>
	<td align=center>1138.091</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:55</td>
	<td align=center>10.98110</td>
	<td align=center>78.81420</td>
	<td align=center>5.496000</td>
	<td align=center>1.627800</td>
	<td align=center>0.356200</td>
	<td align=center>0.322900</td>
	<td align=center>0.102300</td>
	<td align=center>0.063900</td>
	<td align=center>0.067300</td>
	<td align=center>2.168300</td>
	<td align=center>971.0654</td>
	<td align=center>0.7277000</td>
	<td align=center>1138.341</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:50</td>
	<td align=center>10.90950</td>
	<td align=center>78.99220</td>
	<td align=center>5.431700</td>
	<td align=center>1.595300</td>
	<td align=center>0.348000</td>
	<td align=center>0.317000</td>
	<td align=center>0.100000</td>
	<td align=center>0.063000</td>
	<td align=center>0.065900</td>
	<td align=center>2.177400</td>
	<td align=center>970.2382</td>
	<td align=center>0.7262000</td>
	<td align=center>1138.545</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:45</td>
	<td align=center>10.87830</td>
	<td align=center>79.02970</td>
	<td align=center>5.437100</td>
	<td align=center>1.588200</td>
	<td align=center>0.347900</td>
	<td align=center>0.315400</td>
	<td align=center>0.098900</td>
	<td align=center>0.061600</td>
	<td align=center>0.064600</td>
	<td align=center>2.178300</td>
	<td align=center>970.3131</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.025</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:40</td>
	<td align=center>10.86210</td>
	<td align=center>79.04120</td>
	<td align=center>5.446900</td>
	<td align=center>1.593800</td>
	<td align=center>0.347400</td>
	<td align=center>0.314600</td>
	<td align=center>0.099300</td>
	<td align=center>0.062400</td>
	<td align=center>0.063900</td>
	<td align=center>2.168300</td>
	<td align=center>970.7234</td>
	<td align=center>0.7256000</td>
	<td align=center>1139.585</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:35</td>
	<td align=center>10.87880</td>
	<td align=center>79.02480</td>
	<td align=center>5.457800</td>
	<td align=center>1.583300</td>
	<td align=center>0.345700</td>
	<td align=center>0.313700</td>
	<td align=center>0.099200</td>
	<td align=center>0.061800</td>
	<td align=center>0.064300</td>
	<td align=center>2.170500</td>
	<td align=center>970.3885</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.114</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:30</td>
	<td align=center>10.88240</td>
	<td align=center>79.03870</td>
	<td align=center>5.439300</td>
	<td align=center>1.586500</td>
	<td align=center>0.346400</td>
	<td align=center>0.313900</td>
	<td align=center>0.098900</td>
	<td align=center>0.061800</td>
	<td align=center>0.064500</td>
	<td align=center>2.167600</td>
	<td align=center>970.3063</td>
	<td align=center>0.7257000</td>
	<td align=center>1139.017</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:25</td>
	<td align=center>10.96100</td>
	<td align=center>78.90510</td>
	<td align=center>5.470100</td>
	<td align=center>1.591500</td>
	<td align=center>0.349200</td>
	<td align=center>0.315700</td>
	<td align=center>0.099800</td>
	<td align=center>0.062600</td>
	<td align=center>0.064900</td>
	<td align=center>2.180000</td>
	<td align=center>969.8668</td>
	<td align=center>0.7268000</td>
	<td align=center>1137.639</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:20</td>
	<td align=center>10.94360</td>
	<td align=center>78.92530</td>
	<td align=center>5.456300</td>
	<td align=center>1.598900</td>
	<td align=center>0.350300</td>
	<td align=center>0.316600</td>
	<td align=center>0.100400</td>
	<td align=center>0.062100</td>
	<td align=center>0.065600</td>
	<td align=center>2.180900</td>
	<td align=center>970.1180</td>
	<td align=center>0.7267000</td>
	<td align=center>1138.012</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:15</td>
	<td align=center>10.99360</td>
	<td align=center>78.80690</td>
	<td align=center>5.494600</td>
	<td align=center>1.620600</td>
	<td align=center>0.355300</td>
	<td align=center>0.322700</td>
	<td align=center>0.101100</td>
	<td align=center>0.062800</td>
	<td align=center>0.065800</td>
	<td align=center>2.176600</td>
	<td align=center>970.5815</td>
	<td align=center>0.7277000</td>
	<td align=center>1137.774</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:10</td>
	<td align=center>11.02040</td>
	<td align=center>78.74390</td>
	<td align=center>5.508900</td>
	<td align=center>1.633000</td>
	<td align=center>0.357500</td>
	<td align=center>0.323900</td>
	<td align=center>0.102600</td>
	<td align=center>0.064000</td>
	<td align=center>0.066600</td>
	<td align=center>2.179200</td>
	<td align=center>970.7702</td>
	<td align=center>0.7283000</td>
	<td align=center>1137.526</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:05</td>
	<td align=center>11.08240</td>
	<td align=center>78.56970</td>
	<td align=center>5.577400</td>
	<td align=center>1.657600</td>
	<td align=center>0.364500</td>
	<td align=center>0.329900</td>
	<td align=center>0.104000</td>
	<td align=center>0.065000</td>
	<td align=center>0.067100</td>
	<td align=center>2.182300</td>
	<td align=center>971.3986</td>
	<td align=center>0.7297000</td>
	<td align=center>1137.170</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:00</td>
	<td align=center>11.02840</td>
	<td align=center>78.66820</td>
	<td align=center>5.546800</td>
	<td align=center>1.652300</td>
	<td align=center>0.362800</td>
	<td align=center>0.327700</td>
	<td align=center>0.103100</td>
	<td align=center>0.064400</td>
	<td align=center>0.067500</td>
	<td align=center>2.178700</td>
	<td align=center>971.5494</td>
	<td align=center>0.7289000</td>
	<td align=center>1137.970</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:55</td>
	<td align=center>11.04060</td>
	<td align=center>78.60560</td>
	<td align=center>5.593800</td>
	<td align=center>1.659500</td>
	<td align=center>0.363900</td>
	<td align=center>0.330400</td>
	<td align=center>0.103800</td>
	<td align=center>0.065400</td>
	<td align=center>0.068200</td>
	<td align=center>2.168700</td>
	<td align=center>972.1624</td>
	<td align=center>0.7294000</td>
	<td align=center>1138.298</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:50</td>
	<td align=center>11.00050</td>
	<td align=center>78.66590</td>
	<td align=center>5.584400</td>
	<td align=center>1.646300</td>
	<td align=center>0.363700</td>
	<td align=center>0.329100</td>
	<td align=center>0.102600</td>
	<td align=center>0.064300</td>
	<td align=center>0.066500</td>
	<td align=center>2.176600</td>
	<td align=center>972.0463</td>
	<td align=center>0.7288000</td>
	<td align=center>1138.630</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:45</td>
	<td align=center>10.99510</td>
	<td align=center>78.63430</td>
	<td align=center>5.626600</td>
	<td align=center>1.653700</td>
	<td align=center>0.360800</td>
	<td align=center>0.326600</td>
	<td align=center>0.103400</td>
	<td align=center>0.064200</td>
	<td align=center>0.067500</td>
	<td align=center>2.167800</td>
	<td align=center>972.5613</td>
	<td align=center>0.7289000</td>
	<td align=center>1139.156</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:40</td>
	<td align=center>11.00320</td>
	<td align=center>78.57680</td>
	<td align=center>5.658100</td>
	<td align=center>1.660700</td>
	<td align=center>0.363600</td>
	<td align=center>0.330700</td>
	<td align=center>0.104100</td>
	<td align=center>0.065100</td>
	<td align=center>0.067600</td>
	<td align=center>2.170100</td>
	<td align=center>973.0122</td>
	<td align=center>0.7294000</td>
	<td align=center>1139.293</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:35</td>
	<td align=center>11.02310</td>
	<td align=center>78.70540</td>
	<td align=center>5.518400</td>
	<td align=center>1.648800</td>
	<td align=center>0.364300</td>
	<td align=center>0.330300</td>
	<td align=center>0.102900</td>
	<td align=center>0.064600</td>
	<td align=center>0.067700</td>
	<td align=center>2.174400</td>
	<td align=center>971.4777</td>
	<td align=center>0.7288000</td>
	<td align=center>1137.964</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:30</td>
	<td align=center>10.99890</td>
	<td align=center>78.74220</td>
	<td align=center>5.511700</td>
	<td align=center>1.645500</td>
	<td align=center>0.360800</td>
	<td align=center>0.326400</td>
	<td align=center>0.103200</td>
	<td align=center>0.064600</td>
	<td align=center>0.067700</td>
	<td align=center>2.179200</td>
	<td align=center>971.4059</td>
	<td align=center>0.7284000</td>
	<td align=center>1138.193</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:25</td>
	<td align=center>11.06600</td>
	<td align=center>78.64130</td>
	<td align=center>5.534800</td>
	<td align=center>1.658600</td>
	<td align=center>0.364100</td>
	<td align=center>0.330700</td>
	<td align=center>0.103700</td>
	<td align=center>0.065100</td>
	<td align=center>0.069200</td>
	<td align=center>2.166500</td>
	<td align=center>971.4949</td>
	<td align=center>0.7294000</td>
	<td align=center>1137.516</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:20</td>
	<td align=center>11.04790</td>
	<td align=center>78.75320</td>
	<td align=center>5.473000</td>
	<td align=center>1.633400</td>
	<td align=center>0.359300</td>
	<td align=center>0.325800</td>
	<td align=center>0.102400</td>
	<td align=center>0.064300</td>
	<td align=center>0.067000</td>
	<td align=center>2.173700</td>
	<td align=center>970.3798</td>
	<td align=center>0.7284000</td>
	<td align=center>1136.990</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:15</td>
	<td align=center>11.06560</td>
	<td align=center>78.73750</td>
	<td align=center>5.466900</td>
	<td align=center>1.635700</td>
	<td align=center>0.359500</td>
	<td align=center>0.326000</td>
	<td align=center>0.103000</td>
	<td align=center>0.064700</td>
	<td align=center>0.067700</td>
	<td align=center>2.173300</td>
	<td align=center>970.2582</td>
	<td align=center>0.7287000</td>
	<td align=center>1136.614</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:10</td>
	<td align=center>11.10840</td>
	<td align=center>78.65170</td>
	<td align=center>5.503900</td>
	<td align=center>1.642400</td>
	<td align=center>0.360900</td>
	<td align=center>0.327400</td>
	<td align=center>0.103600</td>
	<td align=center>0.064500</td>
	<td align=center>0.067500</td>
	<td align=center>2.169700</td>
	<td align=center>970.3168</td>
	<td align=center>0.7293000</td>
	<td align=center>1136.215</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:05</td>
	<td align=center>11.09400</td>
	<td align=center>78.65580</td>
	<td align=center>5.526100</td>
	<td align=center>1.633700</td>
	<td align=center>0.359900</td>
	<td align=center>0.327100</td>
	<td align=center>0.102900</td>
	<td align=center>0.065200</td>
	<td align=center>0.067500</td>
	<td align=center>2.167800</td>
	<td align=center>970.4893</td>
	<td align=center>0.7292000</td>
	<td align=center>1136.495</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:00</td>
	<td align=center>11.09540</td>
	<td align=center>78.67360</td>
	<td align=center>5.456400</td>
	<td align=center>1.663700</td>
	<td align=center>0.365700</td>
	<td align=center>0.332200</td>
	<td align=center>0.104500</td>
	<td align=center>0.065300</td>
	<td align=center>0.069300</td>
	<td align=center>2.173900</td>
	<td align=center>970.7031</td>
	<td align=center>0.7294000</td>
	<td align=center>1136.589</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:55</td>
	<td align=center>11.10020</td>
	<td align=center>78.64670</td>
	<td align=center>5.473000</td>
	<td align=center>1.663500</td>
	<td align=center>0.365900</td>
	<td align=center>0.333000</td>
	<td align=center>0.104400</td>
	<td align=center>0.065600</td>
	<td align=center>0.068900</td>
	<td align=center>2.178800</td>
	<td align=center>970.7440</td>
	<td align=center>0.7296000</td>
	<td align=center>1136.481</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:50</td>
	<td align=center>11.13290</td>
	<td align=center>78.52630</td>
	<td align=center>5.533600</td>
	<td align=center>1.678600</td>
	<td align=center>0.369500</td>
	<td align=center>0.334100</td>
	<td align=center>0.104500</td>
	<td align=center>0.065500</td>
	<td align=center>0.069400</td>
	<td align=center>2.185500</td>
	<td align=center>971.1678</td>
	<td align=center>0.7305000</td>
	<td align=center>1136.277</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:45</td>
	<td align=center>11.08300</td>
	<td align=center>78.62850</td>
	<td align=center>5.496700</td>
	<td align=center>1.664100</td>
	<td align=center>0.366100</td>
	<td align=center>0.331800</td>
	<td align=center>0.105200</td>
	<td align=center>0.065900</td>
	<td align=center>0.068400</td>
	<td align=center>2.190300</td>
	<td align=center>970.9830</td>
	<td align=center>0.7296000</td>
	<td align=center>1136.761</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:40</td>
	<td align=center>11.12950</td>
	<td align=center>78.59700</td>
	<td align=center>5.466000</td>
	<td align=center>1.667900</td>
	<td align=center>0.366800</td>
	<td align=center>0.332200</td>
	<td align=center>0.104900</td>
	<td align=center>0.066500</td>
	<td align=center>0.068800</td>
	<td align=center>2.200500</td>
	<td align=center>970.2796</td>
	<td align=center>0.7300000</td>
	<td align=center>1135.626</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:35</td>
	<td align=center>11.16560</td>
	<td align=center>78.51840</td>
	<td align=center>5.481800</td>
	<td align=center>1.683300</td>
	<td align=center>0.370900</td>
	<td align=center>0.335300</td>
	<td align=center>0.106400</td>
	<td align=center>0.066400</td>
	<td align=center>0.070400</td>
	<td align=center>2.201500</td>
	<td align=center>970.5251</td>
	<td align=center>0.7307000</td>
	<td align=center>1135.370</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:30</td>
	<td align=center>11.14360</td>
	<td align=center>78.55590</td>
	<td align=center>5.484000</td>
	<td align=center>1.669100</td>
	<td align=center>0.367400</td>
	<td align=center>0.332300</td>
	<td align=center>0.105600</td>
	<td align=center>0.065800</td>
	<td align=center>0.070000</td>
	<td align=center>2.206300</td>
	<td align=center>970.2958</td>
	<td align=center>0.7303000</td>
	<td align=center>1135.412</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:25</td>
	<td align=center>11.17290</td>
	<td align=center>78.51040</td>
	<td align=center>5.505600</td>
	<td align=center>1.674200</td>
	<td align=center>0.366800</td>
	<td align=center>0.331600</td>
	<td align=center>0.102300</td>
	<td align=center>0.063500</td>
	<td align=center>0.064200</td>
	<td align=center>2.208700</td>
	<td align=center>969.7970</td>
	<td align=center>0.7305000</td>
	<td align=center>1134.673</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:20</td>
	<td align=center>11.16710</td>
	<td align=center>78.54300</td>
	<td align=center>5.481600</td>
	<td align=center>1.671000</td>
	<td align=center>0.365400</td>
	<td align=center>0.329100</td>
	<td align=center>0.103000</td>
	<td align=center>0.064600</td>
	<td align=center>0.063200</td>
	<td align=center>2.211900</td>
	<td align=center>969.5208</td>
	<td align=center>0.7302000</td>
	<td align=center>1134.583</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:15</td>
	<td align=center>11.19780</td>
	<td align=center>78.51460</td>
	<td align=center>5.474400</td>
	<td align=center>1.674300</td>
	<td align=center>0.366000</td>
	<td align=center>0.330200</td>
	<td align=center>0.103700</td>
	<td align=center>0.064600</td>
	<td align=center>0.064400</td>
	<td align=center>2.210000</td>
	<td align=center>969.3308</td>
	<td align=center>0.7306000</td>
	<td align=center>1134.050</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:10</td>
	<td align=center>11.14440</td>
	<td align=center>78.61540</td>
	<td align=center>5.444500</td>
	<td align=center>1.661400</td>
	<td align=center>0.363400</td>
	<td align=center>0.326900</td>
	<td align=center>0.102100</td>
	<td align=center>0.064100</td>
	<td align=center>0.062500</td>
	<td align=center>2.215300</td>
	<td align=center>969.1226</td>
	<td align=center>0.7296000</td>
	<td align=center>1134.583</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:05</td>
	<td align=center>11.13910</td>
	<td align=center>78.61370</td>
	<td align=center>5.460400</td>
	<td align=center>1.653300</td>
	<td align=center>0.359700</td>
	<td align=center>0.324700</td>
	<td align=center>0.101700</td>
	<td align=center>0.063400</td>
	<td align=center>0.062900</td>
	<td align=center>2.221200</td>
	<td align=center>968.9609</td>
	<td align=center>0.7295000</td>
	<td align=center>1134.472</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:00</td>
	<td align=center>11.08440</td>
	<td align=center>78.73200</td>
	<td align=center>5.453500</td>
	<td align=center>1.614300</td>
	<td align=center>0.353600</td>
	<td align=center>0.318900</td>
	<td align=center>0.100400</td>
	<td align=center>0.063000</td>
	<td align=center>0.060700</td>
	<td align=center>2.219200</td>
	<td align=center>968.4837</td>
	<td align=center>0.7283000</td>
	<td align=center>1134.847</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:55</td>
	<td align=center>11.05120</td>
	<td align=center>78.81580</td>
	<td align=center>5.427300</td>
	<td align=center>1.595500</td>
	<td align=center>0.347600</td>
	<td align=center>0.313800</td>
	<td align=center>0.099300</td>
	<td align=center>0.061900</td>
	<td align=center>0.060500</td>
	<td align=center>2.227100</td>
	<td align=center>967.9254</td>
	<td align=center>0.7275000</td>
	<td align=center>1134.816</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:50</td>
	<td align=center>11.05620</td>
	<td align=center>78.84370</td>
	<td align=center>5.393500</td>
	<td align=center>1.592700</td>
	<td align=center>0.348900</td>
	<td align=center>0.314700</td>
	<td align=center>0.098300</td>
	<td align=center>0.061500</td>
	<td align=center>0.060300</td>
	<td align=center>2.230200</td>
	<td align=center>967.5388</td>
	<td align=center>0.7274000</td>
	<td align=center>1134.441</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:45</td>
	<td align=center>10.97950</td>
	<td align=center>78.98580</td>
	<td align=center>5.366700</td>
	<td align=center>1.569500</td>
	<td align=center>0.343500</td>
	<td align=center>0.309800</td>
	<td align=center>0.097100</td>
	<td align=center>0.061000</td>
	<td align=center>0.059300</td>
	<td align=center>2.227700</td>
	<td align=center>967.4628</td>
	<td align=center>0.7260000</td>
	<td align=center>1135.445</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:40</td>
	<td align=center>11.00830</td>
	<td align=center>78.90900</td>
	<td align=center>5.396000</td>
	<td align=center>1.579400</td>
	<td align=center>0.346900</td>
	<td align=center>0.313700</td>
	<td align=center>0.097300</td>
	<td align=center>0.060600</td>
	<td align=center>0.060300</td>
	<td align=center>2.228500</td>
	<td align=center>967.7333</td>
	<td align=center>0.7267000</td>
	<td align=center>1135.215</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:35</td>
	<td align=center>10.93390</td>
	<td align=center>78.99440</td>
	<td align=center>5.409400</td>
	<td align=center>1.573300</td>
	<td align=center>0.341800</td>
	<td align=center>0.308200</td>
	<td align=center>0.097700</td>
	<td align=center>0.060900</td>
	<td align=center>0.060500</td>
	<td align=center>2.219900</td>
	<td align=center>968.3741</td>
	<td align=center>0.7258000</td>
	<td align=center>1136.671</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:30</td>
	<td align=center>10.95920</td>
	<td align=center>78.95450</td>
	<td align=center>5.420900</td>
	<td align=center>1.571600</td>
	<td align=center>0.342800</td>
	<td align=center>0.308400</td>
	<td align=center>0.097000</td>
	<td align=center>0.061100</td>
	<td align=center>0.059500</td>
	<td align=center>2.224900</td>
	<td align=center>968.1024</td>
	<td align=center>0.7261000</td>
	<td align=center>1136.117</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:25</td>
	<td align=center>10.96400</td>
	<td align=center>79.02120</td>
	<td align=center>5.366600</td>
	<td align=center>1.563400</td>
	<td align=center>0.340300</td>
	<td align=center>0.307700</td>
	<td align=center>0.096800</td>
	<td align=center>0.060800</td>
	<td align=center>0.059300</td>
	<td align=center>2.219900</td>
	<td align=center>967.4681</td>
	<td align=center>0.7257000</td>
	<td align=center>1135.686</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:20</td>
	<td align=center>10.98330</td>
	<td align=center>79.00630</td>
	<td align=center>5.362500</td>
	<td align=center>1.561000</td>
	<td align=center>0.340300</td>
	<td align=center>0.307800</td>
	<td align=center>0.096800</td>
	<td align=center>0.059500</td>
	<td align=center>0.060300</td>
	<td align=center>2.222100</td>
	<td align=center>967.1828</td>
	<td align=center>0.7259000</td>
	<td align=center>1135.194</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:15</td>
	<td align=center>10.85740</td>
	<td align=center>79.27880</td>
	<td align=center>5.281400</td>
	<td align=center>1.511900</td>
	<td align=center>0.331400</td>
	<td align=center>0.300400</td>
	<td align=center>0.094800</td>
	<td align=center>0.059100</td>
	<td align=center>0.058400</td>
	<td align=center>2.226400</td>
	<td align=center>966.5285</td>
	<td align=center>0.7234000</td>
	<td align=center>1136.385</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:10</td>
	<td align=center>10.88780</td>
	<td align=center>79.21550</td>
	<td align=center>5.308900</td>
	<td align=center>1.516100</td>
	<td align=center>0.330900</td>
	<td align=center>0.298500</td>
	<td align=center>0.095200</td>
	<td align=center>0.059500</td>
	<td align=center>0.058400</td>
	<td align=center>2.229300</td>
	<td align=center>966.4363</td>
	<td align=center>0.7239000</td>
	<td align=center>1135.884</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:05</td>
	<td align=center>10.89720</td>
	<td align=center>79.31990</td>
	<td align=center>5.217000</td>
	<td align=center>1.503100</td>
	<td align=center>0.328100</td>
	<td align=center>0.295500</td>
	<td align=center>0.093200</td>
	<td align=center>0.058200</td>
	<td align=center>0.057500</td>
	<td align=center>2.230400</td>
	<td align=center>965.1586</td>
	<td align=center>0.7233000</td>
	<td align=center>1134.853</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:00</td>
	<td align=center>10.91600</td>
	<td align=center>79.28830</td>
	<td align=center>5.187000</td>
	<td align=center>1.526300</td>
	<td align=center>0.333800</td>
	<td align=center>0.299800</td>
	<td align=center>0.095500</td>
	<td align=center>0.059400</td>
	<td align=center>0.058500</td>
	<td align=center>2.235500</td>
	<td align=center>965.4125</td>
	<td align=center>0.7238000</td>
	<td align=center>1134.759</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:55</td>
	<td align=center>10.87300</td>
	<td align=center>79.46210</td>
	<td align=center>5.089800</td>
	<td align=center>1.493500</td>
	<td align=center>0.326800</td>
	<td align=center>0.294700</td>
	<td align=center>0.092800</td>
	<td align=center>0.057600</td>
	<td align=center>0.058000</td>
	<td align=center>2.251800</td>
	<td align=center>964.0004</td>
	<td align=center>0.7224000</td>
	<td align=center>1134.197</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:50</td>
	<td align=center>10.88070</td>
	<td align=center>79.42220</td>
	<td align=center>5.111600</td>
	<td align=center>1.502700</td>
	<td align=center>0.328600</td>
	<td align=center>0.295600</td>
	<td align=center>0.093500</td>
	<td align=center>0.058600</td>
	<td align=center>0.058700</td>
	<td align=center>2.247800</td>
	<td align=center>964.4158</td>
	<td align=center>0.7227000</td>
	<td align=center>1134.450</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:45</td>
	<td align=center>10.78360</td>
	<td align=center>79.48200</td>
	<td align=center>5.166900</td>
	<td align=center>1.493500</td>
	<td align=center>0.324300</td>
	<td align=center>0.291600</td>
	<td align=center>0.092000</td>
	<td align=center>0.058000</td>
	<td align=center>0.057500</td>
	<td align=center>2.250500</td>
	<td align=center>965.3599</td>
	<td align=center>0.7218000</td>
	<td align=center>1136.268</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:40</td>
	<td align=center>10.76200</td>
	<td align=center>79.53990</td>
	<td align=center>5.135900</td>
	<td align=center>1.480500</td>
	<td align=center>0.319000</td>
	<td align=center>0.287000</td>
	<td align=center>0.092400</td>
	<td align=center>0.057700</td>
	<td align=center>0.057100</td>
	<td align=center>2.268600</td>
	<td align=center>964.7150</td>
	<td align=center>0.7212000</td>
	<td align=center>1135.981</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:35</td>
	<td align=center>10.70890</td>
	<td align=center>79.66370</td>
	<td align=center>5.104000</td>
	<td align=center>1.451500</td>
	<td align=center>0.314400</td>
	<td align=center>0.283200</td>
	<td align=center>0.090900</td>
	<td align=center>0.057500</td>
	<td align=center>0.056500</td>
	<td align=center>2.269400</td>
	<td align=center>964.2967</td>
	<td align=center>0.7201000</td>
	<td align=center>1136.356</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:30</td>
	<td align=center>10.77500</td>
	<td align=center>79.55120</td>
	<td align=center>5.135200</td>
	<td align=center>1.461800</td>
	<td align=center>0.316600</td>
	<td align=center>0.285300</td>
	<td align=center>0.091300</td>
	<td align=center>0.056600</td>
	<td align=center>0.057300</td>
	<td align=center>2.269800</td>
	<td align=center>964.1311</td>
	<td align=center>0.7210000</td>
	<td align=center>1135.451</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:25</td>
	<td align=center>10.79850</td>
	<td align=center>79.56570</td>
	<td align=center>5.109300</td>
	<td align=center>1.466500</td>
	<td align=center>0.318400</td>
	<td align=center>0.287200</td>
	<td align=center>0.091400</td>
	<td align=center>0.056900</td>
	<td align=center>0.057400</td>
	<td align=center>2.248500</td>
	<td align=center>964.0878</td>
	<td align=center>0.7212000</td>
	<td align=center>1135.243</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:20</td>
	<td align=center>10.78100</td>
	<td align=center>79.59090</td>
	<td align=center>5.041200</td>
	<td align=center>1.517600</td>
	<td align=center>0.322600</td>
	<td align=center>0.290200</td>
	<td align=center>0.092700</td>
	<td align=center>0.058400</td>
	<td align=center>0.057500</td>
	<td align=center>2.247900</td>
	<td align=center>964.7770</td>
	<td align=center>0.7213000</td>
	<td align=center>1135.975</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:15</td>
	<td align=center>10.82100</td>
	<td align=center>79.71080</td>
	<td align=center>4.926600</td>
	<td align=center>1.478600</td>
	<td align=center>0.319900</td>
	<td align=center>0.289000</td>
	<td align=center>0.092800</td>
	<td align=center>0.058200</td>
	<td align=center>0.058600</td>
	<td align=center>2.244400</td>
	<td align=center>962.8801</td>
	<td align=center>0.7207000</td>
	<td align=center>1134.214</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:10</td>
	<td align=center>10.82890</td>
	<td align=center>79.68040</td>
	<td align=center>4.938200</td>
	<td align=center>1.486000</td>
	<td align=center>0.321900</td>
	<td align=center>0.291600</td>
	<td align=center>0.092900</td>
	<td align=center>0.058200</td>
	<td align=center>0.058800</td>
	<td align=center>2.243100</td>
	<td align=center>963.1321</td>
	<td align=center>0.7210000</td>
	<td align=center>1134.275</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:05</td>
	<td align=center>10.79150</td>
	<td align=center>79.73640</td>
	<td align=center>4.940600</td>
	<td align=center>1.480000</td>
	<td align=center>0.318700</td>
	<td align=center>0.288800</td>
	<td align=center>0.093100</td>
	<td align=center>0.058200</td>
	<td align=center>0.058800</td>
	<td align=center>2.234000</td>
	<td align=center>963.3973</td>
	<td align=center>0.7205000</td>
	<td align=center>1134.981</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:00</td>
	<td align=center>10.80880</td>
	<td align=center>79.67980</td>
	<td align=center>4.966100</td>
	<td align=center>1.479200</td>
	<td align=center>0.320000</td>
	<td align=center>0.289700</td>
	<td align=center>0.093200</td>
	<td align=center>0.057900</td>
	<td align=center>0.059400</td>
	<td align=center>2.245700</td>
	<td align=center>963.3575</td>
	<td align=center>0.7208000</td>
	<td align=center>1134.698</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:55</td>
	<td align=center>10.83700</td>
	<td align=center>79.66070</td>
	<td align=center>4.949200</td>
	<td align=center>1.486600</td>
	<td align=center>0.322900</td>
	<td align=center>0.292500</td>
	<td align=center>0.092900</td>
	<td align=center>0.058000</td>
	<td align=center>0.059100</td>
	<td align=center>2.241000</td>
	<td align=center>963.2156</td>
	<td align=center>0.7212000</td>
	<td align=center>1134.216</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:50</td>
	<td align=center>10.92410</td>
	<td align=center>79.46810</td>
	<td align=center>5.000400</td>
	<td align=center>1.516000</td>
	<td align=center>0.328800</td>
	<td align=center>0.297000</td>
	<td align=center>0.094500</td>
	<td align=center>0.059400</td>
	<td align=center>0.061000</td>
	<td align=center>2.250700</td>
	<td align=center>963.4711</td>
	<td align=center>0.7228000</td>
	<td align=center>1133.260</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:45</td>
	<td align=center>10.98660</td>
	<td align=center>79.33750</td>
	<td align=center>5.034000</td>
	<td align=center>1.542500</td>
	<td align=center>0.335800</td>
	<td align=center>0.304000</td>
	<td align=center>0.096300</td>
	<td align=center>0.060300</td>
	<td align=center>0.061600</td>
	<td align=center>2.241400</td>
	<td align=center>964.0165</td>
	<td align=center>0.7241000</td>
	<td align=center>1132.883</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:40</td>
	<td align=center>11.08380</td>
	<td align=center>79.10410</td>
	<td align=center>5.089400</td>
	<td align=center>1.598300</td>
	<td align=center>0.348300</td>
	<td align=center>0.314200</td>
	<td align=center>0.100800</td>
	<td align=center>0.063400</td>
	<td align=center>0.065100</td>
	<td align=center>2.232700</td>
	<td align=center>965.2721</td>
	<td align=center>0.7264000</td>
	<td align=center>1132.562</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:35</td>
	<td align=center>11.19940</td>
	<td align=center>78.83770</td>
	<td align=center>5.150300</td>
	<td align=center>1.655600</td>
	<td align=center>0.361500</td>
	<td align=center>0.326700</td>
	<td align=center>0.105200</td>
	<td align=center>0.065900</td>
	<td align=center>0.067800</td>
	<td align=center>2.229800</td>
	<td align=center>966.3707</td>
	<td align=center>0.7289000</td>
	<td align=center>1131.904</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:30</td>
	<td align=center>11.46420</td>
	<td align=center>78.29590</td>
	<td align=center>5.278100</td>
	<td align=center>1.765900</td>
	<td align=center>0.391600</td>
	<td align=center>0.355100</td>
	<td align=center>0.112900</td>
	<td align=center>0.070600</td>
	<td align=center>0.074800</td>
	<td align=center>2.191000</td>
	<td align=center>968.7094</td>
	<td align=center>0.7343000</td>
	<td align=center>1130.464</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:25</td>
	<td align=center>11.54510</td>
	<td align=center>78.08070</td>
	<td align=center>5.349700</td>
	<td align=center>1.822300</td>
	<td align=center>0.403200</td>
	<td align=center>0.366600</td>
	<td align=center>0.116400</td>
	<td align=center>0.072600</td>
	<td align=center>0.080400</td>
	<td align=center>2.163100</td>
	<td align=center>970.4897</td>
	<td align=center>0.7365000</td>
	<td align=center>1130.849</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:20</td>
	<td align=center>11.64860</td>
	<td align=center>77.87310</td>
	<td align=center>5.414500</td>
	<td align=center>1.854500</td>
	<td align=center>0.410600</td>
	<td align=center>0.375200</td>
	<td align=center>0.118400</td>
	<td align=center>0.074900</td>
	<td align=center>0.083100</td>
	<td align=center>2.147100</td>
	<td align=center>971.1886</td>
	<td align=center>0.7384000</td>
	<td align=center>1130.206</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:15</td>
	<td align=center>11.58740</td>
	<td align=center>77.94130</td>
	<td align=center>5.391700</td>
	<td align=center>1.862500</td>
	<td align=center>0.414500</td>
	<td align=center>0.379700</td>
	<td align=center>0.120000</td>
	<td align=center>0.076700</td>
	<td align=center>0.085900</td>
	<td align=center>2.140400</td>
	<td align=center>972.2213</td>
	<td align=center>0.7380000</td>
	<td align=center>1131.715</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:10</td>
	<td align=center>11.58450</td>
	<td align=center>77.95230</td>
	<td align=center>5.401200</td>
	<td align=center>1.863700</td>
	<td align=center>0.410500</td>
	<td align=center>0.375300</td>
	<td align=center>0.120000</td>
	<td align=center>0.076100</td>
	<td align=center>0.086100</td>
	<td align=center>2.130200</td>
	<td align=center>972.2457</td>
	<td align=center>0.7379000</td>
	<td align=center>1131.820</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:05</td>
	<td align=center>11.58610</td>
	<td align=center>77.98630</td>
	<td align=center>5.368900</td>
	<td align=center>1.851400</td>
	<td align=center>0.410700</td>
	<td align=center>0.375900</td>
	<td align=center>0.119700</td>
	<td align=center>0.076100</td>
	<td align=center>0.085300</td>
	<td align=center>2.139600</td>
	<td align=center>971.6761</td>
	<td align=center>0.7377000</td>
	<td align=center>1131.310</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:00</td>
	<td align=center>11.59130</td>
	<td align=center>77.99830</td>
	<td align=center>5.363400</td>
	<td align=center>1.838500</td>
	<td align=center>0.407700</td>
	<td align=center>0.371100</td>
	<td align=center>0.118600</td>
	<td align=center>0.075800</td>
	<td align=center>0.085800</td>
	<td align=center>2.149500</td>
	<td align=center>971.0845</td>
	<td align=center>0.7375000</td>
	<td align=center>1130.775</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:55</td>
	<td align=center>11.61050</td>
	<td align=center>77.96780</td>
	<td align=center>5.369200</td>
	<td align=center>1.842400</td>
	<td align=center>0.407200</td>
	<td align=center>0.371600</td>
	<td align=center>0.118900</td>
	<td align=center>0.075700</td>
	<td align=center>0.085800</td>
	<td align=center>2.150900</td>
	<td align=center>970.9852</td>
	<td align=center>0.7377000</td>
	<td align=center>1130.506</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:50</td>
	<td align=center>11.62030</td>
	<td align=center>77.97620</td>
	<td align=center>5.361600</td>
	<td align=center>1.830400</td>
	<td align=center>0.406300</td>
	<td align=center>0.371600</td>
	<td align=center>0.118600</td>
	<td align=center>0.075300</td>
	<td align=center>0.085100</td>
	<td align=center>2.154600</td>
	<td align=center>970.5389</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.063</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:45</td>
	<td align=center>11.61470</td>
	<td align=center>77.99760</td>
	<td align=center>5.343700</td>
	<td align=center>1.835200</td>
	<td align=center>0.408300</td>
	<td align=center>0.374100</td>
	<td align=center>0.119300</td>
	<td align=center>0.076400</td>
	<td align=center>0.085600</td>
	<td align=center>2.145100</td>
	<td align=center>970.8054</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.373</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:40</td>
	<td align=center>11.64810</td>
	<td align=center>77.92420</td>
	<td align=center>5.375500</td>
	<td align=center>1.847100</td>
	<td align=center>0.410300</td>
	<td align=center>0.375700</td>
	<td align=center>0.119100</td>
	<td align=center>0.075400</td>
	<td align=center>0.084700</td>
	<td align=center>2.140000</td>
	<td align=center>970.9460</td>
	<td align=center>0.7382000</td>
	<td align=center>1130.077</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:35</td>
	<td align=center>11.64310</td>
	<td align=center>77.93740</td>
	<td align=center>5.360000</td>
	<td align=center>1.853200</td>
	<td align=center>0.409400</td>
	<td align=center>0.373400</td>
	<td align=center>0.119200</td>
	<td align=center>0.075600</td>
	<td align=center>0.086200</td>
	<td align=center>2.142500</td>
	<td align=center>970.9460</td>
	<td align=center>0.7381000</td>
	<td align=center>1130.154</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:30</td>
	<td align=center>11.62710</td>
	<td align=center>77.95830</td>
	<td align=center>5.365600</td>
	<td align=center>1.847700</td>
	<td align=center>0.409300</td>
	<td align=center>0.374200</td>
	<td align=center>0.120600</td>
	<td align=center>0.076100</td>
	<td align=center>0.087000</td>
	<td align=center>2.134000</td>
	<td align=center>971.2596</td>
	<td align=center>0.7380000</td>
	<td align=center>1130.595</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:25</td>
	<td align=center>11.68390</td>
	<td align=center>77.83320</td>
	<td align=center>5.392400</td>
	<td align=center>1.876100</td>
	<td align=center>0.417600</td>
	<td align=center>0.380700</td>
	<td align=center>0.122300</td>
	<td align=center>0.077400</td>
	<td align=center>0.087900</td>
	<td align=center>2.128500</td>
	<td align=center>971.8378</td>
	<td align=center>0.7392000</td>
	<td align=center>1130.350</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:20</td>
	<td align=center>11.71080</td>
	<td align=center>77.78590</td>
	<td align=center>5.413400</td>
	<td align=center>1.876900</td>
	<td align=center>0.416700</td>
	<td align=center>0.381200</td>
	<td align=center>0.122000</td>
	<td align=center>0.077500</td>
	<td align=center>0.086300</td>
	<td align=center>2.129100</td>
	<td align=center>971.6617</td>
	<td align=center>0.7395000</td>
	<td align=center>1129.916</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:15</td>
	<td align=center>11.70280</td>
	<td align=center>77.80250</td>
	<td align=center>5.403500</td>
	<td align=center>1.879200</td>
	<td align=center>0.418400</td>
	<td align=center>0.383800</td>
	<td align=center>0.121300</td>
	<td align=center>0.077700</td>
	<td align=center>0.085700</td>
	<td align=center>2.125000</td>
	<td align=center>971.8000</td>
	<td align=center>0.7395000</td>
	<td align=center>1130.076</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:10</td>
	<td align=center>11.68950</td>
	<td align=center>77.79320</td>
	<td align=center>5.408500</td>
	<td align=center>1.893100</td>
	<td align=center>0.420100</td>
	<td align=center>0.383000</td>
	<td align=center>0.123100</td>
	<td align=center>0.078400</td>
	<td align=center>0.087300</td>
	<td align=center>2.123900</td>
	<td align=center>972.3497</td>
	<td align=center>0.7396000</td>
	<td align=center>1130.639</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:05</td>
	<td align=center>11.71130</td>
	<td align=center>77.77670</td>
	<td align=center>5.400300</td>
	<td align=center>1.894000</td>
	<td align=center>0.420300</td>
	<td align=center>0.384700</td>
	<td align=center>0.122100</td>
	<td align=center>0.076900</td>
	<td align=center>0.086000</td>
	<td align=center>2.127700</td>
	<td align=center>971.9633</td>
	<td align=center>0.7397000</td>
	<td align=center>1130.113</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:00</td>
	<td align=center>11.69830</td>
	<td align=center>77.76110</td>
	<td align=center>5.430800</td>
	<td align=center>1.895100</td>
	<td align=center>0.420200</td>
	<td align=center>0.384300</td>
	<td align=center>0.121900</td>
	<td align=center>0.077500</td>
	<td align=center>0.086500</td>
	<td align=center>2.124300</td>
	<td align=center>972.3992</td>
	<td align=center>0.7398000</td>
	<td align=center>1130.544</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:55</td>
	<td align=center>11.69120</td>
	<td align=center>77.78380</td>
	<td align=center>5.418700</td>
	<td align=center>1.891400</td>
	<td align=center>0.419600</td>
	<td align=center>0.383100</td>
	<td align=center>0.122000</td>
	<td align=center>0.077800</td>
	<td align=center>0.085700</td>
	<td align=center>2.126700</td>
	<td align=center>972.2362</td>
	<td align=center>0.7396000</td>
	<td align=center>1130.507</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:50</td>
	<td align=center>11.68360</td>
	<td align=center>77.83390</td>
	<td align=center>5.380700</td>
	<td align=center>1.890600</td>
	<td align=center>0.418600</td>
	<td align=center>0.382400</td>
	<td align=center>0.121400</td>
	<td align=center>0.077500</td>
	<td align=center>0.086200</td>
	<td align=center>2.125100</td>
	<td align=center>971.9789</td>
	<td align=center>0.7393000</td>
	<td align=center>1130.437</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:45</td>
	<td align=center>11.64050</td>
	<td align=center>77.90610</td>
	<td align=center>5.383400</td>
	<td align=center>1.874100</td>
	<td align=center>0.413000</td>
	<td align=center>0.378100</td>
	<td align=center>0.119900</td>
	<td align=center>0.075800</td>
	<td align=center>0.085900</td>
	<td align=center>2.123200</td>
	<td align=center>971.8737</td>
	<td align=center>0.7385000</td>
	<td align=center>1130.927</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:40</td>
	<td align=center>11.72500</td>
	<td align=center>77.83260</td>
	<td align=center>5.384700</td>
	<td align=center>1.866300</td>
	<td align=center>0.412800</td>
	<td align=center>0.377500</td>
	<td align=center>0.121000</td>
	<td align=center>0.077600</td>
	<td align=center>0.087300</td>
	<td align=center>2.115200</td>
	<td align=center>971.1108</td>
	<td align=center>0.7393000</td>
	<td align=center>1129.428</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:35</td>
	<td align=center>11.71940</td>
	<td align=center>77.80760</td>
	<td align=center>5.408100</td>
	<td align=center>1.871500</td>
	<td align=center>0.412800</td>
	<td align=center>0.378900</td>
	<td align=center>0.121300</td>
	<td align=center>0.077500</td>
	<td align=center>0.087200</td>
	<td align=center>2.116600</td>
	<td align=center>971.4457</td>
	<td align=center>0.7394000</td>
	<td align=center>1129.741</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:30</td>
	<td align=center>11.71220</td>
	<td align=center>77.80760</td>
	<td align=center>5.406400</td>
	<td align=center>1.878500</td>
	<td align=center>0.416000</td>
	<td align=center>0.380700</td>
	<td align=center>0.121000</td>
	<td align=center>0.077000</td>
	<td align=center>0.086900</td>
	<td align=center>2.113700</td>
	<td align=center>971.7220</td>
	<td align=center>0.7394000</td>
	<td align=center>1130.062</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:25</td>
	<td align=center>11.61960</td>
	<td align=center>77.98900</td>
	<td align=center>5.364000</td>
	<td align=center>1.846800</td>
	<td align=center>0.409600</td>
	<td align=center>0.375200</td>
	<td align=center>0.117400</td>
	<td align=center>0.074900</td>
	<td align=center>0.085800</td>
	<td align=center>2.117800</td>
	<td align=center>971.3240</td>
	<td align=center>0.7377000</td>
	<td align=center>1130.900</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:20</td>
	<td align=center>11.55510</td>
	<td align=center>78.09510</td>
	<td align=center>5.337100</td>
	<td align=center>1.842200</td>
	<td align=center>0.404000</td>
	<td align=center>0.367900</td>
	<td align=center>0.117100</td>
	<td align=center>0.074300</td>
	<td align=center>0.084800</td>
	<td align=center>2.122600</td>
	<td align=center>971.2903</td>
	<td align=center>0.7367000</td>
	<td align=center>1131.628</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:15</td>
	<td align=center>11.60250</td>
	<td align=center>78.02680</td>
	<td align=center>5.376100</td>
	<td align=center>1.832600</td>
	<td align=center>0.401800</td>
	<td align=center>0.366800</td>
	<td align=center>0.116400</td>
	<td align=center>0.073700</td>
	<td align=center>0.085300</td>
	<td align=center>2.117900</td>
	<td align=center>970.9225</td>
	<td align=center>0.7372000</td>
	<td align=center>1130.816</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:10</td>
	<td align=center>11.61860</td>
	<td align=center>78.07040</td>
	<td align=center>5.336100</td>
	<td align=center>1.809500</td>
	<td align=center>0.398400</td>
	<td align=center>0.364300</td>
	<td align=center>0.115700</td>
	<td align=center>0.074000</td>
	<td align=center>0.086800</td>
	<td align=center>2.126200</td>
	<td align=center>969.9272</td>
	<td align=center>0.7369000</td>
	<td align=center>1129.887</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:05</td>
	<td align=center>11.58810</td>
	<td align=center>78.12840</td>
	<td align=center>5.321500</td>
	<td align=center>1.794300</td>
	<td align=center>0.397700</td>
	<td align=center>0.362800</td>
	<td align=center>0.115500</td>
	<td align=center>0.073400</td>
	<td align=center>0.089300</td>
	<td align=center>2.128900</td>
	<td align=center>969.8830</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.219</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:00</td>
	<td align=center>11.58070</td>
	<td align=center>78.12750</td>
	<td align=center>5.325600</td>
	<td align=center>1.800400</td>
	<td align=center>0.397200</td>
	<td align=center>0.363100</td>
	<td align=center>0.116000</td>
	<td align=center>0.074400</td>
	<td align=center>0.089000</td>
	<td align=center>2.126300</td>
	<td align=center>970.1364</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.514</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:55</td>
	<td align=center>11.59040</td>
	<td align=center>78.11310</td>
	<td align=center>5.337500</td>
	<td align=center>1.789600</td>
	<td align=center>0.394700</td>
	<td align=center>0.358900</td>
	<td align=center>0.116000</td>
	<td align=center>0.075200</td>
	<td align=center>0.088900</td>
	<td align=center>2.135700</td>
	<td align=center>969.7382</td>
	<td align=center>0.7364000</td>
	<td align=center>1130.050</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:50</td>
	<td align=center>11.52270</td>
	<td align=center>78.19420</td>
	<td align=center>5.325000</td>
	<td align=center>1.782700</td>
	<td align=center>0.391900</td>
	<td align=center>0.357500</td>
	<td align=center>0.120400</td>
	<td align=center>0.077600</td>
	<td align=center>0.091000</td>
	<td align=center>2.136900</td>
	<td align=center>970.4037</td>
	<td align=center>0.7358000</td>
	<td align=center>1131.286</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:45</td>
	<td align=center>11.57420</td>
	<td align=center>78.05220</td>
	<td align=center>5.354200</td>
	<td align=center>1.800600</td>
	<td align=center>0.408500</td>
	<td align=center>0.375900</td>
	<td align=center>0.121400</td>
	<td align=center>0.077800</td>
	<td align=center>0.089000</td>
	<td align=center>2.146100</td>
	<td align=center>971.0422</td>
	<td align=center>0.7371000</td>
	<td align=center>1131.032</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:40</td>
	<td align=center>11.55180</td>
	<td align=center>78.13590</td>
	<td align=center>5.334700</td>
	<td align=center>1.791200</td>
	<td align=center>0.397200</td>
	<td align=center>0.362100</td>
	<td align=center>0.117000</td>
	<td align=center>0.074200</td>
	<td align=center>0.089600</td>
	<td align=center>2.146400</td>
	<td align=center>970.1785</td>
	<td align=center>0.7362000</td>
	<td align=center>1130.717</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:35</td>
	<td align=center>11.51300</td>
	<td align=center>78.18880</td>
	<td align=center>5.334200</td>
	<td align=center>1.781700</td>
	<td align=center>0.393700</td>
	<td align=center>0.359000</td>
	<td align=center>0.114600</td>
	<td align=center>0.072400</td>
	<td align=center>0.089200</td>
	<td align=center>2.153500</td>
	<td align=center>970.0583</td>
	<td align=center>0.7356000</td>
	<td align=center>1131.037</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:30</td>
	<td align=center>11.52570</td>
	<td align=center>78.13140</td>
	<td align=center>5.352600</td>
	<td align=center>1.802500</td>
	<td align=center>0.397400</td>
	<td align=center>0.361600</td>
	<td align=center>0.115500</td>
	<td align=center>0.073800</td>
	<td align=center>0.088500</td>
	<td align=center>2.150900</td>
	<td align=center>970.6020</td>
	<td align=center>0.7361000</td>
	<td align=center>1131.287</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:25</td>
	<td align=center>11.57760</td>
	<td align=center>78.08160</td>
	<td align=center>5.360600</td>
	<td align=center>1.796900</td>
	<td align=center>0.394900</td>
	<td align=center>0.359800</td>
	<td align=center>0.116000</td>
	<td align=center>0.073900</td>
	<td align=center>0.086200</td>
	<td align=center>2.152400</td>
	<td align=center>969.8772</td>
	<td align=center>0.7365000</td>
	<td align=center>1130.135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:20</td>
	<td align=center>11.65150</td>
	<td align=center>77.95100</td>
	<td align=center>5.374900</td>
	<td align=center>1.814700</td>
	<td align=center>0.405100</td>
	<td align=center>0.369000</td>
	<td align=center>0.118100</td>
	<td align=center>0.075500</td>
	<td align=center>0.088100</td>
	<td align=center>2.152000</td>
	<td align=center>970.1346</td>
	<td align=center>0.7379000</td>
	<td align=center>1129.362</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:15</td>
	<td align=center>11.68320</td>
	<td align=center>77.85950</td>
	<td align=center>5.409900</td>
	<td align=center>1.825400</td>
	<td align=center>0.406100</td>
	<td align=center>0.369800</td>
	<td align=center>0.120200</td>
	<td align=center>0.077200</td>
	<td align=center>0.089600</td>
	<td align=center>2.159200</td>
	<td align=center>970.3806</td>
	<td align=center>0.7386000</td>
	<td align=center>1129.113</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:10</td>
	<td align=center>11.69920</td>
	<td align=center>77.85170</td>
	<td align=center>5.395600</td>
	<td align=center>1.827500</td>
	<td align=center>0.404900</td>
	<td align=center>0.369200</td>
	<td align=center>0.119600</td>
	<td align=center>0.076800</td>
	<td align=center>0.088800</td>
	<td align=center>2.166500</td>
	<td align=center>969.9713</td>
	<td align=center>0.7387000</td>
	<td align=center>1128.561</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:05</td>
	<td align=center>11.69800</td>
	<td align=center>77.85270</td>
	<td align=center>5.415500</td>
	<td align=center>1.810800</td>
	<td align=center>0.401300</td>
	<td align=center>0.366600</td>
	<td align=center>0.118300</td>
	<td align=center>0.076500</td>
	<td align=center>0.088600</td>
	<td align=center>2.171800</td>
	<td align=center>969.6267</td>
	<td align=center>0.7385000</td>
	<td align=center>1128.312</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:00</td>
	<td align=center>11.64660</td>
	<td align=center>77.91920</td>
	<td align=center>5.410900</td>
	<td align=center>1.802800</td>
	<td align=center>0.397900</td>
	<td align=center>0.366400</td>
	<td align=center>0.121600</td>
	<td align=center>0.075900</td>
	<td align=center>0.077500</td>
	<td align=center>2.181300</td>
	<td align=center>969.4702</td>
	<td align=center>0.7377000</td>
	<td align=center>1128.742</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:55</td>
	<td align=center>11.66080</td>
	<td align=center>77.79920</td>
	<td align=center>5.438600</td>
	<td align=center>1.841000</td>
	<td align=center>0.419400</td>
	<td align=center>0.381600</td>
	<td align=center>0.118500</td>
	<td align=center>0.074400</td>
	<td align=center>0.074900</td>
	<td align=center>2.191600</td>
	<td align=center>970.6147</td>
	<td align=center>0.7387000</td>
	<td align=center>1129.309</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:50</td>
	<td align=center>11.65680</td>
	<td align=center>77.86800</td>
	<td align=center>5.438900</td>
	<td align=center>1.822500</td>
	<td align=center>0.400500</td>
	<td align=center>0.361700</td>
	<td align=center>0.113800</td>
	<td align=center>0.071700</td>
	<td align=center>0.072600</td>
	<td align=center>2.193600</td>
	<td align=center>969.1625</td>
	<td align=center>0.7377000</td>
	<td align=center>1128.383</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:45</td>
	<td align=center>11.71140</td>
	<td align=center>77.83600</td>
	<td align=center>5.427000</td>
	<td align=center>1.813400</td>
	<td align=center>0.398100</td>
	<td align=center>0.361000</td>
	<td align=center>0.113400</td>
	<td align=center>0.070900</td>
	<td align=center>0.073200</td>
	<td align=center>2.195600</td>
	<td align=center>968.2763</td>
	<td align=center>0.7381000</td>
	<td align=center>1127.046</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:40</td>
	<td align=center>11.65520</td>
	<td align=center>77.91450</td>
	<td align=center>5.408000</td>
	<td align=center>1.802900</td>
	<td align=center>0.395700</td>
	<td align=center>0.357500</td>
	<td align=center>0.111900</td>
	<td align=center>0.070600</td>
	<td align=center>0.072500</td>
	<td align=center>2.211200</td>
	<td align=center>968.1678</td>
	<td align=center>0.7373000</td>
	<td align=center>1127.531</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:35</td>
	<td align=center>11.62960</td>
	<td align=center>77.95540</td>
	<td align=center>5.397100</td>
	<td align=center>1.795800</td>
	<td align=center>0.394600</td>
	<td align=center>0.357100</td>
	<td align=center>0.112200</td>
	<td align=center>0.070300</td>
	<td align=center>0.071600</td>
	<td align=center>2.216500</td>
	<td align=center>968.1089</td>
	<td align=center>0.7369000</td>
	<td align=center>1127.768</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:30</td>
	<td align=center>11.54180</td>
	<td align=center>78.11100</td>
	<td align=center>5.359900</td>
	<td align=center>1.768800</td>
	<td align=center>0.388100</td>
	<td align=center>0.351500</td>
	<td align=center>0.110200</td>
	<td align=center>0.069200</td>
	<td align=center>0.070400</td>
	<td align=center>2.229200</td>
	<td align=center>967.7575</td>
	<td align=center>0.7354000</td>
	<td align=center>1128.508</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:25</td>
	<td align=center>11.55960</td>
	<td align=center>78.06950</td>
	<td align=center>5.365100</td>
	<td align=center>1.773200</td>
	<td align=center>0.389500</td>
	<td align=center>0.350900</td>
	<td align=center>0.110900</td>
	<td align=center>0.069300</td>
	<td align=center>0.070900</td>
	<td align=center>2.241000</td>
	<td align=center>967.6241</td>
	<td align=center>0.7357000</td>
	<td align=center>1128.123</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:20</td>
	<td align=center>11.59380</td>
	<td align=center>78.03260</td>
	<td align=center>5.375000</td>
	<td align=center>1.764900</td>
	<td align=center>0.387700</td>
	<td align=center>0.349600</td>
	<td align=center>0.109700</td>
	<td align=center>0.069000</td>
	<td align=center>0.071800</td>
	<td align=center>2.245700</td>
	<td align=center>967.1046</td>
	<td align=center>0.7360000</td>
	<td align=center>1127.287</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:15</td>
	<td align=center>11.56190</td>
	<td align=center>78.08090</td>
	<td align=center>5.362300</td>
	<td align=center>1.757800</td>
	<td align=center>0.386200</td>
	<td align=center>0.349100</td>
	<td align=center>0.111100</td>
	<td align=center>0.069700</td>
	<td align=center>0.072000</td>
	<td align=center>2.249000</td>
	<td align=center>967.2104</td>
	<td align=center>0.7355000</td>
	<td align=center>1127.794</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:10</td>
	<td align=center>11.54250</td>
	<td align=center>78.07100</td>
	<td align=center>5.376100</td>
	<td align=center>1.769200</td>
	<td align=center>0.389900</td>
	<td align=center>0.351900</td>
	<td align=center>0.111900</td>
	<td align=center>0.070100</td>
	<td align=center>0.071200</td>
	<td align=center>2.246200</td>
	<td align=center>967.8679</td>
	<td align=center>0.7356000</td>
	<td align=center>1128.484</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:05</td>
	<td align=center>11.58820</td>
	<td align=center>77.99770</td>
	<td align=center>5.385300</td>
	<td align=center>1.783600</td>
	<td align=center>0.393300</td>
	<td align=center>0.356000</td>
	<td align=center>0.113300</td>
	<td align=center>0.071000</td>
	<td align=center>0.071500</td>
	<td align=center>2.240000</td>
	<td align=center>968.0125</td>
	<td align=center>0.7364000</td>
	<td align=center>1128.039</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:00</td>
	<td align=center>11.52350</td>
	<td align=center>77.98940</td>
	<td align=center>5.415800</td>
	<td align=center>1.790200</td>
	<td align=center>0.400000</td>
	<td align=center>0.363400</td>
	<td align=center>0.116800</td>
	<td align=center>0.073600</td>
	<td align=center>0.079700</td>
	<td align=center>2.247600</td>
	<td align=center>969.7370</td>
	<td align=center>0.7365000</td>
	<td align=center>1129.972</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:55</td>
	<td align=center>11.56990</td>
	<td align=center>77.86530</td>
	<td align=center>5.446800</td>
	<td align=center>1.814400</td>
	<td align=center>0.403200</td>
	<td align=center>0.366600</td>
	<td align=center>0.117900</td>
	<td align=center>0.074900</td>
	<td align=center>0.080600</td>
	<td align=center>2.260600</td>
	<td align=center>969.9937</td>
	<td align=center>0.7376000</td>
	<td align=center>1129.428</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:50</td>
	<td align=center>11.51550</td>
	<td align=center>77.91420</td>
	<td align=center>5.457600</td>
	<td align=center>1.798400</td>
	<td align=center>0.401800</td>
	<td align=center>0.363300</td>
	<td align=center>0.116900</td>
	<td align=center>0.073700</td>
	<td align=center>0.079400</td>
	<td align=center>2.279200</td>
	<td align=center>969.9756</td>
	<td align=center>0.7369000</td>
	<td align=center>1129.943</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:45</td>
	<td align=center>11.54410</td>
	<td align=center>77.78700</td>
	<td align=center>5.526300</td>
	<td align=center>1.819300</td>
	<td align=center>0.401900</td>
	<td align=center>0.364600</td>
	<td align=center>0.115800</td>
	<td align=center>0.072900</td>
	<td align=center>0.079000</td>
	<td align=center>2.289000</td>
	<td align=center>970.3958</td>
	<td align=center>0.7377000</td>
	<td align=center>1129.819</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:40</td>
	<td align=center>11.57320</td>
	<td align=center>77.74890</td>
	<td align=center>5.524900</td>
	<td align=center>1.823900</td>
	<td align=center>0.402600</td>
	<td align=center>0.364400</td>
	<td align=center>0.116400</td>
	<td align=center>0.073400</td>
	<td align=center>0.080900</td>
	<td align=center>2.291800</td>
	<td align=center>970.2436</td>
	<td align=center>0.7381000</td>
	<td align=center>1129.336</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:35</td>
	<td align=center>11.56830</td>
	<td align=center>77.77330</td>
	<td align=center>5.496600</td>
	<td align=center>1.823800</td>
	<td align=center>0.404000</td>
	<td align=center>0.366300</td>
	<td align=center>0.117300</td>
	<td align=center>0.074400</td>
	<td align=center>0.079800</td>
	<td align=center>2.296300</td>
	<td align=center>970.1180</td>
	<td align=center>0.7380000</td>
	<td align=center>1129.266</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:30</td>
	<td align=center>11.56170</td>
	<td align=center>77.78000</td>
	<td align=center>5.510600</td>
	<td align=center>1.826100</td>
	<td align=center>0.403000</td>
	<td align=center>0.364700</td>
	<td align=center>0.115900</td>
	<td align=center>0.072900</td>
	<td align=center>0.079200</td>
	<td align=center>2.286000</td>
	<td align=center>970.2650</td>
	<td align=center>0.7379000</td>
	<td align=center>1129.514</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:25</td>
	<td align=center>11.58850</td>
	<td align=center>77.74010</td>
	<td align=center>5.518200</td>
	<td align=center>1.819100</td>
	<td align=center>0.399800</td>
	<td align=center>0.363000</td>
	<td align=center>0.115900</td>
	<td align=center>0.073400</td>
	<td align=center>0.079100</td>
	<td align=center>2.302900</td>
	<td align=center>969.6761</td>
	<td align=center>0.7381000</td>
	<td align=center>1128.676</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:20</td>
	<td align=center>11.63310</td>
	<td align=center>77.69020</td>
	<td align=center>5.519500</td>
	<td align=center>1.823400</td>
	<td align=center>0.401900</td>
	<td align=center>0.363300</td>
	<td align=center>0.115900</td>
	<td align=center>0.073300</td>
	<td align=center>0.080000</td>
	<td align=center>2.299400</td>
	<td align=center>969.4181</td>
	<td align=center>0.7387000</td>
	<td align=center>1127.917</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:15</td>
	<td align=center>11.60910</td>
	<td align=center>77.71410</td>
	<td align=center>5.529900</td>
	<td align=center>1.804800</td>
	<td align=center>0.397400</td>
	<td align=center>0.359700</td>
	<td align=center>0.113900</td>
	<td align=center>0.071500</td>
	<td align=center>0.078000</td>
	<td align=center>2.321700</td>
	<td align=center>968.8559</td>
	<td align=center>0.7381000</td>
	<td align=center>1127.721</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:10</td>
	<td align=center>11.58070</td>
	<td align=center>77.69710</td>
	<td align=center>5.542100</td>
	<td align=center>1.819900</td>
	<td align=center>0.400700</td>
	<td align=center>0.363800</td>
	<td align=center>0.117000</td>
	<td align=center>0.074500</td>
	<td align=center>0.082100</td>
	<td align=center>2.322100</td>
	<td align=center>969.9720</td>
	<td align=center>0.7384000</td>
	<td align=center>1128.791</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:05</td>
	<td align=center>11.56270</td>
	<td align=center>77.72310</td>
	<td align=center>5.542800</td>
	<td align=center>1.813300</td>
	<td align=center>0.398300</td>
	<td align=center>0.362600</td>
	<td align=center>0.116000</td>
	<td align=center>0.074200</td>
	<td align=center>0.081100</td>
	<td align=center>2.325800</td>
	<td align=center>969.8650</td>
	<td align=center>0.7381000</td>
	<td align=center>1128.895</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:00</td>
	<td align=center>11.56190</td>
	<td align=center>77.74200</td>
	<td align=center>5.519500</td>
	<td align=center>1.812500</td>
	<td align=center>0.399700</td>
	<td align=center>0.363400</td>
	<td align=center>0.116900</td>
	<td align=center>0.073100</td>
	<td align=center>0.080900</td>
	<td align=center>2.330100</td>
	<td align=center>969.6714</td>
	<td align=center>0.7380000</td>
	<td align=center>1128.746</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:55</td>
	<td align=center>11.56720</td>
	<td align=center>77.71610</td>
	<td align=center>5.555000</td>
	<td align=center>1.812700</td>
	<td align=center>0.398400</td>
	<td align=center>0.362700</td>
	<td align=center>0.116400</td>
	<td align=center>0.073600</td>
	<td align=center>0.081100</td>
	<td align=center>2.316800</td>
	<td align=center>969.9921</td>
	<td align=center>0.7381000</td>
	<td align=center>1129.043</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:50</td>
	<td align=center>11.58780</td>
	<td align=center>77.66500</td>
	<td align=center>5.580700</td>
	<td align=center>1.821600</td>
	<td align=center>0.400800</td>
	<td align=center>0.363100</td>
	<td align=center>0.117000</td>
	<td align=center>0.073500</td>
	<td align=center>0.081100</td>
	<td align=center>2.309400</td>
	<td align=center>970.2738</td>
	<td align=center>0.7386000</td>
	<td align=center>1128.989</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:45</td>
	<td align=center>11.62480</td>
	<td align=center>77.68910</td>
	<td align=center>5.534000</td>
	<td align=center>1.816000</td>
	<td align=center>0.400500</td>
	<td align=center>0.363500</td>
	<td align=center>0.117100</td>
	<td align=center>0.073800</td>
	<td align=center>0.080300</td>
	<td align=center>2.301000</td>
	<td align=center>969.5186</td>
	<td align=center>0.7386000</td>
	<td align=center>1128.110</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:40</td>
	<td align=center>11.62030</td>
	<td align=center>77.71130</td>
	<td align=center>5.527500</td>
	<td align=center>1.811300</td>
	<td align=center>0.398300</td>
	<td align=center>0.362000</td>
	<td align=center>0.116200</td>
	<td align=center>0.073100</td>
	<td align=center>0.080500</td>
	<td align=center>2.299400</td>
	<td align=center>969.3373</td>
	<td align=center>0.7384000</td>
	<td align=center>1128.052</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:35</td>
	<td align=center>11.59960</td>
	<td align=center>77.72830</td>
	<td align=center>5.535000</td>
	<td align=center>1.807900</td>
	<td align=center>0.398000</td>
	<td align=center>0.361800</td>
	<td align=center>0.116300</td>
	<td align=center>0.073200</td>
	<td align=center>0.080500</td>
	<td align=center>2.299300</td>
	<td align=center>969.5490</td>
	<td align=center>0.7382000</td>
	<td align=center>1128.451</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:30</td>
	<td align=center>11.52000</td>
	<td align=center>77.83350</td>
	<td align=center>5.519700</td>
	<td align=center>1.794200</td>
	<td align=center>0.396400</td>
	<td align=center>0.359400</td>
	<td align=center>0.115800</td>
	<td align=center>0.073100</td>
	<td align=center>0.081100</td>
	<td align=center>2.306700</td>
	<td align=center>969.8661</td>
	<td align=center>0.7372000</td>
	<td align=center>1129.586</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:25</td>
	<td align=center>11.55350</td>
	<td align=center>77.73690</td>
	<td align=center>5.565400</td>
	<td align=center>1.803100</td>
	<td align=center>0.398300</td>
	<td align=center>0.361100</td>
	<td align=center>0.115700</td>
	<td align=center>0.073300</td>
	<td align=center>0.081500</td>
	<td align=center>2.311200</td>
	<td align=center>970.0657</td>
	<td align=center>0.7379000</td>
	<td align=center>1129.282</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:20</td>
	<td align=center>11.52860</td>
	<td align=center>77.74890</td>
	<td align=center>5.584200</td>
	<td align=center>1.794000</td>
	<td align=center>0.397300</td>
	<td align=center>0.361500</td>
	<td align=center>0.115700</td>
	<td align=center>0.073300</td>
	<td align=center>0.082000</td>
	<td align=center>2.314500</td>
	<td align=center>970.2990</td>
	<td align=center>0.7377000</td>
	<td align=center>1129.707</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:15</td>
	<td align=center>11.53720</td>
	<td align=center>77.73100</td>
	<td align=center>5.580900</td>
	<td align=center>1.801300</td>
	<td align=center>0.400000</td>
	<td align=center>0.363300</td>
	<td align=center>0.116100</td>
	<td align=center>0.073300</td>
	<td align=center>0.080500</td>
	<td align=center>2.316400</td>
	<td align=center>970.3345</td>
	<td align=center>0.7379000</td>
	<td align=center>1129.595</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:10</td>
	<td align=center>11.52640</td>
	<td align=center>77.75320</td>
	<td align=center>5.577600</td>
	<td align=center>1.793100</td>
	<td align=center>0.395000</td>
	<td align=center>0.359400</td>
	<td align=center>0.117300</td>
	<td align=center>0.074400</td>
	<td align=center>0.081500</td>
	<td align=center>2.322200</td>
	<td align=center>970.1404</td>
	<td align=center>0.7376000</td>
	<td align=center>1129.599</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:05</td>
	<td align=center>11.53660</td>
	<td align=center>77.66910</td>
	<td align=center>5.631700</td>
	<td align=center>1.797500</td>
	<td align=center>0.399100</td>
	<td align=center>0.364300</td>
	<td align=center>0.116600</td>
	<td align=center>0.073000</td>
	<td align=center>0.081500</td>
	<td align=center>2.330600</td>
	<td align=center>970.5746</td>
	<td align=center>0.7382000</td>
	<td align=center>1129.645</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:00</td>
	<td align=center>11.55000</td>
	<td align=center>77.66300</td>
	<td align=center>5.614800</td>
	<td align=center>1.808400</td>
	<td align=center>0.402200</td>
	<td align=center>0.364700</td>
	<td align=center>0.116500</td>
	<td align=center>0.073500</td>
	<td align=center>0.081300</td>
	<td align=center>2.325700</td>
	<td align=center>970.6083</td>
	<td align=center>0.7384000</td>
	<td align=center>1129.531</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:55</td>
	<td align=center>11.57290</td>
	<td align=center>77.61950</td>
	<td align=center>5.642100</td>
	<td align=center>1.804400</td>
	<td align=center>0.398800</td>
	<td align=center>0.361400</td>
	<td align=center>0.116200</td>
	<td align=center>0.073400</td>
	<td align=center>0.080600</td>
	<td align=center>2.330700</td>
	<td align=center>970.2859</td>
	<td align=center>0.7386000</td>
	<td align=center>1129.003</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:50</td>
	<td align=center>11.54900</td>
	<td align=center>77.70110</td>
	<td align=center>5.614000</td>
	<td align=center>1.782400</td>
	<td align=center>0.399400</td>
	<td align=center>0.362000</td>
	<td align=center>0.115200</td>
	<td align=center>0.073200</td>
	<td align=center>0.081900</td>
	<td align=center>2.321700</td>
	<td align=center>970.1116</td>
	<td align=center>0.7380000</td>
	<td align=center>1129.259</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:45</td>
	<td align=center>11.54940</td>
	<td align=center>77.72120</td>
	<td align=center>5.616800</td>
	<td align=center>1.773700</td>
	<td align=center>0.396600</td>
	<td align=center>0.359300</td>
	<td align=center>0.114300</td>
	<td align=center>0.072600</td>
	<td align=center>0.080700</td>
	<td align=center>2.315400</td>
	<td align=center>969.8372</td>
	<td align=center>0.7377000</td>
	<td align=center>1129.169</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:40</td>
	<td align=center>11.53560</td>
	<td align=center>77.73500</td>
	<td align=center>5.609900</td>
	<td align=center>1.777800</td>
	<td align=center>0.397300</td>
	<td align=center>0.359000</td>
	<td align=center>0.115200</td>
	<td align=center>0.072900</td>
	<td align=center>0.080000</td>
	<td align=center>2.317100</td>
	<td align=center>969.9926</td>
	<td align=center>0.7376000</td>
	<td align=center>1129.426</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:35</td>
	<td align=center>11.50930</td>
	<td align=center>77.75590</td>
	<td align=center>5.622300</td>
	<td align=center>1.775700</td>
	<td align=center>0.396100</td>
	<td align=center>0.358400</td>
	<td align=center>0.115200</td>
	<td align=center>0.072500</td>
	<td align=center>0.080600</td>
	<td align=center>2.314100</td>
	<td align=center>970.3179</td>
	<td align=center>0.7374000</td>
	<td align=center>1129.958</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:30</td>
	<td align=center>11.50680</td>
	<td align=center>77.71680</td>
	<td align=center>5.652200</td>
	<td align=center>1.784600</td>
	<td align=center>0.397100</td>
	<td align=center>0.360000</td>
	<td align=center>0.115100</td>
	<td align=center>0.072500</td>
	<td align=center>0.079700</td>
	<td align=center>2.315300</td>
	<td align=center>970.7203</td>
	<td align=center>0.7376000</td>
	<td align=center>1130.274</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:25</td>
	<td align=center>11.50240</td>
	<td align=center>77.80970</td>
	<td align=center>5.577100</td>
	<td align=center>1.771200</td>
	<td align=center>0.397500</td>
	<td align=center>0.359700</td>
	<td align=center>0.115300</td>
	<td align=center>0.073300</td>
	<td align=center>0.079700</td>
	<td align=center>2.313900</td>
	<td align=center>970.0341</td>
	<td align=center>0.7371000</td>
	<td align=center>1129.858</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:20</td>
	<td align=center>11.47730</td>
	<td align=center>77.86210</td>
	<td align=center>5.544000</td>
	<td align=center>1.779500</td>
	<td align=center>0.399000</td>
	<td align=center>0.361800</td>
	<td align=center>0.115700</td>
	<td align=center>0.073500</td>
	<td align=center>0.079900</td>
	<td align=center>2.307000</td>
	<td align=center>970.3366</td>
	<td align=center>0.7368000</td>
	<td align=center>1130.440</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:15</td>
	<td align=center>11.56090</td>
	<td align=center>77.70220</td>
	<td align=center>5.592900</td>
	<td align=center>1.795500</td>
	<td align=center>0.403600</td>
	<td align=center>0.365600</td>
	<td align=center>0.117000</td>
	<td align=center>0.074000</td>
	<td align=center>0.079800</td>
	<td align=center>2.308500</td>
	<td align=center>970.3366</td>
	<td align=center>0.7382000</td>
	<td align=center>1129.368</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:10</td>
	<td align=center>11.63200</td>
	<td align=center>77.59160</td>
	<td align=center>5.579100</td>
	<td align=center>1.832400</td>
	<td align=center>0.413200</td>
	<td align=center>0.372400</td>
	<td align=center>0.119000</td>
	<td align=center>0.075500</td>
	<td align=center>0.082800</td>
	<td align=center>2.302000</td>
	<td align=center>970.7293</td>
	<td align=center>0.7395000</td>
	<td align=center>1128.831</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:05</td>
	<td align=center>11.66740</td>
	<td align=center>77.52570</td>
	<td align=center>5.606600</td>
	<td align=center>1.838700</td>
	<td align=center>0.414000</td>
	<td align=center>0.373600</td>
	<td align=center>0.119300</td>
	<td align=center>0.075500</td>
	<td align=center>0.083000</td>
	<td align=center>2.296100</td>
	<td align=center>970.8015</td>
	<td align=center>0.7401000</td>
	<td align=center>1128.458</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:00</td>
	<td align=center>11.69650</td>
	<td align=center>77.45720</td>
	<td align=center>5.608800</td>
	<td align=center>1.848300</td>
	<td align=center>0.419100</td>
	<td align=center>0.377400</td>
	<td align=center>0.121400</td>
	<td align=center>0.076800</td>
	<td align=center>0.086600</td>
	<td align=center>2.308000</td>
	<td align=center>970.9874</td>
	<td align=center>0.7408000</td>
	<td align=center>1128.140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:55</td>
	<td align=center>11.68780</td>
	<td align=center>77.45450</td>
	<td align=center>5.614200</td>
	<td align=center>1.858800</td>
	<td align=center>0.419400</td>
	<td align=center>0.378800</td>
	<td align=center>0.122500</td>
	<td align=center>0.077200</td>
	<td align=center>0.086800</td>
	<td align=center>2.299900</td>
	<td align=center>971.4535</td>
	<td align=center>0.7409000</td>
	<td align=center>1128.606</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:50</td>
	<td align=center>11.63380</td>
	<td align=center>77.51650</td>
	<td align=center>5.610700</td>
	<td align=center>1.854400</td>
	<td align=center>0.418800</td>
	<td align=center>0.378700</td>
	<td align=center>0.121500</td>
	<td align=center>0.077500</td>
	<td align=center>0.086900</td>
	<td align=center>2.301200</td>
	<td align=center>971.8571</td>
	<td align=center>0.7403000</td>
	<td align=center>1129.532</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:45</td>
	<td align=center>11.53690</td>
	<td align=center>77.67110</td>
	<td align=center>5.591300</td>
	<td align=center>1.825700</td>
	<td align=center>0.411400</td>
	<td align=center>0.373200</td>
	<td align=center>0.120500</td>
	<td align=center>0.077300</td>
	<td align=center>0.085700</td>
	<td align=center>2.306900</td>
	<td align=center>971.8191</td>
	<td align=center>0.7387000</td>
	<td align=center>1130.710</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:40</td>
	<td align=center>11.37860</td>
	<td align=center>77.98700</td>
	<td align=center>5.526200</td>
	<td align=center>1.766900</td>
	<td align=center>0.398200</td>
	<td align=center>0.360600</td>
	<td align=center>0.115300</td>
	<td align=center>0.073800</td>
	<td align=center>0.082100</td>
	<td align=center>2.311300</td>
	<td align=center>970.9990</td>
	<td align=center>0.7357000</td>
	<td align=center>1132.057</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:35</td>
	<td align=center>11.29560</td>
	<td align=center>78.15310</td>
	<td align=center>5.490500</td>
	<td align=center>1.734600</td>
	<td align=center>0.388400</td>
	<td align=center>0.352700</td>
	<td align=center>0.114100</td>
	<td align=center>0.072800</td>
	<td align=center>0.080800</td>
	<td align=center>2.317500</td>
	<td align=center>970.4885</td>
	<td align=center>0.7341000</td>
	<td align=center>1132.694</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:30</td>
	<td align=center>11.26310</td>
	<td align=center>78.15760</td>
	<td align=center>5.547900</td>
	<td align=center>1.719700</td>
	<td align=center>0.383800</td>
	<td align=center>0.348900</td>
	<td align=center>0.112800</td>
	<td align=center>0.071800</td>
	<td align=center>0.080800</td>
	<td align=center>2.313500</td>
	<td align=center>970.8136</td>
	<td align=center>0.7337000</td>
	<td align=center>1133.383</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:25</td>
	<td align=center>11.31180</td>
	<td align=center>78.09060</td>
	<td align=center>5.550700</td>
	<td align=center>1.723600</td>
	<td align=center>0.384700</td>
	<td align=center>0.348700</td>
	<td align=center>0.113300</td>
	<td align=center>0.072700</td>
	<td align=center>0.081700</td>
	<td align=center>2.322100</td>
	<td align=center>970.4088</td>
	<td align=center>0.7343000</td>
	<td align=center>1132.447</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:20</td>
	<td align=center>11.32150</td>
	<td align=center>78.02180</td>
	<td align=center>5.579100</td>
	<td align=center>1.732900</td>
	<td align=center>0.389400</td>
	<td align=center>0.353900</td>
	<td align=center>0.115800</td>
	<td align=center>0.074000</td>
	<td align=center>0.081400</td>
	<td align=center>2.330300</td>
	<td align=center>970.9130</td>
	<td align=center>0.7349000</td>
	<td align=center>1132.573</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:15</td>
	<td align=center>11.31970</td>
	<td align=center>78.00460</td>
	<td align=center>5.573200</td>
	<td align=center>1.752800</td>
	<td align=center>0.394200</td>
	<td align=center>0.356900</td>
	<td align=center>0.115700</td>
	<td align=center>0.073400</td>
	<td align=center>0.082400</td>
	<td align=center>2.327200</td>
	<td align=center>971.4161</td>
	<td align=center>0.7352000</td>
	<td align=center>1132.929</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:10</td>
	<td align=center>11.37440</td>
	<td align=center>77.84690</td>
	<td align=center>5.619800</td>
	<td align=center>1.791600</td>
	<td align=center>0.403100</td>
	<td align=center>0.365000</td>
	<td align=center>0.118000</td>
	<td align=center>0.074800</td>
	<td align=center>0.083300</td>
	<td align=center>2.323200</td>
	<td align=center>972.3836</td>
	<td align=center>0.7366000</td>
	<td align=center>1132.979</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:05</td>
	<td align=center>11.47060</td>
	<td align=center>77.67800</td>
	<td align=center>5.645800</td>
	<td align=center>1.830700</td>
	<td align=center>0.412200</td>
	<td align=center>0.374000</td>
	<td align=center>0.119900</td>
	<td align=center>0.075500</td>
	<td align=center>0.084700</td>
	<td align=center>2.308500</td>
	<td align=center>972.9019</td>
	<td align=center>0.7384000</td>
	<td align=center>1132.200</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:00</td>
	<td align=center>11.55130</td>
	<td align=center>77.47650</td>
	<td align=center>5.722100</td>
	<td align=center>1.867900</td>
	<td align=center>0.420000</td>
	<td align=center>0.379900</td>
	<td align=center>0.121200</td>
	<td align=center>0.076800</td>
	<td align=center>0.087000</td>
	<td align=center>2.297300</td>
	<td align=center>973.8215</td>
	<td align=center>0.7401000</td>
	<td align=center>1131.968</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:55</td>
	<td align=center>11.60370</td>
	<td align=center>77.40120</td>
	<td align=center>5.725100</td>
	<td align=center>1.878500</td>
	<td align=center>0.421900</td>
	<td align=center>0.382100</td>
	<td align=center>0.123000</td>
	<td align=center>0.077900</td>
	<td align=center>0.087600</td>
	<td align=center>2.299100</td>
	<td align=center>973.6646</td>
	<td align=center>0.7409000</td>
	<td align=center>1131.174</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:50</td>
	<td align=center>11.62130</td>
	<td align=center>77.34770</td>
	<td align=center>5.730400</td>
	<td align=center>1.898000</td>
	<td align=center>0.428400</td>
	<td align=center>0.387200</td>
	<td align=center>0.123600</td>
	<td align=center>0.077800</td>
	<td align=center>0.088200</td>
	<td align=center>2.297400</td>
	<td align=center>974.1402</td>
	<td align=center>0.7415000</td>
	<td align=center>1131.269</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:45</td>
	<td align=center>11.64350</td>
	<td align=center>77.35640</td>
	<td align=center>5.690900</td>
	<td align=center>1.896000</td>
	<td align=center>0.427300</td>
	<td align=center>0.386400</td>
	<td align=center>0.124300</td>
	<td align=center>0.078400</td>
	<td align=center>0.088900</td>
	<td align=center>2.307900</td>
	<td align=center>973.4985</td>
	<td align=center>0.7415000</td>
	<td align=center>1130.524</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:40</td>
	<td align=center>11.68320</td>
	<td align=center>77.25950</td>
	<td align=center>5.724300</td>
	<td align=center>1.910300</td>
	<td align=center>0.431300</td>
	<td align=center>0.389500</td>
	<td align=center>0.124500</td>
	<td align=center>0.078500</td>
	<td align=center>0.089400</td>
	<td align=center>2.309500</td>
	<td align=center>973.7439</td>
	<td align=center>0.7424000</td>
	<td align=center>1130.123</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:35</td>
	<td align=center>11.67180</td>
	<td align=center>77.26670</td>
	<td align=center>5.714500</td>
	<td align=center>1.919700</td>
	<td align=center>0.432000</td>
	<td align=center>0.389700</td>
	<td align=center>0.124900</td>
	<td align=center>0.080000</td>
	<td align=center>0.089800</td>
	<td align=center>2.310900</td>
	<td align=center>974.0076</td>
	<td align=center>0.7424000</td>
	<td align=center>1130.429</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:30</td>
	<td align=center>11.67980</td>
	<td align=center>77.24350</td>
	<td align=center>5.721000</td>
	<td align=center>1.921800</td>
	<td align=center>0.433300</td>
	<td align=center>0.391600</td>
	<td align=center>0.126100</td>
	<td align=center>0.080000</td>
	<td align=center>0.090300</td>
	<td align=center>2.312600</td>
	<td align=center>974.1154</td>
	<td align=center>0.7426000</td>
	<td align=center>1130.402</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:25</td>
	<td align=center>11.64920</td>
	<td align=center>77.28920</td>
	<td align=center>5.701600</td>
	<td align=center>1.929300</td>
	<td align=center>0.435200</td>
	<td align=center>0.393700</td>
	<td align=center>0.125300</td>
	<td align=center>0.079000</td>
	<td align=center>0.089800</td>
	<td align=center>2.307600</td>
	<td align=center>974.4625</td>
	<td align=center>0.7422000</td>
	<td align=center>1131.109</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:20</td>
	<td align=center>11.70030</td>
	<td align=center>77.20160</td>
	<td align=center>5.731300</td>
	<td align=center>1.933000</td>
	<td align=center>0.436700</td>
	<td align=center>0.394800</td>
	<td align=center>0.126000</td>
	<td align=center>0.079700</td>
	<td align=center>0.089100</td>
	<td align=center>2.307500</td>
	<td align=center>974.3019</td>
	<td align=center>0.7430000</td>
	<td align=center>1130.314</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:15</td>
	<td align=center>11.69370</td>
	<td align=center>77.20380</td>
	<td align=center>5.719700</td>
	<td align=center>1.948000</td>
	<td align=center>0.437700</td>
	<td align=center>0.396100</td>
	<td align=center>0.126900</td>
	<td align=center>0.079900</td>
	<td align=center>0.089700</td>
	<td align=center>2.304400</td>
	<td align=center>974.6507</td>
	<td align=center>0.7431000</td>
	<td align=center>1130.643</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:10</td>
	<td align=center>11.72420</td>
	<td align=center>77.13980</td>
	<td align=center>5.754700</td>
	<td align=center>1.957000</td>
	<td align=center>0.439400</td>
	<td align=center>0.397900</td>
	<td align=center>0.126800</td>
	<td align=center>0.080800</td>
	<td align=center>0.090400</td>
	<td align=center>2.288800</td>
	<td align=center>975.0395</td>
	<td align=center>0.7436000</td>
	<td align=center>1130.713</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:05</td>
	<td align=center>11.77360</td>
	<td align=center>77.07430</td>
	<td align=center>5.756800</td>
	<td align=center>1.966000</td>
	<td align=center>0.442200</td>
	<td align=center>0.399300</td>
	<td align=center>0.128600</td>
	<td align=center>0.080800</td>
	<td align=center>0.091000</td>
	<td align=center>2.287400</td>
	<td align=center>974.8771</td>
	<td align=center>0.7443000</td>
	<td align=center>1129.993</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:00</td>
	<td align=center>11.77010</td>
	<td align=center>77.10210</td>
	<td align=center>5.746700</td>
	<td align=center>1.960300</td>
	<td align=center>0.441500</td>
	<td align=center>0.398800</td>
	<td align=center>0.126000</td>
	<td align=center>0.079400</td>
	<td align=center>0.087600</td>
	<td align=center>2.287500</td>
	<td align=center>974.4697</td>
	<td align=center>0.7440000</td>
	<td align=center>1129.749</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:55</td>
	<td align=center>11.75390</td>
	<td align=center>77.12360</td>
	<td align=center>5.748900</td>
	<td align=center>1.960000</td>
	<td align=center>0.439500</td>
	<td align=center>0.395800</td>
	<td align=center>0.126600</td>
	<td align=center>0.080200</td>
	<td align=center>0.088000</td>
	<td align=center>2.283500</td>
	<td align=center>974.6268</td>
	<td align=center>0.7438000</td>
	<td align=center>1130.083</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:50</td>
	<td align=center>11.71450</td>
	<td align=center>77.17520</td>
	<td align=center>5.761700</td>
	<td align=center>1.934200</td>
	<td align=center>0.433400</td>
	<td align=center>0.392600</td>
	<td align=center>0.124800</td>
	<td align=center>0.079800</td>
	<td align=center>0.087500</td>
	<td align=center>2.296300</td>
	<td align=center>974.3057</td>
	<td align=center>0.7431000</td>
	<td align=center>1130.242</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:45</td>
	<td align=center>11.67370</td>
	<td align=center>77.26830</td>
	<td align=center>5.730600</td>
	<td align=center>1.919800</td>
	<td align=center>0.431100</td>
	<td align=center>0.389700</td>
	<td align=center>0.123900</td>
	<td align=center>0.078200</td>
	<td align=center>0.086300</td>
	<td align=center>2.298300</td>
	<td align=center>974.0009</td>
	<td align=center>0.7422000</td>
	<td align=center>1130.574</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:40</td>
	<td align=center>11.65460</td>
	<td align=center>77.29570</td>
	<td align=center>5.715200</td>
	<td align=center>1.919100</td>
	<td align=center>0.429800</td>
	<td align=center>0.387800</td>
	<td align=center>0.124200</td>
	<td align=center>0.078000</td>
	<td align=center>0.085800</td>
	<td align=center>2.309700</td>
	<td align=center>973.8621</td>
	<td align=center>0.7420000</td>
	<td align=center>1130.565</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:35</td>
	<td align=center>11.65040</td>
	<td align=center>77.30330</td>
	<td align=center>5.725000</td>
	<td align=center>1.910000</td>
	<td align=center>0.426100</td>
	<td align=center>0.384800</td>
	<td align=center>0.122000</td>
	<td align=center>0.076900</td>
	<td align=center>0.084700</td>
	<td align=center>2.317400</td>
	<td align=center>973.4696</td>
	<td align=center>0.7417000</td>
	<td align=center>1130.338</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:30</td>
	<td align=center>11.66880</td>
	<td align=center>77.30330</td>
	<td align=center>5.705300</td>
	<td align=center>1.907800</td>
	<td align=center>0.425600</td>
	<td align=center>0.384300</td>
	<td align=center>0.122900</td>
	<td align=center>0.077300</td>
	<td align=center>0.085100</td>
	<td align=center>2.319700</td>
	<td align=center>973.1053</td>
	<td align=center>0.7418000</td>
	<td align=center>1129.839</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:25</td>
	<td align=center>11.67030</td>
	<td align=center>77.27480</td>
	<td align=center>5.727000</td>
	<td align=center>1.908800</td>
	<td align=center>0.427300</td>
	<td align=center>0.386100</td>
	<td align=center>0.123300</td>
	<td align=center>0.077900</td>
	<td align=center>0.085300</td>
	<td align=center>2.319100</td>
	<td align=center>973.3986</td>
	<td align=center>0.7420000</td>
	<td align=center>1130.027</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:20</td>
	<td align=center>11.62970</td>
	<td align=center>77.32380</td>
	<td align=center>5.711000</td>
	<td align=center>1.911300</td>
	<td align=center>0.428100</td>
	<td align=center>0.387000</td>
	<td align=center>0.124100</td>
	<td align=center>0.078000</td>
	<td align=center>0.085700</td>
	<td align=center>2.321200</td>
	<td align=center>973.7857</td>
	<td align=center>0.7416000</td>
	<td align=center>1130.781</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:15</td>
	<td align=center>11.66780</td>
	<td align=center>77.28190</td>
	<td align=center>5.724700</td>
	<td align=center>1.904200</td>
	<td align=center>0.427300</td>
	<td align=center>0.386800</td>
	<td align=center>0.123400</td>
	<td align=center>0.076800</td>
	<td align=center>0.086700</td>
	<td align=center>2.320600</td>
	<td align=center>973.3555</td>
	<td align=center>0.7420000</td>
	<td align=center>1129.977</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:10</td>
	<td align=center>11.62940</td>
	<td align=center>77.35290</td>
	<td align=center>5.699900</td>
	<td align=center>1.897900</td>
	<td align=center>0.428500</td>
	<td align=center>0.387800</td>
	<td align=center>0.123900</td>
	<td align=center>0.078000</td>
	<td align=center>0.086600</td>
	<td align=center>2.315000</td>
	<td align=center>973.6168</td>
	<td align=center>0.7415000</td>
	<td align=center>1130.661</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:05</td>
	<td align=center>11.62070</td>
	<td align=center>77.31220</td>
	<td align=center>5.757300</td>
	<td align=center>1.892100</td>
	<td align=center>0.426200</td>
	<td align=center>0.385100</td>
	<td align=center>0.122400</td>
	<td align=center>0.077700</td>
	<td align=center>0.085900</td>
	<td align=center>2.320300</td>
	<td align=center>973.8083</td>
	<td align=center>0.7415000</td>
	<td align=center>1130.884</td> 
	<td>&nbsp;</td> 
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
