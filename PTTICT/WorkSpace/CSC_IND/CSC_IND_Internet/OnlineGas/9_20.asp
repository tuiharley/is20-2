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
<title>Gas Composition Past 7 Days (BIT)</title>
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
	timerID = setTimeout(document.location='9_20.asp',300000);	  
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
	<td width="809" class="head4" bgcolor="#000066"><font color="#FFFFFF">Gas Composition Past 7 days (BIT)</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="832">
  <tr class="head">
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT Ban I Tong (BIT) - PAST 7 DAYS</strong></td>
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
	<td align=center>6.39730</td>
	<td align=center>72.60300</td>
	<td align=center>3.527500</td>
	<td align=center>1.054900</td>
	<td align=center>0.211400</td>
	<td align=center>0.234400</td>
	<td align=center>0.088800</td>
	<td align=center>0.046800</td>
	<td align=center>0.061800</td>
	<td align=center>15.774100</td>
	<td align=center>848.8806</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.370</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:00</td>
	<td align=center>6.38320</td>
	<td align=center>72.59020</td>
	<td align=center>3.510200</td>
	<td align=center>1.049000</td>
	<td align=center>0.209300</td>
	<td align=center>0.232200</td>
	<td align=center>0.091100</td>
	<td align=center>0.049800</td>
	<td align=center>0.061200</td>
	<td align=center>15.823900</td>
	<td align=center>848.3350</td>
	<td align=center>0.7200000</td>
	<td align=center>999.761</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:00</td>
	<td align=center>6.38490</td>
	<td align=center>72.56790</td>
	<td align=center>3.506300</td>
	<td align=center>1.045800</td>
	<td align=center>0.209300</td>
	<td align=center>0.231800</td>
	<td align=center>0.088500</td>
	<td align=center>0.048100</td>
	<td align=center>0.061700</td>
	<td align=center>15.855800</td>
	<td align=center>847.7930</td>
	<td align=center>0.7200000</td>
	<td align=center>999.108</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:00</td>
	<td align=center>6.37990</td>
	<td align=center>72.57370</td>
	<td align=center>3.513700</td>
	<td align=center>1.053900</td>
	<td align=center>0.210900</td>
	<td align=center>0.234300</td>
	<td align=center>0.090500</td>
	<td align=center>0.049600</td>
	<td align=center>0.061700</td>
	<td align=center>15.831700</td>
	<td align=center>848.4713</td>
	<td align=center>0.7201000</td>
	<td align=center>999.839</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:00</td>
	<td align=center>6.37520</td>
	<td align=center>72.55910</td>
	<td align=center>3.501700</td>
	<td align=center>1.048700</td>
	<td align=center>0.210400</td>
	<td align=center>0.234500</td>
	<td align=center>0.092300</td>
	<td align=center>0.050500</td>
	<td align=center>0.065200</td>
	<td align=center>15.862600</td>
	<td align=center>848.2382</td>
	<td align=center>0.7202000</td>
	<td align=center>999.493</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:00</td>
	<td align=center>6.38350</td>
	<td align=center>72.54400</td>
	<td align=center>3.504900</td>
	<td align=center>1.049800</td>
	<td align=center>0.211400</td>
	<td align=center>0.235200</td>
	<td align=center>0.090000</td>
	<td align=center>0.049000</td>
	<td align=center>0.064700</td>
	<td align=center>15.867600</td>
	<td align=center>848.0510</td>
	<td align=center>0.7203000</td>
	<td align=center>999.224</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:00</td>
	<td align=center>6.36720</td>
	<td align=center>72.52590</td>
	<td align=center>3.488600</td>
	<td align=center>1.043200</td>
	<td align=center>0.209800</td>
	<td align=center>0.233800</td>
	<td align=center>0.092400</td>
	<td align=center>0.051200</td>
	<td align=center>0.065200</td>
	<td align=center>15.922800</td>
	<td align=center>847.5191</td>
	<td align=center>0.7203000</td>
	<td align=center>998.610</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:00</td>
	<td align=center>6.38120</td>
	<td align=center>72.56530</td>
	<td align=center>3.507700</td>
	<td align=center>1.052100</td>
	<td align=center>0.211800</td>
	<td align=center>0.236200</td>
	<td align=center>0.092200</td>
	<td align=center>0.050700</td>
	<td align=center>0.065700</td>
	<td align=center>15.837100</td>
	<td align=center>848.6275</td>
	<td align=center>0.7203000</td>
	<td align=center>999.898</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:00</td>
	<td align=center>6.36730</td>
	<td align=center>72.52480</td>
	<td align=center>3.485500</td>
	<td align=center>1.043100</td>
	<td align=center>0.211000</td>
	<td align=center>0.235500</td>
	<td align=center>0.090500</td>
	<td align=center>0.050200</td>
	<td align=center>0.065700</td>
	<td align=center>15.926300</td>
	<td align=center>847.4564</td>
	<td align=center>0.7203000</td>
	<td align=center>998.537</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:00</td>
	<td align=center>6.37290</td>
	<td align=center>72.53220</td>
	<td align=center>3.493700</td>
	<td align=center>1.045700</td>
	<td align=center>0.210900</td>
	<td align=center>0.235800</td>
	<td align=center>0.092700</td>
	<td align=center>0.051400</td>
	<td align=center>0.065600</td>
	<td align=center>15.899100</td>
	<td align=center>847.8813</td>
	<td align=center>0.7204000</td>
	<td align=center>998.986</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:00</td>
	<td align=center>6.38660</td>
	<td align=center>72.54070</td>
	<td align=center>3.498400</td>
	<td align=center>1.050500</td>
	<td align=center>0.211500</td>
	<td align=center>0.235800</td>
	<td align=center>0.091600</td>
	<td align=center>0.048800</td>
	<td align=center>0.067400</td>
	<td align=center>15.868500</td>
	<td align=center>848.1321</td>
	<td align=center>0.7204000</td>
	<td align=center>999.242</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:00</td>
	<td align=center>6.42620</td>
	<td align=center>72.53600</td>
	<td align=center>3.523100</td>
	<td align=center>1.057800</td>
	<td align=center>0.213600</td>
	<td align=center>0.237600</td>
	<td align=center>0.091200</td>
	<td align=center>0.049500</td>
	<td align=center>0.066400</td>
	<td align=center>15.798600</td>
	<td align=center>848.7985</td>
	<td align=center>0.7207000</td>
	<td align=center>999.803</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:00</td>
	<td align=center>6.43510</td>
	<td align=center>72.55970</td>
	<td align=center>3.533400</td>
	<td align=center>1.061800</td>
	<td align=center>0.215000</td>
	<td align=center>0.239800</td>
	<td align=center>0.090800</td>
	<td align=center>0.048600</td>
	<td align=center>0.066300</td>
	<td align=center>15.749500</td>
	<td align=center>849.3891</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.499</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:00</td>
	<td align=center>6.43110</td>
	<td align=center>72.55430</td>
	<td align=center>3.531600</td>
	<td align=center>1.059300</td>
	<td align=center>0.213900</td>
	<td align=center>0.239000</td>
	<td align=center>0.092300</td>
	<td align=center>0.050400</td>
	<td align=center>0.066200</td>
	<td align=center>15.761800</td>
	<td align=center>849.3055</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.391</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:00</td>
	<td align=center>6.41510</td>
	<td align=center>72.53020</td>
	<td align=center>3.516200</td>
	<td align=center>1.057500</td>
	<td align=center>0.213200</td>
	<td align=center>0.238700</td>
	<td align=center>0.092100</td>
	<td align=center>0.050800</td>
	<td align=center>0.066500</td>
	<td align=center>15.819700</td>
	<td align=center>848.7286</td>
	<td align=center>0.7207000</td>
	<td align=center>999.720</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:00</td>
	<td align=center>6.42640</td>
	<td align=center>72.55290</td>
	<td align=center>3.529400</td>
	<td align=center>1.061100</td>
	<td align=center>0.213500</td>
	<td align=center>0.237800</td>
	<td align=center>0.094000</td>
	<td align=center>0.051800</td>
	<td align=center>0.065400</td>
	<td align=center>15.767800</td>
	<td align=center>849.3257</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.414</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:00</td>
	<td align=center>6.44630</td>
	<td align=center>72.57520</td>
	<td align=center>3.552400</td>
	<td align=center>1.069500</td>
	<td align=center>0.215800</td>
	<td align=center>0.240500</td>
	<td align=center>0.091600</td>
	<td align=center>0.049500</td>
	<td align=center>0.064400</td>
	<td align=center>15.694600</td>
	<td align=center>850.1111</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.307</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:00</td>
	<td align=center>6.42410</td>
	<td align=center>72.53330</td>
	<td align=center>3.525500</td>
	<td align=center>1.056300</td>
	<td align=center>0.212200</td>
	<td align=center>0.236900</td>
	<td align=center>0.093700</td>
	<td align=center>0.051200</td>
	<td align=center>0.064000</td>
	<td align=center>15.802800</td>
	<td align=center>848.7641</td>
	<td align=center>0.7207000</td>
	<td align=center>999.770</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:00</td>
	<td align=center>6.42810</td>
	<td align=center>72.55380</td>
	<td align=center>3.530600</td>
	<td align=center>1.059000</td>
	<td align=center>0.212100</td>
	<td align=center>0.236000</td>
	<td align=center>0.092800</td>
	<td align=center>0.050800</td>
	<td align=center>0.061600</td>
	<td align=center>15.775100</td>
	<td align=center>848.9361</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.057</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:00</td>
	<td align=center>6.41680</td>
	<td align=center>72.55610</td>
	<td align=center>3.522200</td>
	<td align=center>1.058400</td>
	<td align=center>0.213900</td>
	<td align=center>0.238800</td>
	<td align=center>0.093700</td>
	<td align=center>0.050200</td>
	<td align=center>0.067200</td>
	<td align=center>15.782600</td>
	<td align=center>849.2219</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.336</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:00</td>
	<td align=center>6.42580</td>
	<td align=center>72.51830</td>
	<td align=center>3.523300</td>
	<td align=center>1.064800</td>
	<td align=center>0.217200</td>
	<td align=center>0.244000</td>
	<td align=center>0.096600</td>
	<td align=center>0.053600</td>
	<td align=center>0.071800</td>
	<td align=center>15.784700</td>
	<td align=center>849.7717</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.621</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:01</td>
	<td align=center>6.42960</td>
	<td align=center>72.51240</td>
	<td align=center>3.518800</td>
	<td align=center>1.059700</td>
	<td align=center>0.215800</td>
	<td align=center>0.242100</td>
	<td align=center>0.097300</td>
	<td align=center>0.054100</td>
	<td align=center>0.073000</td>
	<td align=center>15.797300</td>
	<td align=center>849.4974</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.284</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:00</td>
	<td align=center>6.45560</td>
	<td align=center>72.51790</td>
	<td align=center>3.544200</td>
	<td align=center>1.069000</td>
	<td align=center>0.217800</td>
	<td align=center>0.244300</td>
	<td align=center>0.098600</td>
	<td align=center>0.053900</td>
	<td align=center>0.073600</td>
	<td align=center>15.725000</td>
	<td align=center>850.4612</td>
	<td align=center>0.7215000</td>
	<td align=center>1001.232</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:00</td>
	<td align=center>6.42140</td>
	<td align=center>72.51220</td>
	<td align=center>3.529800</td>
	<td align=center>1.067800</td>
	<td align=center>0.217600</td>
	<td align=center>0.245200</td>
	<td align=center>0.098800</td>
	<td align=center>0.054700</td>
	<td align=center>0.074800</td>
	<td align=center>15.777800</td>
	<td align=center>850.2314</td>
	<td align=center>0.7214000</td>
	<td align=center>1001.058</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;10:00</td>
	<td align=center>6.40200</td>
	<td align=center>72.52460</td>
	<td align=center>3.510300</td>
	<td align=center>1.055900</td>
	<td align=center>0.213500</td>
	<td align=center>0.239000</td>
	<td align=center>0.095800</td>
	<td align=center>0.053000</td>
	<td align=center>0.072400</td>
	<td align=center>15.833400</td>
	<td align=center>849.0699</td>
	<td align=center>0.7209000</td>
	<td align=center>1000.015</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;09:00</td>
	<td align=center>6.40890</td>
	<td align=center>72.51120</td>
	<td align=center>3.513500</td>
	<td align=center>1.056100</td>
	<td align=center>0.214000</td>
	<td align=center>0.240100</td>
	<td align=center>0.095600</td>
	<td align=center>0.052700</td>
	<td align=center>0.072600</td>
	<td align=center>15.835400</td>
	<td align=center>849.0327</td>
	<td align=center>0.7210000</td>
	<td align=center>999.895</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;08:00</td>
	<td align=center>6.38820</td>
	<td align=center>72.48950</td>
	<td align=center>3.496600</td>
	<td align=center>1.048300</td>
	<td align=center>0.212700</td>
	<td align=center>0.239600</td>
	<td align=center>0.094700</td>
	<td align=center>0.051600</td>
	<td align=center>0.072000</td>
	<td align=center>15.906700</td>
	<td align=center>848.1453</td>
	<td align=center>0.7209000</td>
	<td align=center>998.950</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;07:00</td>
	<td align=center>6.39690</td>
	<td align=center>72.48340</td>
	<td align=center>3.487500</td>
	<td align=center>1.046400</td>
	<td align=center>0.212700</td>
	<td align=center>0.238700</td>
	<td align=center>0.093100</td>
	<td align=center>0.050900</td>
	<td align=center>0.070600</td>
	<td align=center>15.919700</td>
	<td align=center>847.6857</td>
	<td align=center>0.7208000</td>
	<td align=center>998.421</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;06:00</td>
	<td align=center>6.40070</td>
	<td align=center>72.48720</td>
	<td align=center>3.492200</td>
	<td align=center>1.049000</td>
	<td align=center>0.212900</td>
	<td align=center>0.238300</td>
	<td align=center>0.095700</td>
	<td align=center>0.052200</td>
	<td align=center>0.071200</td>
	<td align=center>15.900700</td>
	<td align=center>848.0505</td>
	<td align=center>0.7209000</td>
	<td align=center>998.786</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;05:00</td>
	<td align=center>6.41410</td>
	<td align=center>72.49910</td>
	<td align=center>3.508400</td>
	<td align=center>1.051100</td>
	<td align=center>0.212800</td>
	<td align=center>0.238500</td>
	<td align=center>0.096500</td>
	<td align=center>0.053400</td>
	<td align=center>0.071100</td>
	<td align=center>15.855000</td>
	<td align=center>848.5942</td>
	<td align=center>0.7210000</td>
	<td align=center>999.372</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;04:00</td>
	<td align=center>6.41400</td>
	<td align=center>72.49770</td>
	<td align=center>3.506100</td>
	<td align=center>1.051400</td>
	<td align=center>0.213300</td>
	<td align=center>0.239300</td>
	<td align=center>0.095200</td>
	<td align=center>0.052100</td>
	<td align=center>0.071300</td>
	<td align=center>15.859700</td>
	<td align=center>848.4960</td>
	<td align=center>0.7210000</td>
	<td align=center>999.266</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;03:00</td>
	<td align=center>6.41150</td>
	<td align=center>72.48980</td>
	<td align=center>3.505700</td>
	<td align=center>1.055000</td>
	<td align=center>0.213700</td>
	<td align=center>0.240400</td>
	<td align=center>0.095200</td>
	<td align=center>0.052300</td>
	<td align=center>0.071800</td>
	<td align=center>15.864500</td>
	<td align=center>848.5811</td>
	<td align=center>0.7211000</td>
	<td align=center>999.320</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;02:00</td>
	<td align=center>6.39520</td>
	<td align=center>72.48940</td>
	<td align=center>3.489500</td>
	<td align=center>1.048000</td>
	<td align=center>0.211200</td>
	<td align=center>0.236600</td>
	<td align=center>0.094800</td>
	<td align=center>0.051900</td>
	<td align=center>0.068000</td>
	<td align=center>15.915500</td>
	<td align=center>847.6846</td>
	<td align=center>0.7208000</td>
	<td align=center>998.471</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;01:00</td>
	<td align=center>6.39070</td>
	<td align=center>72.51150</td>
	<td align=center>3.491500</td>
	<td align=center>1.045700</td>
	<td align=center>0.210900</td>
	<td align=center>0.235900</td>
	<td align=center>0.092100</td>
	<td align=center>0.050500</td>
	<td align=center>0.066900</td>
	<td align=center>15.904200</td>
	<td align=center>847.6390</td>
	<td align=center>0.7205000</td>
	<td align=center>998.571</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;00:00</td>
	<td align=center>6.40710</td>
	<td align=center>72.54930</td>
	<td align=center>3.517800</td>
	<td align=center>1.056300</td>
	<td align=center>0.213200</td>
	<td align=center>0.237700</td>
	<td align=center>0.091600</td>
	<td align=center>0.048500</td>
	<td align=center>0.066600</td>
	<td align=center>15.811900</td>
	<td align=center>848.7780</td>
	<td align=center>0.7206000</td>
	<td align=center>999.904</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;23:00</td>
	<td align=center>6.46180</td>
	<td align=center>72.48540</td>
	<td align=center>3.536600</td>
	<td align=center>1.062600</td>
	<td align=center>0.213500</td>
	<td align=center>0.236900</td>
	<td align=center>0.091800</td>
	<td align=center>0.049800</td>
	<td align=center>0.062100</td>
	<td align=center>15.799600</td>
	<td align=center>848.4539</td>
	<td align=center>0.7211000</td>
	<td align=center>999.145</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;22:00</td>
	<td align=center>6.36790</td>
	<td align=center>72.56390</td>
	<td align=center>3.502900</td>
	<td align=center>1.051000</td>
	<td align=center>0.211400</td>
	<td align=center>0.236400</td>
	<td align=center>0.093600</td>
	<td align=center>0.051100</td>
	<td align=center>0.066600</td>
	<td align=center>15.855100</td>
	<td align=center>848.6097</td>
	<td align=center>0.7203000</td>
	<td align=center>999.901</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;21:00</td>
	<td align=center>6.37570</td>
	<td align=center>72.55180</td>
	<td align=center>3.506200</td>
	<td align=center>1.052900</td>
	<td align=center>0.212300</td>
	<td align=center>0.237800</td>
	<td align=center>0.092800</td>
	<td align=center>0.051200</td>
	<td align=center>0.066100</td>
	<td align=center>15.853300</td>
	<td align=center>848.6151</td>
	<td align=center>0.7204000</td>
	<td align=center>999.831</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;20:00</td>
	<td align=center>6.38840</td>
	<td align=center>72.55310</td>
	<td align=center>3.519800</td>
	<td align=center>1.059800</td>
	<td align=center>0.213600</td>
	<td align=center>0.239700</td>
	<td align=center>0.093900</td>
	<td align=center>0.051800</td>
	<td align=center>0.065700</td>
	<td align=center>15.814200</td>
	<td align=center>849.2063</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.411</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;19:00</td>
	<td align=center>6.37480</td>
	<td align=center>72.53720</td>
	<td align=center>3.504400</td>
	<td align=center>1.049800</td>
	<td align=center>0.211200</td>
	<td align=center>0.235700</td>
	<td align=center>0.092400</td>
	<td align=center>0.050000</td>
	<td align=center>0.065400</td>
	<td align=center>15.878900</td>
	<td align=center>848.1599</td>
	<td align=center>0.7204000</td>
	<td align=center>999.318</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;18:01</td>
	<td align=center>6.36850</td>
	<td align=center>72.55200</td>
	<td align=center>3.509000</td>
	<td align=center>1.054800</td>
	<td align=center>0.212400</td>
	<td align=center>0.237200</td>
	<td align=center>0.092800</td>
	<td align=center>0.050400</td>
	<td align=center>0.065500</td>
	<td align=center>15.857400</td>
	<td align=center>848.6384</td>
	<td align=center>0.7203000</td>
	<td align=center>999.901</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;17:00</td>
	<td align=center>6.36430</td>
	<td align=center>72.53420</td>
	<td align=center>3.492500</td>
	<td align=center>1.047600</td>
	<td align=center>0.211800</td>
	<td align=center>0.235600</td>
	<td align=center>0.089000</td>
	<td align=center>0.048500</td>
	<td align=center>0.065300</td>
	<td align=center>15.911200</td>
	<td align=center>847.6680</td>
	<td align=center>0.7202000</td>
	<td align=center>998.838</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;16:00</td>
	<td align=center>6.36550</td>
	<td align=center>72.52920</td>
	<td align=center>3.501600</td>
	<td align=center>1.053900</td>
	<td align=center>0.212500</td>
	<td align=center>0.237100</td>
	<td align=center>0.091200</td>
	<td align=center>0.049500</td>
	<td align=center>0.065200</td>
	<td align=center>15.894400</td>
	<td align=center>848.1342</td>
	<td align=center>0.7204000</td>
	<td align=center>999.290</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;15:00</td>
	<td align=center>6.35670</td>
	<td align=center>72.50010</td>
	<td align=center>3.484900</td>
	<td align=center>1.049300</td>
	<td align=center>0.211800</td>
	<td align=center>0.236600</td>
	<td align=center>0.092400</td>
	<td align=center>0.050300</td>
	<td align=center>0.066100</td>
	<td align=center>15.955900</td>
	<td align=center>847.3927</td>
	<td align=center>0.7204000</td>
	<td align=center>998.391</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;14:00</td>
	<td align=center>6.35560</td>
	<td align=center>72.50170</td>
	<td align=center>3.481800</td>
	<td align=center>1.046000</td>
	<td align=center>0.211000</td>
	<td align=center>0.236000</td>
	<td align=center>0.092600</td>
	<td align=center>0.050100</td>
	<td align=center>0.066100</td>
	<td align=center>15.959100</td>
	<td align=center>847.3417</td>
	<td align=center>0.7204000</td>
	<td align=center>998.341</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;13:00</td>
	<td align=center>6.33870</td>
	<td align=center>72.50220</td>
	<td align=center>3.468700</td>
	<td align=center>1.040400</td>
	<td align=center>0.208200</td>
	<td align=center>0.232600</td>
	<td align=center>0.092700</td>
	<td align=center>0.051900</td>
	<td align=center>0.065500</td>
	<td align=center>15.999100</td>
	<td align=center>846.8174</td>
	<td align=center>0.7202000</td>
	<td align=center>997.852</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;12:00</td>
	<td align=center>6.36540</td>
	<td align=center>72.51640</td>
	<td align=center>3.492500</td>
	<td align=center>1.050200</td>
	<td align=center>0.212300</td>
	<td align=center>0.237800</td>
	<td align=center>0.093600</td>
	<td align=center>0.050400</td>
	<td align=center>0.066600</td>
	<td align=center>15.914800</td>
	<td align=center>847.9706</td>
	<td align=center>0.7205000</td>
	<td align=center>999.020</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;11:00</td>
	<td align=center>6.34150</td>
	<td align=center>72.51710</td>
	<td align=center>3.471600</td>
	<td align=center>1.043700</td>
	<td align=center>0.210500</td>
	<td align=center>0.235300</td>
	<td align=center>0.092100</td>
	<td align=center>0.050100</td>
	<td align=center>0.066800</td>
	<td align=center>15.971300</td>
	<td align=center>847.2293</td>
	<td align=center>0.7202000</td>
	<td align=center>998.327</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;10:01</td>
	<td align=center>6.35530</td>
	<td align=center>72.51860</td>
	<td align=center>3.489000</td>
	<td align=center>1.047900</td>
	<td align=center>0.211100</td>
	<td align=center>0.235100</td>
	<td align=center>0.093800</td>
	<td align=center>0.051600</td>
	<td align=center>0.067800</td>
	<td align=center>15.929800</td>
	<td align=center>847.8559</td>
	<td align=center>0.7204000</td>
	<td align=center>998.938</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;09:00</td>
	<td align=center>6.36330</td>
	<td align=center>72.51750</td>
	<td align=center>3.492900</td>
	<td align=center>1.050700</td>
	<td align=center>0.211600</td>
	<td align=center>0.235900</td>
	<td align=center>0.093400</td>
	<td align=center>0.050400</td>
	<td align=center>0.067000</td>
	<td align=center>15.917300</td>
	<td align=center>847.9255</td>
	<td align=center>0.7204000</td>
	<td align=center>998.992</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;08:00</td>
	<td align=center>6.33350</td>
	<td align=center>72.49810</td>
	<td align=center>3.464900</td>
	<td align=center>1.039100</td>
	<td align=center>0.208600</td>
	<td align=center>0.233400</td>
	<td align=center>0.092800</td>
	<td align=center>0.050800</td>
	<td align=center>0.067100</td>
	<td align=center>16.011700</td>
	<td align=center>846.7499</td>
	<td align=center>0.7202000</td>
	<td align=center>997.768</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;07:00</td>
	<td align=center>6.34310</td>
	<td align=center>72.50260</td>
	<td align=center>3.468200</td>
	<td align=center>1.038800</td>
	<td align=center>0.209300</td>
	<td align=center>0.234100</td>
	<td align=center>0.091700</td>
	<td align=center>0.050200</td>
	<td align=center>0.066700</td>
	<td align=center>15.995400</td>
	<td align=center>846.8007</td>
	<td align=center>0.7202000</td>
	<td align=center>997.817</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;06:00</td>
	<td align=center>6.33820</td>
	<td align=center>72.51460</td>
	<td align=center>3.461800</td>
	<td align=center>1.035900</td>
	<td align=center>0.208300</td>
	<td align=center>0.232600</td>
	<td align=center>0.090400</td>
	<td align=center>0.048700</td>
	<td align=center>0.066200</td>
	<td align=center>16.003300</td>
	<td align=center>846.5201</td>
	<td align=center>0.7200000</td>
	<td align=center>997.608</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;05:00</td>
	<td align=center>6.34780</td>
	<td align=center>72.49350</td>
	<td align=center>3.468700</td>
	<td align=center>1.040200</td>
	<td align=center>0.209900</td>
	<td align=center>0.234300</td>
	<td align=center>0.091600</td>
	<td align=center>0.051300</td>
	<td align=center>0.066500</td>
	<td align=center>15.996200</td>
	<td align=center>846.8116</td>
	<td align=center>0.7203000</td>
	<td align=center>997.766</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;04:00</td>
	<td align=center>6.34500</td>
	<td align=center>72.50320</td>
	<td align=center>3.476300</td>
	<td align=center>1.041600</td>
	<td align=center>0.210100</td>
	<td align=center>0.234700</td>
	<td align=center>0.091400</td>
	<td align=center>0.049200</td>
	<td align=center>0.066800</td>
	<td align=center>15.981800</td>
	<td align=center>847.0226</td>
	<td align=center>0.7202000</td>
	<td align=center>998.060</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;03:00</td>
	<td align=center>6.35440</td>
	<td align=center>72.50680</td>
	<td align=center>3.477700</td>
	<td align=center>1.041500</td>
	<td align=center>0.210100</td>
	<td align=center>0.235600</td>
	<td align=center>0.092900</td>
	<td align=center>0.051300</td>
	<td align=center>0.066800</td>
	<td align=center>15.963000</td>
	<td align=center>847.2587</td>
	<td align=center>0.7203000</td>
	<td align=center>998.266</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;02:00</td>
	<td align=center>6.33640</td>
	<td align=center>72.49950</td>
	<td align=center>3.465700</td>
	<td align=center>1.040300</td>
	<td align=center>0.210700</td>
	<td align=center>0.236400</td>
	<td align=center>0.092800</td>
	<td align=center>0.050400</td>
	<td align=center>0.067700</td>
	<td align=center>16.000200</td>
	<td align=center>846.9858</td>
	<td align=center>0.7203000</td>
	<td align=center>997.992</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;01:00</td>
	<td align=center>6.31290</td>
	<td align=center>72.45610</td>
	<td align=center>3.434200</td>
	<td align=center>1.029100</td>
	<td align=center>0.206800</td>
	<td align=center>0.231600</td>
	<td align=center>0.094800</td>
	<td align=center>0.052900</td>
	<td align=center>0.067600</td>
	<td align=center>16.114000</td>
	<td align=center>845.5918</td>
	<td align=center>0.7202000</td>
	<td align=center>996.393</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;00:00</td>
	<td align=center>6.35810</td>
	<td align=center>72.48970</td>
	<td align=center>3.494400</td>
	<td align=center>1.046100</td>
	<td align=center>0.211700</td>
	<td align=center>0.237300</td>
	<td align=center>0.093700</td>
	<td align=center>0.052200</td>
	<td align=center>0.067600</td>
	<td align=center>15.949000</td>
	<td align=center>847.7225</td>
	<td align=center>0.7206000</td>
	<td align=center>998.667</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;23:00</td>
	<td align=center>6.35290</td>
	<td align=center>72.49360</td>
	<td align=center>3.480600</td>
	<td align=center>1.042800</td>
	<td align=center>0.210500</td>
	<td align=center>0.234800</td>
	<td align=center>0.091700</td>
	<td align=center>0.049000</td>
	<td align=center>0.066700</td>
	<td align=center>15.977500</td>
	<td align=center>847.0485</td>
	<td align=center>0.7203000</td>
	<td align=center>998.022</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;22:00</td>
	<td align=center>6.33910</td>
	<td align=center>72.50090</td>
	<td align=center>3.462100</td>
	<td align=center>1.039600</td>
	<td align=center>0.208600</td>
	<td align=center>0.232900</td>
	<td align=center>0.092900</td>
	<td align=center>0.051600</td>
	<td align=center>0.065100</td>
	<td align=center>16.007200</td>
	<td align=center>846.6653</td>
	<td align=center>0.7202000</td>
	<td align=center>997.676</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;21:00</td>
	<td align=center>6.35690</td>
	<td align=center>72.50170</td>
	<td align=center>3.477500</td>
	<td align=center>1.041500</td>
	<td align=center>0.209000</td>
	<td align=center>0.233700</td>
	<td align=center>0.090700</td>
	<td align=center>0.049800</td>
	<td align=center>0.064600</td>
	<td align=center>15.974600</td>
	<td align=center>846.8458</td>
	<td align=center>0.7202000</td>
	<td align=center>997.849</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;20:00</td>
	<td align=center>6.33490</td>
	<td align=center>72.51530</td>
	<td align=center>3.459000</td>
	<td align=center>1.037400</td>
	<td align=center>0.208500</td>
	<td align=center>0.232700</td>
	<td align=center>0.089800</td>
	<td align=center>0.049200</td>
	<td align=center>0.063600</td>
	<td align=center>16.009500</td>
	<td align=center>846.3961</td>
	<td align=center>0.7200000</td>
	<td align=center>997.508</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;19:00</td>
	<td align=center>6.34540</td>
	<td align=center>72.53990</td>
	<td align=center>3.469100</td>
	<td align=center>1.039800</td>
	<td align=center>0.209300</td>
	<td align=center>0.233600</td>
	<td align=center>0.088000</td>
	<td align=center>0.047100</td>
	<td align=center>0.063500</td>
	<td align=center>15.964400</td>
	<td align=center>846.7767</td>
	<td align=center>0.7199000</td>
	<td align=center>998.003</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;18:00</td>
	<td align=center>6.34570</td>
	<td align=center>72.50550</td>
	<td align=center>3.464300</td>
	<td align=center>1.037000</td>
	<td align=center>0.208900</td>
	<td align=center>0.233800</td>
	<td align=center>0.089800</td>
	<td align=center>0.048700</td>
	<td align=center>0.063700</td>
	<td align=center>16.002600</td>
	<td align=center>846.4150</td>
	<td align=center>0.7201000</td>
	<td align=center>997.453</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;17:00</td>
	<td align=center>6.31830</td>
	<td align=center>72.48110</td>
	<td align=center>3.434300</td>
	<td align=center>1.026500</td>
	<td align=center>0.205700</td>
	<td align=center>0.230000</td>
	<td align=center>0.090600</td>
	<td align=center>0.049200</td>
	<td align=center>0.063100</td>
	<td align=center>16.101400</td>
	<td align=center>845.1542</td>
	<td align=center>0.7199000</td>
	<td align=center>996.106</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;16:00</td>
	<td align=center>6.31740</td>
	<td align=center>72.47220</td>
	<td align=center>3.442500</td>
	<td align=center>1.033000</td>
	<td align=center>0.208400</td>
	<td align=center>0.233600</td>
	<td align=center>0.089700</td>
	<td align=center>0.048100</td>
	<td align=center>0.063600</td>
	<td align=center>16.091500</td>
	<td align=center>845.5275</td>
	<td align=center>0.7200000</td>
	<td align=center>996.462</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;15:00</td>
	<td align=center>6.29240</td>
	<td align=center>72.55390</td>
	<td align=center>3.459700</td>
	<td align=center>1.037100</td>
	<td align=center>0.207500</td>
	<td align=center>0.231200</td>
	<td align=center>0.088400</td>
	<td align=center>0.048000</td>
	<td align=center>0.058700</td>
	<td align=center>16.023100</td>
	<td align=center>846.3713</td>
	<td align=center>0.7194000</td>
	<td align=center>997.868</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;14:00</td>
	<td align=center>6.19810</td>
	<td align=center>72.59110</td>
	<td align=center>3.466500</td>
	<td align=center>1.039200</td>
	<td align=center>0.207900</td>
	<td align=center>0.231600</td>
	<td align=center>0.090300</td>
	<td align=center>0.049000</td>
	<td align=center>0.060300</td>
	<td align=center>16.066100</td>
	<td align=center>847.1360</td>
	<td align=center>0.7188000</td>
	<td align=center>999.171</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;13:00</td>
	<td align=center>6.21580</td>
	<td align=center>72.61330</td>
	<td align=center>3.481800</td>
	<td align=center>1.044600</td>
	<td align=center>0.209200</td>
	<td align=center>0.233000</td>
	<td align=center>0.088200</td>
	<td align=center>0.047000</td>
	<td align=center>0.061200</td>
	<td align=center>16.005800</td>
	<td align=center>847.7421</td>
	<td align=center>0.7189000</td>
	<td align=center>999.863</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;12:00</td>
	<td align=center>6.20960</td>
	<td align=center>72.63610</td>
	<td align=center>3.478900</td>
	<td align=center>1.042200</td>
	<td align=center>0.208500</td>
	<td align=center>0.232300</td>
	<td align=center>0.088000</td>
	<td align=center>0.047200</td>
	<td align=center>0.060400</td>
	<td align=center>15.996800</td>
	<td align=center>847.7758</td>
	<td align=center>0.7187000</td>
	<td align=center>1000.024</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;11:00</td>
	<td align=center>6.18840</td>
	<td align=center>72.62470</td>
	<td align=center>3.458500</td>
	<td align=center>1.037000</td>
	<td align=center>0.207000</td>
	<td align=center>0.230500</td>
	<td align=center>0.088800</td>
	<td align=center>0.048000</td>
	<td align=center>0.060300</td>
	<td align=center>16.056800</td>
	<td align=center>847.1127</td>
	<td align=center>0.7186000</td>
	<td align=center>999.331</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;10:00</td>
	<td align=center>6.20460</td>
	<td align=center>72.63120</td>
	<td align=center>3.474400</td>
	<td align=center>1.040900</td>
	<td align=center>0.208200</td>
	<td align=center>0.231200</td>
	<td align=center>0.088800</td>
	<td align=center>0.048900</td>
	<td align=center>0.060400</td>
	<td align=center>16.011400</td>
	<td align=center>847.6639</td>
	<td align=center>0.7187000</td>
	<td align=center>999.889</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;09:00</td>
	<td align=center>6.21940</td>
	<td align=center>72.64070</td>
	<td align=center>3.488200</td>
	<td align=center>1.048400</td>
	<td align=center>0.210900</td>
	<td align=center>0.235500</td>
	<td align=center>0.088900</td>
	<td align=center>0.047300</td>
	<td align=center>0.061600</td>
	<td align=center>15.959200</td>
	<td align=center>848.4225</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.665</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;08:00</td>
	<td align=center>6.18740</td>
	<td align=center>72.59700</td>
	<td align=center>3.457700</td>
	<td align=center>1.038500</td>
	<td align=center>0.207200</td>
	<td align=center>0.231400</td>
	<td align=center>0.087900</td>
	<td align=center>0.047500</td>
	<td align=center>0.060800</td>
	<td align=center>16.084500</td>
	<td align=center>846.8603</td>
	<td align=center>0.7187000</td>
	<td align=center>998.952</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;07:00</td>
	<td align=center>6.18540</td>
	<td align=center>72.60480</td>
	<td align=center>3.457800</td>
	<td align=center>1.037100</td>
	<td align=center>0.207200</td>
	<td align=center>0.231300</td>
	<td align=center>0.088600</td>
	<td align=center>0.048300</td>
	<td align=center>0.060600</td>
	<td align=center>16.078900</td>
	<td align=center>846.9503</td>
	<td align=center>0.7186000</td>
	<td align=center>999.082</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;06:00</td>
	<td align=center>6.17840</td>
	<td align=center>72.60830</td>
	<td align=center>3.446000</td>
	<td align=center>1.031200</td>
	<td align=center>0.205500</td>
	<td align=center>0.228600</td>
	<td align=center>0.085600</td>
	<td align=center>0.045600</td>
	<td align=center>0.058200</td>
	<td align=center>16.112600</td>
	<td align=center>846.1375</td>
	<td align=center>0.7184000</td>
	<td align=center>998.316</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;05:00</td>
	<td align=center>6.18770</td>
	<td align=center>72.61490</td>
	<td align=center>3.456300</td>
	<td align=center>1.036400</td>
	<td align=center>0.206400</td>
	<td align=center>0.229800</td>
	<td align=center>0.086900</td>
	<td align=center>0.047500</td>
	<td align=center>0.058300</td>
	<td align=center>16.075900</td>
	<td align=center>846.7220</td>
	<td align=center>0.7185000</td>
	<td align=center>998.913</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;04:00</td>
	<td align=center>6.20060</td>
	<td align=center>72.60420</td>
	<td align=center>3.468400</td>
	<td align=center>1.041100</td>
	<td align=center>0.207700</td>
	<td align=center>0.230600</td>
	<td align=center>0.087600</td>
	<td align=center>0.048000</td>
	<td align=center>0.058300</td>
	<td align=center>16.053600</td>
	<td align=center>847.0628</td>
	<td align=center>0.7187000</td>
	<td align=center>999.181</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;03:00</td>
	<td align=center>6.19520</td>
	<td align=center>72.58370</td>
	<td align=center>3.451300</td>
	<td align=center>1.033300</td>
	<td align=center>0.206800</td>
	<td align=center>0.230600</td>
	<td align=center>0.087500</td>
	<td align=center>0.046800</td>
	<td align=center>0.058600</td>
	<td align=center>16.106200</td>
	<td align=center>846.2911</td>
	<td align=center>0.7187000</td>
	<td align=center>998.287</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;02:00</td>
	<td align=center>6.23190</td>
	<td align=center>72.57660</td>
	<td align=center>3.466300</td>
	<td align=center>1.040300</td>
	<td align=center>0.207500</td>
	<td align=center>0.231200</td>
	<td align=center>0.087600</td>
	<td align=center>0.048400</td>
	<td align=center>0.060200</td>
	<td align=center>16.050000</td>
	<td align=center>846.8543</td>
	<td align=center>0.7190000</td>
	<td align=center>998.703</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;01:00</td>
	<td align=center>6.21390</td>
	<td align=center>72.57990</td>
	<td align=center>3.456000</td>
	<td align=center>1.037000</td>
	<td align=center>0.207200</td>
	<td align=center>0.230800</td>
	<td align=center>0.088900</td>
	<td align=center>0.048700</td>
	<td align=center>0.059800</td>
	<td align=center>16.077900</td>
	<td align=center>846.6390</td>
	<td align=center>0.7189000</td>
	<td align=center>998.542</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;00:00</td>
	<td align=center>6.22300</td>
	<td align=center>72.61400</td>
	<td align=center>3.472300</td>
	<td align=center>1.040800</td>
	<td align=center>0.208000</td>
	<td align=center>0.231600</td>
	<td align=center>0.088200</td>
	<td align=center>0.048200</td>
	<td align=center>0.060500</td>
	<td align=center>16.013300</td>
	<td align=center>847.4147</td>
	<td align=center>0.7189000</td>
	<td align=center>999.486</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;23:00</td>
	<td align=center>6.19640</td>
	<td align=center>72.60540</td>
	<td align=center>3.466200</td>
	<td align=center>1.041600</td>
	<td align=center>0.207500</td>
	<td align=center>0.231500</td>
	<td align=center>0.091200</td>
	<td align=center>0.050100</td>
	<td align=center>0.060300</td>
	<td align=center>16.050000</td>
	<td align=center>847.3986</td>
	<td align=center>0.7188000</td>
	<td align=center>999.502</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;22:00</td>
	<td align=center>6.20090</td>
	<td align=center>72.61070</td>
	<td align=center>3.465400</td>
	<td align=center>1.040000</td>
	<td align=center>0.208100</td>
	<td align=center>0.232700</td>
	<td align=center>0.089000</td>
	<td align=center>0.048600</td>
	<td align=center>0.061100</td>
	<td align=center>16.043500</td>
	<td align=center>847.3519</td>
	<td align=center>0.7188000</td>
	<td align=center>999.465</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;21:00</td>
	<td align=center>6.29810</td>
	<td align=center>72.55400</td>
	<td align=center>3.476000</td>
	<td align=center>1.045100</td>
	<td align=center>0.210500</td>
	<td align=center>0.235200</td>
	<td align=center>0.090200</td>
	<td align=center>0.049400</td>
	<td align=center>0.065200</td>
	<td align=center>15.976300</td>
	<td align=center>847.5363</td>
	<td align=center>0.7198000</td>
	<td align=center>999.004</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;20:00</td>
	<td align=center>6.29440</td>
	<td align=center>72.53430</td>
	<td align=center>3.468700</td>
	<td align=center>1.043500</td>
	<td align=center>0.210600</td>
	<td align=center>0.235200</td>
	<td align=center>0.091700</td>
	<td align=center>0.050300</td>
	<td align=center>0.064700</td>
	<td align=center>16.006600</td>
	<td align=center>847.2396</td>
	<td align=center>0.7198000</td>
	<td align=center>998.603</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;19:00</td>
	<td align=center>6.29320</td>
	<td align=center>72.54900</td>
	<td align=center>3.465400</td>
	<td align=center>1.037800</td>
	<td align=center>0.208300</td>
	<td align=center>0.233000</td>
	<td align=center>0.093400</td>
	<td align=center>0.051900</td>
	<td align=center>0.064400</td>
	<td align=center>16.003600</td>
	<td align=center>847.1569</td>
	<td align=center>0.7197000</td>
	<td align=center>998.578</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;18:00</td>
	<td align=center>6.26840</td>
	<td align=center>72.52530</td>
	<td align=center>3.442000</td>
	<td align=center>1.032800</td>
	<td align=center>0.208000</td>
	<td align=center>0.233200</td>
	<td align=center>0.089100</td>
	<td align=center>0.048300</td>
	<td align=center>0.064400</td>
	<td align=center>16.088600</td>
	<td align=center>846.0472</td>
	<td align=center>0.7195000</td>
	<td align=center>997.415</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;17:00</td>
	<td align=center>6.30200</td>
	<td align=center>72.52640</td>
	<td align=center>3.470800</td>
	<td align=center>1.042400</td>
	<td align=center>0.210300</td>
	<td align=center>0.234900</td>
	<td align=center>0.090800</td>
	<td align=center>0.048900</td>
	<td align=center>0.065500</td>
	<td align=center>16.008000</td>
	<td align=center>847.0950</td>
	<td align=center>0.7199000</td>
	<td align=center>998.402</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;16:00</td>
	<td align=center>6.26260</td>
	<td align=center>72.50930</td>
	<td align=center>3.446600</td>
	<td align=center>1.037100</td>
	<td align=center>0.209700</td>
	<td align=center>0.236500</td>
	<td align=center>0.094500</td>
	<td align=center>0.052700</td>
	<td align=center>0.069600</td>
	<td align=center>16.081400</td>
	<td align=center>846.8845</td>
	<td align=center>0.7199000</td>
	<td align=center>998.145</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;15:00</td>
	<td align=center>6.29230</td>
	<td align=center>72.40780</td>
	<td align=center>3.448500</td>
	<td align=center>1.042300</td>
	<td align=center>0.210500</td>
	<td align=center>0.236500</td>
	<td align=center>0.096000</td>
	<td align=center>0.053500</td>
	<td align=center>0.070900</td>
	<td align=center>16.141700</td>
	<td align=center>846.2043</td>
	<td align=center>0.7206000</td>
	<td align=center>996.869</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;14:00</td>
	<td align=center>6.28480</td>
	<td align=center>72.53830</td>
	<td align=center>3.469500</td>
	<td align=center>1.045700</td>
	<td align=center>0.211600</td>
	<td align=center>0.237700</td>
	<td align=center>0.095400</td>
	<td align=center>0.052900</td>
	<td align=center>0.070900</td>
	<td align=center>15.993200</td>
	<td align=center>848.0156</td>
	<td align=center>0.7200000</td>
	<td align=center>999.378</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;13:00</td>
	<td align=center>6.29170</td>
	<td align=center>72.53500</td>
	<td align=center>3.473400</td>
	<td align=center>1.044900</td>
	<td align=center>0.211300</td>
	<td align=center>0.236900</td>
	<td align=center>0.094600</td>
	<td align=center>0.051700</td>
	<td align=center>0.070700</td>
	<td align=center>15.989900</td>
	<td align=center>847.9031</td>
	<td align=center>0.7200000</td>
	<td align=center>999.242</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;12:00</td>
	<td align=center>6.27960</td>
	<td align=center>72.52540</td>
	<td align=center>3.462600</td>
	<td align=center>1.043000</td>
	<td align=center>0.211200</td>
	<td align=center>0.237100</td>
	<td align=center>0.096300</td>
	<td align=center>0.052900</td>
	<td align=center>0.071300</td>
	<td align=center>16.020500</td>
	<td align=center>847.7164</td>
	<td align=center>0.7200000</td>
	<td align=center>999.014</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;11:00</td>
	<td align=center>6.21640</td>
	<td align=center>72.43270</td>
	<td align=center>3.383200</td>
	<td align=center>1.014600</td>
	<td align=center>0.204900</td>
	<td align=center>0.230700</td>
	<td align=center>0.092000</td>
	<td align=center>0.050600</td>
	<td align=center>0.069900</td>
	<td align=center>16.305000</td>
	<td align=center>843.8851</td>
	<td align=center>0.7196000</td>
	<td align=center>994.812</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;10:00</td>
	<td align=center>6.22820</td>
	<td align=center>72.46100</td>
	<td align=center>3.404000</td>
	<td align=center>1.024300</td>
	<td align=center>0.207300</td>
	<td align=center>0.234000</td>
	<td align=center>0.092000</td>
	<td align=center>0.050200</td>
	<td align=center>0.070500</td>
	<td align=center>16.228700</td>
	<td align=center>844.9868</td>
	<td align=center>0.7197000</td>
	<td align=center>996.052</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;09:00</td>
	<td align=center>6.29860</td>
	<td align=center>72.55620</td>
	<td align=center>3.488000</td>
	<td align=center>1.051000</td>
	<td align=center>0.212800</td>
	<td align=center>0.238700</td>
	<td align=center>0.095400</td>
	<td align=center>0.052400</td>
	<td align=center>0.071700</td>
	<td align=center>15.935200</td>
	<td align=center>848.7541</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.192</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;08:00</td>
	<td align=center>6.28390</td>
	<td align=center>72.52310</td>
	<td align=center>3.481600</td>
	<td align=center>1.049900</td>
	<td align=center>0.212600</td>
	<td align=center>0.239300</td>
	<td align=center>0.093800</td>
	<td align=center>0.051800</td>
	<td align=center>0.069800</td>
	<td align=center>15.994200</td>
	<td align=center>848.1085</td>
	<td align=center>0.7201000</td>
	<td align=center>999.449</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;07:00</td>
	<td align=center>6.26680</td>
	<td align=center>72.50080</td>
	<td align=center>3.463900</td>
	<td align=center>1.043400</td>
	<td align=center>0.211500</td>
	<td align=center>0.237400</td>
	<td align=center>0.093900</td>
	<td align=center>0.052000</td>
	<td align=center>0.069200</td>
	<td align=center>16.061100</td>
	<td align=center>847.2846</td>
	<td align=center>0.7200000</td>
	<td align=center>998.542</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;06:00</td>
	<td align=center>6.26970</td>
	<td align=center>72.50020</td>
	<td align=center>3.455700</td>
	<td align=center>1.043200</td>
	<td align=center>0.210600</td>
	<td align=center>0.237100</td>
	<td align=center>0.093600</td>
	<td align=center>0.051400</td>
	<td align=center>0.067400</td>
	<td align=center>16.071100</td>
	<td align=center>846.9647</td>
	<td align=center>0.7199000</td>
	<td align=center>998.201</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;05:00</td>
	<td align=center>6.29350</td>
	<td align=center>72.47910</td>
	<td align=center>3.439600</td>
	<td align=center>1.028200</td>
	<td align=center>0.207000</td>
	<td align=center>0.231400</td>
	<td align=center>0.090600</td>
	<td align=center>0.049700</td>
	<td align=center>0.065700</td>
	<td align=center>16.115300</td>
	<td align=center>845.5057</td>
	<td align=center>0.7199000</td>
	<td align=center>996.538</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;04:00</td>
	<td align=center>6.27820</td>
	<td align=center>72.46650</td>
	<td align=center>3.429500</td>
	<td align=center>1.027500</td>
	<td align=center>0.208100</td>
	<td align=center>0.233400</td>
	<td align=center>0.091700</td>
	<td align=center>0.050500</td>
	<td align=center>0.066200</td>
	<td align=center>16.148500</td>
	<td align=center>845.3807</td>
	<td align=center>0.7199000</td>
	<td align=center>996.373</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;03:00</td>
	<td align=center>6.29720</td>
	<td align=center>72.48980</td>
	<td align=center>3.444800</td>
	<td align=center>1.034000</td>
	<td align=center>0.208600</td>
	<td align=center>0.233700</td>
	<td align=center>0.093000</td>
	<td align=center>0.051600</td>
	<td align=center>0.066600</td>
	<td align=center>16.080600</td>
	<td align=center>846.2084</td>
	<td align=center>0.7200000</td>
	<td align=center>997.263</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;02:00</td>
	<td align=center>6.32230</td>
	<td align=center>72.53570</td>
	<td align=center>3.469900</td>
	<td align=center>1.039000</td>
	<td align=center>0.209300</td>
	<td align=center>0.234100</td>
	<td align=center>0.091100</td>
	<td align=center>0.050600</td>
	<td align=center>0.065100</td>
	<td align=center>15.982900</td>
	<td align=center>847.0907</td>
	<td align=center>0.7199000</td>
	<td align=center>998.356</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;01:00</td>
	<td align=center>6.30380</td>
	<td align=center>72.45030</td>
	<td align=center>3.432300</td>
	<td align=center>1.025600</td>
	<td align=center>0.206600</td>
	<td align=center>0.231200</td>
	<td align=center>0.090700</td>
	<td align=center>0.049500</td>
	<td align=center>0.065500</td>
	<td align=center>16.144600</td>
	<td align=center>844.9850</td>
	<td align=center>0.7200000</td>
	<td align=center>995.825</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;00:00</td>
	<td align=center>6.34480</td>
	<td align=center>72.50380</td>
	<td align=center>3.476600</td>
	<td align=center>1.043900</td>
	<td align=center>0.209600</td>
	<td align=center>0.234300</td>
	<td align=center>0.094600</td>
	<td align=center>0.053800</td>
	<td align=center>0.066200</td>
	<td align=center>15.972400</td>
	<td align=center>847.3502</td>
	<td align=center>0.7203000</td>
	<td align=center>998.370</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;23:00</td>
	<td align=center>6.33840</td>
	<td align=center>72.49090</td>
	<td align=center>3.465300</td>
	<td align=center>1.040700</td>
	<td align=center>0.210100</td>
	<td align=center>0.235200</td>
	<td align=center>0.094700</td>
	<td align=center>0.052800</td>
	<td align=center>0.065900</td>
	<td align=center>16.006100</td>
	<td align=center>846.9309</td>
	<td align=center>0.7203000</td>
	<td align=center>997.886</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;22:00</td>
	<td align=center>6.33050</td>
	<td align=center>72.49540</td>
	<td align=center>3.458000</td>
	<td align=center>1.037400</td>
	<td align=center>0.208900</td>
	<td align=center>0.234000</td>
	<td align=center>0.092600</td>
	<td align=center>0.051200</td>
	<td align=center>0.066200</td>
	<td align=center>16.025700</td>
	<td align=center>846.5506</td>
	<td align=center>0.7202000</td>
	<td align=center>997.550</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;21:00</td>
	<td align=center>6.32360</td>
	<td align=center>72.46380</td>
	<td align=center>3.449500</td>
	<td align=center>1.030800</td>
	<td align=center>0.207800</td>
	<td align=center>0.233000</td>
	<td align=center>0.090700</td>
	<td align=center>0.049500</td>
	<td align=center>0.065200</td>
	<td align=center>16.086200</td>
	<td align=center>845.6459</td>
	<td align=center>0.7201000</td>
	<td align=center>996.519</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;20:00</td>
	<td align=center>6.33530</td>
	<td align=center>72.45260</td>
	<td align=center>3.463300</td>
	<td align=center>1.035300</td>
	<td align=center>0.209400</td>
	<td align=center>0.234200</td>
	<td align=center>0.090800</td>
	<td align=center>0.049900</td>
	<td align=center>0.066100</td>
	<td align=center>16.063000</td>
	<td align=center>846.0528</td>
	<td align=center>0.7203000</td>
	<td align=center>996.857</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;19:00</td>
	<td align=center>6.31440</td>
	<td align=center>72.47430</td>
	<td align=center>3.442200</td>
	<td align=center>1.034100</td>
	<td align=center>0.208600</td>
	<td align=center>0.233900</td>
	<td align=center>0.090600</td>
	<td align=center>0.049300</td>
	<td align=center>0.065300</td>
	<td align=center>16.087300</td>
	<td align=center>845.7584</td>
	<td align=center>0.7201000</td>
	<td align=center>996.697</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;18:00</td>
	<td align=center>6.33620</td>
	<td align=center>72.49110</td>
	<td align=center>3.465400</td>
	<td align=center>1.041500</td>
	<td align=center>0.209400</td>
	<td align=center>0.234200</td>
	<td align=center>0.093000</td>
	<td align=center>0.051000</td>
	<td align=center>0.065900</td>
	<td align=center>16.012200</td>
	<td align=center>846.7612</td>
	<td align=center>0.7203000</td>
	<td align=center>997.741</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;17:00</td>
	<td align=center>6.34770</td>
	<td align=center>72.51840</td>
	<td align=center>3.470200</td>
	<td align=center>1.039600</td>
	<td align=center>0.208300</td>
	<td align=center>0.233000</td>
	<td align=center>0.092000</td>
	<td align=center>0.051000</td>
	<td align=center>0.065100</td>
	<td align=center>15.974500</td>
	<td align=center>846.9258</td>
	<td align=center>0.7201000</td>
	<td align=center>998.012</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;16:00</td>
	<td align=center>6.32570</td>
	<td align=center>72.47390</td>
	<td align=center>3.440600</td>
	<td align=center>1.027300</td>
	<td align=center>0.205700</td>
	<td align=center>0.230400</td>
	<td align=center>0.091200</td>
	<td align=center>0.050900</td>
	<td align=center>0.067000</td>
	<td align=center>16.087300</td>
	<td align=center>845.5106</td>
	<td align=center>0.7201000</td>
	<td align=center>996.387</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;15:00</td>
	<td align=center>6.35320</td>
	<td align=center>72.55250</td>
	<td align=center>3.514500</td>
	<td align=center>1.067600</td>
	<td align=center>0.222400</td>
	<td align=center>0.253700</td>
	<td align=center>0.108500</td>
	<td align=center>0.061900</td>
	<td align=center>0.089400</td>
	<td align=center>15.776300</td>
	<td align=center>852.1801</td>
	<td align=center>0.7215000</td>
	<td align=center>1003.256</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;14:00</td>
	<td align=center>6.29700</td>
	<td align=center>72.65980</td>
	<td align=center>3.462600</td>
	<td align=center>1.027900</td>
	<td align=center>0.207200</td>
	<td align=center>0.231300</td>
	<td align=center>0.089400</td>
	<td align=center>0.049200</td>
	<td align=center>0.065900</td>
	<td align=center>15.909600</td>
	<td align=center>847.6951</td>
	<td align=center>0.7191000</td>
	<td align=center>999.626</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;13:00</td>
	<td align=center>6.31300</td>
	<td align=center>72.72140</td>
	<td align=center>3.475800</td>
	<td align=center>1.035000</td>
	<td align=center>0.209000</td>
	<td align=center>0.233100</td>
	<td align=center>0.090300</td>
	<td align=center>0.049300</td>
	<td align=center>0.066000</td>
	<td align=center>15.807100</td>
	<td align=center>848.8973</td>
	<td align=center>0.7191000</td>
	<td align=center>1001.085</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;12:00</td>
	<td align=center>6.30360</td>
	<td align=center>72.69050</td>
	<td align=center>3.457700</td>
	<td align=center>1.026300</td>
	<td align=center>0.207800</td>
	<td align=center>0.231400</td>
	<td align=center>0.089100</td>
	<td align=center>0.047600</td>
	<td align=center>0.066600</td>
	<td align=center>15.879300</td>
	<td align=center>847.8588</td>
	<td align=center>0.7190000</td>
	<td align=center>999.895</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;11:00</td>
	<td align=center>6.29150</td>
	<td align=center>72.69300</td>
	<td align=center>3.443200</td>
	<td align=center>1.022600</td>
	<td align=center>0.206300</td>
	<td align=center>0.230500</td>
	<td align=center>0.091800</td>
	<td align=center>0.050800</td>
	<td align=center>0.066500</td>
	<td align=center>15.903800</td>
	<td align=center>847.6829</td>
	<td align=center>0.7190000</td>
	<td align=center>999.720</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;10:00</td>
	<td align=center>6.32230</td>
	<td align=center>72.70760</td>
	<td align=center>3.477300</td>
	<td align=center>1.035900</td>
	<td align=center>0.208700</td>
	<td align=center>0.232500</td>
	<td align=center>0.093000</td>
	<td align=center>0.051100</td>
	<td align=center>0.066800</td>
	<td align=center>15.804900</td>
	<td align=center>848.9934</td>
	<td align=center>0.7193000</td>
	<td align=center>1001.067</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;09:00</td>
	<td align=center>6.30330</td>
	<td align=center>72.68280</td>
	<td align=center>3.475900</td>
	<td align=center>1.032600</td>
	<td align=center>0.208100</td>
	<td align=center>0.233100</td>
	<td align=center>0.091400</td>
	<td align=center>0.050200</td>
	<td align=center>0.066600</td>
	<td align=center>15.856000</td>
	<td align=center>848.5262</td>
	<td align=center>0.7192000</td>
	<td align=center>1000.560</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;08:00</td>
	<td align=center>6.28310</td>
	<td align=center>72.67570</td>
	<td align=center>3.470800</td>
	<td align=center>1.034000</td>
	<td align=center>0.209100</td>
	<td align=center>0.233600</td>
	<td align=center>0.090100</td>
	<td align=center>0.048500</td>
	<td align=center>0.067100</td>
	<td align=center>15.887900</td>
	<td align=center>848.3519</td>
	<td align=center>0.7191000</td>
	<td align=center>1000.424</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;07:00</td>
	<td align=center>6.27780</td>
	<td align=center>72.71160</td>
	<td align=center>3.473100</td>
	<td align=center>1.033600</td>
	<td align=center>0.208300</td>
	<td align=center>0.232000</td>
	<td align=center>0.093800</td>
	<td align=center>0.052900</td>
	<td align=center>0.066000</td>
	<td align=center>15.850800</td>
	<td align=center>848.9424</td>
	<td align=center>0.7190000</td>
	<td align=center>1001.190</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;06:00</td>
	<td align=center>6.29000</td>
	<td align=center>72.71620</td>
	<td align=center>3.479500</td>
	<td align=center>1.036900</td>
	<td align=center>0.208600</td>
	<td align=center>0.232300</td>
	<td align=center>0.093900</td>
	<td align=center>0.052300</td>
	<td align=center>0.065400</td>
	<td align=center>15.824900</td>
	<td align=center>849.1561</td>
	<td align=center>0.7190000</td>
	<td align=center>1001.402</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;05:00</td>
	<td align=center>6.26890</td>
	<td align=center>72.70620</td>
	<td align=center>3.462700</td>
	<td align=center>1.032900</td>
	<td align=center>0.208000</td>
	<td align=center>0.232400</td>
	<td align=center>0.091300</td>
	<td align=center>0.050700</td>
	<td align=center>0.065500</td>
	<td align=center>15.881300</td>
	<td align=center>848.4754</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.723</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;04:00</td>
	<td align=center>6.26750</td>
	<td align=center>72.69270</td>
	<td align=center>3.452100</td>
	<td align=center>1.026100</td>
	<td align=center>0.206600</td>
	<td align=center>0.231000</td>
	<td align=center>0.091000</td>
	<td align=center>0.049600</td>
	<td align=center>0.065800</td>
	<td align=center>15.917600</td>
	<td align=center>847.8400</td>
	<td align=center>0.7188000</td>
	<td align=center>1000.005</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;03:00</td>
	<td align=center>6.26270</td>
	<td align=center>72.71190</td>
	<td align=center>3.457400</td>
	<td align=center>1.029600</td>
	<td align=center>0.206900</td>
	<td align=center>0.231300</td>
	<td align=center>0.090500</td>
	<td align=center>0.049900</td>
	<td align=center>0.065300</td>
	<td align=center>15.894600</td>
	<td align=center>848.2009</td>
	<td align=center>0.7187000</td>
	<td align=center>1000.493</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;02:00</td>
	<td align=center>6.27150</td>
	<td align=center>72.69050</td>
	<td align=center>3.455700</td>
	<td align=center>1.028200</td>
	<td align=center>0.208200</td>
	<td align=center>0.232900</td>
	<td align=center>0.092900</td>
	<td align=center>0.051900</td>
	<td align=center>0.065800</td>
	<td align=center>15.902300</td>
	<td align=center>848.2191</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.349</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;01:00</td>
	<td align=center>6.28270</td>
	<td align=center>72.70970</td>
	<td align=center>3.475000</td>
	<td align=center>1.033300</td>
	<td align=center>0.208500</td>
	<td align=center>0.232900</td>
	<td align=center>0.091500</td>
	<td align=center>0.050200</td>
	<td align=center>0.065800</td>
	<td align=center>15.850500</td>
	<td align=center>848.7691</td>
	<td align=center>0.7190000</td>
	<td align=center>1001.012</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;00:00</td>
	<td align=center>6.28930</td>
	<td align=center>72.68160</td>
	<td align=center>3.466500</td>
	<td align=center>1.033600</td>
	<td align=center>0.207900</td>
	<td align=center>0.231900</td>
	<td align=center>0.090500</td>
	<td align=center>0.049700</td>
	<td align=center>0.064400</td>
	<td align=center>15.884700</td>
	<td align=center>848.1569</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.235</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;23:00</td>
	<td align=center>6.28930</td>
	<td align=center>72.68160</td>
	<td align=center>3.466500</td>
	<td align=center>1.033600</td>
	<td align=center>0.207900</td>
	<td align=center>0.231900</td>
	<td align=center>0.090500</td>
	<td align=center>0.049700</td>
	<td align=center>0.064400</td>
	<td align=center>15.884700</td>
	<td align=center>848.1569</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.235</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;22:00</td>
	<td align=center>6.29490</td>
	<td align=center>72.70660</td>
	<td align=center>3.464500</td>
	<td align=center>1.030100</td>
	<td align=center>0.207300</td>
	<td align=center>0.231500</td>
	<td align=center>0.088400</td>
	<td align=center>0.048500</td>
	<td align=center>0.065200</td>
	<td align=center>15.863000</td>
	<td align=center>848.1625</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.337</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;21:00</td>
	<td align=center>6.27900</td>
	<td align=center>72.69930</td>
	<td align=center>3.452900</td>
	<td align=center>1.029300</td>
	<td align=center>0.207100</td>
	<td align=center>0.231200</td>
	<td align=center>0.091300</td>
	<td align=center>0.049800</td>
	<td align=center>0.064100</td>
	<td align=center>15.895800</td>
	<td align=center>847.9694</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.131</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;20:00</td>
	<td align=center>6.27470</td>
	<td align=center>72.66580</td>
	<td align=center>3.444800</td>
	<td align=center>1.027200</td>
	<td align=center>0.208200</td>
	<td align=center>0.232700</td>
	<td align=center>0.092400</td>
	<td align=center>0.050900</td>
	<td align=center>0.064500</td>
	<td align=center>15.938700</td>
	<td align=center>847.6198</td>
	<td align=center>0.7190000</td>
	<td align=center>999.604</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;19:00</td>
	<td align=center>6.28150</td>
	<td align=center>72.68880</td>
	<td align=center>3.457100</td>
	<td align=center>1.029100</td>
	<td align=center>0.207300</td>
	<td align=center>0.231200</td>
	<td align=center>0.091000</td>
	<td align=center>0.049900</td>
	<td align=center>0.064200</td>
	<td align=center>15.900000</td>
	<td align=center>847.9255</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.039</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;18:00</td>
	<td align=center>6.29640</td>
	<td align=center>72.69230</td>
	<td align=center>3.468300</td>
	<td align=center>1.033700</td>
	<td align=center>0.208900</td>
	<td align=center>0.233300</td>
	<td align=center>0.089300</td>
	<td align=center>0.048000</td>
	<td align=center>0.063700</td>
	<td align=center>15.866100</td>
	<td align=center>848.2391</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.359</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;17:00</td>
	<td align=center>6.28540</td>
	<td align=center>72.68670</td>
	<td align=center>3.458700</td>
	<td align=center>1.031100</td>
	<td align=center>0.207200</td>
	<td align=center>0.231900</td>
	<td align=center>0.090800</td>
	<td align=center>0.049700</td>
	<td align=center>0.064000</td>
	<td align=center>15.894400</td>
	<td align=center>847.9832</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.079</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;16:00</td>
	<td align=center>6.29650</td>
	<td align=center>72.71710</td>
	<td align=center>3.468200</td>
	<td align=center>1.032200</td>
	<td align=center>0.208200</td>
	<td align=center>0.232600</td>
	<td align=center>0.093200</td>
	<td align=center>0.052000</td>
	<td align=center>0.065100</td>
	<td align=center>15.834900</td>
	<td align=center>848.7864</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.984</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;15:00</td>
	<td align=center>6.28350</td>
	<td align=center>72.69860</td>
	<td align=center>3.461500</td>
	<td align=center>1.033100</td>
	<td align=center>0.208200</td>
	<td align=center>0.232100</td>
	<td align=center>0.091400</td>
	<td align=center>0.050000</td>
	<td align=center>0.065700</td>
	<td align=center>15.876100</td>
	<td align=center>848.3551</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.509</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;14:00</td>
	<td align=center>6.27900</td>
	<td align=center>72.71780</td>
	<td align=center>3.462300</td>
	<td align=center>1.032900</td>
	<td align=center>0.209100</td>
	<td align=center>0.234000</td>
	<td align=center>0.091500</td>
	<td align=center>0.050200</td>
	<td align=center>0.066400</td>
	<td align=center>15.856800</td>
	<td align=center>848.7001</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.955</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;13:00</td>
	<td align=center>6.28440</td>
	<td align=center>72.71730</td>
	<td align=center>3.465200</td>
	<td align=center>1.030600</td>
	<td align=center>0.207400</td>
	<td align=center>0.231700</td>
	<td align=center>0.091200</td>
	<td align=center>0.050300</td>
	<td align=center>0.066600</td>
	<td align=center>15.855300</td>
	<td align=center>848.5599</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.802</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;12:00</td>
	<td align=center>6.30210</td>
	<td align=center>72.69340</td>
	<td align=center>3.489300</td>
	<td align=center>1.034900</td>
	<td align=center>0.209400</td>
	<td align=center>0.234100</td>
	<td align=center>0.091500</td>
	<td align=center>0.049700</td>
	<td align=center>0.066500</td>
	<td align=center>15.829100</td>
	<td align=center>848.9858</td>
	<td align=center>0.7192000</td>
	<td align=center>1001.110</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;11:00</td>
	<td align=center>6.29480</td>
	<td align=center>72.70840</td>
	<td align=center>3.473600</td>
	<td align=center>1.034200</td>
	<td align=center>0.209300</td>
	<td align=center>0.234500</td>
	<td align=center>0.094500</td>
	<td align=center>0.052800</td>
	<td align=center>0.067700</td>
	<td align=center>15.830200</td>
	<td align=center>849.1536</td>
	<td align=center>0.7192000</td>
	<td align=center>1001.306</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;10:00</td>
	<td align=center>6.28550</td>
	<td align=center>72.71020</td>
	<td align=center>3.463400</td>
	<td align=center>1.027800</td>
	<td align=center>0.207400</td>
	<td align=center>0.231500</td>
	<td align=center>0.093100</td>
	<td align=center>0.052300</td>
	<td align=center>0.066800</td>
	<td align=center>15.862200</td>
	<td align=center>848.5425</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.727</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;09:00</td>
	<td align=center>6.26360</td>
	<td align=center>72.67850</td>
	<td align=center>3.454400</td>
	<td align=center>1.032700</td>
	<td align=center>0.208700</td>
	<td align=center>0.233800</td>
	<td align=center>0.091400</td>
	<td align=center>0.049800</td>
	<td align=center>0.074700</td>
	<td align=center>15.912300</td>
	<td align=center>848.5169</td>
	<td align=center>0.7191000</td>
	<td align=center>1000.581</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;08:00</td>
	<td align=center>6.26790</td>
	<td align=center>72.69020</td>
	<td align=center>3.445100</td>
	<td align=center>1.026300</td>
	<td align=center>0.207600</td>
	<td align=center>0.231900</td>
	<td align=center>0.093500</td>
	<td align=center>0.052300</td>
	<td align=center>0.066900</td>
	<td align=center>15.918300</td>
	<td align=center>848.0206</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.126</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;07:00</td>
	<td align=center>6.27360</td>
	<td align=center>72.68910</td>
	<td align=center>3.449400</td>
	<td align=center>1.025500</td>
	<td align=center>0.207000</td>
	<td align=center>0.231600</td>
	<td align=center>0.092200</td>
	<td align=center>0.050700</td>
	<td align=center>0.066000</td>
	<td align=center>15.914900</td>
	<td align=center>847.8728</td>
	<td align=center>0.7189000</td>
	<td align=center>999.979</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;06:00</td>
	<td align=center>6.27710</td>
	<td align=center>72.71840</td>
	<td align=center>3.459700</td>
	<td align=center>1.029000</td>
	<td align=center>0.207500</td>
	<td align=center>0.231700</td>
	<td align=center>0.095000</td>
	<td align=center>0.054200</td>
	<td align=center>0.066200</td>
	<td align=center>15.861400</td>
	<td align=center>848.7243</td>
	<td align=center>0.7190000</td>
	<td align=center>1000.960</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;05:00</td>
	<td align=center>6.27690</td>
	<td align=center>72.69760</td>
	<td align=center>3.453900</td>
	<td align=center>1.026800</td>
	<td align=center>0.207300</td>
	<td align=center>0.231800</td>
	<td align=center>0.093200</td>
	<td align=center>0.051500</td>
	<td align=center>0.065600</td>
	<td align=center>15.895500</td>
	<td align=center>848.1400</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.282</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;04:00</td>
	<td align=center>6.26010</td>
	<td align=center>72.69200</td>
	<td align=center>3.443800</td>
	<td align=center>1.024100</td>
	<td align=center>0.207300</td>
	<td align=center>0.231800</td>
	<td align=center>0.091300</td>
	<td align=center>0.049600</td>
	<td align=center>0.065700</td>
	<td align=center>15.934400</td>
	<td align=center>847.6846</td>
	<td align=center>0.7188000</td>
	<td align=center>999.848</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;03:00</td>
	<td align=center>6.27440</td>
	<td align=center>72.70810</td>
	<td align=center>3.461100</td>
	<td align=center>1.029800</td>
	<td align=center>0.207200</td>
	<td align=center>0.231800</td>
	<td align=center>0.092800</td>
	<td align=center>0.051000</td>
	<td align=center>0.066100</td>
	<td align=center>15.877600</td>
	<td align=center>848.4365</td>
	<td align=center>0.7189000</td>
	<td align=center>1000.666</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;02:00</td>
	<td align=center>6.25660</td>
	<td align=center>72.72560</td>
	<td align=center>3.451900</td>
	<td align=center>1.025300</td>
	<td align=center>0.206100</td>
	<td align=center>0.230300</td>
	<td align=center>0.092900</td>
	<td align=center>0.052000</td>
	<td align=center>0.067500</td>
	<td align=center>15.891800</td>
	<td align=center>848.3651</td>
	<td align=center>0.7187000</td>
	<td align=center>1000.702</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;01:00</td>
	<td align=center>6.28170</td>
	<td align=center>72.71910</td>
	<td align=center>3.460700</td>
	<td align=center>1.032000</td>
	<td align=center>0.208100</td>
	<td align=center>0.233100</td>
	<td align=center>0.093200</td>
	<td align=center>0.052000</td>
	<td align=center>0.069500</td>
	<td align=center>15.850600</td>
	<td align=center>848.8917</td>
	<td align=center>0.7190000</td>
	<td align=center>1001.110</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;00:00</td>
	<td align=center>6.28440</td>
	<td align=center>72.68970</td>
	<td align=center>3.458700</td>
	<td align=center>1.031300</td>
	<td align=center>0.209600</td>
	<td align=center>0.235700</td>
	<td align=center>0.093400</td>
	<td align=center>0.051300</td>
	<td align=center>0.069900</td>
	<td align=center>15.876000</td>
	<td align=center>848.6743</td>
	<td align=center>0.7192000</td>
	<td align=center>1000.732</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;23:00</td>
	<td align=center>6.29400</td>
	<td align=center>72.64330</td>
	<td align=center>3.457800</td>
	<td align=center>1.033900</td>
	<td align=center>0.210500</td>
	<td align=center>0.235800</td>
	<td align=center>0.092200</td>
	<td align=center>0.049600</td>
	<td align=center>0.070000</td>
	<td align=center>15.913000</td>
	<td align=center>848.1688</td>
	<td align=center>0.7194000</td>
	<td align=center>999.980</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;22:00</td>
	<td align=center>6.27110</td>
	<td align=center>72.65150</td>
	<td align=center>3.439600</td>
	<td align=center>1.026700</td>
	<td align=center>0.207700</td>
	<td align=center>0.233000</td>
	<td align=center>0.094700</td>
	<td align=center>0.052200</td>
	<td align=center>0.070100</td>
	<td align=center>15.953600</td>
	<td align=center>847.7678</td>
	<td align=center>0.7192000</td>
	<td align=center>999.643</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;21:00</td>
	<td align=center>6.28510</td>
	<td align=center>72.72670</td>
	<td align=center>3.463800</td>
	<td align=center>1.033600</td>
	<td align=center>0.209800</td>
	<td align=center>0.235300</td>
	<td align=center>0.095800</td>
	<td align=center>0.053200</td>
	<td align=center>0.069500</td>
	<td align=center>15.827300</td>
	<td align=center>849.3438</td>
	<td align=center>0.7191000</td>
	<td align=center>1001.575</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;20:00</td>
	<td align=center>6.29600</td>
	<td align=center>72.73640</td>
	<td align=center>3.477200</td>
	<td align=center>1.036900</td>
	<td align=center>0.209200</td>
	<td align=center>0.233600</td>
	<td align=center>0.091600</td>
	<td align=center>0.049800</td>
	<td align=center>0.065100</td>
	<td align=center>15.804200</td>
	<td align=center>849.1758</td>
	<td align=center>0.7189000</td>
	<td align=center>1001.502</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;19:00</td>
	<td align=center>6.29470</td>
	<td align=center>72.77620</td>
	<td align=center>3.486100</td>
	<td align=center>1.039900</td>
	<td align=center>0.209600</td>
	<td align=center>0.234100</td>
	<td align=center>0.090600</td>
	<td align=center>0.049200</td>
	<td align=center>0.065000</td>
	<td align=center>15.754500</td>
	<td align=center>849.7761</td>
	<td align=center>0.7188000</td>
	<td align=center>1002.326</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;18:00</td>
	<td align=center>6.25420</td>
	<td align=center>72.71180</td>
	<td align=center>3.440200</td>
	<td align=center>1.024300</td>
	<td align=center>0.206600</td>
	<td align=center>0.230700</td>
	<td align=center>0.092000</td>
	<td align=center>0.051400</td>
	<td align=center>0.063700</td>
	<td align=center>15.925000</td>
	<td align=center>847.7783</td>
	<td align=center>0.7187000</td>
	<td align=center>1000.053</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;17:00</td>
	<td align=center>6.28440</td>
	<td align=center>72.71860</td>
	<td align=center>3.457400</td>
	<td align=center>1.030400</td>
	<td align=center>0.208600</td>
	<td align=center>0.233100</td>
	<td align=center>0.090900</td>
	<td align=center>0.049600</td>
	<td align=center>0.064100</td>
	<td align=center>15.863000</td>
	<td align=center>848.3521</td>
	<td align=center>0.7188000</td>
	<td align=center>1000.594</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;16:00</td>
	<td align=center>6.26670</td>
	<td align=center>72.69490</td>
	<td align=center>3.449600</td>
	<td align=center>1.028600</td>
	<td align=center>0.208100</td>
	<td align=center>0.232400</td>
	<td align=center>0.091100</td>
	<td align=center>0.050100</td>
	<td align=center>0.063600</td>
	<td align=center>15.915000</td>
	<td align=center>847.8914</td>
	<td align=center>0.7188000</td>
	<td align=center>1000.070</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;15:00</td>
	<td align=center>6.27360</td>
	<td align=center>72.75110</td>
	<td align=center>3.464000</td>
	<td align=center>1.030000</td>
	<td align=center>0.206900</td>
	<td align=center>0.231100</td>
	<td align=center>0.092400</td>
	<td align=center>0.050700</td>
	<td align=center>0.064600</td>
	<td align=center>15.835500</td>
	<td align=center>848.8033</td>
	<td align=center>0.7187000</td>
	<td align=center>1001.250</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;14:00</td>
	<td align=center>6.28920</td>
	<td align=center>72.78730</td>
	<td align=center>3.473600</td>
	<td align=center>1.032700</td>
	<td align=center>0.208500</td>
	<td align=center>0.232300</td>
	<td align=center>0.089400</td>
	<td align=center>0.048400</td>
	<td align=center>0.063000</td>
	<td align=center>15.775600</td>
	<td align=center>849.2059</td>
	<td align=center>0.7185000</td>
	<td align=center>1001.813</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;13:00</td>
	<td align=center>6.35060</td>
	<td align=center>72.65660</td>
	<td align=center>3.456100</td>
	<td align=center>1.025900</td>
	<td align=center>0.206000</td>
	<td align=center>0.229000</td>
	<td align=center>0.088800</td>
	<td align=center>0.047500</td>
	<td align=center>0.062800</td>
	<td align=center>15.876700</td>
	<td align=center>847.1376</td>
	<td align=center>0.7193000</td>
	<td align=center>998.858</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;12:00</td>
	<td align=center>6.35320</td>
	<td align=center>72.69590</td>
	<td align=center>3.455100</td>
	<td align=center>1.024500</td>
	<td align=center>0.205500</td>
	<td align=center>0.228800</td>
	<td align=center>0.089300</td>
	<td align=center>0.048600</td>
	<td align=center>0.062100</td>
	<td align=center>15.836900</td>
	<td align=center>847.4935</td>
	<td align=center>0.7191000</td>
	<td align=center>999.383</td> 
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
