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
<title>Gas Composition Past 7 Days</title>
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
	timerID = setTimeout(document.location='9_15.asp',300000);	  
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
	<td width="809" class="head4" bgcolor="#000066"><font color="#FFFFFF">Gas Composition Past 7 days</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="832">
  <tr class="head">
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT MTP
	  (AT DPCU) - PAST 7 DAYS</strong></td>
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
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
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
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:00</td>
	<td align=center>11.53830</td>
	<td align=center>77.43260</td>
	<td align=center>5.724800</td>
	<td align=center>1.889200</td>
	<td align=center>0.427300</td>
	<td align=center>0.389800</td>
	<td align=center>0.124300</td>
	<td align=center>0.078000</td>
	<td align=center>0.085200</td>
	<td align=center>2.310400</td>
	<td align=center>974.6232</td>
	<td align=center>0.7406000</td>
	<td align=center>1132.517</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;10:00</td>
	<td align=center>11.46730</td>
	<td align=center>77.80090</td>
	<td align=center>5.604300</td>
	<td align=center>1.785100</td>
	<td align=center>0.401200</td>
	<td align=center>0.363400</td>
	<td align=center>0.116500</td>
	<td align=center>0.073700</td>
	<td align=center>0.084600</td>
	<td align=center>2.303100</td>
	<td align=center>971.3200</td>
	<td align=center>0.7372000</td>
	<td align=center>1131.279</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;09:00</td>
	<td align=center>11.32030</td>
	<td align=center>77.73660</td>
	<td align=center>5.742600</td>
	<td align=center>1.837200</td>
	<td align=center>0.426100</td>
	<td align=center>0.387400</td>
	<td align=center>0.123000</td>
	<td align=center>0.077800</td>
	<td align=center>0.084300</td>
	<td align=center>2.264700</td>
	<td align=center>976.4779</td>
	<td align=center>0.7377000</td>
	<td align=center>1136.901</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;08:00</td>
	<td align=center>11.32210</td>
	<td align=center>77.95770</td>
	<td align=center>5.607400</td>
	<td align=center>1.810600</td>
	<td align=center>0.402200</td>
	<td align=center>0.363100</td>
	<td align=center>0.115600</td>
	<td align=center>0.073300</td>
	<td align=center>0.081100</td>
	<td align=center>2.266900</td>
	<td align=center>973.4155</td>
	<td align=center>0.7358000</td>
	<td align=center>1134.797</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;07:00</td>
	<td align=center>11.27050</td>
	<td align=center>78.15830</td>
	<td align=center>5.538900</td>
	<td align=center>1.758000</td>
	<td align=center>0.386900</td>
	<td align=center>0.349800</td>
	<td align=center>0.112300</td>
	<td align=center>0.070900</td>
	<td align=center>0.076300</td>
	<td align=center>2.278000</td>
	<td align=center>971.4962</td>
	<td align=center>0.7339000</td>
	<td align=center>1134.025</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;06:00</td>
	<td align=center>11.27020</td>
	<td align=center>78.16280</td>
	<td align=center>5.549700</td>
	<td align=center>1.761800</td>
	<td align=center>0.391700</td>
	<td align=center>0.353500</td>
	<td align=center>0.113000</td>
	<td align=center>0.071500</td>
	<td align=center>0.079900</td>
	<td align=center>2.245900</td>
	<td align=center>972.3317</td>
	<td align=center>0.7341000</td>
	<td align=center>1134.846</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;05:00</td>
	<td align=center>11.31120</td>
	<td align=center>78.12210</td>
	<td align=center>5.554200</td>
	<td align=center>1.756600</td>
	<td align=center>0.390500</td>
	<td align=center>0.352600</td>
	<td align=center>0.114200</td>
	<td align=center>0.072400</td>
	<td align=center>0.082400</td>
	<td align=center>2.243800</td>
	<td align=center>972.0018</td>
	<td align=center>0.7345000</td>
	<td align=center>1134.152</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;04:00</td>
	<td align=center>11.26930</td>
	<td align=center>78.19660</td>
	<td align=center>5.529700</td>
	<td align=center>1.767400</td>
	<td align=center>0.393600</td>
	<td align=center>0.356400</td>
	<td align=center>0.115200</td>
	<td align=center>0.072600</td>
	<td align=center>0.083500</td>
	<td align=center>2.215700</td>
	<td align=center>972.9251</td>
	<td align=center>0.7341000</td>
	<td align=center>1135.538</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;03:00</td>
	<td align=center>11.37080</td>
	<td align=center>78.09010</td>
	<td align=center>5.504600</td>
	<td align=center>1.772400</td>
	<td align=center>0.397100</td>
	<td align=center>0.360500</td>
	<td align=center>0.116700</td>
	<td align=center>0.074000</td>
	<td align=center>0.085300</td>
	<td align=center>2.228400</td>
	<td align=center>971.9798</td>
	<td align=center>0.7353000</td>
	<td align=center>1133.509</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;02:00</td>
	<td align=center>11.40260</td>
	<td align=center>77.92260</td>
	<td align=center>5.600700</td>
	<td align=center>1.795200</td>
	<td align=center>0.399600</td>
	<td align=center>0.362900</td>
	<td align=center>0.117400</td>
	<td align=center>0.074600</td>
	<td align=center>0.086100</td>
	<td align=center>2.238200</td>
	<td align=center>972.8284</td>
	<td align=center>0.7365000</td>
	<td align=center>1133.574</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;01:00</td>
	<td align=center>11.39310</td>
	<td align=center>77.93510</td>
	<td align=center>5.592000</td>
	<td align=center>1.803800</td>
	<td align=center>0.405200</td>
	<td align=center>0.369200</td>
	<td align=center>0.118300</td>
	<td align=center>0.074700</td>
	<td align=center>0.090900</td>
	<td align=center>2.217800</td>
	<td align=center>973.6752</td>
	<td align=center>0.7366000</td>
	<td align=center>1134.484</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;00:00</td>
	<td align=center>11.45420</td>
	<td align=center>77.78010</td>
	<td align=center>5.620900</td>
	<td align=center>1.850200</td>
	<td align=center>0.411200</td>
	<td align=center>0.373500</td>
	<td align=center>0.119600</td>
	<td align=center>0.076100</td>
	<td align=center>0.087800</td>
	<td align=center>2.226500</td>
	<td align=center>974.0969</td>
	<td align=center>0.7380000</td>
	<td align=center>1133.898</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;23:00</td>
	<td align=center>11.45520</td>
	<td align=center>77.64510</td>
	<td align=center>5.744100</td>
	<td align=center>1.817600</td>
	<td align=center>0.404500</td>
	<td align=center>0.367700</td>
	<td align=center>0.119500</td>
	<td align=center>0.076000</td>
	<td align=center>0.086500</td>
	<td align=center>2.283800</td>
	<td align=center>973.6135</td>
	<td align=center>0.7383000</td>
	<td align=center>1133.105</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;22:00</td>
	<td align=center>11.65300</td>
	<td align=center>77.13900</td>
	<td align=center>5.868600</td>
	<td align=center>1.938700</td>
	<td align=center>0.435500</td>
	<td align=center>0.395500</td>
	<td align=center>0.127200</td>
	<td align=center>0.081300</td>
	<td align=center>0.090900</td>
	<td align=center>2.270300</td>
	<td align=center>976.4455</td>
	<td align=center>0.7432000</td>
	<td align=center>1132.649</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;21:00</td>
	<td align=center>11.62210</td>
	<td align=center>77.14650</td>
	<td align=center>5.907700</td>
	<td align=center>1.975400</td>
	<td align=center>0.437000</td>
	<td align=center>0.397000</td>
	<td align=center>0.127700</td>
	<td align=center>0.081000</td>
	<td align=center>0.090600</td>
	<td align=center>2.215000</td>
	<td align=center>978.2428</td>
	<td align=center>0.7432000</td>
	<td align=center>1134.733</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;20:00</td>
	<td align=center>11.55590</td>
	<td align=center>77.21820</td>
	<td align=center>5.948300</td>
	<td align=center>1.950100</td>
	<td align=center>0.432900</td>
	<td align=center>0.392000</td>
	<td align=center>0.124300</td>
	<td align=center>0.078900</td>
	<td align=center>0.089300</td>
	<td align=center>2.210100</td>
	<td align=center>978.4677</td>
	<td align=center>0.7423000</td>
	<td align=center>1135.682</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;19:00</td>
	<td align=center>11.41990</td>
	<td align=center>77.32170</td>
	<td align=center>5.949200</td>
	<td align=center>1.953500</td>
	<td align=center>0.434400</td>
	<td align=center>0.394200</td>
	<td align=center>0.125500</td>
	<td align=center>0.079400</td>
	<td align=center>0.086800</td>
	<td align=center>2.235300</td>
	<td align=center>979.6877</td>
	<td align=center>0.7411000</td>
	<td align=center>1138.018</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;18:00</td>
	<td align=center>11.53340</td>
	<td align=center>77.24230</td>
	<td align=center>5.879700</td>
	<td align=center>1.963400</td>
	<td align=center>0.440300</td>
	<td align=center>0.398600</td>
	<td align=center>0.126200</td>
	<td align=center>0.080800</td>
	<td align=center>0.086500</td>
	<td align=center>2.248800</td>
	<td align=center>978.3027</td>
	<td align=center>0.7422000</td>
	<td align=center>1135.567</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;17:00</td>
	<td align=center>11.46040</td>
	<td align=center>77.42910</td>
	<td align=center>5.792600</td>
	<td align=center>1.944500</td>
	<td align=center>0.431900</td>
	<td align=center>0.390100</td>
	<td align=center>0.122000</td>
	<td align=center>0.077100</td>
	<td align=center>0.082500</td>
	<td align=center>2.269800</td>
	<td align=center>977.0979</td>
	<td align=center>0.7405000</td>
	<td align=center>1135.470</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;16:00</td>
	<td align=center>11.09590</td>
	<td align=center>78.25250</td>
	<td align=center>5.571400</td>
	<td align=center>1.745200</td>
	<td align=center>0.384200</td>
	<td align=center>0.349500</td>
	<td align=center>0.111900</td>
	<td align=center>0.070900</td>
	<td align=center>0.075600</td>
	<td align=center>2.342800</td>
	<td align=center>972.5521</td>
	<td align=center>0.7324000</td>
	<td align=center>1136.420</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;15:00</td>
	<td align=center>10.90890</td>
	<td align=center>78.62580</td>
	<td align=center>5.518600</td>
	<td align=center>1.682400</td>
	<td align=center>0.373000</td>
	<td align=center>0.338900</td>
	<td align=center>0.108100</td>
	<td align=center>0.068700</td>
	<td align=center>0.073800</td>
	<td align=center>2.301800</td>
	<td align=center>972.7560</td>
	<td align=center>0.7291000</td>
	<td align=center>1139.227</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;14:00</td>
	<td align=center>11.37850</td>
	<td align=center>77.60940</td>
	<td align=center>5.823000</td>
	<td align=center>1.907200</td>
	<td align=center>0.423400</td>
	<td align=center>0.382500</td>
	<td align=center>0.120300</td>
	<td align=center>0.076000</td>
	<td align=center>0.081200</td>
	<td align=center>2.198400</td>
	<td align=center>977.8202</td>
	<td align=center>0.7388000</td>
	<td align=center>1137.616</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;13:00</td>
	<td align=center>11.28130</td>
	<td align=center>77.85000</td>
	<td align=center>5.744100</td>
	<td align=center>1.848900</td>
	<td align=center>0.413900</td>
	<td align=center>0.374000</td>
	<td align=center>0.117500</td>
	<td align=center>0.074100</td>
	<td align=center>0.081500</td>
	<td align=center>2.214800</td>
	<td align=center>976.6023</td>
	<td align=center>0.7367000</td>
	<td align=center>1137.817</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;12:00</td>
	<td align=center>11.53120</td>
	<td align=center>77.35830</td>
	<td align=center>5.840200</td>
	<td align=center>1.915900</td>
	<td align=center>0.432500</td>
	<td align=center>0.391400</td>
	<td align=center>0.121600</td>
	<td align=center>0.077800</td>
	<td align=center>0.085800</td>
	<td align=center>2.245100</td>
	<td align=center>976.7416</td>
	<td align=center>0.7411000</td>
	<td align=center>1134.596</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;11:00</td>
	<td align=center>11.37140</td>
	<td align=center>77.65690</td>
	<td align=center>5.742800</td>
	<td align=center>1.847000</td>
	<td align=center>0.413400</td>
	<td align=center>0.374300</td>
	<td align=center>0.119100</td>
	<td align=center>0.075600</td>
	<td align=center>0.083700</td>
	<td align=center>2.315800</td>
	<td align=center>974.7959</td>
	<td align=center>0.7380000</td>
	<td align=center>1134.712</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;10:00</td>
	<td align=center>11.53420</td>
	<td align=center>77.59570</td>
	<td align=center>5.699500</td>
	<td align=center>1.875300</td>
	<td align=center>0.417300</td>
	<td align=center>0.377300</td>
	<td align=center>0.118300</td>
	<td align=center>0.074700</td>
	<td align=center>0.080600</td>
	<td align=center>2.227200</td>
	<td align=center>974.1340</td>
	<td align=center>0.7393000</td>
	<td align=center>1132.944</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;09:00</td>
	<td align=center>11.53220</td>
	<td align=center>77.74430</td>
	<td align=center>5.571200</td>
	<td align=center>1.850800</td>
	<td align=center>0.415600</td>
	<td align=center>0.377500</td>
	<td align=center>0.119000</td>
	<td align=center>0.075100</td>
	<td align=center>0.084300</td>
	<td align=center>2.230100</td>
	<td align=center>972.9030</td>
	<td align=center>0.7385000</td>
	<td align=center>1132.125</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;08:00</td>
	<td align=center>11.48130</td>
	<td align=center>77.79360</td>
	<td align=center>5.617400</td>
	<td align=center>1.827600</td>
	<td align=center>0.409000</td>
	<td align=center>0.368700</td>
	<td align=center>0.117000</td>
	<td align=center>0.074000</td>
	<td align=center>0.081800</td>
	<td align=center>2.229500</td>
	<td align=center>972.8917</td>
	<td align=center>0.7377000</td>
	<td align=center>1132.725</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;07:00</td>
	<td align=center>11.40980</td>
	<td align=center>77.95400</td>
	<td align=center>5.621300</td>
	<td align=center>1.770600</td>
	<td align=center>0.396400</td>
	<td align=center>0.357400</td>
	<td align=center>0.112000</td>
	<td align=center>0.069700</td>
	<td align=center>0.074600</td>
	<td align=center>2.234300</td>
	<td align=center>971.6302</td>
	<td align=center>0.7358000</td>
	<td align=center>1132.716</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;06:00</td>
	<td align=center>11.51560</td>
	<td align=center>78.02730</td>
	<td align=center>5.460100</td>
	<td align=center>1.768300</td>
	<td align=center>0.392300</td>
	<td align=center>0.353800</td>
	<td align=center>0.110100</td>
	<td align=center>0.069200</td>
	<td align=center>0.075700</td>
	<td align=center>2.227500</td>
	<td align=center>969.1532</td>
	<td align=center>0.7358000</td>
	<td align=center>1129.828</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;05:00</td>
	<td align=center>11.37320</td>
	<td align=center>78.05120</td>
	<td align=center>5.680900</td>
	<td align=center>1.724300</td>
	<td align=center>0.382600</td>
	<td align=center>0.347500</td>
	<td align=center>0.109700</td>
	<td align=center>0.068700</td>
	<td align=center>0.074600</td>
	<td align=center>2.187100</td>
	<td align=center>971.5994</td>
	<td align=center>0.7346000</td>
	<td align=center>1133.605</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;04:00</td>
	<td align=center>11.30460</td>
	<td align=center>78.29380</td>
	<td align=center>5.628600</td>
	<td align=center>1.704900</td>
	<td align=center>0.373000</td>
	<td align=center>0.338600</td>
	<td align=center>0.107400</td>
	<td align=center>0.068000</td>
	<td align=center>0.077900</td>
	<td align=center>2.103200</td>
	<td align=center>972.0621</td>
	<td align=center>0.7329000</td>
	<td align=center>1135.459</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;03:00</td>
	<td align=center>11.39400</td>
	<td align=center>78.23060</td>
	<td align=center>5.629500</td>
	<td align=center>1.728200</td>
	<td align=center>0.380500</td>
	<td align=center>0.345900</td>
	<td align=center>0.108300</td>
	<td align=center>0.068700</td>
	<td align=center>0.075000</td>
	<td align=center>2.039400</td>
	<td align=center>972.4413</td>
	<td align=center>0.7339000</td>
	<td align=center>1135.128</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;02:00</td>
	<td align=center>11.36420</td>
	<td align=center>78.32470</td>
	<td align=center>5.602700</td>
	<td align=center>1.719000</td>
	<td align=center>0.378700</td>
	<td align=center>0.344900</td>
	<td align=center>0.108700</td>
	<td align=center>0.069000</td>
	<td align=center>0.076000</td>
	<td align=center>2.012000</td>
	<td align=center>972.6710</td>
	<td align=center>0.7333000</td>
	<td align=center>1135.861</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;01:00</td>
	<td align=center>11.37510</td>
	<td align=center>78.35240</td>
	<td align=center>5.601200</td>
	<td align=center>1.675300</td>
	<td align=center>0.366600</td>
	<td align=center>0.333600</td>
	<td align=center>0.107100</td>
	<td align=center>0.068200</td>
	<td align=center>0.075300</td>
	<td align=center>2.045000</td>
	<td align=center>970.9221</td>
	<td align=center>0.7327000</td>
	<td align=center>1134.283</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;00:00</td>
	<td align=center>11.69740</td>
	<td align=center>77.53220</td>
	<td align=center>5.805800</td>
	<td align=center>1.879800</td>
	<td align=center>0.413300</td>
	<td align=center>0.375500</td>
	<td align=center>0.118000</td>
	<td align=center>0.074800</td>
	<td align=center>0.082300</td>
	<td align=center>2.020900</td>
	<td align=center>975.3907</td>
	<td align=center>0.7406000</td>
	<td align=center>1133.409</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;23:00</td>
	<td align=center>11.55040</td>
	<td align=center>77.71310</td>
	<td align=center>5.791700</td>
	<td align=center>1.860400</td>
	<td align=center>0.407600</td>
	<td align=center>0.369200</td>
	<td align=center>0.117300</td>
	<td align=center>0.074200</td>
	<td align=center>0.082700</td>
	<td align=center>2.033400</td>
	<td align=center>976.0560</td>
	<td align=center>0.7387000</td>
	<td align=center>1135.640</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;22:00</td>
	<td align=center>11.61980</td>
	<td align=center>77.33890</td>
	<td align=center>5.903400</td>
	<td align=center>1.934100</td>
	<td align=center>0.426900</td>
	<td align=center>0.387000</td>
	<td align=center>0.122400</td>
	<td align=center>0.077600</td>
	<td align=center>0.083700</td>
	<td align=center>2.106100</td>
	<td align=center>977.7325</td>
	<td align=center>0.7417000</td>
	<td align=center>1135.288</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;21:00</td>
	<td align=center>11.75300</td>
	<td align=center>77.06000</td>
	<td align=center>5.915100</td>
	<td align=center>2.003100</td>
	<td align=center>0.445100</td>
	<td align=center>0.403000</td>
	<td align=center>0.126300</td>
	<td align=center>0.079500</td>
	<td align=center>0.085200</td>
	<td align=center>2.129700</td>
	<td align=center>978.2938</td>
	<td align=center>0.7445000</td>
	<td align=center>1133.801</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;20:00</td>
	<td align=center>11.77750</td>
	<td align=center>77.04670</td>
	<td align=center>5.939400</td>
	<td align=center>2.000000</td>
	<td align=center>0.439000</td>
	<td align=center>0.396100</td>
	<td align=center>0.123200</td>
	<td align=center>0.077400</td>
	<td align=center>0.080700</td>
	<td align=center>2.119900</td>
	<td align=center>977.6603</td>
	<td align=center>0.7444000</td>
	<td align=center>1133.143</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;19:00</td>
	<td align=center>11.73480</td>
	<td align=center>77.19760</td>
	<td align=center>5.864400</td>
	<td align=center>1.988800</td>
	<td align=center>0.439700</td>
	<td align=center>0.397600</td>
	<td align=center>0.124500</td>
	<td align=center>0.078500</td>
	<td align=center>0.084900</td>
	<td align=center>2.089200</td>
	<td align=center>977.9402</td>
	<td align=center>0.7435000</td>
	<td align=center>1134.153</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;18:00</td>
	<td align=center>11.66300</td>
	<td align=center>77.21910</td>
	<td align=center>5.924500</td>
	<td align=center>1.982300</td>
	<td align=center>0.439500</td>
	<td align=center>0.397800</td>
	<td align=center>0.125000</td>
	<td align=center>0.079500</td>
	<td align=center>0.091700</td>
	<td align=center>2.077500</td>
	<td align=center>979.4523</td>
	<td align=center>0.7432000</td>
	<td align=center>1136.136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;17:00</td>
	<td align=center>11.60170</td>
	<td align=center>77.36360</td>
	<td align=center>5.923300</td>
	<td align=center>2.005000</td>
	<td align=center>0.442000</td>
	<td align=center>0.401900</td>
	<td align=center>0.124400</td>
	<td align=center>0.078400</td>
	<td align=center>0.081300</td>
	<td align=center>1.978400</td>
	<td align=center>981.1210</td>
	<td align=center>0.7422000</td>
	<td align=center>1138.838</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;16:00</td>
	<td align=center>11.71700</td>
	<td align=center>77.28000</td>
	<td align=center>5.913500</td>
	<td align=center>1.993400</td>
	<td align=center>0.439500</td>
	<td align=center>0.400100</td>
	<td align=center>0.124100</td>
	<td align=center>0.078900</td>
	<td align=center>0.080900</td>
	<td align=center>1.972700</td>
	<td align=center>979.6517</td>
	<td align=center>0.7431000</td>
	<td align=center>1136.444</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;15:00</td>
	<td align=center>11.85310</td>
	<td align=center>77.13550</td>
	<td align=center>5.893300</td>
	<td align=center>2.002000</td>
	<td align=center>0.439800</td>
	<td align=center>0.400200</td>
	<td align=center>0.122800</td>
	<td align=center>0.077800</td>
	<td align=center>0.080900</td>
	<td align=center>1.994500</td>
	<td align=center>977.9653</td>
	<td align=center>0.7445000</td>
	<td align=center>1133.421</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;14:00</td>
	<td align=center>11.86860</td>
	<td align=center>77.05730</td>
	<td align=center>5.886800</td>
	<td align=center>2.006500</td>
	<td align=center>0.438600</td>
	<td align=center>0.397900</td>
	<td align=center>0.123800</td>
	<td align=center>0.078500</td>
	<td align=center>0.079800</td>
	<td align=center>2.062100</td>
	<td align=center>977.0720</td>
	<td align=center>0.7448000</td>
	<td align=center>1132.157</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;13:00</td>
	<td align=center>11.92650</td>
	<td align=center>76.99220</td>
	<td align=center>5.870900</td>
	<td align=center>2.016200</td>
	<td align=center>0.439700</td>
	<td align=center>0.399200</td>
	<td align=center>0.121800</td>
	<td align=center>0.076300</td>
	<td align=center>0.077200</td>
	<td align=center>2.080100</td>
	<td align=center>976.1508</td>
	<td align=center>0.7454000</td>
	<td align=center>1130.634</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;12:00</td>
	<td align=center>11.96260</td>
	<td align=center>76.97220</td>
	<td align=center>5.836100</td>
	<td align=center>1.999300</td>
	<td align=center>0.439600</td>
	<td align=center>0.396000</td>
	<td align=center>0.119600</td>
	<td align=center>0.073900</td>
	<td align=center>0.076700</td>
	<td align=center>2.124000</td>
	<td align=center>974.5829</td>
	<td align=center>0.7454000</td>
	<td align=center>1128.818</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;11:00</td>
	<td align=center>12.15000</td>
	<td align=center>76.64330</td>
	<td align=center>5.947800</td>
	<td align=center>2.043300</td>
	<td align=center>0.443300</td>
	<td align=center>0.396900</td>
	<td align=center>0.118900</td>
	<td align=center>0.074800</td>
	<td align=center>0.071200</td>
	<td align=center>2.110600</td>
	<td align=center>974.2468</td>
	<td align=center>0.7481000</td>
	<td align=center>1126.391</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;10:00</td>
	<td align=center>11.89840</td>
	<td align=center>77.31000</td>
	<td align=center>5.729000</td>
	<td align=center>1.911700</td>
	<td align=center>0.411000</td>
	<td align=center>0.368300</td>
	<td align=center>0.111000</td>
	<td align=center>0.069500</td>
	<td align=center>0.074100</td>
	<td align=center>2.117000</td>
	<td align=center>971.3784</td>
	<td align=center>0.7423000</td>
	<td align=center>1127.454</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;09:00</td>
	<td align=center>11.78910</td>
	<td align=center>77.61460</td>
	<td align=center>5.651600</td>
	<td align=center>1.845800</td>
	<td align=center>0.398900</td>
	<td align=center>0.357400</td>
	<td align=center>0.107400</td>
	<td align=center>0.067400</td>
	<td align=center>0.064200</td>
	<td align=center>2.103500</td>
	<td align=center>969.9525</td>
	<td align=center>0.7394000</td>
	<td align=center>1128.004</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;08:00</td>
	<td align=center>11.37420</td>
	<td align=center>78.56220</td>
	<td align=center>5.374300</td>
	<td align=center>1.653200</td>
	<td align=center>0.353800</td>
	<td align=center>0.317100</td>
	<td align=center>0.096000</td>
	<td align=center>0.058300</td>
	<td align=center>0.055600</td>
	<td align=center>2.155300</td>
	<td align=center>965.6764</td>
	<td align=center>0.7305000</td>
	<td align=center>1129.852</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;07:00</td>
	<td align=center>11.19980</td>
	<td align=center>78.98920</td>
	<td align=center>5.273500</td>
	<td align=center>1.568400</td>
	<td align=center>0.335500</td>
	<td align=center>0.301100</td>
	<td align=center>0.092300</td>
	<td align=center>0.056700</td>
	<td align=center>0.053200</td>
	<td align=center>2.130100</td>
	<td align=center>964.6049</td>
	<td align=center>0.7267000</td>
	<td align=center>1131.545</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;06:00</td>
	<td align=center>10.83150</td>
	<td align=center>79.80420</td>
	<td align=center>4.960000</td>
	<td align=center>1.434900</td>
	<td align=center>0.304800</td>
	<td align=center>0.271800</td>
	<td align=center>0.083400</td>
	<td align=center>0.051100</td>
	<td align=center>0.046400</td>
	<td align=center>2.211900</td>
	<td align=center>961.0024</td>
	<td align=center>0.7193000</td>
	<td align=center>1133.103</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;05:00</td>
	<td align=center>11.06780</td>
	<td align=center>79.26170</td>
	<td align=center>5.146500</td>
	<td align=center>1.480200</td>
	<td align=center>0.318400</td>
	<td align=center>0.285400</td>
	<td align=center>0.089000</td>
	<td align=center>0.055200</td>
	<td align=center>0.051500</td>
	<td align=center>2.244300</td>
	<td align=center>961.5061</td>
	<td align=center>0.7238000</td>
	<td align=center>1130.167</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;04:00</td>
	<td align=center>10.92220</td>
	<td align=center>79.48420</td>
	<td align=center>5.125000</td>
	<td align=center>1.447100</td>
	<td align=center>0.313200</td>
	<td align=center>0.280500</td>
	<td align=center>0.087800</td>
	<td align=center>0.053800</td>
	<td align=center>0.051500</td>
	<td align=center>2.234500</td>
	<td align=center>962.1035</td>
	<td align=center>0.7217000</td>
	<td align=center>1132.514</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;03:00</td>
	<td align=center>10.85080</td>
	<td align=center>79.52690</td>
	<td align=center>5.186700</td>
	<td align=center>1.427200</td>
	<td align=center>0.303800</td>
	<td align=center>0.270600</td>
	<td align=center>0.084700</td>
	<td align=center>0.051500</td>
	<td align=center>0.048900</td>
	<td align=center>2.248800</td>
	<td align=center>962.1550</td>
	<td align=center>0.7208000</td>
	<td align=center>1133.281</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;02:00</td>
	<td align=center>11.35000</td>
	<td align=center>78.46280</td>
	<td align=center>5.492700</td>
	<td align=center>1.603800</td>
	<td align=center>0.345900</td>
	<td align=center>0.309100</td>
	<td align=center>0.098000</td>
	<td align=center>0.061800</td>
	<td align=center>0.063800</td>
	<td align=center>2.212200</td>
	<td align=center>965.6144</td>
	<td align=center>0.7307000</td>
	<td align=center>1129.625</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;01:00</td>
	<td align=center>11.41650</td>
	<td align=center>78.12580</td>
	<td align=center>5.604800</td>
	<td align=center>1.717700</td>
	<td align=center>0.377100</td>
	<td align=center>0.338000</td>
	<td align=center>0.105200</td>
	<td align=center>0.065800</td>
	<td align=center>0.062600</td>
	<td align=center>2.186500</td>
	<td align=center>969.4565</td>
	<td align=center>0.7340000</td>
	<td align=center>1131.567</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;00:00</td>
	<td align=center>11.26410</td>
	<td align=center>78.60080</td>
	<td align=center>5.421900</td>
	<td align=center>1.637800</td>
	<td align=center>0.355500</td>
	<td align=center>0.318800</td>
	<td align=center>0.100100</td>
	<td align=center>0.062300</td>
	<td align=center>0.060900</td>
	<td align=center>2.177800</td>
	<td align=center>967.2163</td>
	<td align=center>0.7300000</td>
	<td align=center>1132.041</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;23:00</td>
	<td align=center>11.27370</td>
	<td align=center>78.47180</td>
	<td align=center>5.450400</td>
	<td align=center>1.700500</td>
	<td align=center>0.367100</td>
	<td align=center>0.333100</td>
	<td align=center>0.104700</td>
	<td align=center>0.065000</td>
	<td align=center>0.065400</td>
	<td align=center>2.168300</td>
	<td align=center>969.3711</td>
	<td align=center>0.7314000</td>
	<td align=center>1133.477</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;22:00</td>
	<td align=center>11.51430</td>
	<td align=center>77.89730</td>
	<td align=center>5.600700</td>
	<td align=center>1.845000</td>
	<td align=center>0.399000</td>
	<td align=center>0.362500</td>
	<td align=center>0.113600</td>
	<td align=center>0.071400</td>
	<td align=center>0.072500</td>
	<td align=center>2.123600</td>
	<td align=center>972.8682</td>
	<td align=center>0.7371000</td>
	<td align=center>1133.159</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;21:00</td>
	<td align=center>11.93690</td>
	<td align=center>76.93330</td>
	<td align=center>5.860500</td>
	<td align=center>2.052500</td>
	<td align=center>0.448400</td>
	<td align=center>0.410200</td>
	<td align=center>0.129800</td>
	<td align=center>0.081200</td>
	<td align=center>0.085400</td>
	<td align=center>2.061800</td>
	<td align=center>977.8556</td>
	<td align=center>0.7465000</td>
	<td align=center>1131.774</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;20:00</td>
	<td align=center>12.26010</td>
	<td align=center>76.38770</td>
	<td align=center>5.927600</td>
	<td align=center>2.186100</td>
	<td align=center>0.482000</td>
	<td align=center>0.441400</td>
	<td align=center>0.137300</td>
	<td align=center>0.086300</td>
	<td align=center>0.086500</td>
	<td align=center>2.005000</td>
	<td align=center>979.6093</td>
	<td align=center>0.7522000</td>
	<td align=center>1129.500</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;19:00</td>
	<td align=center>12.11060</td>
	<td align=center>76.37730</td>
	<td align=center>6.027900</td>
	<td align=center>2.177300</td>
	<td align=center>0.473200</td>
	<td align=center>0.431900</td>
	<td align=center>0.136600</td>
	<td align=center>0.086500</td>
	<td align=center>0.090600</td>
	<td align=center>2.088100</td>
	<td align=center>980.6373</td>
	<td align=center>0.7513000</td>
	<td align=center>1131.362</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;18:00</td>
	<td align=center>11.86840</td>
	<td align=center>77.02340</td>
	<td align=center>5.887800</td>
	<td align=center>2.076400</td>
	<td align=center>0.453500</td>
	<td align=center>0.416200</td>
	<td align=center>0.130600</td>
	<td align=center>0.082600</td>
	<td align=center>0.087200</td>
	<td align=center>1.974000</td>
	<td align=center>980.4057</td>
	<td align=center>0.7461000</td>
	<td align=center>1135.030</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;17:00</td>
	<td align=center>11.91110</td>
	<td align=center>76.90840</td>
	<td align=center>5.907500</td>
	<td align=center>2.113500</td>
	<td align=center>0.459400</td>
	<td align=center>0.423000</td>
	<td align=center>0.131700</td>
	<td align=center>0.083500</td>
	<td align=center>0.082300</td>
	<td align=center>1.979700</td>
	<td align=center>980.7907</td>
	<td align=center>0.7471000</td>
	<td align=center>1134.715</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;16:00</td>
	<td align=center>12.13100</td>
	<td align=center>76.53430</td>
	<td align=center>5.900400</td>
	<td align=center>2.164800</td>
	<td align=center>0.469100</td>
	<td align=center>0.431100</td>
	<td align=center>0.134100</td>
	<td align=center>0.085100</td>
	<td align=center>0.081500</td>
	<td align=center>2.068700</td>
	<td align=center>978.8806</td>
	<td align=center>0.7503000</td>
	<td align=center>1130.088</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;15:00</td>
	<td align=center>11.93140</td>
	<td align=center>76.92140</td>
	<td align=center>5.775800</td>
	<td align=center>2.122500</td>
	<td align=center>0.469500</td>
	<td align=center>0.426100</td>
	<td align=center>0.138200</td>
	<td align=center>0.084400</td>
	<td align=center>0.095700</td>
	<td align=center>2.052200</td>
	<td align=center>979.6396</td>
	<td align=center>0.7474000</td>
	<td align=center>1133.156</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;14:00</td>
	<td align=center>11.74160</td>
	<td align=center>77.17170</td>
	<td align=center>5.778400</td>
	<td align=center>2.075000</td>
	<td align=center>0.458000</td>
	<td align=center>0.419700</td>
	<td align=center>0.134300</td>
	<td align=center>0.084700</td>
	<td align=center>0.087800</td>
	<td align=center>2.048700</td>
	<td align=center>980.4479</td>
	<td align=center>0.7448000</td>
	<td align=center>1136.069</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;13:00</td>
	<td align=center>11.76160</td>
	<td align=center>77.21040</td>
	<td align=center>5.797300</td>
	<td align=center>2.043300</td>
	<td align=center>0.448200</td>
	<td align=center>0.408100</td>
	<td align=center>0.127100</td>
	<td align=center>0.079200</td>
	<td align=center>0.077700</td>
	<td align=center>2.047100</td>
	<td align=center>978.6685</td>
	<td align=center>0.7440000</td>
	<td align=center>1134.617</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;12:00</td>
	<td align=center>12.01850</td>
	<td align=center>76.77980</td>
	<td align=center>5.824900</td>
	<td align=center>2.119500</td>
	<td align=center>0.465600</td>
	<td align=center>0.426100</td>
	<td align=center>0.133300</td>
	<td align=center>0.083500</td>
	<td align=center>0.086900</td>
	<td align=center>2.062000</td>
	<td align=center>978.7573</td>
	<td align=center>0.7484000</td>
	<td align=center>1131.379</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;11:00</td>
	<td align=center>12.01700</td>
	<td align=center>76.94620</td>
	<td align=center>5.669300</td>
	<td align=center>2.093900</td>
	<td align=center>0.462700</td>
	<td align=center>0.423700</td>
	<td align=center>0.135100</td>
	<td align=center>0.085500</td>
	<td align=center>0.094700</td>
	<td align=center>2.071800</td>
	<td align=center>977.3826</td>
	<td align=center>0.7476000</td>
	<td align=center>1130.394</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;10:00</td>
	<td align=center>12.32950</td>
	<td align=center>76.41090</td>
	<td align=center>5.786100</td>
	<td align=center>2.163100</td>
	<td align=center>0.476700</td>
	<td align=center>0.435800</td>
	<td align=center>0.137500</td>
	<td align=center>0.087000</td>
	<td align=center>0.104200</td>
	<td align=center>2.069100</td>
	<td align=center>977.2675</td>
	<td align=center>0.7525000</td>
	<td align=center>1126.575</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;09:00</td>
	<td align=center>12.42690</td>
	<td align=center>76.24550</td>
	<td align=center>5.758700</td>
	<td align=center>2.191300</td>
	<td align=center>0.488700</td>
	<td align=center>0.452700</td>
	<td align=center>0.149500</td>
	<td align=center>0.097200</td>
	<td align=center>0.125300</td>
	<td align=center>2.064200</td>
	<td align=center>978.6768</td>
	<td align=center>0.7550000</td>
	<td align=center>1126.330</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;08:00</td>
	<td align=center>12.45750</td>
	<td align=center>76.30920</td>
	<td align=center>5.671100</td>
	<td align=center>2.156400</td>
	<td align=center>0.482900</td>
	<td align=center>0.444000</td>
	<td align=center>0.147100</td>
	<td align=center>0.095000</td>
	<td align=center>0.132600</td>
	<td align=center>2.104200</td>
	<td align=center>976.5616</td>
	<td align=center>0.7545000</td>
	<td align=center>1124.268</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;07:00</td>
	<td align=center>11.50600</td>
	<td align=center>78.59840</td>
	<td align=center>5.105000</td>
	<td align=center>1.679500</td>
	<td align=center>0.366100</td>
	<td align=center>0.325800</td>
	<td align=center>0.100000</td>
	<td align=center>0.061700</td>
	<td align=center>0.059900</td>
	<td align=center>2.197700</td>
	<td align=center>963.1063</td>
	<td align=center>0.7315000</td>
	<td align=center>1126.074</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;06:00</td>
	<td align=center>10.71500</td>
	<td align=center>80.27480</td>
	<td align=center>4.776000</td>
	<td align=center>1.315100</td>
	<td align=center>0.272800</td>
	<td align=center>0.237800</td>
	<td align=center>0.073900</td>
	<td align=center>0.044600</td>
	<td align=center>0.035200</td>
	<td align=center>2.254700</td>
	<td align=center>956.1042</td>
	<td align=center>0.7148000</td>
	<td align=center>1130.871</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;05:00</td>
	<td align=center>10.84050</td>
	<td align=center>79.99070</td>
	<td align=center>4.829800</td>
	<td align=center>1.380400</td>
	<td align=center>0.288700</td>
	<td align=center>0.253100</td>
	<td align=center>0.078300</td>
	<td align=center>0.047500</td>
	<td align=center>0.040800</td>
	<td align=center>2.250100</td>
	<td align=center>957.4254</td>
	<td align=center>0.7176000</td>
	<td align=center>1130.222</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;04:00</td>
	<td align=center>10.92330</td>
	<td align=center>79.85900</td>
	<td align=center>4.848700</td>
	<td align=center>1.397700</td>
	<td align=center>0.293500</td>
	<td align=center>0.258900</td>
	<td align=center>0.082600</td>
	<td align=center>0.050900</td>
	<td align=center>0.049400</td>
	<td align=center>2.236100</td>
	<td align=center>957.9359</td>
	<td align=center>0.7191000</td>
	<td align=center>1129.645</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;03:00</td>
	<td align=center>11.13820</td>
	<td align=center>79.67670</td>
	<td align=center>4.768000</td>
	<td align=center>1.401500</td>
	<td align=center>0.294200</td>
	<td align=center>0.259900</td>
	<td align=center>0.082300</td>
	<td align=center>0.049900</td>
	<td align=center>0.047200</td>
	<td align=center>2.282100</td>
	<td align=center>954.6490</td>
	<td align=center>0.7210000</td>
	<td align=center>1124.284</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;02:00</td>
	<td align=center>11.20450</td>
	<td align=center>79.51560</td>
	<td align=center>4.777000</td>
	<td align=center>1.389700</td>
	<td align=center>0.294200</td>
	<td align=center>0.261800</td>
	<td align=center>0.083500</td>
	<td align=center>0.051200</td>
	<td align=center>0.052700</td>
	<td align=center>2.317400</td>
	<td align=center>953.3041</td>
	<td align=center>0.7223000</td>
	<td align=center>1121.690</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;01:00</td>
	<td align=center>11.74780</td>
	<td align=center>78.55290</td>
	<td align=center>4.936700</td>
	<td align=center>1.577100</td>
	<td align=center>0.338500</td>
	<td align=center>0.306200</td>
	<td align=center>0.099100</td>
	<td align=center>0.061600</td>
	<td align=center>0.062600</td>
	<td align=center>2.317400</td>
	<td align=center>955.5899</td>
	<td align=center>0.7318000</td>
	<td align=center>1117.057</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;00:00</td>
	<td align=center>11.47580</td>
	<td align=center>80.53490</td>
	<td align=center>4.696300</td>
	<td align=center>0.686300</td>
	<td align=center>0.126900</td>
	<td align=center>0.113300</td>
	<td align=center>0.041200</td>
	<td align=center>0.024900</td>
	<td align=center>0.011400</td>
	<td align=center>2.288900</td>
	<td align=center>929.2460</td>
	<td align=center>0.7102000</td>
	<td align=center>1102.657</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;23:00</td>
	<td align=center>11.74480</td>
	<td align=center>80.07660</td>
	<td align=center>4.825600</td>
	<td align=center>0.717700</td>
	<td align=center>0.141200</td>
	<td align=center>0.124200</td>
	<td align=center>0.042700</td>
	<td align=center>0.025300</td>
	<td align=center>0.012800</td>
	<td align=center>2.289000</td>
	<td align=center>928.6752</td>
	<td align=center>0.7142000</td>
	<td align=center>1098.889</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;22:00</td>
	<td align=center>11.99680</td>
	<td align=center>79.11170</td>
	<td align=center>5.251500</td>
	<td align=center>0.909500</td>
	<td align=center>0.182300</td>
	<td align=center>0.161100</td>
	<td align=center>0.054500</td>
	<td align=center>0.033900</td>
	<td align=center>0.031200</td>
	<td align=center>2.267600</td>
	<td align=center>935.6097</td>
	<td align=center>0.7225000</td>
	<td align=center>1100.717</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;21:00</td>
	<td align=center>12.00010</td>
	<td align=center>79.26940</td>
	<td align=center>5.021700</td>
	<td align=center>0.962300</td>
	<td align=center>0.191700</td>
	<td align=center>0.169900</td>
	<td align=center>0.055500</td>
	<td align=center>0.033400</td>
	<td align=center>0.028600</td>
	<td align=center>2.267400</td>
	<td align=center>934.9498</td>
	<td align=center>0.7221000</td>
	<td align=center>1100.246</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;20:00</td>
	<td align=center>12.00050</td>
	<td align=center>79.21050</td>
	<td align=center>5.003200</td>
	<td align=center>1.030100</td>
	<td align=center>0.209800</td>
	<td align=center>0.186100</td>
	<td align=center>0.061200</td>
	<td align=center>0.037200</td>
	<td align=center>0.031800</td>
	<td align=center>2.229600</td>
	<td align=center>937.4079</td>
	<td align=center>0.7233000</td>
	<td align=center>1102.223</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;19:00</td>
	<td align=center>12.18100</td>
	<td align=center>78.88890</td>
	<td align=center>5.059000</td>
	<td align=center>1.064300</td>
	<td align=center>0.219600</td>
	<td align=center>0.196200</td>
	<td align=center>0.064900</td>
	<td align=center>0.040400</td>
	<td align=center>0.037600</td>
	<td align=center>2.243800</td>
	<td align=center>937.2186</td>
	<td align=center>0.7263000</td>
	<td align=center>1099.722</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;18:00</td>
	<td align=center>12.05950</td>
	<td align=center>79.20720</td>
	<td align=center>4.954700</td>
	<td align=center>0.978400</td>
	<td align=center>0.202200</td>
	<td align=center>0.181200</td>
	<td align=center>0.062600</td>
	<td align=center>0.039400</td>
	<td align=center>0.041300</td>
	<td align=center>2.273400</td>
	<td align=center>935.3911</td>
	<td align=center>0.7234000</td>
	<td align=center>1099.775</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;17:00</td>
	<td align=center>11.95180</td>
	<td align=center>79.41710</td>
	<td align=center>4.909200</td>
	<td align=center>0.882500</td>
	<td align=center>0.182700</td>
	<td align=center>0.170400</td>
	<td align=center>0.062900</td>
	<td align=center>0.038200</td>
	<td align=center>0.031400</td>
	<td align=center>2.353800</td>
	<td align=center>932.7637</td>
	<td align=center>0.7208000</td>
	<td align=center>1098.662</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;16:00</td>
	<td align=center>11.89940</td>
	<td align=center>79.12900</td>
	<td align=center>5.195900</td>
	<td align=center>0.941700</td>
	<td align=center>0.191700</td>
	<td align=center>0.168900</td>
	<td align=center>0.057300</td>
	<td align=center>0.035100</td>
	<td align=center>0.029000</td>
	<td align=center>2.352000</td>
	<td align=center>936.2287</td>
	<td align=center>0.7222000</td>
	<td align=center>1101.674</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;15:00</td>
	<td align=center>12.00040</td>
	<td align=center>79.03890</td>
	<td align=center>5.176300</td>
	<td align=center>0.901900</td>
	<td align=center>0.181500</td>
	<td align=center>0.160000</td>
	<td align=center>0.055400</td>
	<td align=center>0.033200</td>
	<td align=center>0.026900</td>
	<td align=center>2.425500</td>
	<td align=center>933.0753</td>
	<td align=center>0.7226000</td>
	<td align=center>1097.660</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;14:00</td>
	<td align=center>12.11220</td>
	<td align=center>78.80790</td>
	<td align=center>5.072200</td>
	<td align=center>0.939400</td>
	<td align=center>0.192000</td>
	<td align=center>0.166800</td>
	<td align=center>0.057500</td>
	<td align=center>0.034300</td>
	<td align=center>0.030300</td>
	<td align=center>2.587300</td>
	<td align=center>930.6893</td>
	<td align=center>0.7246000</td>
	<td align=center>1093.341</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;13:00</td>
	<td align=center>12.11080</td>
	<td align=center>79.03260</td>
	<td align=center>5.062400</td>
	<td align=center>0.961200</td>
	<td align=center>0.195600</td>
	<td align=center>0.173200</td>
	<td align=center>0.061700</td>
	<td align=center>0.036900</td>
	<td align=center>0.032900</td>
	<td align=center>2.332800</td>
	<td align=center>934.0781</td>
	<td align=center>0.7240000</td>
	<td align=center>1097.776</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;12:00</td>
	<td align=center>12.38280</td>
	<td align=center>78.49740</td>
	<td align=center>5.171100</td>
	<td align=center>1.069700</td>
	<td align=center>0.224500</td>
	<td align=center>0.198700</td>
	<td align=center>0.067600</td>
	<td align=center>0.041000</td>
	<td align=center>0.037200</td>
	<td align=center>2.310000</td>
	<td align=center>935.7419</td>
	<td align=center>0.7293000</td>
	<td align=center>1095.729</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;11:00</td>
	<td align=center>12.55120</td>
	<td align=center>78.24970</td>
	<td align=center>5.155700</td>
	<td align=center>1.113400</td>
	<td align=center>0.236400</td>
	<td align=center>0.211500</td>
	<td align=center>0.073000</td>
	<td align=center>0.044700</td>
	<td align=center>0.043800</td>
	<td align=center>2.320400</td>
	<td align=center>935.5652</td>
	<td align=center>0.7320000</td>
	<td align=center>1093.499</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;10:00</td>
	<td align=center>12.64200</td>
	<td align=center>78.10940</td>
	<td align=center>5.165500</td>
	<td align=center>1.147300</td>
	<td align=center>0.242400</td>
	<td align=center>0.215100</td>
	<td align=center>0.071100</td>
	<td align=center>0.043300</td>
	<td align=center>0.045100</td>
	<td align=center>2.318600</td>
	<td align=center>935.4251</td>
	<td align=center>0.7334000</td>
	<td align=center>1092.292</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;09:00</td>
	<td align=center>12.73190</td>
	<td align=center>77.90350</td>
	<td align=center>5.232400</td>
	<td align=center>1.196200</td>
	<td align=center>0.254800</td>
	<td align=center>0.225600</td>
	<td align=center>0.076000</td>
	<td align=center>0.048200</td>
	<td align=center>0.052000</td>
	<td align=center>2.279600</td>
	<td align=center>937.2407</td>
	<td align=center>0.7356000</td>
	<td align=center>1092.774</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;08:00</td>
	<td align=center>12.52110</td>
	<td align=center>78.12170</td>
	<td align=center>5.294800</td>
	<td align=center>1.121800</td>
	<td align=center>0.234300</td>
	<td align=center>0.205800</td>
	<td align=center>0.067300</td>
	<td align=center>0.040900</td>
	<td align=center>0.039800</td>
	<td align=center>2.352500</td>
	<td align=center>936.1219</td>
	<td align=center>0.7322000</td>
	<td align=center>1094.001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;07:00</td>
	<td align=center>12.44390</td>
	<td align=center>78.19170</td>
	<td align=center>5.312000</td>
	<td align=center>1.130300</td>
	<td align=center>0.232800</td>
	<td align=center>0.206600</td>
	<td align=center>0.068500</td>
	<td align=center>0.042200</td>
	<td align=center>0.040800</td>
	<td align=center>2.331300</td>
	<td align=center>937.4741</td>
	<td align=center>0.7316000</td>
	<td align=center>1096.030</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;06:00</td>
	<td align=center>12.40860</td>
	<td align=center>78.34250</td>
	<td align=center>5.247300</td>
	<td align=center>1.093000</td>
	<td align=center>0.225400</td>
	<td align=center>0.199600</td>
	<td align=center>0.067200</td>
	<td align=center>0.041100</td>
	<td align=center>0.040600</td>
	<td align=center>2.352600</td>
	<td align=center>936.3245</td>
	<td align=center>0.7302000</td>
	<td align=center>1095.735</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;05:00</td>
	<td align=center>12.24000</td>
	<td align=center>78.46330</td>
	<td align=center>5.230000</td>
	<td align=center>1.071100</td>
	<td align=center>0.220400</td>
	<td align=center>0.194500</td>
	<td align=center>0.064600</td>
	<td align=center>0.039200</td>
	<td align=center>0.036400</td>
	<td align=center>2.440600</td>
	<td align=center>935.9707</td>
	<td align=center>0.7285000</td>
	<td align=center>1096.598</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;04:00</td>
	<td align=center>12.37100</td>
	<td align=center>78.05050</td>
	<td align=center>5.395000</td>
	<td align=center>1.168800</td>
	<td align=center>0.244000</td>
	<td align=center>0.215100</td>
	<td align=center>0.072000</td>
	<td align=center>0.043800</td>
	<td align=center>0.041800</td>
	<td align=center>2.397800</td>
	<td align=center>939.4080</td>
	<td align=center>0.7324000</td>
	<td align=center>1097.691</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;03:00</td>
	<td align=center>12.45320</td>
	<td align=center>77.89660</td>
	<td align=center>5.401200</td>
	<td align=center>1.197200</td>
	<td align=center>0.251300</td>
	<td align=center>0.221300</td>
	<td align=center>0.075100</td>
	<td align=center>0.047200</td>
	<td align=center>0.047900</td>
	<td align=center>2.408900</td>
	<td align=center>939.6749</td>
	<td align=center>0.7340000</td>
	<td align=center>1096.805</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;02:00</td>
	<td align=center>12.57830</td>
	<td align=center>77.73280</td>
	<td align=center>5.337500</td>
	<td align=center>1.240600</td>
	<td align=center>0.262100</td>
	<td align=center>0.231400</td>
	<td align=center>0.075500</td>
	<td align=center>0.046400</td>
	<td align=center>0.049200</td>
	<td align=center>2.446100</td>
	<td align=center>938.7132</td>
	<td align=center>0.7358000</td>
	<td align=center>1094.342</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;01:00</td>
	<td align=center>12.28310</td>
	<td align=center>78.53840</td>
	<td align=center>5.076000</td>
	<td align=center>1.074300</td>
	<td align=center>0.221900</td>
	<td align=center>0.196000</td>
	<td align=center>0.064400</td>
	<td align=center>0.039000</td>
	<td align=center>0.044700</td>
	<td align=center>2.462100</td>
	<td align=center>934.5500</td>
	<td align=center>0.7285000</td>
	<td align=center>1094.933</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;00:00</td>
	<td align=center>12.18330</td>
	<td align=center>78.72420</td>
	<td align=center>4.996000</td>
	<td align=center>1.097900</td>
	<td align=center>0.224800</td>
	<td align=center>0.198700</td>
	<td align=center>0.067100</td>
	<td align=center>0.040500</td>
	<td align=center>0.037700</td>
	<td align=center>2.429700</td>
	<td align=center>935.6268</td>
	<td align=center>0.7272000</td>
	<td align=center>1097.175</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;23:00</td>
	<td align=center>12.91470</td>
	<td align=center>76.84420</td>
	<td align=center>5.493700</td>
	<td align=center>1.538400</td>
	<td align=center>0.314400</td>
	<td align=center>0.278300</td>
	<td align=center>0.090800</td>
	<td align=center>0.055800</td>
	<td align=center>0.055500</td>
	<td align=center>2.367000</td>
	<td align=center>944.6077</td>
	<td align=center>0.7449000</td>
	<td align=center>1094.467</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;22:00</td>
	<td align=center>13.28860</td>
	<td align=center>76.21830</td>
	<td align=center>5.575200</td>
	<td align=center>1.636600</td>
	<td align=center>0.334700</td>
	<td align=center>0.296200</td>
	<td align=center>0.096800</td>
	<td align=center>0.059100</td>
	<td align=center>0.058200</td>
	<td align=center>2.436300</td>
	<td align=center>943.9583</td>
	<td align=center>0.7506000</td>
	<td align=center>1089.553</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;21:00</td>
	<td align=center>13.40320</td>
	<td align=center>76.11810</td>
	<td align=center>5.553100</td>
	<td align=center>1.672300</td>
	<td align=center>0.340400</td>
	<td align=center>0.301700</td>
	<td align=center>0.097500</td>
	<td align=center>0.059900</td>
	<td align=center>0.060000</td>
	<td align=center>2.393900</td>
	<td align=center>943.9734</td>
	<td align=center>0.7520000</td>
	<td align=center>1088.556</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;20:00</td>
	<td align=center>13.57640</td>
	<td align=center>75.68390</td>
	<td align=center>5.685200</td>
	<td align=center>1.677400</td>
	<td align=center>0.343900</td>
	<td align=center>0.303900</td>
	<td align=center>0.097200</td>
	<td align=center>0.059100</td>
	<td align=center>0.059200</td>
	<td align=center>2.513700</td>
	<td align=center>942.1609</td>
	<td align=center>0.7549000</td>
	<td align=center>1084.377</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;19:00</td>
	<td align=center>13.02840</td>
	<td align=center>76.56630</td>
	<td align=center>5.620100</td>
	<td align=center>1.594800</td>
	<td align=center>0.323800</td>
	<td align=center>0.287500</td>
	<td align=center>0.093200</td>
	<td align=center>0.056900</td>
	<td align=center>0.059600</td>
	<td align=center>2.369500</td>
	<td align=center>946.4172</td>
	<td align=center>0.7472000</td>
	<td align=center>1094.874</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;18:00</td>
	<td align=center>12.98570</td>
	<td align=center>76.59670</td>
	<td align=center>5.654000</td>
	<td align=center>1.583600</td>
	<td align=center>0.323800</td>
	<td align=center>0.288500</td>
	<td align=center>0.092900</td>
	<td align=center>0.056900</td>
	<td align=center>0.058700</td>
	<td align=center>2.359200</td>
	<td align=center>947.0247</td>
	<td align=center>0.7468000</td>
	<td align=center>1095.870</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;17:00</td>
	<td align=center>12.94640</td>
	<td align=center>76.62880</td>
	<td align=center>5.648900</td>
	<td align=center>1.587600</td>
	<td align=center>0.324900</td>
	<td align=center>0.289200</td>
	<td align=center>0.094000</td>
	<td align=center>0.058100</td>
	<td align=center>0.063300</td>
	<td align=center>2.358800</td>
	<td align=center>947.7324</td>
	<td align=center>0.7466000</td>
	<td align=center>1096.836</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;16:00</td>
	<td align=center>13.03090</td>
	<td align=center>76.40590</td>
	<td align=center>5.652600</td>
	<td align=center>1.628300</td>
	<td align=center>0.352300</td>
	<td align=center>0.322100</td>
	<td align=center>0.102200</td>
	<td align=center>0.061900</td>
	<td align=center>0.060600</td>
	<td align=center>2.359600</td>
	<td align=center>948.9102</td>
	<td align=center>0.7491000</td>
	<td align=center>1096.365</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;15:00</td>
	<td align=center>12.97990</td>
	<td align=center>76.61410</td>
	<td align=center>5.596000</td>
	<td align=center>1.610100</td>
	<td align=center>0.336300</td>
	<td align=center>0.298500</td>
	<td align=center>0.095300</td>
	<td align=center>0.058400</td>
	<td align=center>0.059300</td>
	<td align=center>2.352100</td>
	<td align=center>947.7642</td>
	<td align=center>0.7471000</td>
	<td align=center>1096.506</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;14:00</td>
	<td align=center>12.97930</td>
	<td align=center>76.74010</td>
	<td align=center>5.530100</td>
	<td align=center>1.584400</td>
	<td align=center>0.328300</td>
	<td align=center>0.292300</td>
	<td align=center>0.095300</td>
	<td align=center>0.058900</td>
	<td align=center>0.059500</td>
	<td align=center>2.331900</td>
	<td align=center>946.7772</td>
	<td align=center>0.7463000</td>
	<td align=center>1095.951</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;13:00</td>
	<td align=center>12.66930</td>
	<td align=center>77.47390</td>
	<td align=center>5.332500</td>
	<td align=center>1.401900</td>
	<td align=center>0.295600</td>
	<td align=center>0.262000</td>
	<td align=center>0.085200</td>
	<td align=center>0.053800</td>
	<td align=center>0.052200</td>
	<td align=center>2.373000</td>
	<td align=center>943.0342</td>
	<td align=center>0.7393000</td>
	<td align=center>1096.774</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;12:00</td>
	<td align=center>12.69890</td>
	<td align=center>77.35400</td>
	<td align=center>5.373000</td>
	<td align=center>1.441600</td>
	<td align=center>0.305400</td>
	<td align=center>0.271200</td>
	<td align=center>0.087900</td>
	<td align=center>0.053800</td>
	<td align=center>0.055400</td>
	<td align=center>2.358900</td>
	<td align=center>944.4293</td>
	<td align=center>0.7405000</td>
	<td align=center>1097.506</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;11:00</td>
	<td align=center>12.73860</td>
	<td align=center>77.32130</td>
	<td align=center>5.384100</td>
	<td align=center>1.436600</td>
	<td align=center>0.310500</td>
	<td align=center>0.275500</td>
	<td align=center>0.088500</td>
	<td align=center>0.054200</td>
	<td align=center>0.057400</td>
	<td align=center>2.333200</td>
	<td align=center>944.6186</td>
	<td align=center>0.7410000</td>
	<td align=center>1097.356</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;10:00</td>
	<td align=center>12.72600</td>
	<td align=center>77.41850</td>
	<td align=center>5.383800</td>
	<td align=center>1.382300</td>
	<td align=center>0.295700</td>
	<td align=center>0.263200</td>
	<td align=center>0.084600</td>
	<td align=center>0.051700</td>
	<td align=center>0.056500</td>
	<td align=center>2.337600</td>
	<td align=center>943.0311</td>
	<td align=center>0.7398000</td>
	<td align=center>1096.400</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;09:00</td>
	<td align=center>12.53330</td>
	<td align=center>77.66510</td>
	<td align=center>5.405100</td>
	<td align=center>1.342400</td>
	<td align=center>0.285400</td>
	<td align=center>0.253000</td>
	<td align=center>0.081700</td>
	<td align=center>0.050100</td>
	<td align=center>0.054700</td>
	<td align=center>2.329300</td>
	<td align=center>943.9521</td>
	<td align=center>0.7372000</td>
	<td align=center>1099.404</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;08:00</td>
	<td align=center>12.44390</td>
	<td align=center>77.69000</td>
	<td align=center>5.395600</td>
	<td align=center>1.366600</td>
	<td align=center>0.300000</td>
	<td align=center>0.267800</td>
	<td align=center>0.086800</td>
	<td align=center>0.054200</td>
	<td align=center>0.056200</td>
	<td align=center>2.338900</td>
	<td align=center>946.0573</td>
	<td align=center>0.7372000</td>
	<td align=center>1101.856</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;07:00</td>
	<td align=center>12.42010</td>
	<td align=center>77.88110</td>
	<td align=center>5.407800</td>
	<td align=center>1.268000</td>
	<td align=center>0.266000</td>
	<td align=center>0.235800</td>
	<td align=center>0.076500</td>
	<td align=center>0.047200</td>
	<td align=center>0.047500</td>
	<td align=center>2.350000</td>
	<td align=center>942.4252</td>
	<td align=center>0.7346000</td>
	<td align=center>1099.566</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;06:00</td>
	<td align=center>12.54500</td>
	<td align=center>77.60700</td>
	<td align=center>5.419200</td>
	<td align=center>1.369100</td>
	<td align=center>0.291000</td>
	<td align=center>0.258300</td>
	<td align=center>0.083800</td>
	<td align=center>0.051900</td>
	<td align=center>0.053800</td>
	<td align=center>2.320900</td>
	<td align=center>944.7657</td>
	<td align=center>0.7378000</td>
	<td align=center>1099.904</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;05:00</td>
	<td align=center>12.50670</td>
	<td align=center>77.55550</td>
	<td align=center>5.599100</td>
	<td align=center>1.412600</td>
	<td align=center>0.297800</td>
	<td align=center>0.268600</td>
	<td align=center>0.087300</td>
	<td align=center>0.054600</td>
	<td align=center>0.056100</td>
	<td align=center>2.161800</td>
	<td align=center>949.4774</td>
	<td align=center>0.7385000</td>
	<td align=center>1104.865</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;04:00</td>
	<td align=center>12.34990</td>
	<td align=center>77.83160</td>
	<td align=center>5.543300</td>
	<td align=center>1.370100</td>
	<td align=center>0.287400</td>
	<td align=center>0.261700</td>
	<td align=center>0.084400</td>
	<td align=center>0.052600</td>
	<td align=center>0.053800</td>
	<td align=center>2.165400</td>
	<td align=center>949.3198</td>
	<td align=center>0.7359000</td>
	<td align=center>1106.632</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;03:00</td>
	<td align=center>12.44150</td>
	<td align=center>77.63580</td>
	<td align=center>5.608300</td>
	<td align=center>1.391500</td>
	<td align=center>0.289100</td>
	<td align=center>0.262700</td>
	<td align=center>0.084900</td>
	<td align=center>0.053100</td>
	<td align=center>0.054500</td>
	<td align=center>2.178700</td>
	<td align=center>949.2021</td>
	<td align=center>0.7375000</td>
	<td align=center>1105.294</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;02:00</td>
	<td align=center>12.53400</td>
	<td align=center>77.26530</td>
	<td align=center>5.773000</td>
	<td align=center>1.489900</td>
	<td align=center>0.304600</td>
	<td align=center>0.277100</td>
	<td align=center>0.089600</td>
	<td align=center>0.056100</td>
	<td align=center>0.057800</td>
	<td align=center>2.152600</td>
	<td align=center>952.3359</td>
	<td align=center>0.7407000</td>
	<td align=center>1106.545</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;01:00</td>
	<td align=center>12.50620</td>
	<td align=center>77.31890</td>
	<td align=center>5.723000</td>
	<td align=center>1.514800</td>
	<td align=center>0.308000</td>
	<td align=center>0.280600</td>
	<td align=center>0.090500</td>
	<td align=center>0.057000</td>
	<td align=center>0.060500</td>
	<td align=center>2.140600</td>
	<td align=center>953.0434</td>
	<td align=center>0.7406000</td>
	<td align=center>1107.442</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;00:00</td>
	<td align=center>12.45690</td>
	<td align=center>77.31950</td>
	<td align=center>5.749600</td>
	<td align=center>1.522500</td>
	<td align=center>0.309600</td>
	<td align=center>0.281000</td>
	<td align=center>0.090600</td>
	<td align=center>0.057100</td>
	<td align=center>0.062300</td>
	<td align=center>2.150900</td>
	<td align=center>953.8787</td>
	<td align=center>0.7404000</td>
	<td align=center>1108.562</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;23:00</td>
	<td align=center>12.47960</td>
	<td align=center>77.30610</td>
	<td align=center>5.693900</td>
	<td align=center>1.533800</td>
	<td align=center>0.315300</td>
	<td align=center>0.286500</td>
	<td align=center>0.093000</td>
	<td align=center>0.058300</td>
	<td align=center>0.058700</td>
	<td align=center>2.174900</td>
	<td align=center>953.3799</td>
	<td align=center>0.7407000</td>
	<td align=center>1107.758</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;22:00</td>
	<td align=center>12.45170</td>
	<td align=center>77.14640</td>
	<td align=center>5.863000</td>
	<td align=center>1.553300</td>
	<td align=center>0.318400</td>
	<td align=center>0.289700</td>
	<td align=center>0.094500</td>
	<td align=center>0.059800</td>
	<td align=center>0.064400</td>
	<td align=center>2.158800</td>
	<td align=center>955.8726</td>
	<td align=center>0.7417000</td>
	<td align=center>1109.905</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;21:00</td>
	<td align=center>12.53910</td>
	<td align=center>76.85450</td>
	<td align=center>5.998000</td>
	<td align=center>1.622200</td>
	<td align=center>0.329800</td>
	<td align=center>0.301200</td>
	<td align=center>0.096200</td>
	<td align=center>0.059900</td>
	<td align=center>0.062200</td>
	<td align=center>2.136900</td>
	<td align=center>957.7890</td>
	<td align=center>0.7441000</td>
	<td align=center>1110.335</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;20:00</td>
	<td align=center>12.42650</td>
	<td align=center>76.89850</td>
	<td align=center>5.829400</td>
	<td align=center>1.658700</td>
	<td align=center>0.333900</td>
	<td align=center>0.305600</td>
	<td align=center>0.099200</td>
	<td align=center>0.062100</td>
	<td align=center>0.064500</td>
	<td align=center>2.163300</td>
	<td align=center>956.7551</td>
	<td align=center>0.7445000</td>
	<td align=center>1108.839</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;19:00</td>
	<td align=center>12.64680</td>
	<td align=center>76.69340</td>
	<td align=center>5.857800</td>
	<td align=center>1.731700</td>
	<td align=center>0.353600</td>
	<td align=center>0.323000</td>
	<td align=center>0.104200</td>
	<td align=center>0.065700</td>
	<td align=center>0.067900</td>
	<td align=center>2.156000</td>
	<td align=center>958.7598</td>
	<td align=center>0.7467000</td>
	<td align=center>1109.524</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;18:00</td>
	<td align=center>12.63740</td>
	<td align=center>76.76450</td>
	<td align=center>5.800500</td>
	<td align=center>1.728800</td>
	<td align=center>0.351700</td>
	<td align=center>0.321000</td>
	<td align=center>0.104700</td>
	<td align=center>0.066300</td>
	<td align=center>0.068100</td>
	<td align=center>2.156900</td>
	<td align=center>958.3157</td>
	<td align=center>0.7463000</td>
	<td align=center>1109.307</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;17:00</td>
	<td align=center>12.69470</td>
	<td align=center>76.66290</td>
	<td align=center>5.835000</td>
	<td align=center>1.730100</td>
	<td align=center>0.355000</td>
	<td align=center>0.322800</td>
	<td align=center>0.104100</td>
	<td align=center>0.065100</td>
	<td align=center>0.067900</td>
	<td align=center>2.162400</td>
	<td align=center>958.0160</td>
	<td align=center>0.7470000</td>
	<td align=center>1108.441</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;16:00</td>
	<td align=center>12.68150</td>
	<td align=center>76.63270</td>
	<td align=center>5.842700</td>
	<td align=center>1.741200</td>
	<td align=center>0.358800</td>
	<td align=center>0.325600</td>
	<td align=center>0.106200</td>
	<td align=center>0.066100</td>
	<td align=center>0.075100</td>
	<td align=center>2.170200</td>
	<td align=center>958.8163</td>
	<td align=center>0.7474000</td>
	<td align=center>1109.070</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;15:00</td>
	<td align=center>12.68950</td>
	<td align=center>76.60680</td>
	<td align=center>5.829100</td>
	<td align=center>1.748100</td>
	<td align=center>0.367800</td>
	<td align=center>0.336500</td>
	<td align=center>0.108300</td>
	<td align=center>0.068500</td>
	<td align=center>0.068900</td>
	<td align=center>2.176700</td>
	<td align=center>959.0189</td>
	<td align=center>0.7478000</td>
	<td align=center>1109.007</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;14:00</td>
	<td align=center>12.77660</td>
	<td align=center>76.52750</td>
	<td align=center>5.882400</td>
	<td align=center>1.739500</td>
	<td align=center>0.359600</td>
	<td align=center>0.328700</td>
	<td align=center>0.106000</td>
	<td align=center>0.066700</td>
	<td align=center>0.070000</td>
	<td align=center>2.143000</td>
	<td align=center>958.3168</td>
	<td align=center>0.7484000</td>
	<td align=center>1107.751</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;13:00</td>
	<td align=center>12.73310</td>
	<td align=center>76.71430</td>
	<td align=center>5.825400</td>
	<td align=center>1.674300</td>
	<td align=center>0.346800</td>
	<td align=center>0.317700</td>
	<td align=center>0.102700</td>
	<td align=center>0.064000</td>
	<td align=center>0.066500</td>
	<td align=center>2.155100</td>
	<td align=center>956.3484</td>
	<td align=center>0.7465000</td>
	<td align=center>1106.882</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;12:00</td>
	<td align=center>12.66500</td>
	<td align=center>76.77100</td>
	<td align=center>5.815200</td>
	<td align=center>1.687800</td>
	<td align=center>0.345600</td>
	<td align=center>0.316500</td>
	<td align=center>0.103300</td>
	<td align=center>0.065100</td>
	<td align=center>0.065800</td>
	<td align=center>2.164700</td>
	<td align=center>957.0384</td>
	<td align=center>0.7460000</td>
	<td align=center>1108.052</td> 
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
