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
<title>Gas Composition Past 7 Days (RB)</title>
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
	timerID = setTimeout(document.location='9_21.asp',300000);	  
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
	<td width="809" class="head4" bgcolor="#000066"><font color="#FFFFFF">Gas Composition Past 7 days (RB)</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="832">
  <tr class="head">
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT Ratchaburi (RB) - PAST 7 DAYS</strong></td>
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
	<td align=center>6.44390</td>
	<td align=center>72.38340</td>
	<td align=center>3.549200</td>
	<td align=center>1.051800</td>
	<td align=center>0.215900</td>
	<td align=center>0.242800</td>
	<td align=center>0.093300</td>
	<td align=center>0.051600</td>
	<td align=center>0.094800</td>
	<td align=center>15.873300</td>
	<td align=center>848.8157</td>
	<td align=center>0.7222000</td>
	<td align=center>999.541</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:00</td>
	<td align=center>6.44360</td>
	<td align=center>72.36380</td>
	<td align=center>3.534600</td>
	<td align=center>1.048100</td>
	<td align=center>0.215600</td>
	<td align=center>0.242400</td>
	<td align=center>0.092900</td>
	<td align=center>0.051500</td>
	<td align=center>0.093900</td>
	<td align=center>15.913600</td>
	<td align=center>848.7136</td>
	<td align=center>0.7222000</td>
	<td align=center>998.576</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:00</td>
	<td align=center>6.46080</td>
	<td align=center>72.37360</td>
	<td align=center>3.542800</td>
	<td align=center>1.049400</td>
	<td align=center>0.215500</td>
	<td align=center>0.242300</td>
	<td align=center>0.092500</td>
	<td align=center>0.051100</td>
	<td align=center>0.093200</td>
	<td align=center>15.878700</td>
	<td align=center>849.1858</td>
	<td align=center>0.7223000</td>
	<td align=center>998.915</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:00</td>
	<td align=center>6.46450</td>
	<td align=center>72.37140</td>
	<td align=center>3.547200</td>
	<td align=center>1.050700</td>
	<td align=center>0.215600</td>
	<td align=center>0.242500</td>
	<td align=center>0.092500</td>
	<td align=center>0.051000</td>
	<td align=center>0.092600</td>
	<td align=center>15.872000</td>
	<td align=center>848.9570</td>
	<td align=center>0.7222000</td>
	<td align=center>998.959</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:00</td>
	<td align=center>6.47410</td>
	<td align=center>72.38210</td>
	<td align=center>3.559800</td>
	<td align=center>1.056500</td>
	<td align=center>0.217400</td>
	<td align=center>0.244100</td>
	<td align=center>0.092900</td>
	<td align=center>0.051500</td>
	<td align=center>0.092700</td>
	<td align=center>15.828800</td>
	<td align=center>849.5184</td>
	<td align=center>0.7223000</td>
	<td align=center>999.218</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:00</td>
	<td align=center>6.47160</td>
	<td align=center>72.37630</td>
	<td align=center>3.556800</td>
	<td align=center>1.056200</td>
	<td align=center>0.217200</td>
	<td align=center>0.244000</td>
	<td align=center>0.093000</td>
	<td align=center>0.050900</td>
	<td align=center>0.092300</td>
	<td align=center>15.841900</td>
	<td align=center>848.9379</td>
	<td align=center>0.7223000</td>
	<td align=center>999.235</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:00</td>
	<td align=center>6.46510</td>
	<td align=center>72.37230</td>
	<td align=center>3.546300</td>
	<td align=center>1.051100</td>
	<td align=center>0.215500</td>
	<td align=center>0.241700</td>
	<td align=center>0.091600</td>
	<td align=center>0.050400</td>
	<td align=center>0.091500</td>
	<td align=center>15.874600</td>
	<td align=center>848.8949</td>
	<td align=center>0.7222000</td>
	<td align=center>998.839</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:00</td>
	<td align=center>6.48010</td>
	<td align=center>72.37530</td>
	<td align=center>3.563700</td>
	<td align=center>1.057500</td>
	<td align=center>0.217000</td>
	<td align=center>0.243200</td>
	<td align=center>0.092100</td>
	<td align=center>0.050500</td>
	<td align=center>0.091900</td>
	<td align=center>15.828800</td>
	<td align=center>849.3196</td>
	<td align=center>0.7222000</td>
	<td align=center>998.964</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:00</td>
	<td align=center>6.46290</td>
	<td align=center>72.36990</td>
	<td align=center>3.543800</td>
	<td align=center>1.051200</td>
	<td align=center>0.216200</td>
	<td align=center>0.241600</td>
	<td align=center>0.090700</td>
	<td align=center>0.049300</td>
	<td align=center>0.091600</td>
	<td align=center>15.882700</td>
	<td align=center>848.5869</td>
	<td align=center>0.7221000</td>
	<td align=center>998.737</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:00</td>
	<td align=center>6.45640</td>
	<td align=center>72.37150</td>
	<td align=center>3.541800</td>
	<td align=center>1.049000</td>
	<td align=center>0.215300</td>
	<td align=center>0.241000</td>
	<td align=center>0.091200</td>
	<td align=center>0.050200</td>
	<td align=center>0.088700</td>
	<td align=center>15.894900</td>
	<td align=center>848.6989</td>
	<td align=center>0.7220000</td>
	<td align=center>998.559</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:00</td>
	<td align=center>6.46410</td>
	<td align=center>72.37200</td>
	<td align=center>3.541400</td>
	<td align=center>1.049100</td>
	<td align=center>0.215600</td>
	<td align=center>0.242200</td>
	<td align=center>0.092800</td>
	<td align=center>0.051200</td>
	<td align=center>0.094600</td>
	<td align=center>15.877100</td>
	<td align=center>849.1898</td>
	<td align=center>0.7223000</td>
	<td align=center>998.995</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:00</td>
	<td align=center>6.47710</td>
	<td align=center>72.32630</td>
	<td align=center>3.540000</td>
	<td align=center>1.053000</td>
	<td align=center>0.218100</td>
	<td align=center>0.246800</td>
	<td align=center>0.096200</td>
	<td align=center>0.053000</td>
	<td align=center>0.099600</td>
	<td align=center>15.889800</td>
	<td align=center>849.3951</td>
	<td align=center>0.7227000</td>
	<td align=center>998.697</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:00</td>
	<td align=center>6.47780</td>
	<td align=center>72.32970</td>
	<td align=center>3.543200</td>
	<td align=center>1.053100</td>
	<td align=center>0.217800</td>
	<td align=center>0.246500</td>
	<td align=center>0.095900</td>
	<td align=center>0.053300</td>
	<td align=center>0.099900</td>
	<td align=center>15.882800</td>
	<td align=center>849.7249</td>
	<td align=center>0.7229000</td>
	<td align=center>999.204</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:00</td>
	<td align=center>6.46700</td>
	<td align=center>72.32980</td>
	<td align=center>3.533400</td>
	<td align=center>1.050100</td>
	<td align=center>0.217800</td>
	<td align=center>0.246500</td>
	<td align=center>0.096800</td>
	<td align=center>0.054000</td>
	<td align=center>0.101500</td>
	<td align=center>15.902900</td>
	<td align=center>849.3986</td>
	<td align=center>0.7228000</td>
	<td align=center>998.904</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:00</td>
	<td align=center>6.46460</td>
	<td align=center>72.34110</td>
	<td align=center>3.550100</td>
	<td align=center>1.058400</td>
	<td align=center>0.220200</td>
	<td align=center>0.249000</td>
	<td align=center>0.097900</td>
	<td align=center>0.054700</td>
	<td align=center>0.102600</td>
	<td align=center>15.861400</td>
	<td align=center>850.1022</td>
	<td align=center>0.7229000</td>
	<td align=center>999.801</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:00</td>
	<td align=center>6.46020</td>
	<td align=center>72.35360</td>
	<td align=center>3.542300</td>
	<td align=center>1.052500</td>
	<td align=center>0.217500</td>
	<td align=center>0.245800</td>
	<td align=center>0.095700</td>
	<td align=center>0.053200</td>
	<td align=center>0.099300</td>
	<td align=center>15.879900</td>
	<td align=center>849.3670</td>
	<td align=center>0.7226000</td>
	<td align=center>999.316</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:00</td>
	<td align=center>6.45570</td>
	<td align=center>72.35070</td>
	<td align=center>3.538900</td>
	<td align=center>1.050800</td>
	<td align=center>0.216700</td>
	<td align=center>0.244900</td>
	<td align=center>0.095400</td>
	<td align=center>0.052900</td>
	<td align=center>0.098700</td>
	<td align=center>15.895300</td>
	<td align=center>849.1003</td>
	<td align=center>0.7225000</td>
	<td align=center>998.951</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:00</td>
	<td align=center>6.42480</td>
	<td align=center>72.30940</td>
	<td align=center>3.514300</td>
	<td align=center>1.040600</td>
	<td align=center>0.215100</td>
	<td align=center>0.242800</td>
	<td align=center>0.094900</td>
	<td align=center>0.053000</td>
	<td align=center>0.099100</td>
	<td align=center>16.023200</td>
	<td align=center>847.9813</td>
	<td align=center>0.7224000</td>
	<td align=center>997.776</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:00</td>
	<td align=center>6.45440</td>
	<td align=center>72.31460</td>
	<td align=center>3.513600</td>
	<td align=center>1.041600</td>
	<td align=center>0.214900</td>
	<td align=center>0.242600</td>
	<td align=center>0.094400</td>
	<td align=center>0.052200</td>
	<td align=center>0.098200</td>
	<td align=center>15.947900</td>
	<td align=center>848.5824</td>
	<td align=center>0.7225000</td>
	<td align=center>997.632</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:00</td>
	<td align=center>6.45980</td>
	<td align=center>72.34160</td>
	<td align=center>3.531700</td>
	<td align=center>1.047200</td>
	<td align=center>0.215900</td>
	<td align=center>0.243700</td>
	<td align=center>0.095000</td>
	<td align=center>0.053100</td>
	<td align=center>0.098400</td>
	<td align=center>15.913500</td>
	<td align=center>848.1644</td>
	<td align=center>0.7225000</td>
	<td align=center>998.601</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:00</td>
	<td align=center>6.44380</td>
	<td align=center>72.33440</td>
	<td align=center>3.513300</td>
	<td align=center>1.041100</td>
	<td align=center>0.215100</td>
	<td align=center>0.242900</td>
	<td align=center>0.094800</td>
	<td align=center>0.052400</td>
	<td align=center>0.098400</td>
	<td align=center>15.963900</td>
	<td align=center>848.3069</td>
	<td align=center>0.7224000</td>
	<td align=center>998.317</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:00</td>
	<td align=center>6.44260</td>
	<td align=center>72.31140</td>
	<td align=center>3.512700</td>
	<td align=center>1.041200</td>
	<td align=center>0.215800</td>
	<td align=center>0.243200</td>
	<td align=center>0.094000</td>
	<td align=center>0.051700</td>
	<td align=center>0.099500</td>
	<td align=center>15.987800</td>
	<td align=center>847.5076</td>
	<td align=center>0.7223000</td>
	<td align=center>996.792</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:00</td>
	<td align=center>6.45330</td>
	<td align=center>72.33610</td>
	<td align=center>3.531900</td>
	<td align=center>1.048900</td>
	<td align=center>0.217100</td>
	<td align=center>0.245400</td>
	<td align=center>0.097800</td>
	<td align=center>0.057000</td>
	<td align=center>0.098800</td>
	<td align=center>15.934200</td>
	<td align=center>848.5641</td>
	<td align=center>0.7224000</td>
	<td align=center>998.652</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:00</td>
	<td align=center>6.45120</td>
	<td align=center>72.33560</td>
	<td align=center>3.534500</td>
	<td align=center>1.048400</td>
	<td align=center>0.216000</td>
	<td align=center>0.243000</td>
	<td align=center>0.093500</td>
	<td align=center>0.051700</td>
	<td align=center>0.094600</td>
	<td align=center>15.931700</td>
	<td align=center>848.4271</td>
	<td align=center>0.7222000</td>
	<td align=center>998.364</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;10:00</td>
	<td align=center>6.42850</td>
	<td align=center>72.31660</td>
	<td align=center>3.509500</td>
	<td align=center>1.039500</td>
	<td align=center>0.213800</td>
	<td align=center>0.240500</td>
	<td align=center>0.092200</td>
	<td align=center>0.050900</td>
	<td align=center>0.093800</td>
	<td align=center>16.014400</td>
	<td align=center>847.3150</td>
	<td align=center>0.7221000</td>
	<td align=center>996.944</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;09:00</td>
	<td align=center>6.47420</td>
	<td align=center>72.32580</td>
	<td align=center>3.534900</td>
	<td align=center>1.046100</td>
	<td align=center>0.214900</td>
	<td align=center>0.241100</td>
	<td align=center>0.091400</td>
	<td align=center>0.050100</td>
	<td align=center>0.091400</td>
	<td align=center>15.930000</td>
	<td align=center>848.5825</td>
	<td align=center>0.7224000</td>
	<td align=center>998.094</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;08:00</td>
	<td align=center>6.43590</td>
	<td align=center>72.35750</td>
	<td align=center>3.542800</td>
	<td align=center>1.052000</td>
	<td align=center>0.216000</td>
	<td align=center>0.242700</td>
	<td align=center>0.093200</td>
	<td align=center>0.052100</td>
	<td align=center>0.093100</td>
	<td align=center>15.914900</td>
	<td align=center>848.6918</td>
	<td align=center>0.7220000</td>
	<td align=center>998.836</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;07:00</td>
	<td align=center>6.43400</td>
	<td align=center>72.38090</td>
	<td align=center>3.547800</td>
	<td align=center>1.054100</td>
	<td align=center>0.216600</td>
	<td align=center>0.243400</td>
	<td align=center>0.092500</td>
	<td align=center>0.050200</td>
	<td align=center>0.093200</td>
	<td align=center>15.887200</td>
	<td align=center>849.3656</td>
	<td align=center>0.7220000</td>
	<td align=center>999.222</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;06:00</td>
	<td align=center>6.43230</td>
	<td align=center>72.38020</td>
	<td align=center>3.544100</td>
	<td align=center>1.051500</td>
	<td align=center>0.215800</td>
	<td align=center>0.242200</td>
	<td align=center>0.091100</td>
	<td align=center>0.049700</td>
	<td align=center>0.092800</td>
	<td align=center>15.900100</td>
	<td align=center>849.2424</td>
	<td align=center>0.7220000</td>
	<td align=center>999.391</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;05:00</td>
	<td align=center>6.41610</td>
	<td align=center>72.38260</td>
	<td align=center>3.531500</td>
	<td align=center>1.047400</td>
	<td align=center>0.215000</td>
	<td align=center>0.241400</td>
	<td align=center>0.092300</td>
	<td align=center>0.051300</td>
	<td align=center>0.092300</td>
	<td align=center>15.930100</td>
	<td align=center>848.1957</td>
	<td align=center>0.7218000</td>
	<td align=center>998.483</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;04:00</td>
	<td align=center>6.44340</td>
	<td align=center>72.38530</td>
	<td align=center>3.556400</td>
	<td align=center>1.057900</td>
	<td align=center>0.218400</td>
	<td align=center>0.244600</td>
	<td align=center>0.093700</td>
	<td align=center>0.052800</td>
	<td align=center>0.092900</td>
	<td align=center>15.854500</td>
	<td align=center>849.2503</td>
	<td align=center>0.7220000</td>
	<td align=center>999.134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;03:00</td>
	<td align=center>6.40430</td>
	<td align=center>72.32660</td>
	<td align=center>3.514100</td>
	<td align=center>1.042700</td>
	<td align=center>0.214100</td>
	<td align=center>0.240200</td>
	<td align=center>0.091800</td>
	<td align=center>0.050900</td>
	<td align=center>0.092300</td>
	<td align=center>16.022800</td>
	<td align=center>847.7147</td>
	<td align=center>0.7219000</td>
	<td align=center>997.587</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;02:00</td>
	<td align=center>6.40590</td>
	<td align=center>72.36210</td>
	<td align=center>3.520800</td>
	<td align=center>1.045300</td>
	<td align=center>0.214600</td>
	<td align=center>0.241100</td>
	<td align=center>0.091600</td>
	<td align=center>0.049900</td>
	<td align=center>0.092500</td>
	<td align=center>15.976200</td>
	<td align=center>847.7979</td>
	<td align=center>0.7218000</td>
	<td align=center>997.984</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;01:00</td>
	<td align=center>6.39260</td>
	<td align=center>72.33850</td>
	<td align=center>3.505400</td>
	<td align=center>1.035400</td>
	<td align=center>0.211100</td>
	<td align=center>0.239100</td>
	<td align=center>0.092800</td>
	<td align=center>0.051700</td>
	<td align=center>0.092600</td>
	<td align=center>16.040700</td>
	<td align=center>847.3542</td>
	<td align=center>0.7217000</td>
	<td align=center>997.136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;00:00</td>
	<td align=center>6.40090</td>
	<td align=center>72.34960</td>
	<td align=center>3.510600</td>
	<td align=center>1.039800</td>
	<td align=center>0.213100</td>
	<td align=center>0.240000</td>
	<td align=center>0.086900</td>
	<td align=center>0.043700</td>
	<td align=center>0.092400</td>
	<td align=center>16.023000</td>
	<td align=center>847.6066</td>
	<td align=center>0.7218000</td>
	<td align=center>997.792</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;23:00</td>
	<td align=center>6.39050</td>
	<td align=center>72.35920</td>
	<td align=center>3.499700</td>
	<td align=center>1.033100</td>
	<td align=center>0.209700</td>
	<td align=center>0.238100</td>
	<td align=center>0.091900</td>
	<td align=center>0.050900</td>
	<td align=center>0.091900</td>
	<td align=center>16.035000</td>
	<td align=center>847.2617</td>
	<td align=center>0.7217000</td>
	<td align=center>997.578</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;22:00</td>
	<td align=center>6.39920</td>
	<td align=center>72.33070</td>
	<td align=center>3.501100</td>
	<td align=center>1.039100</td>
	<td align=center>0.213900</td>
	<td align=center>0.239500</td>
	<td align=center>0.091400</td>
	<td align=center>0.050400</td>
	<td align=center>0.092700</td>
	<td align=center>16.041900</td>
	<td align=center>846.9219</td>
	<td align=center>0.7217000</td>
	<td align=center>996.849</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;21:00</td>
	<td align=center>6.40460</td>
	<td align=center>72.33880</td>
	<td align=center>3.509600</td>
	<td align=center>1.041600</td>
	<td align=center>0.213900</td>
	<td align=center>0.241100</td>
	<td align=center>0.092000</td>
	<td align=center>0.050800</td>
	<td align=center>0.093500</td>
	<td align=center>16.020500</td>
	<td align=center>847.7327</td>
	<td align=center>0.7219000</td>
	<td align=center>997.550</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;20:00</td>
	<td align=center>6.41170</td>
	<td align=center>72.36250</td>
	<td align=center>3.521300</td>
	<td align=center>1.044800</td>
	<td align=center>0.214700</td>
	<td align=center>0.241700</td>
	<td align=center>0.092500</td>
	<td align=center>0.051000</td>
	<td align=center>0.093300</td>
	<td align=center>15.966500</td>
	<td align=center>848.1262</td>
	<td align=center>0.7219000</td>
	<td align=center>998.012</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;19:00</td>
	<td align=center>6.40490</td>
	<td align=center>72.34220</td>
	<td align=center>3.512400</td>
	<td align=center>1.041600</td>
	<td align=center>0.213700</td>
	<td align=center>0.241000</td>
	<td align=center>0.092000</td>
	<td align=center>0.049900</td>
	<td align=center>0.093200</td>
	<td align=center>16.009700</td>
	<td align=center>847.6567</td>
	<td align=center>0.7219000</td>
	<td align=center>997.669</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;18:00</td>
	<td align=center>6.38580</td>
	<td align=center>72.30880</td>
	<td align=center>3.489300</td>
	<td align=center>1.034100</td>
	<td align=center>0.212100</td>
	<td align=center>0.239000</td>
	<td align=center>0.091500</td>
	<td align=center>0.050600</td>
	<td align=center>0.092200</td>
	<td align=center>16.081700</td>
	<td align=center>847.2379</td>
	<td align=center>0.7219000</td>
	<td align=center>997.106</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;17:00</td>
	<td align=center>6.39640</td>
	<td align=center>72.33940</td>
	<td align=center>3.503600</td>
	<td align=center>1.037900</td>
	<td align=center>0.213000</td>
	<td align=center>0.239900</td>
	<td align=center>0.092000</td>
	<td align=center>0.050400</td>
	<td align=center>0.092500</td>
	<td align=center>16.035000</td>
	<td align=center>847.3246</td>
	<td align=center>0.7218000</td>
	<td align=center>996.944</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;16:00</td>
	<td align=center>6.37960</td>
	<td align=center>72.31950</td>
	<td align=center>3.484000</td>
	<td align=center>1.033100</td>
	<td align=center>0.212300</td>
	<td align=center>0.238700</td>
	<td align=center>0.091700</td>
	<td align=center>0.050700</td>
	<td align=center>0.092500</td>
	<td align=center>16.097900</td>
	<td align=center>847.0503</td>
	<td align=center>0.7218000</td>
	<td align=center>996.284</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;15:00</td>
	<td align=center>6.38750</td>
	<td align=center>72.32800</td>
	<td align=center>3.487400</td>
	<td align=center>1.032900</td>
	<td align=center>0.211600</td>
	<td align=center>0.238300</td>
	<td align=center>0.090900</td>
	<td align=center>0.049900</td>
	<td align=center>0.092600</td>
	<td align=center>16.080900</td>
	<td align=center>846.5594</td>
	<td align=center>0.7217000</td>
	<td align=center>996.453</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;14:00</td>
	<td align=center>6.39130</td>
	<td align=center>72.32240</td>
	<td align=center>3.488900</td>
	<td align=center>1.033200</td>
	<td align=center>0.212300</td>
	<td align=center>0.239000</td>
	<td align=center>0.090300</td>
	<td align=center>0.049400</td>
	<td align=center>0.092900</td>
	<td align=center>16.080400</td>
	<td align=center>847.1198</td>
	<td align=center>0.7219000</td>
	<td align=center>996.488</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;13:00</td>
	<td align=center>6.39390</td>
	<td align=center>72.32950</td>
	<td align=center>3.496200</td>
	<td align=center>1.034300</td>
	<td align=center>0.211800</td>
	<td align=center>0.239100</td>
	<td align=center>0.091700</td>
	<td align=center>0.051400</td>
	<td align=center>0.093300</td>
	<td align=center>16.058800</td>
	<td align=center>846.8043</td>
	<td align=center>0.7217000</td>
	<td align=center>997.192</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;12:00</td>
	<td align=center>6.37990</td>
	<td align=center>72.30620</td>
	<td align=center>3.480600</td>
	<td align=center>1.032900</td>
	<td align=center>0.211900</td>
	<td align=center>0.238600</td>
	<td align=center>0.090700</td>
	<td align=center>0.049700</td>
	<td align=center>0.093600</td>
	<td align=center>16.116100</td>
	<td align=center>846.1954</td>
	<td align=center>0.7217000</td>
	<td align=center>996.419</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;11:00</td>
	<td align=center>6.37270</td>
	<td align=center>72.31400</td>
	<td align=center>3.475100</td>
	<td align=center>1.029200</td>
	<td align=center>0.211800</td>
	<td align=center>0.238600</td>
	<td align=center>0.090000</td>
	<td align=center>0.049800</td>
	<td align=center>0.093900</td>
	<td align=center>16.125200</td>
	<td align=center>846.3782</td>
	<td align=center>0.7218000</td>
	<td align=center>996.372</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;10:00</td>
	<td align=center>6.40150</td>
	<td align=center>72.32880</td>
	<td align=center>3.512600</td>
	<td align=center>1.043600</td>
	<td align=center>0.215900</td>
	<td align=center>0.242900</td>
	<td align=center>0.092600</td>
	<td align=center>0.050800</td>
	<td align=center>0.095400</td>
	<td align=center>16.015800</td>
	<td align=center>847.4182</td>
	<td align=center>0.7218000</td>
	<td align=center>998.459</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;09:00</td>
	<td align=center>6.39250</td>
	<td align=center>72.31420</td>
	<td align=center>3.494900</td>
	<td align=center>1.035300</td>
	<td align=center>0.212700</td>
	<td align=center>0.240000</td>
	<td align=center>0.091400</td>
	<td align=center>0.050400</td>
	<td align=center>0.094000</td>
	<td align=center>16.074600</td>
	<td align=center>847.0448</td>
	<td align=center>0.7219000</td>
	<td align=center>996.505</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;08:00</td>
	<td align=center>6.38220</td>
	<td align=center>72.31640</td>
	<td align=center>3.477300</td>
	<td align=center>1.029300</td>
	<td align=center>0.210900</td>
	<td align=center>0.237400</td>
	<td align=center>0.090200</td>
	<td align=center>0.049400</td>
	<td align=center>0.091900</td>
	<td align=center>16.115000</td>
	<td align=center>846.1406</td>
	<td align=center>0.7217000</td>
	<td align=center>996.151</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;07:00</td>
	<td align=center>6.38720</td>
	<td align=center>72.32300</td>
	<td align=center>3.486000</td>
	<td align=center>1.032000</td>
	<td align=center>0.210600</td>
	<td align=center>0.237200</td>
	<td align=center>0.089500</td>
	<td align=center>0.049200</td>
	<td align=center>0.090800</td>
	<td align=center>16.094400</td>
	<td align=center>846.2440</td>
	<td align=center>0.7217000</td>
	<td align=center>996.251</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;06:00</td>
	<td align=center>6.39160</td>
	<td align=center>72.32450</td>
	<td align=center>3.486200</td>
	<td align=center>1.030100</td>
	<td align=center>0.210700</td>
	<td align=center>0.237200</td>
	<td align=center>0.090900</td>
	<td align=center>0.050500</td>
	<td align=center>0.090600</td>
	<td align=center>16.087700</td>
	<td align=center>846.3210</td>
	<td align=center>0.7216000</td>
	<td align=center>996.388</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;05:00</td>
	<td align=center>6.39010</td>
	<td align=center>72.34660</td>
	<td align=center>3.495600</td>
	<td align=center>1.034200</td>
	<td align=center>0.212000</td>
	<td align=center>0.238500</td>
	<td align=center>0.091100</td>
	<td align=center>0.049200</td>
	<td align=center>0.091200</td>
	<td align=center>16.051400</td>
	<td align=center>846.5570</td>
	<td align=center>0.7216000</td>
	<td align=center>996.680</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;04:00</td>
	<td align=center>6.39570</td>
	<td align=center>72.35830</td>
	<td align=center>3.500500</td>
	<td align=center>1.039800</td>
	<td align=center>0.214600</td>
	<td align=center>0.240300</td>
	<td align=center>0.089300</td>
	<td align=center>0.049000</td>
	<td align=center>0.091300</td>
	<td align=center>16.021200</td>
	<td align=center>847.2053</td>
	<td align=center>0.7217000</td>
	<td align=center>997.416</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;03:00</td>
	<td align=center>6.35980</td>
	<td align=center>72.30180</td>
	<td align=center>3.453200</td>
	<td align=center>1.020000</td>
	<td align=center>0.209300</td>
	<td align=center>0.235600</td>
	<td align=center>0.092600</td>
	<td align=center>0.053900</td>
	<td align=center>0.092200</td>
	<td align=center>16.181600</td>
	<td align=center>845.4518</td>
	<td align=center>0.7215000</td>
	<td align=center>995.198</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;02:00</td>
	<td align=center>6.36630</td>
	<td align=center>72.34360</td>
	<td align=center>3.475200</td>
	<td align=center>1.027800</td>
	<td align=center>0.209300</td>
	<td align=center>0.236000</td>
	<td align=center>0.086700</td>
	<td align=center>0.046000</td>
	<td align=center>0.087300</td>
	<td align=center>16.121800</td>
	<td align=center>846.0378</td>
	<td align=center>0.7210000</td>
	<td align=center>996.052</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;01:00</td>
	<td align=center>6.35130</td>
	<td align=center>72.38790</td>
	<td align=center>3.496100</td>
	<td align=center>1.034000</td>
	<td align=center>0.210700</td>
	<td align=center>0.235400</td>
	<td align=center>0.088100</td>
	<td align=center>0.048500</td>
	<td align=center>0.086000</td>
	<td align=center>16.062000</td>
	<td align=center>847.0219</td>
	<td align=center>0.7211000</td>
	<td align=center>996.588</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;00:00</td>
	<td align=center>6.26580</td>
	<td align=center>72.47880</td>
	<td align=center>3.504700</td>
	<td align=center>1.032600</td>
	<td align=center>0.208900</td>
	<td align=center>0.234900</td>
	<td align=center>0.088600</td>
	<td align=center>0.048300</td>
	<td align=center>0.060300</td>
	<td align=center>16.077200</td>
	<td align=center>846.7348</td>
	<td align=center>0.7198000</td>
	<td align=center>997.799</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;23:00</td>
	<td align=center>6.25450</td>
	<td align=center>72.46510</td>
	<td align=center>3.495200</td>
	<td align=center>1.034300</td>
	<td align=center>0.210100</td>
	<td align=center>0.233400</td>
	<td align=center>0.084100</td>
	<td align=center>0.041900</td>
	<td align=center>0.061700</td>
	<td align=center>16.119800</td>
	<td align=center>846.4863</td>
	<td align=center>0.7198000</td>
	<td align=center>997.415</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;22:00</td>
	<td align=center>6.57060</td>
	<td align=center>71.77070</td>
	<td align=center>3.700400</td>
	<td align=center>1.613600</td>
	<td align=center>0.220000</td>
	<td align=center>0.356400</td>
	<td align=center>0.119300</td>
	<td align=center>0.045200</td>
	<td align=center>0.085800</td>
	<td align=center>15.518000</td>
	<td align=center>849.9770</td>
	<td align=center>0.7022000</td>
	<td align=center>995.926</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;21:00</td>
	<td align=center>6.24550</td>
	<td align=center>72.44350</td>
	<td align=center>3.488800</td>
	<td align=center>1.031100</td>
	<td align=center>0.209400</td>
	<td align=center>0.235800</td>
	<td align=center>0.088300</td>
	<td align=center>0.048400</td>
	<td align=center>0.085700</td>
	<td align=center>16.123500</td>
	<td align=center>847.5591</td>
	<td align=center>0.7201000</td>
	<td align=center>998.567</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;20:00</td>
	<td align=center>6.24310</td>
	<td align=center>72.44960</td>
	<td align=center>3.486000</td>
	<td align=center>1.030600</td>
	<td align=center>0.209800</td>
	<td align=center>0.235400</td>
	<td align=center>0.088300</td>
	<td align=center>0.048200</td>
	<td align=center>0.085500</td>
	<td align=center>16.123600</td>
	<td align=center>847.0300</td>
	<td align=center>0.7201000</td>
	<td align=center>998.383</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;19:00</td>
	<td align=center>6.24590</td>
	<td align=center>72.45880</td>
	<td align=center>3.493900</td>
	<td align=center>1.034300</td>
	<td align=center>0.210500</td>
	<td align=center>0.235900</td>
	<td align=center>0.088100</td>
	<td align=center>0.048100</td>
	<td align=center>0.085500</td>
	<td align=center>16.098800</td>
	<td align=center>847.4883</td>
	<td align=center>0.7201000</td>
	<td align=center>998.321</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;18:00</td>
	<td align=center>6.26030</td>
	<td align=center>72.46340</td>
	<td align=center>3.504900</td>
	<td align=center>1.038800</td>
	<td align=center>0.211900</td>
	<td align=center>0.237600</td>
	<td align=center>0.088000</td>
	<td align=center>0.048000</td>
	<td align=center>0.085800</td>
	<td align=center>16.061200</td>
	<td align=center>847.9312</td>
	<td align=center>0.7202000</td>
	<td align=center>998.907</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;17:00</td>
	<td align=center>6.24570</td>
	<td align=center>72.43950</td>
	<td align=center>3.489000</td>
	<td align=center>1.033500</td>
	<td align=center>0.210300</td>
	<td align=center>0.236300</td>
	<td align=center>0.087800</td>
	<td align=center>0.047900</td>
	<td align=center>0.085700</td>
	<td align=center>16.124200</td>
	<td align=center>847.0300</td>
	<td align=center>0.7202000</td>
	<td align=center>998.596</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;16:00</td>
	<td align=center>6.23950</td>
	<td align=center>72.43040</td>
	<td align=center>3.485600</td>
	<td align=center>1.032800</td>
	<td align=center>0.210200</td>
	<td align=center>0.236200</td>
	<td align=center>0.088300</td>
	<td align=center>0.048500</td>
	<td align=center>0.085700</td>
	<td align=center>16.142900</td>
	<td align=center>847.2440</td>
	<td align=center>0.7202000</td>
	<td align=center>998.065</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;15:00</td>
	<td align=center>6.22930</td>
	<td align=center>72.44010</td>
	<td align=center>3.478900</td>
	<td align=center>1.028400</td>
	<td align=center>0.207800</td>
	<td align=center>0.232800</td>
	<td align=center>0.086000</td>
	<td align=center>0.046800</td>
	<td align=center>0.083200</td>
	<td align=center>16.166700</td>
	<td align=center>846.4635</td>
	<td align=center>0.7199000</td>
	<td align=center>998.088</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;14:00</td>
	<td align=center>6.23520</td>
	<td align=center>72.44790</td>
	<td align=center>3.482400</td>
	<td align=center>1.028800</td>
	<td align=center>0.208300</td>
	<td align=center>0.233700</td>
	<td align=center>0.086600</td>
	<td align=center>0.047200</td>
	<td align=center>0.083600</td>
	<td align=center>16.146200</td>
	<td align=center>846.4268</td>
	<td align=center>0.7198000</td>
	<td align=center>997.614</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;13:00</td>
	<td align=center>6.23920</td>
	<td align=center>72.43260</td>
	<td align=center>3.486200</td>
	<td align=center>1.029400</td>
	<td align=center>0.209000</td>
	<td align=center>0.234700</td>
	<td align=center>0.086100</td>
	<td align=center>0.046700</td>
	<td align=center>0.083900</td>
	<td align=center>16.152200</td>
	<td align=center>846.1619</td>
	<td align=center>0.7200000</td>
	<td align=center>997.342</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;12:00</td>
	<td align=center>6.25470</td>
	<td align=center>72.42670</td>
	<td align=center>3.486800</td>
	<td align=center>1.030700</td>
	<td align=center>0.209100</td>
	<td align=center>0.234900</td>
	<td align=center>0.087500</td>
	<td align=center>0.047800</td>
	<td align=center>0.084900</td>
	<td align=center>16.137000</td>
	<td align=center>846.8557</td>
	<td align=center>0.7202000</td>
	<td align=center>997.439</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;11:00</td>
	<td align=center>6.23920</td>
	<td align=center>72.39880</td>
	<td align=center>3.469700</td>
	<td align=center>1.026900</td>
	<td align=center>0.208800</td>
	<td align=center>0.234200</td>
	<td align=center>0.091000</td>
	<td align=center>0.053300</td>
	<td align=center>0.086000</td>
	<td align=center>16.192200</td>
	<td align=center>846.5076</td>
	<td align=center>0.7203000</td>
	<td align=center>996.261</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;10:00</td>
	<td align=center>6.27250</td>
	<td align=center>72.38500</td>
	<td align=center>3.485000</td>
	<td align=center>1.032200</td>
	<td align=center>0.210000</td>
	<td align=center>0.235500</td>
	<td align=center>0.087500</td>
	<td align=center>0.048100</td>
	<td align=center>0.086100</td>
	<td align=center>16.158000</td>
	<td align=center>846.1705</td>
	<td align=center>0.7206000</td>
	<td align=center>997.236</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;09:00</td>
	<td align=center>6.27050</td>
	<td align=center>72.38710</td>
	<td align=center>3.488300</td>
	<td align=center>1.035400</td>
	<td align=center>0.211600</td>
	<td align=center>0.236700</td>
	<td align=center>0.088000</td>
	<td align=center>0.047800</td>
	<td align=center>0.086400</td>
	<td align=center>16.148200</td>
	<td align=center>846.7750</td>
	<td align=center>0.7205000</td>
	<td align=center>997.274</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;08:00</td>
	<td align=center>6.25300</td>
	<td align=center>72.43810</td>
	<td align=center>3.500700</td>
	<td align=center>1.038000</td>
	<td align=center>0.211600</td>
	<td align=center>0.237200</td>
	<td align=center>0.088900</td>
	<td align=center>0.048500</td>
	<td align=center>0.087100</td>
	<td align=center>16.097000</td>
	<td align=center>847.4937</td>
	<td align=center>0.7202000</td>
	<td align=center>998.340</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;07:00</td>
	<td align=center>6.24470</td>
	<td align=center>72.42810</td>
	<td align=center>3.492100</td>
	<td align=center>1.035900</td>
	<td align=center>0.211400</td>
	<td align=center>0.237200</td>
	<td align=center>0.088600</td>
	<td align=center>0.048300</td>
	<td align=center>0.087300</td>
	<td align=center>16.126300</td>
	<td align=center>847.3140</td>
	<td align=center>0.7203000</td>
	<td align=center>998.589</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;06:00</td>
	<td align=center>6.33750</td>
	<td align=center>72.35820</td>
	<td align=center>3.493500</td>
	<td align=center>1.037000</td>
	<td align=center>0.212800</td>
	<td align=center>0.240000</td>
	<td align=center>0.091800</td>
	<td align=center>0.050800</td>
	<td align=center>0.091800</td>
	<td align=center>16.086600</td>
	<td align=center>847.1302</td>
	<td align=center>0.7213000</td>
	<td align=center>997.543</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;05:00</td>
	<td align=center>6.32090</td>
	<td align=center>72.33440</td>
	<td align=center>3.471200</td>
	<td align=center>1.029500</td>
	<td align=center>0.211500</td>
	<td align=center>0.237800</td>
	<td align=center>0.090700</td>
	<td align=center>0.050400</td>
	<td align=center>0.091100</td>
	<td align=center>16.162600</td>
	<td align=center>846.7058</td>
	<td align=center>0.7213000</td>
	<td align=center>996.652</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;04:00</td>
	<td align=center>6.34890</td>
	<td align=center>72.37370</td>
	<td align=center>3.493800</td>
	<td align=center>1.034300</td>
	<td align=center>0.211800</td>
	<td align=center>0.238100</td>
	<td align=center>0.091900</td>
	<td align=center>0.051200</td>
	<td align=center>0.091600</td>
	<td align=center>16.064600</td>
	<td align=center>847.1872</td>
	<td align=center>0.7212000</td>
	<td align=center>997.953</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;03:00</td>
	<td align=center>6.33660</td>
	<td align=center>72.35840</td>
	<td align=center>3.482500</td>
	<td align=center>1.031900</td>
	<td align=center>0.211700</td>
	<td align=center>0.238100</td>
	<td align=center>0.088500</td>
	<td align=center>0.048200</td>
	<td align=center>0.091600</td>
	<td align=center>16.112300</td>
	<td align=center>846.6152</td>
	<td align=center>0.7212000</td>
	<td align=center>997.031</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;02:00</td>
	<td align=center>6.32980</td>
	<td align=center>72.33880</td>
	<td align=center>3.478100</td>
	<td align=center>1.029500</td>
	<td align=center>0.210900</td>
	<td align=center>0.237700</td>
	<td align=center>0.090700</td>
	<td align=center>0.049800</td>
	<td align=center>0.093200</td>
	<td align=center>16.141500</td>
	<td align=center>846.5242</td>
	<td align=center>0.7213000</td>
	<td align=center>996.909</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;01:00</td>
	<td align=center>6.33270</td>
	<td align=center>72.36540</td>
	<td align=center>3.498600</td>
	<td align=center>1.035300</td>
	<td align=center>0.211700</td>
	<td align=center>0.241100</td>
	<td align=center>0.095000</td>
	<td align=center>0.052600</td>
	<td align=center>0.097300</td>
	<td align=center>16.070300</td>
	<td align=center>847.8324</td>
	<td align=center>0.7215000</td>
	<td align=center>998.205</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;00:00</td>
	<td align=center>6.33320</td>
	<td align=center>72.26150</td>
	<td align=center>3.473200</td>
	<td align=center>1.035200</td>
	<td align=center>0.213600</td>
	<td align=center>0.241400</td>
	<td align=center>0.094600</td>
	<td align=center>0.052100</td>
	<td align=center>0.097200</td>
	<td align=center>16.197800</td>
	<td align=center>846.7212</td>
	<td align=center>0.7216000</td>
	<td align=center>997.452</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;23:00</td>
	<td align=center>6.33970</td>
	<td align=center>72.35200</td>
	<td align=center>3.499500</td>
	<td align=center>1.040600</td>
	<td align=center>0.215100</td>
	<td align=center>0.243200</td>
	<td align=center>0.094200</td>
	<td align=center>0.053500</td>
	<td align=center>0.097400</td>
	<td align=center>16.064600</td>
	<td align=center>847.9072</td>
	<td align=center>0.7216000</td>
	<td align=center>998.880</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;22:00</td>
	<td align=center>6.32620</td>
	<td align=center>72.34400</td>
	<td align=center>3.482900</td>
	<td align=center>1.034800</td>
	<td align=center>0.213300</td>
	<td align=center>0.241400</td>
	<td align=center>0.093600</td>
	<td align=center>0.052000</td>
	<td align=center>0.097200</td>
	<td align=center>16.114500</td>
	<td align=center>847.6683</td>
	<td align=center>0.7216000</td>
	<td align=center>997.795</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;21:00</td>
	<td align=center>6.33970</td>
	<td align=center>72.35940</td>
	<td align=center>3.501100</td>
	<td align=center>1.040800</td>
	<td align=center>0.214600</td>
	<td align=center>0.242800</td>
	<td align=center>0.094400</td>
	<td align=center>0.052500</td>
	<td align=center>0.097700</td>
	<td align=center>16.057000</td>
	<td align=center>847.9573</td>
	<td align=center>0.7215000</td>
	<td align=center>998.090</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;20:00</td>
	<td align=center>6.27010</td>
	<td align=center>72.27210</td>
	<td align=center>3.420800</td>
	<td align=center>1.014100</td>
	<td align=center>0.209000</td>
	<td align=center>0.237000</td>
	<td align=center>0.092500</td>
	<td align=center>0.051900</td>
	<td align=center>0.096500</td>
	<td align=center>16.336000</td>
	<td align=center>845.5760</td>
	<td align=center>0.7214000</td>
	<td align=center>991.737</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;19:00</td>
	<td align=center>6.29750</td>
	<td align=center>72.29870</td>
	<td align=center>3.450600</td>
	<td align=center>1.024300</td>
	<td align=center>0.211100</td>
	<td align=center>0.239300</td>
	<td align=center>0.093100</td>
	<td align=center>0.051700</td>
	<td align=center>0.097000</td>
	<td align=center>16.236700</td>
	<td align=center>845.8524</td>
	<td align=center>0.7215000</td>
	<td align=center>996.170</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;18:00</td>
	<td align=center>6.32710</td>
	<td align=center>72.35200</td>
	<td align=center>3.487300</td>
	<td align=center>1.036800</td>
	<td align=center>0.213900</td>
	<td align=center>0.242100</td>
	<td align=center>0.094900</td>
	<td align=center>0.053100</td>
	<td align=center>0.096500</td>
	<td align=center>16.097000</td>
	<td align=center>847.4238</td>
	<td align=center>0.7215000</td>
	<td align=center>997.963</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;17:00</td>
	<td align=center>6.30950</td>
	<td align=center>72.33710</td>
	<td align=center>3.482200</td>
	<td align=center>1.036600</td>
	<td align=center>0.213700</td>
	<td align=center>0.241900</td>
	<td align=center>0.093100</td>
	<td align=center>0.051800</td>
	<td align=center>0.095300</td>
	<td align=center>16.138900</td>
	<td align=center>847.3323</td>
	<td align=center>0.7214000</td>
	<td align=center>997.574</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;16:00</td>
	<td align=center>6.30590</td>
	<td align=center>72.32390</td>
	<td align=center>3.476700</td>
	<td align=center>1.034900</td>
	<td align=center>0.212700</td>
	<td align=center>0.240800</td>
	<td align=center>0.093100</td>
	<td align=center>0.051800</td>
	<td align=center>0.094200</td>
	<td align=center>16.165900</td>
	<td align=center>846.5476</td>
	<td align=center>0.7213000</td>
	<td align=center>996.822</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;15:00</td>
	<td align=center>6.35150</td>
	<td align=center>72.31270</td>
	<td align=center>3.475800</td>
	<td align=center>1.029200</td>
	<td align=center>0.210400</td>
	<td align=center>0.237700</td>
	<td align=center>0.091400</td>
	<td align=center>0.050100</td>
	<td align=center>0.092300</td>
	<td align=center>16.148800</td>
	<td align=center>846.0518</td>
	<td align=center>0.7215000</td>
	<td align=center>995.699</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;14:00</td>
	<td align=center>6.35510</td>
	<td align=center>72.31630</td>
	<td align=center>3.475800</td>
	<td align=center>1.028900</td>
	<td align=center>0.210300</td>
	<td align=center>0.237600</td>
	<td align=center>0.090500</td>
	<td align=center>0.049600</td>
	<td align=center>0.092200</td>
	<td align=center>16.143600</td>
	<td align=center>846.1430</td>
	<td align=center>0.7214000</td>
	<td align=center>995.804</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;13:00</td>
	<td align=center>6.34900</td>
	<td align=center>72.33680</td>
	<td align=center>3.475200</td>
	<td align=center>1.027400</td>
	<td align=center>0.209300</td>
	<td align=center>0.237500</td>
	<td align=center>0.091900</td>
	<td align=center>0.051200</td>
	<td align=center>0.091600</td>
	<td align=center>16.130100</td>
	<td align=center>846.1967</td>
	<td align=center>0.7215000</td>
	<td align=center>996.357</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;12:00</td>
	<td align=center>6.36740</td>
	<td align=center>72.28130</td>
	<td align=center>3.463200</td>
	<td align=center>1.024400</td>
	<td align=center>0.209700</td>
	<td align=center>0.236800</td>
	<td align=center>0.091200</td>
	<td align=center>0.050800</td>
	<td align=center>0.092600</td>
	<td align=center>16.182600</td>
	<td align=center>845.5725</td>
	<td align=center>0.7216000</td>
	<td align=center>995.569</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;11:00</td>
	<td align=center>6.35950</td>
	<td align=center>72.29220</td>
	<td align=center>3.463600</td>
	<td align=center>1.026100</td>
	<td align=center>0.211500</td>
	<td align=center>0.237600</td>
	<td align=center>0.089500</td>
	<td align=center>0.049400</td>
	<td align=center>0.093300</td>
	<td align=center>16.177200</td>
	<td align=center>846.7455</td>
	<td align=center>0.7218000</td>
	<td align=center>995.145</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;10:00</td>
	<td align=center>6.39690</td>
	<td align=center>72.33180</td>
	<td align=center>3.504700</td>
	<td align=center>1.039100</td>
	<td align=center>0.213800</td>
	<td align=center>0.240600</td>
	<td align=center>0.092500</td>
	<td align=center>0.050800</td>
	<td align=center>0.093700</td>
	<td align=center>16.036100</td>
	<td align=center>847.7581</td>
	<td align=center>0.7218000</td>
	<td align=center>996.693</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;09:00</td>
	<td align=center>6.39110</td>
	<td align=center>72.31800</td>
	<td align=center>3.492300</td>
	<td align=center>1.033700</td>
	<td align=center>0.212000</td>
	<td align=center>0.239000</td>
	<td align=center>0.091900</td>
	<td align=center>0.050500</td>
	<td align=center>0.092900</td>
	<td align=center>16.078500</td>
	<td align=center>847.0651</td>
	<td align=center>0.7217000</td>
	<td align=center>997.198</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;08:00</td>
	<td align=center>6.37190</td>
	<td align=center>72.32110</td>
	<td align=center>3.476500</td>
	<td align=center>1.030700</td>
	<td align=center>0.211900</td>
	<td align=center>0.238600</td>
	<td align=center>0.091100</td>
	<td align=center>0.051700</td>
	<td align=center>0.093100</td>
	<td align=center>16.113400</td>
	<td align=center>846.4133</td>
	<td align=center>0.7216000</td>
	<td align=center>996.305</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;07:00</td>
	<td align=center>6.36910</td>
	<td align=center>72.30950</td>
	<td align=center>3.474000</td>
	<td align=center>1.023100</td>
	<td align=center>0.207600</td>
	<td align=center>0.235900</td>
	<td align=center>0.093200</td>
	<td align=center>0.052500</td>
	<td align=center>0.093000</td>
	<td align=center>16.142100</td>
	<td align=center>846.2482</td>
	<td align=center>0.7217000</td>
	<td align=center>995.841</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;06:00</td>
	<td align=center>6.36090</td>
	<td align=center>72.28950</td>
	<td align=center>3.461500</td>
	<td align=center>1.025200</td>
	<td align=center>0.210600</td>
	<td align=center>0.237200</td>
	<td align=center>0.091300</td>
	<td align=center>0.050300</td>
	<td align=center>0.093200</td>
	<td align=center>16.180100</td>
	<td align=center>845.5841</td>
	<td align=center>0.7216000</td>
	<td align=center>995.179</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;05:00</td>
	<td align=center>6.35430</td>
	<td align=center>72.27310</td>
	<td align=center>3.457800</td>
	<td align=center>1.021400</td>
	<td align=center>0.208300</td>
	<td align=center>0.235300</td>
	<td align=center>0.090900</td>
	<td align=center>0.050700</td>
	<td align=center>0.093000</td>
	<td align=center>16.215100</td>
	<td align=center>845.2947</td>
	<td align=center>0.7215000</td>
	<td align=center>995.092</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;04:00</td>
	<td align=center>6.38260</td>
	<td align=center>72.32340</td>
	<td align=center>3.486700</td>
	<td align=center>1.034100</td>
	<td align=center>0.212900</td>
	<td align=center>0.238600</td>
	<td align=center>0.090400</td>
	<td align=center>0.049600</td>
	<td align=center>0.093900</td>
	<td align=center>16.087800</td>
	<td align=center>845.4811</td>
	<td align=center>0.7215000</td>
	<td align=center>996.753</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;03:00</td>
	<td align=center>6.36980</td>
	<td align=center>72.31910</td>
	<td align=center>3.466100</td>
	<td align=center>1.026100</td>
	<td align=center>0.210400</td>
	<td align=center>0.237500</td>
	<td align=center>0.091700</td>
	<td align=center>0.053000</td>
	<td align=center>0.105500</td>
	<td align=center>16.120700</td>
	<td align=center>845.9583</td>
	<td align=center>0.7218000</td>
	<td align=center>996.693</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;02:00</td>
	<td align=center>6.33760</td>
	<td align=center>72.44790</td>
	<td align=center>3.492900</td>
	<td align=center>1.042200</td>
	<td align=center>0.217100</td>
	<td align=center>0.247300</td>
	<td align=center>0.098000</td>
	<td align=center>0.054500</td>
	<td align=center>0.094300</td>
	<td align=center>15.968000</td>
	<td align=center>849.5920</td>
	<td align=center>0.7204000</td>
	<td align=center>999.991</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;01:00</td>
	<td align=center>6.33590</td>
	<td align=center>72.49730</td>
	<td align=center>3.475300</td>
	<td align=center>1.017600</td>
	<td align=center>0.207200</td>
	<td align=center>0.235200</td>
	<td align=center>0.088700</td>
	<td align=center>0.048900</td>
	<td align=center>0.092900</td>
	<td align=center>16.000900</td>
	<td align=center>847.9169</td>
	<td align=center>0.7205000</td>
	<td align=center>998.566</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;00:00</td>
	<td align=center>6.34660</td>
	<td align=center>72.52570</td>
	<td align=center>3.487500</td>
	<td align=center>1.025400</td>
	<td align=center>0.210100</td>
	<td align=center>0.237000</td>
	<td align=center>0.091000</td>
	<td align=center>0.050200</td>
	<td align=center>0.092700</td>
	<td align=center>15.933600</td>
	<td align=center>848.6449</td>
	<td align=center>0.7206000</td>
	<td align=center>999.445</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;23:00</td>
	<td align=center>6.35580</td>
	<td align=center>72.53550</td>
	<td align=center>3.492400</td>
	<td align=center>1.026400</td>
	<td align=center>0.211200</td>
	<td align=center>0.237300</td>
	<td align=center>0.090700</td>
	<td align=center>0.050300</td>
	<td align=center>0.092600</td>
	<td align=center>15.907800</td>
	<td align=center>848.7872</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.099</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;22:00</td>
	<td align=center>6.34910</td>
	<td align=center>72.71730</td>
	<td align=center>3.504100</td>
	<td align=center>1.021900</td>
	<td align=center>0.209800</td>
	<td align=center>0.236400</td>
	<td align=center>0.090700</td>
	<td align=center>0.050300</td>
	<td align=center>0.092700</td>
	<td align=center>15.727600</td>
	<td align=center>850.5765</td>
	<td align=center>0.7197000</td>
	<td align=center>1002.087</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;21:00</td>
	<td align=center>6.35800</td>
	<td align=center>72.54440</td>
	<td align=center>3.491800</td>
	<td align=center>1.025500</td>
	<td align=center>0.210500</td>
	<td align=center>0.237300</td>
	<td align=center>0.091000</td>
	<td align=center>0.050200</td>
	<td align=center>0.092800</td>
	<td align=center>15.898400</td>
	<td align=center>848.5107</td>
	<td align=center>0.7205000</td>
	<td align=center>999.042</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;20:00</td>
	<td align=center>6.34470</td>
	<td align=center>72.52290</td>
	<td align=center>3.491200</td>
	<td align=center>1.027200</td>
	<td align=center>0.210700</td>
	<td align=center>0.237800</td>
	<td align=center>0.091200</td>
	<td align=center>0.050400</td>
	<td align=center>0.092600</td>
	<td align=center>15.931400</td>
	<td align=center>848.2633</td>
	<td align=center>0.7205000</td>
	<td align=center>999.373</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;19:00</td>
	<td align=center>6.34310</td>
	<td align=center>72.51670</td>
	<td align=center>3.489800</td>
	<td align=center>1.026000</td>
	<td align=center>0.210500</td>
	<td align=center>0.237500</td>
	<td align=center>0.091000</td>
	<td align=center>0.050200</td>
	<td align=center>0.092300</td>
	<td align=center>15.942900</td>
	<td align=center>848.1727</td>
	<td align=center>0.7206000</td>
	<td align=center>999.303</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;18:00</td>
	<td align=center>6.32170</td>
	<td align=center>72.53160</td>
	<td align=center>3.491600</td>
	<td align=center>1.028300</td>
	<td align=center>0.212100</td>
	<td align=center>0.238900</td>
	<td align=center>0.092200</td>
	<td align=center>0.051700</td>
	<td align=center>0.092500</td>
	<td align=center>15.939500</td>
	<td align=center>848.8162</td>
	<td align=center>0.7204000</td>
	<td align=center>999.498</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;17:00</td>
	<td align=center>6.31800</td>
	<td align=center>72.51900</td>
	<td align=center>3.486400</td>
	<td align=center>1.026000</td>
	<td align=center>0.210600</td>
	<td align=center>0.237400</td>
	<td align=center>0.091200</td>
	<td align=center>0.050400</td>
	<td align=center>0.092600</td>
	<td align=center>15.968500</td>
	<td align=center>848.4528</td>
	<td align=center>0.7204000</td>
	<td align=center>999.395</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;16:00</td>
	<td align=center>6.31220</td>
	<td align=center>72.52230</td>
	<td align=center>3.481700</td>
	<td align=center>1.023900</td>
	<td align=center>0.209800</td>
	<td align=center>0.236800</td>
	<td align=center>0.090300</td>
	<td align=center>0.049500</td>
	<td align=center>0.092200</td>
	<td align=center>15.981500</td>
	<td align=center>848.0977</td>
	<td align=center>0.7204000</td>
	<td align=center>999.231</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;15:00</td>
	<td align=center>6.32090</td>
	<td align=center>72.52710</td>
	<td align=center>3.490300</td>
	<td align=center>1.026900</td>
	<td align=center>0.210600</td>
	<td align=center>0.237300</td>
	<td align=center>0.091100</td>
	<td align=center>0.050300</td>
	<td align=center>0.092300</td>
	<td align=center>15.953300</td>
	<td align=center>848.2050</td>
	<td align=center>0.7205000</td>
	<td align=center>999.497</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;14:00</td>
	<td align=center>6.31620</td>
	<td align=center>72.52880</td>
	<td align=center>3.482900</td>
	<td align=center>1.024300</td>
	<td align=center>0.210300</td>
	<td align=center>0.237000</td>
	<td align=center>0.090600</td>
	<td align=center>0.050100</td>
	<td align=center>0.092500</td>
	<td align=center>15.967200</td>
	<td align=center>848.2560</td>
	<td align=center>0.7204000</td>
	<td align=center>999.288</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;13:00</td>
	<td align=center>6.31390</td>
	<td align=center>72.53260</td>
	<td align=center>3.481000</td>
	<td align=center>1.021400</td>
	<td align=center>0.209200</td>
	<td align=center>0.235900</td>
	<td align=center>0.090200</td>
	<td align=center>0.049800</td>
	<td align=center>0.092400</td>
	<td align=center>15.973600</td>
	<td align=center>848.0981</td>
	<td align=center>0.7203000</td>
	<td align=center>999.414</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;12:00</td>
	<td align=center>6.31770</td>
	<td align=center>72.53600</td>
	<td align=center>3.486400</td>
	<td align=center>1.023700</td>
	<td align=center>0.209700</td>
	<td align=center>0.236300</td>
	<td align=center>0.090700</td>
	<td align=center>0.050200</td>
	<td align=center>0.092600</td>
	<td align=center>15.956600</td>
	<td align=center>848.1451</td>
	<td align=center>0.7203000</td>
	<td align=center>999.486</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;11:00</td>
	<td align=center>6.31630</td>
	<td align=center>72.52170</td>
	<td align=center>3.481900</td>
	<td align=center>1.024200</td>
	<td align=center>0.210500</td>
	<td align=center>0.236500</td>
	<td align=center>0.090200</td>
	<td align=center>0.050700</td>
	<td align=center>0.092600</td>
	<td align=center>15.975500</td>
	<td align=center>847.9285</td>
	<td align=center>0.7203000</td>
	<td align=center>999.651</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;10:00</td>
	<td align=center>6.32650</td>
	<td align=center>72.52260</td>
	<td align=center>3.487800</td>
	<td align=center>1.024200</td>
	<td align=center>0.209900</td>
	<td align=center>0.236600</td>
	<td align=center>0.090700</td>
	<td align=center>0.050100</td>
	<td align=center>0.092500</td>
	<td align=center>15.959100</td>
	<td align=center>848.6265</td>
	<td align=center>0.7205000</td>
	<td align=center>999.524</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;09:00</td>
	<td align=center>6.33540</td>
	<td align=center>72.52460</td>
	<td align=center>3.487500</td>
	<td align=center>1.028400</td>
	<td align=center>0.212500</td>
	<td align=center>0.236900</td>
	<td align=center>0.089600</td>
	<td align=center>0.048400</td>
	<td align=center>0.091700</td>
	<td align=center>15.944900</td>
	<td align=center>848.0740</td>
	<td align=center>0.7205000</td>
	<td align=center>999.245</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;08:00</td>
	<td align=center>6.34340</td>
	<td align=center>72.52650</td>
	<td align=center>3.493100</td>
	<td align=center>1.025600</td>
	<td align=center>0.210400</td>
	<td align=center>0.236900</td>
	<td align=center>0.091400</td>
	<td align=center>0.051700</td>
	<td align=center>0.092000</td>
	<td align=center>15.929000</td>
	<td align=center>848.4737</td>
	<td align=center>0.7205000</td>
	<td align=center>999.565</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;07:00</td>
	<td align=center>6.33650</td>
	<td align=center>72.52140</td>
	<td align=center>3.488000</td>
	<td align=center>1.029400</td>
	<td align=center>0.214700</td>
	<td align=center>0.239500</td>
	<td align=center>0.092400</td>
	<td align=center>0.051700</td>
	<td align=center>0.091200</td>
	<td align=center>15.934800</td>
	<td align=center>848.4048</td>
	<td align=center>0.7206000</td>
	<td align=center>999.564</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;06:00</td>
	<td align=center>6.33660</td>
	<td align=center>72.53160</td>
	<td align=center>3.485900</td>
	<td align=center>1.021000</td>
	<td align=center>0.207800</td>
	<td align=center>0.236000</td>
	<td align=center>0.088800</td>
	<td align=center>0.048200</td>
	<td align=center>0.091100</td>
	<td align=center>15.952800</td>
	<td align=center>848.3321</td>
	<td align=center>0.7205000</td>
	<td align=center>999.397</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;05:00</td>
	<td align=center>6.32960</td>
	<td align=center>72.51330</td>
	<td align=center>3.471000</td>
	<td align=center>1.019500</td>
	<td align=center>0.209400</td>
	<td align=center>0.235900</td>
	<td align=center>0.090500</td>
	<td align=center>0.049400</td>
	<td align=center>0.091100</td>
	<td align=center>15.990100</td>
	<td align=center>847.9039</td>
	<td align=center>0.7205000</td>
	<td align=center>998.546</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;04:00</td>
	<td align=center>6.33670</td>
	<td align=center>72.52630</td>
	<td align=center>3.488100</td>
	<td align=center>1.028800</td>
	<td align=center>0.211500</td>
	<td align=center>0.236200</td>
	<td align=center>0.089600</td>
	<td align=center>0.049700</td>
	<td align=center>0.090800</td>
	<td align=center>15.942400</td>
	<td align=center>847.7939</td>
	<td align=center>0.7204000</td>
	<td align=center>999.367</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;03:00</td>
	<td align=center>6.34030</td>
	<td align=center>72.52830</td>
	<td align=center>3.491200</td>
	<td align=center>1.027200</td>
	<td align=center>0.210700</td>
	<td align=center>0.237200</td>
	<td align=center>0.090600</td>
	<td align=center>0.049900</td>
	<td align=center>0.091400</td>
	<td align=center>15.933200</td>
	<td align=center>848.5350</td>
	<td align=center>0.7205000</td>
	<td align=center>999.365</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;02:00</td>
	<td align=center>6.33970</td>
	<td align=center>72.53300</td>
	<td align=center>3.490800</td>
	<td align=center>1.025700</td>
	<td align=center>0.210500</td>
	<td align=center>0.237100</td>
	<td align=center>0.090700</td>
	<td align=center>0.050100</td>
	<td align=center>0.091400</td>
	<td align=center>15.931200</td>
	<td align=center>848.4279</td>
	<td align=center>0.7205000</td>
	<td align=center>999.509</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;01:00</td>
	<td align=center>6.33520</td>
	<td align=center>72.53800</td>
	<td align=center>3.488200</td>
	<td align=center>1.024300</td>
	<td align=center>0.209800</td>
	<td align=center>0.236400</td>
	<td align=center>0.090400</td>
	<td align=center>0.049900</td>
	<td align=center>0.091500</td>
	<td align=center>15.936700</td>
	<td align=center>848.3012</td>
	<td align=center>0.7204000</td>
	<td align=center>999.299</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;00:00</td>
	<td align=center>6.33140</td>
	<td align=center>72.52880</td>
	<td align=center>3.488800</td>
	<td align=center>1.025500</td>
	<td align=center>0.210800</td>
	<td align=center>0.237700</td>
	<td align=center>0.091100</td>
	<td align=center>0.050400</td>
	<td align=center>0.092800</td>
	<td align=center>15.942800</td>
	<td align=center>848.4860</td>
	<td align=center>0.7205000</td>
	<td align=center>999.672</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;23:00</td>
	<td align=center>6.32840</td>
	<td align=center>72.51730</td>
	<td align=center>3.483700</td>
	<td align=center>1.024200</td>
	<td align=center>0.210800</td>
	<td align=center>0.237600</td>
	<td align=center>0.091100</td>
	<td align=center>0.050200</td>
	<td align=center>0.092800</td>
	<td align=center>15.963800</td>
	<td align=center>848.4023</td>
	<td align=center>0.7204000</td>
	<td align=center>999.276</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;22:00</td>
	<td align=center>6.32160</td>
	<td align=center>72.52140</td>
	<td align=center>3.479400</td>
	<td align=center>1.022600</td>
	<td align=center>0.210100</td>
	<td align=center>0.237000</td>
	<td align=center>0.090700</td>
	<td align=center>0.050100</td>
	<td align=center>0.092700</td>
	<td align=center>15.974400</td>
	<td align=center>847.7758</td>
	<td align=center>0.7204000</td>
	<td align=center>998.877</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;21:00</td>
	<td align=center>6.31570</td>
	<td align=center>72.53100</td>
	<td align=center>3.471800</td>
	<td align=center>1.019000</td>
	<td align=center>0.208900</td>
	<td align=center>0.235900</td>
	<td align=center>0.091500</td>
	<td align=center>0.051000</td>
	<td align=center>0.093300</td>
	<td align=center>15.981800</td>
	<td align=center>848.1571</td>
	<td align=center>0.7205000</td>
	<td align=center>999.570</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;20:00</td>
	<td align=center>6.33660</td>
	<td align=center>72.51760</td>
	<td align=center>3.493800</td>
	<td align=center>1.028700</td>
	<td align=center>0.211500</td>
	<td align=center>0.238700</td>
	<td align=center>0.091800</td>
	<td align=center>0.050700</td>
	<td align=center>0.091900</td>
	<td align=center>15.938900</td>
	<td align=center>848.4670</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.151</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;19:00</td>
	<td align=center>6.33200</td>
	<td align=center>72.51970</td>
	<td align=center>3.488700</td>
	<td align=center>1.025600</td>
	<td align=center>0.210800</td>
	<td align=center>0.238000</td>
	<td align=center>0.091400</td>
	<td align=center>0.050500</td>
	<td align=center>0.093000</td>
	<td align=center>15.950300</td>
	<td align=center>848.6592</td>
	<td align=center>0.7206000</td>
	<td align=center>999.658</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;18:00</td>
	<td align=center>6.32450</td>
	<td align=center>72.53030</td>
	<td align=center>3.480000</td>
	<td align=center>1.021100</td>
	<td align=center>0.209600</td>
	<td align=center>0.236300</td>
	<td align=center>0.090700</td>
	<td align=center>0.050100</td>
	<td align=center>0.092900</td>
	<td align=center>15.964600</td>
	<td align=center>848.1330</td>
	<td align=center>0.7204000</td>
	<td align=center>999.406</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;17:00</td>
	<td align=center>6.32080</td>
	<td align=center>72.51910</td>
	<td align=center>3.480200</td>
	<td align=center>1.024000</td>
	<td align=center>0.210500</td>
	<td align=center>0.237800</td>
	<td align=center>0.091800</td>
	<td align=center>0.051400</td>
	<td align=center>0.098900</td>
	<td align=center>15.965500</td>
	<td align=center>848.5191</td>
	<td align=center>0.7206000</td>
	<td align=center>999.569</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;16:00</td>
	<td align=center>6.31480</td>
	<td align=center>72.51550</td>
	<td align=center>3.469500</td>
	<td align=center>1.020200</td>
	<td align=center>0.209200</td>
	<td align=center>0.236400</td>
	<td align=center>0.091100</td>
	<td align=center>0.050500</td>
	<td align=center>0.092400</td>
	<td align=center>16.000400</td>
	<td align=center>847.7232</td>
	<td align=center>0.7204000</td>
	<td align=center>998.824</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;15:00</td>
	<td align=center>6.32410</td>
	<td align=center>72.52650</td>
	<td align=center>3.478800</td>
	<td align=center>1.022400</td>
	<td align=center>0.209900</td>
	<td align=center>0.237200</td>
	<td align=center>0.090700</td>
	<td align=center>0.049900</td>
	<td align=center>0.092200</td>
	<td align=center>15.968300</td>
	<td align=center>848.4214</td>
	<td align=center>0.7204000</td>
	<td align=center>999.069</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;14:00</td>
	<td align=center>6.32870</td>
	<td align=center>72.53230</td>
	<td align=center>3.482400</td>
	<td align=center>1.021500</td>
	<td align=center>0.208800</td>
	<td align=center>0.235800</td>
	<td align=center>0.091200</td>
	<td align=center>0.050600</td>
	<td align=center>0.092400</td>
	<td align=center>15.956300</td>
	<td align=center>848.1967</td>
	<td align=center>0.7204000</td>
	<td align=center>999.462</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;13:00</td>
	<td align=center>6.33140</td>
	<td align=center>72.54630</td>
	<td align=center>3.485700</td>
	<td align=center>1.023600</td>
	<td align=center>0.210200</td>
	<td align=center>0.237100</td>
	<td align=center>0.091100</td>
	<td align=center>0.050300</td>
	<td align=center>0.091900</td>
	<td align=center>15.932300</td>
	<td align=center>848.1161</td>
	<td align=center>0.7204000</td>
	<td align=center>999.409</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;12:00</td>
	<td align=center>6.31850</td>
	<td align=center>72.55250</td>
	<td align=center>3.483300</td>
	<td align=center>1.025200</td>
	<td align=center>0.211400</td>
	<td align=center>0.239400</td>
	<td align=center>0.092200</td>
	<td align=center>0.050800</td>
	<td align=center>0.092100</td>
	<td align=center>15.934600</td>
	<td align=center>848.2951</td>
	<td align=center>0.7203000</td>
	<td align=center>996.971</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;11:00</td>
	<td align=center>6.31690</td>
	<td align=center>72.54080</td>
	<td align=center>3.479600</td>
	<td align=center>1.021700</td>
	<td align=center>0.209500</td>
	<td align=center>0.236400</td>
	<td align=center>0.090900</td>
	<td align=center>0.050500</td>
	<td align=center>0.092900</td>
	<td align=center>15.960700</td>
	<td align=center>848.2903</td>
	<td align=center>0.7203000</td>
	<td align=center>999.263</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;10:00</td>
	<td align=center>6.30710</td>
	<td align=center>72.55870</td>
	<td align=center>3.477500</td>
	<td align=center>1.016600</td>
	<td align=center>0.206300</td>
	<td align=center>0.234900</td>
	<td align=center>0.091400</td>
	<td align=center>0.050900</td>
	<td align=center>0.094600</td>
	<td align=center>15.962000</td>
	<td align=center>848.7034</td>
	<td align=center>0.7203000</td>
	<td align=center>999.569</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;09:00</td>
	<td align=center>6.32010</td>
	<td align=center>72.53360</td>
	<td align=center>3.477400</td>
	<td align=center>1.021100</td>
	<td align=center>0.208300</td>
	<td align=center>0.237600</td>
	<td align=center>0.093700</td>
	<td align=center>0.052800</td>
	<td align=center>0.096200</td>
	<td align=center>15.959300</td>
	<td align=center>848.6053</td>
	<td align=center>0.7206000</td>
	<td align=center>999.728</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;08:00</td>
	<td align=center>6.32910</td>
	<td align=center>72.54530</td>
	<td align=center>3.485200</td>
	<td align=center>1.025400</td>
	<td align=center>0.211100</td>
	<td align=center>0.239200</td>
	<td align=center>0.094200</td>
	<td align=center>0.052600</td>
	<td align=center>0.096800</td>
	<td align=center>15.921100</td>
	<td align=center>848.8757</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.346</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;07:00</td>
	<td align=center>6.34460</td>
	<td align=center>72.50560</td>
	<td align=center>3.494400</td>
	<td align=center>1.032300</td>
	<td align=center>0.212900</td>
	<td align=center>0.240900</td>
	<td align=center>0.093400</td>
	<td align=center>0.051800</td>
	<td align=center>0.096600</td>
	<td align=center>15.927600</td>
	<td align=center>848.1125</td>
	<td align=center>0.7210000</td>
	<td align=center>999.869</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;06:00</td>
	<td align=center>6.32500</td>
	<td align=center>72.49290</td>
	<td align=center>3.472000</td>
	<td align=center>1.021900</td>
	<td align=center>0.210100</td>
	<td align=center>0.238400</td>
	<td align=center>0.093200</td>
	<td align=center>0.051600</td>
	<td align=center>0.096500</td>
	<td align=center>15.998800</td>
	<td align=center>848.1578</td>
	<td align=center>0.7207000</td>
	<td align=center>998.755</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;05:00</td>
	<td align=center>6.34620</td>
	<td align=center>72.54010</td>
	<td align=center>3.503300</td>
	<td align=center>1.034200</td>
	<td align=center>0.213200</td>
	<td align=center>0.241700</td>
	<td align=center>0.094200</td>
	<td align=center>0.052200</td>
	<td align=center>0.096300</td>
	<td align=center>15.878500</td>
	<td align=center>849.5892</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.631</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;04:00</td>
	<td align=center>6.33280</td>
	<td align=center>72.56990</td>
	<td align=center>3.506800</td>
	<td align=center>1.033400</td>
	<td align=center>0.212600</td>
	<td align=center>0.239600</td>
	<td align=center>0.092000</td>
	<td align=center>0.051000</td>
	<td align=center>0.092500</td>
	<td align=center>15.869500</td>
	<td align=center>849.2181</td>
	<td align=center>0.7204000</td>
	<td align=center>1000.564</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;03:00</td>
	<td align=center>6.34980</td>
	<td align=center>72.59760</td>
	<td align=center>3.518700</td>
	<td align=center>1.034700</td>
	<td align=center>0.212600</td>
	<td align=center>0.239400</td>
	<td align=center>0.092000</td>
	<td align=center>0.051300</td>
	<td align=center>0.092400</td>
	<td align=center>15.811500</td>
	<td align=center>850.2193</td>
	<td align=center>0.7205000</td>
	<td align=center>1001.150</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;02:00</td>
	<td align=center>6.31720</td>
	<td align=center>72.54390</td>
	<td align=center>3.478500</td>
	<td align=center>1.021200</td>
	<td align=center>0.209200</td>
	<td align=center>0.235900</td>
	<td align=center>0.089200</td>
	<td align=center>0.047900</td>
	<td align=center>0.091200</td>
	<td align=center>15.965900</td>
	<td align=center>848.5497</td>
	<td align=center>0.7203000</td>
	<td align=center>999.713</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;01:00</td>
	<td align=center>6.32480</td>
	<td align=center>72.53730</td>
	<td align=center>3.484300</td>
	<td align=center>1.025800</td>
	<td align=center>0.210300</td>
	<td align=center>0.237500</td>
	<td align=center>0.090500</td>
	<td align=center>0.050000</td>
	<td align=center>0.091400</td>
	<td align=center>15.948100</td>
	<td align=center>848.7158</td>
	<td align=center>0.7205000</td>
	<td align=center>999.613</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;00:00</td>
	<td align=center>6.32230</td>
	<td align=center>72.56740</td>
	<td align=center>3.492600</td>
	<td align=center>1.025900</td>
	<td align=center>0.210200</td>
	<td align=center>0.236600</td>
	<td align=center>0.090100</td>
	<td align=center>0.049700</td>
	<td align=center>0.091300</td>
	<td align=center>15.913900</td>
	<td align=center>848.5795</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.122</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;23:00</td>
	<td align=center>6.32380</td>
	<td align=center>72.50640</td>
	<td align=center>3.478800</td>
	<td align=center>1.021800</td>
	<td align=center>0.209100</td>
	<td align=center>0.236000</td>
	<td align=center>0.090400</td>
	<td align=center>0.049800</td>
	<td align=center>0.090500</td>
	<td align=center>15.993300</td>
	<td align=center>847.2598</td>
	<td align=center>0.7205000</td>
	<td align=center>998.790</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;22:00</td>
	<td align=center>6.40010</td>
	<td align=center>72.45550</td>
	<td align=center>3.475800</td>
	<td align=center>1.021300</td>
	<td align=center>0.209100</td>
	<td align=center>0.235000</td>
	<td align=center>0.089400</td>
	<td align=center>0.049100</td>
	<td align=center>0.088800</td>
	<td align=center>15.975900</td>
	<td align=center>847.9062</td>
	<td align=center>0.7207000</td>
	<td align=center>998.237</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;21:00</td>
	<td align=center>6.39580</td>
	<td align=center>72.49160</td>
	<td align=center>3.475000</td>
	<td align=center>1.015700</td>
	<td align=center>0.207300</td>
	<td align=center>0.232900</td>
	<td align=center>0.088600</td>
	<td align=center>0.048500</td>
	<td align=center>0.087900</td>
	<td align=center>15.956900</td>
	<td align=center>846.9448</td>
	<td align=center>0.7207000</td>
	<td align=center>997.656</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;20:00</td>
	<td align=center>6.40530</td>
	<td align=center>72.47970</td>
	<td align=center>3.478300</td>
	<td align=center>1.019300</td>
	<td align=center>0.207100</td>
	<td align=center>0.231800</td>
	<td align=center>0.086400</td>
	<td align=center>0.047400</td>
	<td align=center>0.083200</td>
	<td align=center>15.961400</td>
	<td align=center>846.5587</td>
	<td align=center>0.7207000</td>
	<td align=center>997.239</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;19:00</td>
	<td align=center>6.38600</td>
	<td align=center>72.45420</td>
	<td align=center>3.449600</td>
	<td align=center>1.007500</td>
	<td align=center>0.204600</td>
	<td align=center>0.229200</td>
	<td align=center>0.085800</td>
	<td align=center>0.047200</td>
	<td align=center>0.084700</td>
	<td align=center>16.051300</td>
	<td align=center>844.8572</td>
	<td align=center>0.7205000</td>
	<td align=center>996.300</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;18:00</td>
	<td align=center>6.45200</td>
	<td align=center>72.41320</td>
	<td align=center>3.473500</td>
	<td align=center>1.021100</td>
	<td align=center>0.210200</td>
	<td align=center>0.236600</td>
	<td align=center>0.090500</td>
	<td align=center>0.049700</td>
	<td align=center>0.090900</td>
	<td align=center>15.962300</td>
	<td align=center>846.6221</td>
	<td align=center>0.7215000</td>
	<td align=center>996.936</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;17:00</td>
	<td align=center>6.45050</td>
	<td align=center>72.43150</td>
	<td align=center>3.474000</td>
	<td align=center>1.018600</td>
	<td align=center>0.208800</td>
	<td align=center>0.235200</td>
	<td align=center>0.090100</td>
	<td align=center>0.049800</td>
	<td align=center>0.092300</td>
	<td align=center>15.949400</td>
	<td align=center>846.8389</td>
	<td align=center>0.7213000</td>
	<td align=center>997.130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;16:00</td>
	<td align=center>6.36010</td>
	<td align=center>72.48640</td>
	<td align=center>3.466800</td>
	<td align=center>1.017200</td>
	<td align=center>0.209100</td>
	<td align=center>0.236400</td>
	<td align=center>0.090900</td>
	<td align=center>0.050000</td>
	<td align=center>0.094900</td>
	<td align=center>15.988100</td>
	<td align=center>847.4770</td>
	<td align=center>0.7208000</td>
	<td align=center>998.156</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;15:00</td>
	<td align=center>6.36870</td>
	<td align=center>72.48720</td>
	<td align=center>3.477800</td>
	<td align=center>1.021000</td>
	<td align=center>0.209700</td>
	<td align=center>0.237100</td>
	<td align=center>0.091800</td>
	<td align=center>0.050600</td>
	<td align=center>0.095400</td>
	<td align=center>15.960700</td>
	<td align=center>848.0602</td>
	<td align=center>0.7209000</td>
	<td align=center>998.995</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;14:00</td>
	<td align=center>6.37560</td>
	<td align=center>72.49760</td>
	<td align=center>3.490300</td>
	<td align=center>1.026900</td>
	<td align=center>0.211300</td>
	<td align=center>0.238300</td>
	<td align=center>0.092000</td>
	<td align=center>0.051000</td>
	<td align=center>0.096100</td>
	<td align=center>15.921000</td>
	<td align=center>848.5651</td>
	<td align=center>0.7210000</td>
	<td align=center>999.109</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;13:00</td>
	<td align=center>6.36840</td>
	<td align=center>72.50890</td>
	<td align=center>3.480200</td>
	<td align=center>1.019300</td>
	<td align=center>0.208800</td>
	<td align=center>0.235700</td>
	<td align=center>0.091100</td>
	<td align=center>0.050600</td>
	<td align=center>0.095300</td>
	<td align=center>15.941600</td>
	<td align=center>847.9335</td>
	<td align=center>0.7208000</td>
	<td align=center>998.835</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;12:00</td>
	<td align=center>6.36630</td>
	<td align=center>72.50520</td>
	<td align=center>3.473200</td>
	<td align=center>1.015600</td>
	<td align=center>0.208400</td>
	<td align=center>0.235200</td>
	<td align=center>0.091500</td>
	<td align=center>0.050900</td>
	<td align=center>0.094300</td>
	<td align=center>15.959500</td>
	<td align=center>847.5724</td>
	<td align=center>0.7207000</td>
	<td align=center>998.565</td> 
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
