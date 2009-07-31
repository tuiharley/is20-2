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
<title>Current Gas Composition (BIT)</title>
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
	timerID = setTimeout(document.location='9_18.asp',300000);	  
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
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT Ban I Tong (BIT) - CURRENT</strong></td>
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
	<td align=center>5.87500</td>
	<td align=center>71.86445</td>
	<td align=center>2.924656</td>
	<td align=center>0.850425</td>
	<td align=center>0.176916</td>
	<td align=center>0.204698</td>
	<td align=center>0.089429</td>
	<td align=center>0.051590</td>
	<td align=center>0.109587</td>
	<td align=center>17.853250</td>
	<td align=center>825.7994</td>
	<td align=center>0.7189143</td>
	<td align=center>973.949</td> 
	<td align=center></td> 
  </tr>
	
			
  <tr class="body1" bgcolor="#FAF9E7" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
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
	<td align=center></td> 
  </tr>
  

			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:40</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:35</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:30</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:25</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:20</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:15</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:10</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:05</td>
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
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:55</td>
	<td align=center>6.39290</td>
	<td align=center>72.58920</td>
	<td align=center>3.519700</td>
	<td align=center>1.053100</td>
	<td align=center>0.211700</td>
	<td align=center>0.235000</td>
	<td align=center>0.089100</td>
	<td align=center>0.047900</td>
	<td align=center>0.061600</td>
	<td align=center>15.799800</td>
	<td align=center>848.6357</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.050</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:50</td>
	<td align=center>6.38080</td>
	<td align=center>72.57760</td>
	<td align=center>3.505600</td>
	<td align=center>1.046700</td>
	<td align=center>0.209000</td>
	<td align=center>0.232200</td>
	<td align=center>0.089700</td>
	<td align=center>0.048600</td>
	<td align=center>0.061800</td>
	<td align=center>15.847900</td>
	<td align=center>847.9855</td>
	<td align=center>0.7200000</td>
	<td align=center>999.353</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:45</td>
	<td align=center>6.39680</td>
	<td align=center>72.58380</td>
	<td align=center>3.522700</td>
	<td align=center>1.054800</td>
	<td align=center>0.211100</td>
	<td align=center>0.234800</td>
	<td align=center>0.092700</td>
	<td align=center>0.051200</td>
	<td align=center>0.062100</td>
	<td align=center>15.789900</td>
	<td align=center>848.9538</td>
	<td align=center>0.7203000</td>
	<td align=center>1000.311</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:40</td>
	<td align=center>6.40210</td>
	<td align=center>72.59120</td>
	<td align=center>3.530400</td>
	<td align=center>1.057600</td>
	<td align=center>0.212600</td>
	<td align=center>0.236800</td>
	<td align=center>0.088900</td>
	<td align=center>0.047900</td>
	<td align=center>0.061900</td>
	<td align=center>15.770600</td>
	<td align=center>849.0505</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.466</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:35</td>
	<td align=center>6.40210</td>
	<td align=center>72.59770</td>
	<td align=center>3.530200</td>
	<td align=center>1.059200</td>
	<td align=center>0.212000</td>
	<td align=center>0.235400</td>
	<td align=center>0.088700</td>
	<td align=center>0.047700</td>
	<td align=center>0.061600</td>
	<td align=center>15.765400</td>
	<td align=center>849.0624</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.514</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:30</td>
	<td align=center>6.36960</td>
	<td align=center>72.55240</td>
	<td align=center>3.500000</td>
	<td align=center>1.048600</td>
	<td align=center>0.210600</td>
	<td align=center>0.234000</td>
	<td align=center>0.091200</td>
	<td align=center>0.050300</td>
	<td align=center>0.061100</td>
	<td align=center>15.882200</td>
	<td align=center>847.8824</td>
	<td align=center>0.7201000</td>
	<td align=center>999.150</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:25</td>
	<td align=center>6.38870</td>
	<td align=center>72.55520</td>
	<td align=center>3.512900</td>
	<td align=center>1.051200</td>
	<td align=center>0.210600</td>
	<td align=center>0.233800</td>
	<td align=center>0.090600</td>
	<td align=center>0.049200</td>
	<td align=center>0.061500</td>
	<td align=center>15.846300</td>
	<td align=center>848.1490</td>
	<td align=center>0.7202000</td>
	<td align=center>999.396</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:20</td>
	<td align=center>6.36730</td>
	<td align=center>72.54120</td>
	<td align=center>3.487800</td>
	<td align=center>1.041200</td>
	<td align=center>0.208600</td>
	<td align=center>0.231500</td>
	<td align=center>0.089300</td>
	<td align=center>0.049000</td>
	<td align=center>0.061100</td>
	<td align=center>15.922800</td>
	<td align=center>847.0916</td>
	<td align=center>0.7200000</td>
	<td align=center>998.296</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:15</td>
	<td align=center>6.34080</td>
	<td align=center>72.53730</td>
	<td align=center>3.464100</td>
	<td align=center>1.032900</td>
	<td align=center>0.205900</td>
	<td align=center>0.229000</td>
	<td align=center>0.089100</td>
	<td align=center>0.048600</td>
	<td align=center>0.061000</td>
	<td align=center>15.991300</td>
	<td align=center>846.2118</td>
	<td align=center>0.7198000</td>
	<td align=center>997.442</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:10</td>
	<td align=center>6.34910</td>
	<td align=center>72.53630</td>
	<td align=center>3.469700</td>
	<td align=center>1.036400</td>
	<td align=center>0.206900</td>
	<td align=center>0.229600</td>
	<td align=center>0.087400</td>
	<td align=center>0.047900</td>
	<td align=center>0.061300</td>
	<td align=center>15.975500</td>
	<td align=center>846.3588</td>
	<td align=center>0.7198000</td>
	<td align=center>997.575</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:05</td>
	<td align=center>6.36000</td>
	<td align=center>72.51410</td>
	<td align=center>3.482200</td>
	<td align=center>1.034500</td>
	<td align=center>0.206600</td>
	<td align=center>0.229700</td>
	<td align=center>0.089400</td>
	<td align=center>0.048600</td>
	<td align=center>0.061400</td>
	<td align=center>15.973500</td>
	<td align=center>846.4193</td>
	<td align=center>0.7200000</td>
	<td align=center>997.511</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:55</td>
	<td align=center>6.37280</td>
	<td align=center>72.56700</td>
	<td align=center>3.495900</td>
	<td align=center>1.045600</td>
	<td align=center>0.209700</td>
	<td align=center>0.232200</td>
	<td align=center>0.090000</td>
	<td align=center>0.050100</td>
	<td align=center>0.062000</td>
	<td align=center>15.874700</td>
	<td align=center>847.7793</td>
	<td align=center>0.7200000</td>
	<td align=center>999.094</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:50</td>
	<td align=center>6.38470</td>
	<td align=center>72.58540</td>
	<td align=center>3.515600</td>
	<td align=center>1.052300</td>
	<td align=center>0.209500</td>
	<td align=center>0.232100</td>
	<td align=center>0.090100</td>
	<td align=center>0.048800</td>
	<td align=center>0.061400</td>
	<td align=center>15.820000</td>
	<td align=center>848.4024</td>
	<td align=center>0.7200000</td>
	<td align=center>999.822</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:45</td>
	<td align=center>6.38710</td>
	<td align=center>72.59190</td>
	<td align=center>3.515500</td>
	<td align=center>1.050500</td>
	<td align=center>0.209500</td>
	<td align=center>0.232100</td>
	<td align=center>0.089000</td>
	<td align=center>0.048500</td>
	<td align=center>0.061400</td>
	<td align=center>15.814600</td>
	<td align=center>848.3589</td>
	<td align=center>0.7200000</td>
	<td align=center>999.803</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:40</td>
	<td align=center>6.38460</td>
	<td align=center>72.56330</td>
	<td align=center>3.509000</td>
	<td align=center>1.048500</td>
	<td align=center>0.209600</td>
	<td align=center>0.232200</td>
	<td align=center>0.088600</td>
	<td align=center>0.047900</td>
	<td align=center>0.061200</td>
	<td align=center>15.855200</td>
	<td align=center>847.8603</td>
	<td align=center>0.7201000</td>
	<td align=center>999.166</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:35</td>
	<td align=center>6.36970</td>
	<td align=center>72.54900</td>
	<td align=center>3.494600</td>
	<td align=center>1.044000</td>
	<td align=center>0.209000</td>
	<td align=center>0.232000</td>
	<td align=center>0.089600</td>
	<td align=center>0.048600</td>
	<td align=center>0.061700</td>
	<td align=center>15.901900</td>
	<td align=center>847.4105</td>
	<td align=center>0.7200000</td>
	<td align=center>998.658</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:30</td>
	<td align=center>6.37250</td>
	<td align=center>72.57150</td>
	<td align=center>3.502000</td>
	<td align=center>1.048200</td>
	<td align=center>0.208900</td>
	<td align=center>0.231600</td>
	<td align=center>0.090700</td>
	<td align=center>0.049200</td>
	<td align=center>0.061300</td>
	<td align=center>15.864000</td>
	<td align=center>847.9158</td>
	<td align=center>0.7200000</td>
	<td align=center>999.277</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:25</td>
	<td align=center>6.38420</td>
	<td align=center>72.57280</td>
	<td align=center>3.512100</td>
	<td align=center>1.049600</td>
	<td align=center>0.209600</td>
	<td align=center>0.232700</td>
	<td align=center>0.089300</td>
	<td align=center>0.048400</td>
	<td align=center>0.061200</td>
	<td align=center>15.840000</td>
	<td align=center>848.1094</td>
	<td align=center>0.7201000</td>
	<td align=center>999.464</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:20</td>
	<td align=center>6.37370</td>
	<td align=center>72.53160</td>
	<td align=center>3.492000</td>
	<td align=center>1.040300</td>
	<td align=center>0.207800</td>
	<td align=center>0.231700</td>
	<td align=center>0.087700</td>
	<td align=center>0.047100</td>
	<td align=center>0.061800</td>
	<td align=center>15.926300</td>
	<td align=center>846.9147</td>
	<td align=center>0.7200000</td>
	<td align=center>998.065</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:15</td>
	<td align=center>6.38060</td>
	<td align=center>72.57610</td>
	<td align=center>3.500900</td>
	<td align=center>1.043700</td>
	<td align=center>0.209200</td>
	<td align=center>0.231100</td>
	<td align=center>0.087500</td>
	<td align=center>0.047900</td>
	<td align=center>0.061500</td>
	<td align=center>15.861600</td>
	<td align=center>847.6471</td>
	<td align=center>0.7199000</td>
	<td align=center>999.007</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:10</td>
	<td align=center>6.39380</td>
	<td align=center>72.59140</td>
	<td align=center>3.513300</td>
	<td align=center>1.048100</td>
	<td align=center>0.209100</td>
	<td align=center>0.232600</td>
	<td align=center>0.088500</td>
	<td align=center>0.047400</td>
	<td align=center>0.061200</td>
	<td align=center>15.814800</td>
	<td align=center>848.1813</td>
	<td align=center>0.7200000</td>
	<td align=center>999.597</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:05</td>
	<td align=center>6.37530</td>
	<td align=center>72.57210</td>
	<td align=center>3.500200</td>
	<td align=center>1.043200</td>
	<td align=center>0.209100</td>
	<td align=center>0.232500</td>
	<td align=center>0.091200</td>
	<td align=center>0.049600</td>
	<td align=center>0.061800</td>
	<td align=center>15.864900</td>
	<td align=center>847.8577</td>
	<td align=center>0.7200000</td>
	<td align=center>999.196</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:55</td>
	<td align=center>6.38150</td>
	<td align=center>72.57000</td>
	<td align=center>3.508800</td>
	<td align=center>1.048100</td>
	<td align=center>0.209600</td>
	<td align=center>0.232600</td>
	<td align=center>0.088300</td>
	<td align=center>0.047500</td>
	<td align=center>0.061700</td>
	<td align=center>15.852000</td>
	<td align=center>847.9232</td>
	<td align=center>0.7200000</td>
	<td align=center>999.270</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:50</td>
	<td align=center>6.37960</td>
	<td align=center>72.57250</td>
	<td align=center>3.507200</td>
	<td align=center>1.049100</td>
	<td align=center>0.210600</td>
	<td align=center>0.233500</td>
	<td align=center>0.089000</td>
	<td align=center>0.047500</td>
	<td align=center>0.061400</td>
	<td align=center>15.849500</td>
	<td align=center>848.0264</td>
	<td align=center>0.7200000</td>
	<td align=center>999.385</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:45</td>
	<td align=center>6.37990</td>
	<td align=center>72.55690</td>
	<td align=center>3.505800</td>
	<td align=center>1.048400</td>
	<td align=center>0.209500</td>
	<td align=center>0.232700</td>
	<td align=center>0.091400</td>
	<td align=center>0.049600</td>
	<td align=center>0.061800</td>
	<td align=center>15.863900</td>
	<td align=center>847.9627</td>
	<td align=center>0.7202000</td>
	<td align=center>999.229</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:40</td>
	<td align=center>6.39160</td>
	<td align=center>72.59310</td>
	<td align=center>3.523600</td>
	<td align=center>1.054300</td>
	<td align=center>0.211300</td>
	<td align=center>0.235300</td>
	<td align=center>0.089300</td>
	<td align=center>0.047900</td>
	<td align=center>0.062000</td>
	<td align=center>15.791700</td>
	<td align=center>848.7958</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.242</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:35</td>
	<td align=center>6.38320</td>
	<td align=center>72.55270</td>
	<td align=center>3.508300</td>
	<td align=center>1.050700</td>
	<td align=center>0.210300</td>
	<td align=center>0.234000</td>
	<td align=center>0.089600</td>
	<td align=center>0.048400</td>
	<td align=center>0.061400</td>
	<td align=center>15.861400</td>
	<td align=center>847.9489</td>
	<td align=center>0.7202000</td>
	<td align=center>999.200</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:30</td>
	<td align=center>6.39020</td>
	<td align=center>72.55460</td>
	<td align=center>3.511900</td>
	<td align=center>1.049800</td>
	<td align=center>0.210000</td>
	<td align=center>0.234400</td>
	<td align=center>0.090100</td>
	<td align=center>0.048600</td>
	<td align=center>0.061700</td>
	<td align=center>15.848700</td>
	<td align=center>848.0596</td>
	<td align=center>0.7202000</td>
	<td align=center>999.297</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:25</td>
	<td align=center>6.38360</td>
	<td align=center>72.58520</td>
	<td align=center>3.512800</td>
	<td align=center>1.051100</td>
	<td align=center>0.209900</td>
	<td align=center>0.232900</td>
	<td align=center>0.087400</td>
	<td align=center>0.047200</td>
	<td align=center>0.061500</td>
	<td align=center>15.828400</td>
	<td align=center>848.1891</td>
	<td align=center>0.7200000</td>
	<td align=center>999.616</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:20</td>
	<td align=center>6.36950</td>
	<td align=center>72.55070</td>
	<td align=center>3.498000</td>
	<td align=center>1.046200</td>
	<td align=center>0.210000</td>
	<td align=center>0.233200</td>
	<td align=center>0.088100</td>
	<td align=center>0.047600</td>
	<td align=center>0.061600</td>
	<td align=center>15.895200</td>
	<td align=center>847.5079</td>
	<td align=center>0.7200000</td>
	<td align=center>998.781</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:15</td>
	<td align=center>6.38280</td>
	<td align=center>72.59690</td>
	<td align=center>3.512800</td>
	<td align=center>1.050000</td>
	<td align=center>0.209800</td>
	<td align=center>0.233200</td>
	<td align=center>0.089700</td>
	<td align=center>0.048500</td>
	<td align=center>0.061700</td>
	<td align=center>15.814600</td>
	<td align=center>848.4435</td>
	<td align=center>0.7200000</td>
	<td align=center>999.914</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:10</td>
	<td align=center>6.39100</td>
	<td align=center>72.57820</td>
	<td align=center>3.513000</td>
	<td align=center>1.049400</td>
	<td align=center>0.209500</td>
	<td align=center>0.232400</td>
	<td align=center>0.090000</td>
	<td align=center>0.049000</td>
	<td align=center>0.061800</td>
	<td align=center>15.825700</td>
	<td align=center>848.2419</td>
	<td align=center>0.7201000</td>
	<td align=center>999.592</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:05</td>
	<td align=center>6.39660</td>
	<td align=center>72.56340</td>
	<td align=center>3.521900</td>
	<td align=center>1.051900</td>
	<td align=center>0.211600</td>
	<td align=center>0.236000</td>
	<td align=center>0.088400</td>
	<td align=center>0.047100</td>
	<td align=center>0.062200</td>
	<td align=center>15.821000</td>
	<td align=center>848.3740</td>
	<td align=center>0.7202000</td>
	<td align=center>999.660</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:55</td>
	<td align=center>6.38600</td>
	<td align=center>72.57690</td>
	<td align=center>3.519700</td>
	<td align=center>1.054800</td>
	<td align=center>0.210300</td>
	<td align=center>0.233300</td>
	<td align=center>0.090800</td>
	<td align=center>0.049400</td>
	<td align=center>0.061800</td>
	<td align=center>15.817000</td>
	<td align=center>848.5887</td>
	<td align=center>0.7202000</td>
	<td align=center>999.966</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:50</td>
	<td align=center>6.38380</td>
	<td align=center>72.55000</td>
	<td align=center>3.499500</td>
	<td align=center>1.045100</td>
	<td align=center>0.209600</td>
	<td align=center>0.232600</td>
	<td align=center>0.089200</td>
	<td align=center>0.047900</td>
	<td align=center>0.063900</td>
	<td align=center>15.878300</td>
	<td align=center>847.6417</td>
	<td align=center>0.7202000</td>
	<td align=center>998.843</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:45</td>
	<td align=center>6.38500</td>
	<td align=center>72.53220</td>
	<td align=center>3.499000</td>
	<td align=center>1.047800</td>
	<td align=center>0.210400</td>
	<td align=center>0.234200</td>
	<td align=center>0.090600</td>
	<td align=center>0.049300</td>
	<td align=center>0.065000</td>
	<td align=center>15.886500</td>
	<td align=center>847.7659</td>
	<td align=center>0.7203000</td>
	<td align=center>998.860</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:40</td>
	<td align=center>6.38340</td>
	<td align=center>72.53220</td>
	<td align=center>3.510400</td>
	<td align=center>1.052100</td>
	<td align=center>0.212300</td>
	<td align=center>0.235800</td>
	<td align=center>0.092700</td>
	<td align=center>0.051000</td>
	<td align=center>0.065000</td>
	<td align=center>15.865000</td>
	<td align=center>848.3466</td>
	<td align=center>0.7205000</td>
	<td align=center>999.462</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:35</td>
	<td align=center>6.40090</td>
	<td align=center>72.56750</td>
	<td align=center>3.526200</td>
	<td align=center>1.057200</td>
	<td align=center>0.212900</td>
	<td align=center>0.237400</td>
	<td align=center>0.092600</td>
	<td align=center>0.051100</td>
	<td align=center>0.065100</td>
	<td align=center>15.789000</td>
	<td align=center>849.1918</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.446</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:30</td>
	<td align=center>6.41280</td>
	<td align=center>72.58300</td>
	<td align=center>3.533100</td>
	<td align=center>1.056100</td>
	<td align=center>0.211300</td>
	<td align=center>0.234300</td>
	<td align=center>0.090600</td>
	<td align=center>0.049500</td>
	<td align=center>0.065100</td>
	<td align=center>15.764300</td>
	<td align=center>849.1415</td>
	<td align=center>0.7204000</td>
	<td align=center>1000.459</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:25</td>
	<td align=center>6.39410</td>
	<td align=center>72.58200</td>
	<td align=center>3.519800</td>
	<td align=center>1.053500</td>
	<td align=center>0.212000</td>
	<td align=center>0.236600</td>
	<td align=center>0.091300</td>
	<td align=center>0.049500</td>
	<td align=center>0.065200</td>
	<td align=center>15.796100</td>
	<td align=center>848.9605</td>
	<td align=center>0.7203000</td>
	<td align=center>1000.302</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:20</td>
	<td align=center>6.38920</td>
	<td align=center>72.58850</td>
	<td align=center>3.515300</td>
	<td align=center>1.051800</td>
	<td align=center>0.211000</td>
	<td align=center>0.234500</td>
	<td align=center>0.090800</td>
	<td align=center>0.049100</td>
	<td align=center>0.065000</td>
	<td align=center>15.804800</td>
	<td align=center>848.7560</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:15</td>
	<td align=center>6.38740</td>
	<td align=center>72.53830</td>
	<td align=center>3.507500</td>
	<td align=center>1.047900</td>
	<td align=center>0.210400</td>
	<td align=center>0.234000</td>
	<td align=center>0.091900</td>
	<td align=center>0.050300</td>
	<td align=center>0.064600</td>
	<td align=center>15.867700</td>
	<td align=center>848.0440</td>
	<td align=center>0.7204000</td>
	<td align=center>999.175</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:10</td>
	<td align=center>6.40400</td>
	<td align=center>72.56410</td>
	<td align=center>3.527900</td>
	<td align=center>1.057900</td>
	<td align=center>0.213100</td>
	<td align=center>0.238100</td>
	<td align=center>0.092100</td>
	<td align=center>0.050700</td>
	<td align=center>0.064800</td>
	<td align=center>15.787200</td>
	<td align=center>849.1828</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.418</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:05</td>
	<td align=center>6.39030</td>
	<td align=center>72.55550</td>
	<td align=center>3.512500</td>
	<td align=center>1.053100</td>
	<td align=center>0.211800</td>
	<td align=center>0.235600</td>
	<td align=center>0.093300</td>
	<td align=center>0.051200</td>
	<td align=center>0.065300</td>
	<td align=center>15.831300</td>
	<td align=center>848.6674</td>
	<td align=center>0.7204000</td>
	<td align=center>999.868</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:55</td>
	<td align=center>6.39900</td>
	<td align=center>72.59560</td>
	<td align=center>3.524700</td>
	<td align=center>1.055500</td>
	<td align=center>0.212000</td>
	<td align=center>0.235500</td>
	<td align=center>0.092300</td>
	<td align=center>0.050600</td>
	<td align=center>0.065000</td>
	<td align=center>15.769700</td>
	<td align=center>849.2798</td>
	<td align=center>0.7203000</td>
	<td align=center>1000.675</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:50</td>
	<td align=center>6.41290</td>
	<td align=center>72.58910</td>
	<td align=center>3.537100</td>
	<td align=center>1.061800</td>
	<td align=center>0.214100</td>
	<td align=center>0.239100</td>
	<td align=center>0.092900</td>
	<td align=center>0.050400</td>
	<td align=center>0.065000</td>
	<td align=center>15.737500</td>
	<td align=center>849.7957</td>
	<td align=center>0.7205000</td>
	<td align=center>1001.134</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:45</td>
	<td align=center>6.38720</td>
	<td align=center>72.56050</td>
	<td align=center>3.514500</td>
	<td align=center>1.054200</td>
	<td align=center>0.211600</td>
	<td align=center>0.235600</td>
	<td align=center>0.091000</td>
	<td align=center>0.049100</td>
	<td align=center>0.065000</td>
	<td align=center>15.831300</td>
	<td align=center>848.5801</td>
	<td align=center>0.7203000</td>
	<td align=center>999.840</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:40</td>
	<td align=center>6.38800</td>
	<td align=center>72.54930</td>
	<td align=center>3.509400</td>
	<td align=center>1.050500</td>
	<td align=center>0.211600</td>
	<td align=center>0.235700</td>
	<td align=center>0.090900</td>
	<td align=center>0.048900</td>
	<td align=center>0.064500</td>
	<td align=center>15.851100</td>
	<td align=center>848.2529</td>
	<td align=center>0.7203000</td>
	<td align=center>999.445</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:35</td>
	<td align=center>6.37990</td>
	<td align=center>72.56710</td>
	<td align=center>3.511000</td>
	<td align=center>1.054000</td>
	<td align=center>0.211500</td>
	<td align=center>0.235300</td>
	<td align=center>0.093200</td>
	<td align=center>0.052300</td>
	<td align=center>0.064600</td>
	<td align=center>15.831200</td>
	<td align=center>848.7654</td>
	<td align=center>0.7203000</td>
	<td align=center>1000.050</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:30</td>
	<td align=center>6.39070</td>
	<td align=center>72.57120</td>
	<td align=center>3.514000</td>
	<td align=center>1.051000</td>
	<td align=center>0.211900</td>
	<td align=center>0.235400</td>
	<td align=center>0.092100</td>
	<td align=center>0.049900</td>
	<td align=center>0.065100</td>
	<td align=center>15.818600</td>
	<td align=center>848.6888</td>
	<td align=center>0.7203000</td>
	<td align=center>999.974</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:25</td>
	<td align=center>6.39060</td>
	<td align=center>72.59660</td>
	<td align=center>3.516600</td>
	<td align=center>1.053400</td>
	<td align=center>0.211900</td>
	<td align=center>0.235700</td>
	<td align=center>0.091500</td>
	<td align=center>0.050000</td>
	<td align=center>0.064900</td>
	<td align=center>15.788700</td>
	<td align=center>849.0335</td>
	<td align=center>0.7202000</td>
	<td align=center>1000.448</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:20</td>
	<td align=center>6.39290</td>
	<td align=center>72.57620</td>
	<td align=center>3.512500</td>
	<td align=center>1.051300</td>
	<td align=center>0.210900</td>
	<td align=center>0.234900</td>
	<td align=center>0.090600</td>
	<td align=center>0.049700</td>
	<td align=center>0.065000</td>
	<td align=center>15.815900</td>
	<td align=center>848.5942</td>
	<td align=center>0.7203000</td>
	<td align=center>999.900</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:15</td>
	<td align=center>6.38140</td>
	<td align=center>72.56440</td>
	<td align=center>3.504700</td>
	<td align=center>1.048800</td>
	<td align=center>0.210100</td>
	<td align=center>0.233700</td>
	<td align=center>0.091800</td>
	<td align=center>0.051300</td>
	<td align=center>0.065000</td>
	<td align=center>15.848800</td>
	<td align=center>848.3201</td>
	<td align=center>0.7202000</td>
	<td align=center>999.585</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:10</td>
	<td align=center>6.35710</td>
	<td align=center>72.54080</td>
	<td align=center>3.480200</td>
	<td align=center>1.040200</td>
	<td align=center>0.209200</td>
	<td align=center>0.232900</td>
	<td align=center>0.090200</td>
	<td align=center>0.049600</td>
	<td align=center>0.065000</td>
	<td align=center>15.934800</td>
	<td align=center>847.2347</td>
	<td align=center>0.7201000</td>
	<td align=center>998.426</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:05</td>
	<td align=center>6.38230</td>
	<td align=center>72.54720</td>
	<td align=center>3.505700</td>
	<td align=center>1.046900</td>
	<td align=center>0.210800</td>
	<td align=center>0.234300</td>
	<td align=center>0.090900</td>
	<td align=center>0.050200</td>
	<td align=center>0.065200</td>
	<td align=center>15.866500</td>
	<td align=center>848.0863</td>
	<td align=center>0.7203000</td>
	<td align=center>999.273</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:55</td>
	<td align=center>6.37870</td>
	<td align=center>72.54850</td>
	<td align=center>3.498800</td>
	<td align=center>1.048600</td>
	<td align=center>0.211600</td>
	<td align=center>0.235600</td>
	<td align=center>0.090800</td>
	<td align=center>0.050000</td>
	<td align=center>0.064400</td>
	<td align=center>15.873200</td>
	<td align=center>848.0319</td>
	<td align=center>0.7203000</td>
	<td align=center>999.224</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:50</td>
	<td align=center>6.40330</td>
	<td align=center>72.58580</td>
	<td align=center>3.527200</td>
	<td align=center>1.055900</td>
	<td align=center>0.212200</td>
	<td align=center>0.235500</td>
	<td align=center>0.092200</td>
	<td align=center>0.050000</td>
	<td align=center>0.065100</td>
	<td align=center>15.772800</td>
	<td align=center>849.2137</td>
	<td align=center>0.7204000</td>
	<td align=center>1000.555</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:45</td>
	<td align=center>6.37530</td>
	<td align=center>72.55600</td>
	<td align=center>3.500000</td>
	<td align=center>1.049000</td>
	<td align=center>0.210900</td>
	<td align=center>0.235600</td>
	<td align=center>0.094000</td>
	<td align=center>0.052100</td>
	<td align=center>0.065400</td>
	<td align=center>15.861800</td>
	<td align=center>848.3830</td>
	<td align=center>0.7203000</td>
	<td align=center>999.603</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:40</td>
	<td align=center>6.37380</td>
	<td align=center>72.53950</td>
	<td align=center>3.497500</td>
	<td align=center>1.046200</td>
	<td align=center>0.210400</td>
	<td align=center>0.234500</td>
	<td align=center>0.092300</td>
	<td align=center>0.051000</td>
	<td align=center>0.064800</td>
	<td align=center>15.890000</td>
	<td align=center>847.9081</td>
	<td align=center>0.7203000</td>
	<td align=center>999.064</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:35</td>
	<td align=center>6.38250</td>
	<td align=center>72.55760</td>
	<td align=center>3.508800</td>
	<td align=center>1.053600</td>
	<td align=center>0.212600</td>
	<td align=center>0.237100</td>
	<td align=center>0.091900</td>
	<td align=center>0.050300</td>
	<td align=center>0.065100</td>
	<td align=center>15.840500</td>
	<td align=center>848.6075</td>
	<td align=center>0.7204000</td>
	<td align=center>999.844</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:30</td>
	<td align=center>6.38030</td>
	<td align=center>72.55250</td>
	<td align=center>3.506300</td>
	<td align=center>1.051800</td>
	<td align=center>0.211100</td>
	<td align=center>0.235200</td>
	<td align=center>0.092500</td>
	<td align=center>0.050700</td>
	<td align=center>0.065500</td>
	<td align=center>15.854000</td>
	<td align=center>848.4176</td>
	<td align=center>0.7203000</td>
	<td align=center>999.630</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:25</td>
	<td align=center>6.37390</td>
	<td align=center>72.55550</td>
	<td align=center>3.491600</td>
	<td align=center>1.043500</td>
	<td align=center>0.209600</td>
	<td align=center>0.233600</td>
	<td align=center>0.092100</td>
	<td align=center>0.051100</td>
	<td align=center>0.064900</td>
	<td align=center>15.883900</td>
	<td align=center>847.8447</td>
	<td align=center>0.7202000</td>
	<td align=center>999.061</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:20</td>
	<td align=center>6.37520</td>
	<td align=center>72.55550</td>
	<td align=center>3.493800</td>
	<td align=center>1.045000</td>
	<td align=center>0.210000</td>
	<td align=center>0.234300</td>
	<td align=center>0.091600</td>
	<td align=center>0.050200</td>
	<td align=center>0.064900</td>
	<td align=center>15.879600</td>
	<td align=center>847.8943</td>
	<td align=center>0.7202000</td>
	<td align=center>999.115</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:15</td>
	<td align=center>6.38030</td>
	<td align=center>72.54770</td>
	<td align=center>3.497000</td>
	<td align=center>1.045700</td>
	<td align=center>0.210300</td>
	<td align=center>0.234300</td>
	<td align=center>0.091700</td>
	<td align=center>0.050200</td>
	<td align=center>0.064900</td>
	<td align=center>15.877300</td>
	<td align=center>847.9117</td>
	<td align=center>0.7203000</td>
	<td align=center>999.087</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:10</td>
	<td align=center>6.36500</td>
	<td align=center>72.54770</td>
	<td align=center>3.485600</td>
	<td align=center>1.043200</td>
	<td align=center>0.210700</td>
	<td align=center>0.234500</td>
	<td align=center>0.089600</td>
	<td align=center>0.048800</td>
	<td align=center>0.065100</td>
	<td align=center>15.909700</td>
	<td align=center>847.5304</td>
	<td align=center>0.7201000</td>
	<td align=center>998.740</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:05</td>
	<td align=center>6.35260</td>
	<td align=center>72.54090</td>
	<td align=center>3.475100</td>
	<td align=center>1.039000</td>
	<td align=center>0.208600</td>
	<td align=center>0.232800</td>
	<td align=center>0.092800</td>
	<td align=center>0.051200</td>
	<td align=center>0.065000</td>
	<td align=center>15.941900</td>
	<td align=center>847.2617</td>
	<td align=center>0.7201000</td>
	<td align=center>998.444</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:55</td>
	<td align=center>6.36450</td>
	<td align=center>72.51140</td>
	<td align=center>3.480300</td>
	<td align=center>1.040900</td>
	<td align=center>0.209300</td>
	<td align=center>0.233400</td>
	<td align=center>0.091900</td>
	<td align=center>0.049600</td>
	<td align=center>0.065200</td>
	<td align=center>15.953700</td>
	<td align=center>847.0480</td>
	<td align=center>0.7203000</td>
	<td align=center>998.067</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:50</td>
	<td align=center>6.37010</td>
	<td align=center>72.54720</td>
	<td align=center>3.495100</td>
	<td align=center>1.046600</td>
	<td align=center>0.210500</td>
	<td align=center>0.234800</td>
	<td align=center>0.090700</td>
	<td align=center>0.049700</td>
	<td align=center>0.065100</td>
	<td align=center>15.890400</td>
	<td align=center>847.8560</td>
	<td align=center>0.7202000</td>
	<td align=center>999.064</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:45</td>
	<td align=center>6.37650</td>
	<td align=center>72.55190</td>
	<td align=center>3.498400</td>
	<td align=center>1.046200</td>
	<td align=center>0.210000</td>
	<td align=center>0.234500</td>
	<td align=center>0.093300</td>
	<td align=center>0.051400</td>
	<td align=center>0.065900</td>
	<td align=center>15.871900</td>
	<td align=center>848.1425</td>
	<td align=center>0.7203000</td>
	<td align=center>999.339</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:40</td>
	<td align=center>6.37950</td>
	<td align=center>72.55710</td>
	<td align=center>3.503800</td>
	<td align=center>1.048100</td>
	<td align=center>0.210600</td>
	<td align=center>0.235100</td>
	<td align=center>0.093100</td>
	<td align=center>0.050500</td>
	<td align=center>0.065500</td>
	<td align=center>15.856700</td>
	<td align=center>848.3184</td>
	<td align=center>0.7203000</td>
	<td align=center>999.546</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:35</td>
	<td align=center>6.36980</td>
	<td align=center>72.54440</td>
	<td align=center>3.492600</td>
	<td align=center>1.046400</td>
	<td align=center>0.210100</td>
	<td align=center>0.234100</td>
	<td align=center>0.091000</td>
	<td align=center>0.049700</td>
	<td align=center>0.065400</td>
	<td align=center>15.896500</td>
	<td align=center>847.7727</td>
	<td align=center>0.7202000</td>
	<td align=center>998.961</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:30</td>
	<td align=center>6.36180</td>
	<td align=center>72.52060</td>
	<td align=center>3.489300</td>
	<td align=center>1.045700</td>
	<td align=center>0.209600</td>
	<td align=center>0.233900</td>
	<td align=center>0.092200</td>
	<td align=center>0.050700</td>
	<td align=center>0.065600</td>
	<td align=center>15.930700</td>
	<td align=center>847.5292</td>
	<td align=center>0.7203000</td>
	<td align=center>998.620</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:25</td>
	<td align=center>6.38560</td>
	<td align=center>72.56490</td>
	<td align=center>3.507900</td>
	<td align=center>1.049900</td>
	<td align=center>0.210500</td>
	<td align=center>0.234600</td>
	<td align=center>0.091700</td>
	<td align=center>0.049500</td>
	<td align=center>0.065500</td>
	<td align=center>15.839700</td>
	<td align=center>848.4030</td>
	<td align=center>0.7203000</td>
	<td align=center>999.665</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:20</td>
	<td align=center>6.36410</td>
	<td align=center>72.55060</td>
	<td align=center>3.483300</td>
	<td align=center>1.041200</td>
	<td align=center>0.210000</td>
	<td align=center>0.234100</td>
	<td align=center>0.090800</td>
	<td align=center>0.049600</td>
	<td align=center>0.065200</td>
	<td align=center>15.911200</td>
	<td align=center>847.5117</td>
	<td align=center>0.7201000</td>
	<td align=center>998.725</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:15</td>
	<td align=center>6.37510</td>
	<td align=center>72.55800</td>
	<td align=center>3.495200</td>
	<td align=center>1.045000</td>
	<td align=center>0.209500</td>
	<td align=center>0.233400</td>
	<td align=center>0.093200</td>
	<td align=center>0.050300</td>
	<td align=center>0.065600</td>
	<td align=center>15.874600</td>
	<td align=center>848.0078</td>
	<td align=center>0.7202000</td>
	<td align=center>999.236</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:10</td>
	<td align=center>6.37810</td>
	<td align=center>72.56650</td>
	<td align=center>3.500000</td>
	<td align=center>1.047300</td>
	<td align=center>0.210300</td>
	<td align=center>0.234300</td>
	<td align=center>0.093200</td>
	<td align=center>0.051100</td>
	<td align=center>0.065700</td>
	<td align=center>15.853400</td>
	<td align=center>848.3277</td>
	<td align=center>0.7202000</td>
	<td align=center>999.593</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:05</td>
	<td align=center>6.37190</td>
	<td align=center>72.58500</td>
	<td align=center>3.496000</td>
	<td align=center>1.045700</td>
	<td align=center>0.210600</td>
	<td align=center>0.235300</td>
	<td align=center>0.092900</td>
	<td align=center>0.051400</td>
	<td align=center>0.065800</td>
	<td align=center>15.845400</td>
	<td align=center>848.4482</td>
	<td align=center>0.7201000</td>
	<td align=center>999.809</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:55</td>
	<td align=center>6.38110</td>
	<td align=center>72.56420</td>
	<td align=center>3.507200</td>
	<td align=center>1.051800</td>
	<td align=center>0.211600</td>
	<td align=center>0.235900</td>
	<td align=center>0.091700</td>
	<td align=center>0.050900</td>
	<td align=center>0.065900</td>
	<td align=center>15.839700</td>
	<td align=center>848.5832</td>
	<td align=center>0.7203000</td>
	<td align=center>999.848</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:50</td>
	<td align=center>6.36490</td>
	<td align=center>72.54520</td>
	<td align=center>3.490400</td>
	<td align=center>1.044500</td>
	<td align=center>0.210900</td>
	<td align=center>0.235000</td>
	<td align=center>0.090800</td>
	<td align=center>0.049400</td>
	<td align=center>0.065200</td>
	<td align=center>15.903800</td>
	<td align=center>847.7166</td>
	<td align=center>0.7202000</td>
	<td align=center>998.921</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:45</td>
	<td align=center>6.36390</td>
	<td align=center>72.54820</td>
	<td align=center>3.489100</td>
	<td align=center>1.045000</td>
	<td align=center>0.210200</td>
	<td align=center>0.234300</td>
	<td align=center>0.092900</td>
	<td align=center>0.050500</td>
	<td align=center>0.065700</td>
	<td align=center>15.900600</td>
	<td align=center>847.8408</td>
	<td align=center>0.7202000</td>
	<td align=center>999.046</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:40</td>
	<td align=center>6.37970</td>
	<td align=center>72.56270</td>
	<td align=center>3.502800</td>
	<td align=center>1.051200</td>
	<td align=center>0.212000</td>
	<td align=center>0.236700</td>
	<td align=center>0.093300</td>
	<td align=center>0.051200</td>
	<td align=center>0.065100</td>
	<td align=center>15.845300</td>
	<td align=center>848.5495</td>
	<td align=center>0.7203000</td>
	<td align=center>999.797</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:35</td>
	<td align=center>6.36420</td>
	<td align=center>72.51430</td>
	<td align=center>3.485900</td>
	<td align=center>1.044400</td>
	<td align=center>0.210800</td>
	<td align=center>0.235700</td>
	<td align=center>0.091700</td>
	<td align=center>0.049800</td>
	<td align=center>0.065500</td>
	<td align=center>15.937700</td>
	<td align=center>847.4103</td>
	<td align=center>0.7203000</td>
	<td align=center>998.454</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:30</td>
	<td align=center>6.36280</td>
	<td align=center>72.50790</td>
	<td align=center>3.488300</td>
	<td align=center>1.046600</td>
	<td align=center>0.210300</td>
	<td align=center>0.235000</td>
	<td align=center>0.092000</td>
	<td align=center>0.051500</td>
	<td align=center>0.065700</td>
	<td align=center>15.940000</td>
	<td align=center>847.4910</td>
	<td align=center>0.7204000</td>
	<td align=center>998.511</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:25</td>
	<td align=center>6.35830</td>
	<td align=center>72.55300</td>
	<td align=center>3.483800</td>
	<td align=center>1.044000</td>
	<td align=center>0.210500</td>
	<td align=center>0.235000</td>
	<td align=center>0.092000</td>
	<td align=center>0.050400</td>
	<td align=center>0.065800</td>
	<td align=center>15.907200</td>
	<td align=center>847.7710</td>
	<td align=center>0.7201000</td>
	<td align=center>999.009</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:20</td>
	<td align=center>6.36970</td>
	<td align=center>72.53720</td>
	<td align=center>3.490100</td>
	<td align=center>1.043400</td>
	<td align=center>0.209500</td>
	<td align=center>0.233400</td>
	<td align=center>0.092300</td>
	<td align=center>0.051200</td>
	<td align=center>0.065500</td>
	<td align=center>15.907700</td>
	<td align=center>847.6559</td>
	<td align=center>0.7203000</td>
	<td align=center>998.794</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:15</td>
	<td align=center>6.37010</td>
	<td align=center>72.52660</td>
	<td align=center>3.484300</td>
	<td align=center>1.040800</td>
	<td align=center>0.210000</td>
	<td align=center>0.234100</td>
	<td align=center>0.091700</td>
	<td align=center>0.050200</td>
	<td align=center>0.065800</td>
	<td align=center>15.926300</td>
	<td align=center>847.3705</td>
	<td align=center>0.7203000</td>
	<td align=center>998.443</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:10</td>
	<td align=center>6.35670</td>
	<td align=center>72.53520</td>
	<td align=center>3.473300</td>
	<td align=center>1.039200</td>
	<td align=center>0.209800</td>
	<td align=center>0.234200</td>
	<td align=center>0.093200</td>
	<td align=center>0.051200</td>
	<td align=center>0.065400</td>
	<td align=center>15.941800</td>
	<td align=center>847.2972</td>
	<td align=center>0.7202000</td>
	<td align=center>998.424</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:05</td>
	<td align=center>6.35800</td>
	<td align=center>72.52590</td>
	<td align=center>3.477900</td>
	<td align=center>1.040400</td>
	<td align=center>0.209500</td>
	<td align=center>0.234000</td>
	<td align=center>0.092500</td>
	<td align=center>0.050900</td>
	<td align=center>0.065400</td>
	<td align=center>15.945600</td>
	<td align=center>847.2554</td>
	<td align=center>0.7202000</td>
	<td align=center>998.351</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:55</td>
	<td align=center>6.38000</td>
	<td align=center>72.54700</td>
	<td align=center>3.503800</td>
	<td align=center>1.051800</td>
	<td align=center>0.212200</td>
	<td align=center>0.235800</td>
	<td align=center>0.090100</td>
	<td align=center>0.049500</td>
	<td align=center>0.065500</td>
	<td align=center>15.864300</td>
	<td align=center>848.2236</td>
	<td align=center>0.7203000</td>
	<td align=center>999.415</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:50</td>
	<td align=center>6.38460</td>
	<td align=center>72.53100</td>
	<td align=center>3.502700</td>
	<td align=center>1.047600</td>
	<td align=center>0.211300</td>
	<td align=center>0.235200</td>
	<td align=center>0.091800</td>
	<td align=center>0.049700</td>
	<td align=center>0.065600</td>
	<td align=center>15.880600</td>
	<td align=center>847.9632</td>
	<td align=center>0.7204000</td>
	<td align=center>999.052</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:45</td>
	<td align=center>6.37500</td>
	<td align=center>72.49800</td>
	<td align=center>3.486700</td>
	<td align=center>1.043800</td>
	<td align=center>0.210400</td>
	<td align=center>0.236500</td>
	<td align=center>0.090700</td>
	<td align=center>0.048900</td>
	<td align=center>0.065800</td>
	<td align=center>15.944200</td>
	<td align=center>847.1955</td>
	<td align=center>0.7204000</td>
	<td align=center>998.128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:40</td>
	<td align=center>6.36500</td>
	<td align=center>72.53910</td>
	<td align=center>3.487700</td>
	<td align=center>1.044800</td>
	<td align=center>0.210400</td>
	<td align=center>0.234800</td>
	<td align=center>0.090800</td>
	<td align=center>0.049400</td>
	<td align=center>0.065700</td>
	<td align=center>15.912200</td>
	<td align=center>847.6212</td>
	<td align=center>0.7202000</td>
	<td align=center>998.787</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:35</td>
	<td align=center>6.37340</td>
	<td align=center>72.52320</td>
	<td align=center>3.494500</td>
	<td align=center>1.048600</td>
	<td align=center>0.212300</td>
	<td align=center>0.236800</td>
	<td align=center>0.091800</td>
	<td align=center>0.050200</td>
	<td align=center>0.065500</td>
	<td align=center>15.903500</td>
	<td align=center>847.8724</td>
	<td align=center>0.7204000</td>
	<td align=center>998.941</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:30</td>
	<td align=center>6.35790</td>
	<td align=center>72.50790</td>
	<td align=center>3.479600</td>
	<td align=center>1.045400</td>
	<td align=center>0.209800</td>
	<td align=center>0.233800</td>
	<td align=center>0.093700</td>
	<td align=center>0.052100</td>
	<td align=center>0.065800</td>
	<td align=center>15.954000</td>
	<td align=center>847.3474</td>
	<td align=center>0.7204000</td>
	<td align=center>998.357</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:25</td>
	<td align=center>6.36800</td>
	<td align=center>72.51340</td>
	<td align=center>3.488300</td>
	<td align=center>1.048100</td>
	<td align=center>0.212400</td>
	<td align=center>0.238200</td>
	<td align=center>0.090400</td>
	<td align=center>0.048800</td>
	<td align=center>0.066100</td>
	<td align=center>15.926300</td>
	<td align=center>847.6084</td>
	<td align=center>0.7204000</td>
	<td align=center>998.640</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:20</td>
	<td align=center>6.36250</td>
	<td align=center>72.51590</td>
	<td align=center>3.480600</td>
	<td align=center>1.045400</td>
	<td align=center>0.211700</td>
	<td align=center>0.235700</td>
	<td align=center>0.092100</td>
	<td align=center>0.050100</td>
	<td align=center>0.065900</td>
	<td align=center>15.940100</td>
	<td align=center>847.4340</td>
	<td align=center>0.7203000</td>
	<td align=center>998.472</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:15</td>
	<td align=center>6.37950</td>
	<td align=center>72.55240</td>
	<td align=center>3.502900</td>
	<td align=center>1.050600</td>
	<td align=center>0.211400</td>
	<td align=center>0.236700</td>
	<td align=center>0.093000</td>
	<td align=center>0.051000</td>
	<td align=center>0.066000</td>
	<td align=center>15.856500</td>
	<td align=center>848.4343</td>
	<td align=center>0.7204000</td>
	<td align=center>999.632</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:10</td>
	<td align=center>6.35130</td>
	<td align=center>72.49740</td>
	<td align=center>3.467600</td>
	<td align=center>1.038600</td>
	<td align=center>0.208800</td>
	<td align=center>0.233500</td>
	<td align=center>0.092300</td>
	<td align=center>0.050500</td>
	<td align=center>0.065500</td>
	<td align=center>15.994500</td>
	<td align=center>846.6790</td>
	<td align=center>0.7203000</td>
	<td align=center>997.643</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:05</td>
	<td align=center>6.38150</td>
	<td align=center>72.53610</td>
	<td align=center>3.504600</td>
	<td align=center>1.050400</td>
	<td align=center>0.211500</td>
	<td align=center>0.235900</td>
	<td align=center>0.094400</td>
	<td align=center>0.052400</td>
	<td align=center>0.066100</td>
	<td align=center>15.867100</td>
	<td align=center>848.3917</td>
	<td align=center>0.7205000</td>
	<td align=center>999.500</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:55</td>
	<td align=center>6.37830</td>
	<td align=center>72.55240</td>
	<td align=center>3.501100</td>
	<td align=center>1.049000</td>
	<td align=center>0.211200</td>
	<td align=center>0.235200</td>
	<td align=center>0.091900</td>
	<td align=center>0.050000</td>
	<td align=center>0.065900</td>
	<td align=center>15.865000</td>
	<td align=center>848.2184</td>
	<td align=center>0.7203000</td>
	<td align=center>999.425</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:50</td>
	<td align=center>6.37040</td>
	<td align=center>72.53830</td>
	<td align=center>3.495300</td>
	<td align=center>1.048800</td>
	<td align=center>0.211200</td>
	<td align=center>0.235800</td>
	<td align=center>0.090300</td>
	<td align=center>0.048600</td>
	<td align=center>0.065700</td>
	<td align=center>15.895500</td>
	<td align=center>847.8571</td>
	<td align=center>0.7203000</td>
	<td align=center>999.023</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:45</td>
	<td align=center>6.38550</td>
	<td align=center>72.52640</td>
	<td align=center>3.507200</td>
	<td align=center>1.052700</td>
	<td align=center>0.212700</td>
	<td align=center>0.237700</td>
	<td align=center>0.095300</td>
	<td align=center>0.052900</td>
	<td align=center>0.066100</td>
	<td align=center>15.863500</td>
	<td align=center>848.5507</td>
	<td align=center>0.7206000</td>
	<td align=center>999.598</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:40</td>
	<td align=center>6.41560</td>
	<td align=center>72.57980</td>
	<td align=center>3.541400</td>
	<td align=center>1.063300</td>
	<td align=center>0.213900</td>
	<td align=center>0.238600</td>
	<td align=center>0.092200</td>
	<td align=center>0.050400</td>
	<td align=center>0.066600</td>
	<td align=center>15.738200</td>
	<td align=center>849.8397</td>
	<td align=center>0.7206000</td>
	<td align=center>1001.131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:35</td>
	<td align=center>6.39070</td>
	<td align=center>72.55560</td>
	<td align=center>3.517100</td>
	<td align=center>1.057100</td>
	<td align=center>0.212700</td>
	<td align=center>0.237600</td>
	<td align=center>0.092700</td>
	<td align=center>0.051000</td>
	<td align=center>0.066500</td>
	<td align=center>15.819000</td>
	<td align=center>848.9713</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.177</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:30</td>
	<td align=center>6.40290</td>
	<td align=center>72.56180</td>
	<td align=center>3.524100</td>
	<td align=center>1.056900</td>
	<td align=center>0.213200</td>
	<td align=center>0.238000</td>
	<td align=center>0.093300</td>
	<td align=center>0.051600</td>
	<td align=center>0.066600</td>
	<td align=center>15.791600</td>
	<td align=center>849.2383</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.438</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:25</td>
	<td align=center>6.40120</td>
	<td align=center>72.51670</td>
	<td align=center>3.508000</td>
	<td align=center>1.051700</td>
	<td align=center>0.212600</td>
	<td align=center>0.237300</td>
	<td align=center>0.092200</td>
	<td align=center>0.050700</td>
	<td align=center>0.066500</td>
	<td align=center>15.863000</td>
	<td align=center>848.2360</td>
	<td align=center>0.7207000</td>
	<td align=center>999.195</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:20</td>
	<td align=center>6.40630</td>
	<td align=center>72.54230</td>
	<td align=center>3.521700</td>
	<td align=center>1.059200</td>
	<td align=center>0.213500</td>
	<td align=center>0.238800</td>
	<td align=center>0.094200</td>
	<td align=center>0.051600</td>
	<td align=center>0.067400</td>
	<td align=center>15.805200</td>
	<td align=center>849.1593</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.242</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:15</td>
	<td align=center>6.45800</td>
	<td align=center>72.60000</td>
	<td align=center>3.580100</td>
	<td align=center>1.079600</td>
	<td align=center>0.218800</td>
	<td align=center>0.244600</td>
	<td align=center>0.095700</td>
	<td align=center>0.053000</td>
	<td align=center>0.068700</td>
	<td align=center>15.601400</td>
	<td align=center>851.8616</td>
	<td align=center>0.7211000</td>
	<td align=center>1003.150</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:10</td>
	<td align=center>6.47420</td>
	<td align=center>72.61070</td>
	<td align=center>3.588600</td>
	<td align=center>1.076800</td>
	<td align=center>0.218000</td>
	<td align=center>0.243500</td>
	<td align=center>0.094600</td>
	<td align=center>0.050700</td>
	<td align=center>0.068600</td>
	<td align=center>15.574300</td>
	<td align=center>851.8427</td>
	<td align=center>0.7211000</td>
	<td align=center>1003.150</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:05</td>
	<td align=center>6.43260</td>
	<td align=center>72.59400</td>
	<td align=center>3.542200</td>
	<td align=center>1.065100</td>
	<td align=center>0.214500</td>
	<td align=center>0.239400</td>
	<td align=center>0.095100</td>
	<td align=center>0.052500</td>
	<td align=center>0.067800</td>
	<td align=center>15.696800</td>
	<td align=center>850.3542</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.623</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:55</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:50</td>
	<td align=center>6.40000</td>
	<td align=center>72.51820</td>
	<td align=center>3.505000</td>
	<td align=center>1.052900</td>
	<td align=center>0.212400</td>
	<td align=center>0.237100</td>
	<td align=center>0.091800</td>
	<td align=center>0.049500</td>
	<td align=center>0.066900</td>
	<td align=center>15.866000</td>
	<td align=center>848.1713</td>
	<td align=center>0.7206000</td>
	<td align=center>999.139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:45</td>
	<td align=center>6.39680</td>
	<td align=center>72.52840</td>
	<td align=center>3.508400</td>
	<td align=center>1.051800</td>
	<td align=center>0.211400</td>
	<td align=center>0.236500</td>
	<td align=center>0.094000</td>
	<td align=center>0.051500</td>
	<td align=center>0.067200</td>
	<td align=center>15.854200</td>
	<td align=center>848.4276</td>
	<td align=center>0.7206000</td>
	<td align=center>999.450</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:40</td>
	<td align=center>6.38460</td>
	<td align=center>72.53890</td>
	<td align=center>3.499500</td>
	<td align=center>1.051400</td>
	<td align=center>0.211300</td>
	<td align=center>0.236400</td>
	<td align=center>0.091500</td>
	<td align=center>0.049700</td>
	<td align=center>0.067100</td>
	<td align=center>15.869600</td>
	<td align=center>848.1875</td>
	<td align=center>0.7204000</td>
	<td align=center>999.298</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:35</td>
	<td align=center>6.40730</td>
	<td align=center>72.53090</td>
	<td align=center>3.514500</td>
	<td align=center>1.054300</td>
	<td align=center>0.212900</td>
	<td align=center>0.237600</td>
	<td align=center>0.093500</td>
	<td align=center>0.051600</td>
	<td align=center>0.067100</td>
	<td align=center>15.830200</td>
	<td align=center>848.6974</td>
	<td align=center>0.7207000</td>
	<td align=center>999.707</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:30</td>
	<td align=center>6.39680</td>
	<td align=center>72.52300</td>
	<td align=center>3.508000</td>
	<td align=center>1.053700</td>
	<td align=center>0.213200</td>
	<td align=center>0.238600</td>
	<td align=center>0.094100</td>
	<td align=center>0.051500</td>
	<td align=center>0.066800</td>
	<td align=center>15.854400</td>
	<td align=center>848.5287</td>
	<td align=center>0.7207000</td>
	<td align=center>999.523</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:25</td>
	<td align=center>6.39720</td>
	<td align=center>72.54810</td>
	<td align=center>3.513000</td>
	<td align=center>1.057000</td>
	<td align=center>0.214200</td>
	<td align=center>0.238900</td>
	<td align=center>0.092900</td>
	<td align=center>0.050700</td>
	<td align=center>0.067100</td>
	<td align=center>15.821000</td>
	<td align=center>848.9346</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.063</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:20</td>
	<td align=center>6.41550</td>
	<td align=center>72.54350</td>
	<td align=center>3.521900</td>
	<td align=center>1.057600</td>
	<td align=center>0.213400</td>
	<td align=center>0.238900</td>
	<td align=center>0.093200</td>
	<td align=center>0.051200</td>
	<td align=center>0.067000</td>
	<td align=center>15.797700</td>
	<td align=center>849.0676</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.127</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:15</td>
	<td align=center>6.40840</td>
	<td align=center>72.53400</td>
	<td align=center>3.511200</td>
	<td align=center>1.053000</td>
	<td align=center>0.212400</td>
	<td align=center>0.237000</td>
	<td align=center>0.091400</td>
	<td align=center>0.049600</td>
	<td align=center>0.066400</td>
	<td align=center>15.836500</td>
	<td align=center>848.4000</td>
	<td align=center>0.7206000</td>
	<td align=center>999.430</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:10</td>
	<td align=center>6.42450</td>
	<td align=center>72.54050</td>
	<td align=center>3.522700</td>
	<td align=center>1.054800</td>
	<td align=center>0.214100</td>
	<td align=center>0.240000</td>
	<td align=center>0.093500</td>
	<td align=center>0.051800</td>
	<td align=center>0.066400</td>
	<td align=center>15.791700</td>
	<td align=center>849.0454</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.053</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:05</td>
	<td align=center>6.42110</td>
	<td align=center>72.54980</td>
	<td align=center>3.524900</td>
	<td align=center>1.057200</td>
	<td align=center>0.213200</td>
	<td align=center>0.237600</td>
	<td align=center>0.093400</td>
	<td align=center>0.052400</td>
	<td align=center>0.066100</td>
	<td align=center>15.784300</td>
	<td align=center>849.1354</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.212</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:55</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:50</td>
	<td align=center>6.43020</td>
	<td align=center>72.54270</td>
	<td align=center>3.529200</td>
	<td align=center>1.060400</td>
	<td align=center>0.214000</td>
	<td align=center>0.238400</td>
	<td align=center>0.093200</td>
	<td align=center>0.050800</td>
	<td align=center>0.066300</td>
	<td align=center>15.774900</td>
	<td align=center>849.2124</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.237</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:45</td>
	<td align=center>6.43020</td>
	<td align=center>72.54270</td>
	<td align=center>3.529200</td>
	<td align=center>1.060400</td>
	<td align=center>0.214000</td>
	<td align=center>0.238400</td>
	<td align=center>0.093200</td>
	<td align=center>0.050800</td>
	<td align=center>0.066300</td>
	<td align=center>15.774900</td>
	<td align=center>849.2124</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.237</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:40</td>
	<td align=center>6.43020</td>
	<td align=center>72.54270</td>
	<td align=center>3.529200</td>
	<td align=center>1.060400</td>
	<td align=center>0.214000</td>
	<td align=center>0.238400</td>
	<td align=center>0.093200</td>
	<td align=center>0.050800</td>
	<td align=center>0.066300</td>
	<td align=center>15.774900</td>
	<td align=center>849.2124</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.237</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:35</td>
	<td align=center>6.43020</td>
	<td align=center>72.54270</td>
	<td align=center>3.529200</td>
	<td align=center>1.060400</td>
	<td align=center>0.214000</td>
	<td align=center>0.238400</td>
	<td align=center>0.093200</td>
	<td align=center>0.050800</td>
	<td align=center>0.066300</td>
	<td align=center>15.774900</td>
	<td align=center>849.2124</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.237</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:30</td>
	<td align=center>6.41930</td>
	<td align=center>72.54740</td>
	<td align=center>3.524800</td>
	<td align=center>1.058000</td>
	<td align=center>0.213200</td>
	<td align=center>0.237500</td>
	<td align=center>0.091500</td>
	<td align=center>0.050200</td>
	<td align=center>0.066100</td>
	<td align=center>15.792100</td>
	<td align=center>848.9562</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.044</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:25</td>
	<td align=center>6.43400</td>
	<td align=center>72.53910</td>
	<td align=center>3.538100</td>
	<td align=center>1.060400</td>
	<td align=center>0.213700</td>
	<td align=center>0.238200</td>
	<td align=center>0.092200</td>
	<td align=center>0.050100</td>
	<td align=center>0.065900</td>
	<td align=center>15.768300</td>
	<td align=center>849.2291</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.255</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:20</td>
	<td align=center>6.43400</td>
	<td align=center>72.53910</td>
	<td align=center>3.538100</td>
	<td align=center>1.060400</td>
	<td align=center>0.213700</td>
	<td align=center>0.238200</td>
	<td align=center>0.092200</td>
	<td align=center>0.050100</td>
	<td align=center>0.065900</td>
	<td align=center>15.768300</td>
	<td align=center>849.2291</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.255</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:15</td>
	<td align=center>6.42320</td>
	<td align=center>72.55770</td>
	<td align=center>3.527200</td>
	<td align=center>1.058700</td>
	<td align=center>0.213800</td>
	<td align=center>0.238800</td>
	<td align=center>0.094600</td>
	<td align=center>0.051700</td>
	<td align=center>0.066300</td>
	<td align=center>15.767900</td>
	<td align=center>849.3871</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.494</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:10</td>
	<td align=center>6.41650</td>
	<td align=center>72.54290</td>
	<td align=center>3.517400</td>
	<td align=center>1.054400</td>
	<td align=center>0.212500</td>
	<td align=center>0.236300</td>
	<td align=center>0.093500</td>
	<td align=center>0.050900</td>
	<td align=center>0.066000</td>
	<td align=center>15.809700</td>
	<td align=center>848.7321</td>
	<td align=center>0.7207000</td>
	<td align=center>999.781</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:05</td>
	<td align=center>6.41630</td>
	<td align=center>72.55080</td>
	<td align=center>3.516200</td>
	<td align=center>1.055700</td>
	<td align=center>0.214300</td>
	<td align=center>0.239700</td>
	<td align=center>0.092100</td>
	<td align=center>0.049800</td>
	<td align=center>0.066000</td>
	<td align=center>15.799100</td>
	<td align=center>848.8947</td>
	<td align=center>0.7207000</td>
	<td align=center>999.980</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:55</td>
	<td align=center>6.43210</td>
	<td align=center>72.55730</td>
	<td align=center>3.535000</td>
	<td align=center>1.061900</td>
	<td align=center>0.213500</td>
	<td align=center>0.238000</td>
	<td align=center>0.093800</td>
	<td align=center>0.051600</td>
	<td align=center>0.066100</td>
	<td align=center>15.750800</td>
	<td align=center>849.5162</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.615</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:50</td>
	<td align=center>6.41380</td>
	<td align=center>72.54930</td>
	<td align=center>3.517000</td>
	<td align=center>1.057300</td>
	<td align=center>0.212600</td>
	<td align=center>0.237200</td>
	<td align=center>0.092900</td>
	<td align=center>0.051600</td>
	<td align=center>0.065900</td>
	<td align=center>15.802400</td>
	<td align=center>848.8990</td>
	<td align=center>0.7206000</td>
	<td align=center>999.988</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:45</td>
	<td align=center>6.42660</td>
	<td align=center>72.53870</td>
	<td align=center>3.529500</td>
	<td align=center>1.057100</td>
	<td align=center>0.213200</td>
	<td align=center>0.237400</td>
	<td align=center>0.092800</td>
	<td align=center>0.050700</td>
	<td align=center>0.065800</td>
	<td align=center>15.788100</td>
	<td align=center>848.9931</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.019</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:40</td>
	<td align=center>6.42990</td>
	<td align=center>72.55580</td>
	<td align=center>3.526400</td>
	<td align=center>1.059100</td>
	<td align=center>0.213100</td>
	<td align=center>0.237500</td>
	<td align=center>0.092300</td>
	<td align=center>0.050100</td>
	<td align=center>0.065500</td>
	<td align=center>15.770400</td>
	<td align=center>849.0955</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.187</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:35</td>
	<td align=center>6.42580</td>
	<td align=center>72.54570</td>
	<td align=center>3.528800</td>
	<td align=center>1.057700</td>
	<td align=center>0.213400</td>
	<td align=center>0.238500</td>
	<td align=center>0.091500</td>
	<td align=center>0.049100</td>
	<td align=center>0.065400</td>
	<td align=center>15.784300</td>
	<td align=center>848.9637</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.035</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:30</td>
	<td align=center>6.42570</td>
	<td align=center>72.55510</td>
	<td align=center>3.532000</td>
	<td align=center>1.060200</td>
	<td align=center>0.213400</td>
	<td align=center>0.237400</td>
	<td align=center>0.093900</td>
	<td align=center>0.051700</td>
	<td align=center>0.065700</td>
	<td align=center>15.764900</td>
	<td align=center>849.3659</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.473</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:25</td>
	<td align=center>6.42270</td>
	<td align=center>72.54260</td>
	<td align=center>3.524200</td>
	<td align=center>1.057300</td>
	<td align=center>0.213700</td>
	<td align=center>0.238400</td>
	<td align=center>0.092700</td>
	<td align=center>0.049800</td>
	<td align=center>0.066000</td>
	<td align=center>15.792800</td>
	<td align=center>848.9585</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.002</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:20</td>
	<td align=center>6.43840</td>
	<td align=center>72.56140</td>
	<td align=center>3.546800</td>
	<td align=center>1.064800</td>
	<td align=center>0.214700</td>
	<td align=center>0.239100</td>
	<td align=center>0.093500</td>
	<td align=center>0.050900</td>
	<td align=center>0.065900</td>
	<td align=center>15.724400</td>
	<td align=center>849.8720</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:15</td>
	<td align=center>6.43420</td>
	<td align=center>72.57130</td>
	<td align=center>3.537300</td>
	<td align=center>1.061600</td>
	<td align=center>0.214300</td>
	<td align=center>0.239200</td>
	<td align=center>0.092400</td>
	<td align=center>0.051100</td>
	<td align=center>0.066200</td>
	<td align=center>15.732500</td>
	<td align=center>849.6848</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.851</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:10</td>
	<td align=center>6.42960</td>
	<td align=center>72.57960</td>
	<td align=center>3.529600</td>
	<td align=center>1.058700</td>
	<td align=center>0.214400</td>
	<td align=center>0.239400</td>
	<td align=center>0.090700</td>
	<td align=center>0.049100</td>
	<td align=center>0.066200</td>
	<td align=center>15.742900</td>
	<td align=center>849.4180</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.631</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:05</td>
	<td align=center>6.43180</td>
	<td align=center>72.56010</td>
	<td align=center>3.530100</td>
	<td align=center>1.060900</td>
	<td align=center>0.214100</td>
	<td align=center>0.238600</td>
	<td align=center>0.094100</td>
	<td align=center>0.051500</td>
	<td align=center>0.066100</td>
	<td align=center>15.752800</td>
	<td align=center>849.4806</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.578</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:55</td>
	<td align=center>6.43640</td>
	<td align=center>72.56450</td>
	<td align=center>3.540600</td>
	<td align=center>1.064900</td>
	<td align=center>0.215100</td>
	<td align=center>0.240000</td>
	<td align=center>0.093900</td>
	<td align=center>0.051700</td>
	<td align=center>0.065700</td>
	<td align=center>15.727100</td>
	<td align=center>849.8746</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.005</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:50</td>
	<td align=center>6.44730</td>
	<td align=center>72.55620</td>
	<td align=center>3.550600</td>
	<td align=center>1.065300</td>
	<td align=center>0.214200</td>
	<td align=center>0.238200</td>
	<td align=center>0.093400</td>
	<td align=center>0.050600</td>
	<td align=center>0.065900</td>
	<td align=center>15.718500</td>
	<td align=center>849.8320</td>
	<td align=center>0.7209000</td>
	<td align=center>1000.916</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:45</td>
	<td align=center>6.41070</td>
	<td align=center>72.52660</td>
	<td align=center>3.512200</td>
	<td align=center>1.055700</td>
	<td align=center>0.213600</td>
	<td align=center>0.238800</td>
	<td align=center>0.093700</td>
	<td align=center>0.050900</td>
	<td align=center>0.065700</td>
	<td align=center>15.832100</td>
	<td align=center>848.6213</td>
	<td align=center>0.7207000</td>
	<td align=center>999.599</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:40</td>
	<td align=center>6.43790</td>
	<td align=center>72.56530</td>
	<td align=center>3.538900</td>
	<td align=center>1.063400</td>
	<td align=center>0.214700</td>
	<td align=center>0.239500</td>
	<td align=center>0.091700</td>
	<td align=center>0.049300</td>
	<td align=center>0.066200</td>
	<td align=center>15.733200</td>
	<td align=center>849.6234</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.760</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:35</td>
	<td align=center>6.43550</td>
	<td align=center>72.53970</td>
	<td align=center>3.534200</td>
	<td align=center>1.059300</td>
	<td align=center>0.213600</td>
	<td align=center>0.237800</td>
	<td align=center>0.095100</td>
	<td align=center>0.051700</td>
	<td align=center>0.066100</td>
	<td align=center>15.767200</td>
	<td align=center>849.3091</td>
	<td align=center>0.7209000</td>
	<td align=center>1000.305</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:30</td>
	<td align=center>6.41080</td>
	<td align=center>72.53080</td>
	<td align=center>3.514500</td>
	<td align=center>1.065700</td>
	<td align=center>0.213000</td>
	<td align=center>0.237800</td>
	<td align=center>0.092900</td>
	<td align=center>0.050900</td>
	<td align=center>0.066000</td>
	<td align=center>15.826800</td>
	<td align=center>848.6514</td>
	<td align=center>0.7207000</td>
	<td align=center>999.659</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:25</td>
	<td align=center>6.41080</td>
	<td align=center>72.53080</td>
	<td align=center>3.514500</td>
	<td align=center>1.056500</td>
	<td align=center>0.213000</td>
	<td align=center>0.237800</td>
	<td align=center>0.092900</td>
	<td align=center>0.050900</td>
	<td align=center>0.065800</td>
	<td align=center>15.826800</td>
	<td align=center>848.6514</td>
	<td align=center>0.7207000</td>
	<td align=center>999.659</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:20</td>
	<td align=center>6.42020</td>
	<td align=center>72.56600</td>
	<td align=center>3.521500</td>
	<td align=center>1.055600</td>
	<td align=center>0.212500</td>
	<td align=center>0.236900</td>
	<td align=center>0.091800</td>
	<td align=center>0.050200</td>
	<td align=center>0.066500</td>
	<td align=center>15.778900</td>
	<td align=center>849.0172</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.176</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:15</td>
	<td align=center>6.42020</td>
	<td align=center>72.56600</td>
	<td align=center>3.521500</td>
	<td align=center>1.055600</td>
	<td align=center>0.212500</td>
	<td align=center>0.236900</td>
	<td align=center>0.091800</td>
	<td align=center>0.050200</td>
	<td align=center>0.066500</td>
	<td align=center>15.778900</td>
	<td align=center>849.0172</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.176</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:10</td>
	<td align=center>6.42600</td>
	<td align=center>72.54030</td>
	<td align=center>3.525400</td>
	<td align=center>1.060200</td>
	<td align=center>0.214300</td>
	<td align=center>0.239400</td>
	<td align=center>0.093300</td>
	<td align=center>0.051000</td>
	<td align=center>0.066900</td>
	<td align=center>15.783100</td>
	<td align=center>849.1993</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.212</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:05</td>
	<td align=center>6.43500</td>
	<td align=center>72.52090</td>
	<td align=center>3.534900</td>
	<td align=center>1.060100</td>
	<td align=center>0.214800</td>
	<td align=center>0.240000</td>
	<td align=center>0.093100</td>
	<td align=center>0.050200</td>
	<td align=center>0.067000</td>
	<td align=center>15.784000</td>
	<td align=center>849.1666</td>
	<td align=center>0.7210000</td>
	<td align=center>1000.081</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:55</td>
	<td align=center>6.42340</td>
	<td align=center>72.56180</td>
	<td align=center>3.531200</td>
	<td align=center>1.063500</td>
	<td align=center>0.215100</td>
	<td align=center>0.239800</td>
	<td align=center>0.093500</td>
	<td align=center>0.051100</td>
	<td align=center>0.066400</td>
	<td align=center>15.754400</td>
	<td align=center>849.6288</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.769</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:50</td>
	<td align=center>6.41570</td>
	<td align=center>72.53610</td>
	<td align=center>3.517100</td>
	<td align=center>1.057600</td>
	<td align=center>0.212900</td>
	<td align=center>0.237500</td>
	<td align=center>0.092400</td>
	<td align=center>0.050000</td>
	<td align=center>0.065600</td>
	<td align=center>15.815100</td>
	<td align=center>848.6946</td>
	<td align=center>0.7207000</td>
	<td align=center>999.723</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:45</td>
	<td align=center>6.42520</td>
	<td align=center>72.54560</td>
	<td align=center>3.524500</td>
	<td align=center>1.058800</td>
	<td align=center>0.212700</td>
	<td align=center>0.237200</td>
	<td align=center>0.091600</td>
	<td align=center>0.049800</td>
	<td align=center>0.064900</td>
	<td align=center>15.789800</td>
	<td align=center>848.8588</td>
	<td align=center>0.7207000</td>
	<td align=center>999.923</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:40</td>
	<td align=center>6.40610</td>
	<td align=center>72.54310</td>
	<td align=center>3.511500</td>
	<td align=center>1.055400</td>
	<td align=center>0.213200</td>
	<td align=center>0.238400</td>
	<td align=center>0.092400</td>
	<td align=center>0.049800</td>
	<td align=center>0.064900</td>
	<td align=center>15.825100</td>
	<td align=center>848.6111</td>
	<td align=center>0.7206000</td>
	<td align=center>999.695</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:35</td>
	<td align=center>6.41280</td>
	<td align=center>72.51350</td>
	<td align=center>3.514300</td>
	<td align=center>1.056600</td>
	<td align=center>0.213300</td>
	<td align=center>0.237800</td>
	<td align=center>0.092400</td>
	<td align=center>0.050300</td>
	<td align=center>0.064900</td>
	<td align=center>15.844200</td>
	<td align=center>848.3882</td>
	<td align=center>0.7207000</td>
	<td align=center>999.316</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:30</td>
	<td align=center>6.41870</td>
	<td align=center>72.53980</td>
	<td align=center>3.520800</td>
	<td align=center>1.058400</td>
	<td align=center>0.213000</td>
	<td align=center>0.237100</td>
	<td align=center>0.093000</td>
	<td align=center>0.050600</td>
	<td align=center>0.064900</td>
	<td align=center>15.803700</td>
	<td align=center>848.8265</td>
	<td align=center>0.7207000</td>
	<td align=center>999.871</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:25</td>
	<td align=center>6.40950</td>
	<td align=center>72.52560</td>
	<td align=center>3.506200</td>
	<td align=center>1.050100</td>
	<td align=center>0.211500</td>
	<td align=center>0.236100</td>
	<td align=center>0.092100</td>
	<td align=center>0.050300</td>
	<td align=center>0.064500</td>
	<td align=center>15.854200</td>
	<td align=center>848.0540</td>
	<td align=center>0.7206000</td>
	<td align=center>999.034</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:20</td>
	<td align=center>6.40410</td>
	<td align=center>72.51520</td>
	<td align=center>3.500100</td>
	<td align=center>1.049700</td>
	<td align=center>0.211500</td>
	<td align=center>0.235700</td>
	<td align=center>0.091800</td>
	<td align=center>0.049800</td>
	<td align=center>0.065000</td>
	<td align=center>15.877000</td>
	<td align=center>847.8118</td>
	<td align=center>0.7206000</td>
	<td align=center>998.748</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:15</td>
	<td align=center>6.41360</td>
	<td align=center>72.55040</td>
	<td align=center>3.514900</td>
	<td align=center>1.055600</td>
	<td align=center>0.212500</td>
	<td align=center>0.237300</td>
	<td align=center>0.091600</td>
	<td align=center>0.049800</td>
	<td align=center>0.064600</td>
	<td align=center>15.809800</td>
	<td align=center>848.6370</td>
	<td align=center>0.7206000</td>
	<td align=center>999.743</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:10</td>
	<td align=center>6.42660</td>
	<td align=center>72.55730</td>
	<td align=center>3.533900</td>
	<td align=center>1.061900</td>
	<td align=center>0.213800</td>
	<td align=center>0.238000</td>
	<td align=center>0.094100</td>
	<td align=center>0.052000</td>
	<td align=center>0.064900</td>
	<td align=center>15.757600</td>
	<td align=center>849.4769</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.598</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:05</td>
	<td align=center>6.41900</td>
	<td align=center>72.55450</td>
	<td align=center>3.521900</td>
	<td align=center>1.057300</td>
	<td align=center>0.212900</td>
	<td align=center>0.237500</td>
	<td align=center>0.092300</td>
	<td align=center>0.050600</td>
	<td align=center>0.064700</td>
	<td align=center>15.789200</td>
	<td align=center>848.9398</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.057</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:55</td>
	<td align=center>6.42440</td>
	<td align=center>72.55420</td>
	<td align=center>3.528000</td>
	<td align=center>1.059900</td>
	<td align=center>0.213400</td>
	<td align=center>0.237600</td>
	<td align=center>0.092300</td>
	<td align=center>0.050600</td>
	<td align=center>0.065200</td>
	<td align=center>15.774500</td>
	<td align=center>849.1487</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.258</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:50</td>
	<td align=center>6.42310</td>
	<td align=center>72.55930</td>
	<td align=center>3.522600</td>
	<td align=center>1.057500</td>
	<td align=center>0.212600</td>
	<td align=center>0.236300</td>
	<td align=center>0.092900</td>
	<td align=center>0.051400</td>
	<td align=center>0.065200</td>
	<td align=center>15.779000</td>
	<td align=center>849.0403</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.160</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:45</td>
	<td align=center>6.42280</td>
	<td align=center>72.53030</td>
	<td align=center>3.528600</td>
	<td align=center>1.053100</td>
	<td align=center>0.212700</td>
	<td align=center>0.236500</td>
	<td align=center>0.091500</td>
	<td align=center>0.049100</td>
	<td align=center>0.064500</td>
	<td align=center>15.810900</td>
	<td align=center>848.5607</td>
	<td align=center>0.7207000</td>
	<td align=center>999.577</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:40</td>
	<td align=center>6.42960</td>
	<td align=center>72.55650</td>
	<td align=center>3.530400</td>
	<td align=center>1.060300</td>
	<td align=center>0.214100</td>
	<td align=center>0.239200</td>
	<td align=center>0.090800</td>
	<td align=center>0.049100</td>
	<td align=center>0.065200</td>
	<td align=center>15.764700</td>
	<td align=center>849.1827</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.297</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:35</td>
	<td align=center>6.43400</td>
	<td align=center>72.56700</td>
	<td align=center>3.539300</td>
	<td align=center>1.063900</td>
	<td align=center>0.213500</td>
	<td align=center>0.237400</td>
	<td align=center>0.092700</td>
	<td align=center>0.050600</td>
	<td align=center>0.064800</td>
	<td align=center>15.736800</td>
	<td align=center>849.5779</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.743</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:30</td>
	<td align=center>6.43950</td>
	<td align=center>72.58300</td>
	<td align=center>3.543700</td>
	<td align=center>1.063100</td>
	<td align=center>0.213100</td>
	<td align=center>0.237200</td>
	<td align=center>0.092800</td>
	<td align=center>0.050700</td>
	<td align=center>0.064400</td>
	<td align=center>15.712400</td>
	<td align=center>849.7696</td>
	<td align=center>0.7207000</td>
	<td align=center>1001.002</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:25</td>
	<td align=center>6.44000</td>
	<td align=center>72.57010</td>
	<td align=center>3.539800</td>
	<td align=center>1.062300</td>
	<td align=center>0.213400</td>
	<td align=center>0.237700</td>
	<td align=center>0.092700</td>
	<td align=center>0.050600</td>
	<td align=center>0.064500</td>
	<td align=center>15.728900</td>
	<td align=center>849.5725</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.731</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:20</td>
	<td align=center>6.41610</td>
	<td align=center>72.54370</td>
	<td align=center>3.518800</td>
	<td align=center>1.056400</td>
	<td align=center>0.212200</td>
	<td align=center>0.236300</td>
	<td align=center>0.092700</td>
	<td align=center>0.050600</td>
	<td align=center>0.064200</td>
	<td align=center>15.809100</td>
	<td align=center>848.6743</td>
	<td align=center>0.7206000</td>
	<td align=center>999.748</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:15</td>
	<td align=center>6.42930</td>
	<td align=center>72.53920</td>
	<td align=center>3.536500</td>
	<td align=center>1.063000</td>
	<td align=center>0.214300</td>
	<td align=center>0.238600</td>
	<td align=center>0.092300</td>
	<td align=center>0.050400</td>
	<td align=center>0.064400</td>
	<td align=center>15.772000</td>
	<td align=center>849.2446</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.292</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:10</td>
	<td align=center>6.42860</td>
	<td align=center>72.54250</td>
	<td align=center>3.534600</td>
	<td align=center>1.064200</td>
	<td align=center>0.214300</td>
	<td align=center>0.238800</td>
	<td align=center>0.092800</td>
	<td align=center>0.050300</td>
	<td align=center>0.064200</td>
	<td align=center>15.769600</td>
	<td align=center>849.2892</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.350</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:05</td>
	<td align=center>6.43550</td>
	<td align=center>72.56060</td>
	<td align=center>3.545700</td>
	<td align=center>1.067800</td>
	<td align=center>0.214800</td>
	<td align=center>0.238300</td>
	<td align=center>0.092500</td>
	<td align=center>0.050700</td>
	<td align=center>0.064300</td>
	<td align=center>15.729800</td>
	<td align=center>849.7702</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.919</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:55</td>
	<td align=center>6.44900</td>
	<td align=center>72.59020</td>
	<td align=center>3.553700</td>
	<td align=center>1.068100</td>
	<td align=center>0.215400</td>
	<td align=center>0.240800</td>
	<td align=center>0.091900</td>
	<td align=center>0.050300</td>
	<td align=center>0.064300</td>
	<td align=center>15.676300</td>
	<td align=center>850.2846</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.540</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:50</td>
	<td align=center>6.42650</td>
	<td align=center>72.56230</td>
	<td align=center>3.535000</td>
	<td align=center>1.063800</td>
	<td align=center>0.215300</td>
	<td align=center>0.240500</td>
	<td align=center>0.091700</td>
	<td align=center>0.049600</td>
	<td align=center>0.064200</td>
	<td align=center>15.751000</td>
	<td align=center>849.5061</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.669</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:45</td>
	<td align=center>6.42930</td>
	<td align=center>72.55260</td>
	<td align=center>3.535700</td>
	<td align=center>1.063000</td>
	<td align=center>0.214300</td>
	<td align=center>0.238500</td>
	<td align=center>0.092600</td>
	<td align=center>0.050700</td>
	<td align=center>0.064200</td>
	<td align=center>15.759200</td>
	<td align=center>849.3753</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.482</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:40</td>
	<td align=center>6.44730</td>
	<td align=center>72.56780</td>
	<td align=center>3.545300</td>
	<td align=center>1.065000</td>
	<td align=center>0.214000</td>
	<td align=center>0.237300</td>
	<td align=center>0.090800</td>
	<td align=center>0.048100</td>
	<td align=center>0.064600</td>
	<td align=center>15.719700</td>
	<td align=center>849.5509</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.701</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:35</td>
	<td align=center>6.44270</td>
	<td align=center>72.55540</td>
	<td align=center>3.538300</td>
	<td align=center>1.060700</td>
	<td align=center>0.213700</td>
	<td align=center>0.238200</td>
	<td align=center>0.090700</td>
	<td align=center>0.049300</td>
	<td align=center>0.064100</td>
	<td align=center>15.747000</td>
	<td align=center>849.2266</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.313</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:30</td>
	<td align=center>6.42120</td>
	<td align=center>72.54540</td>
	<td align=center>3.523000</td>
	<td align=center>1.054000</td>
	<td align=center>0.211800</td>
	<td align=center>0.236500</td>
	<td align=center>0.092800</td>
	<td align=center>0.051000</td>
	<td align=center>0.063900</td>
	<td align=center>15.800400</td>
	<td align=center>848.7060</td>
	<td align=center>0.7206000</td>
	<td align=center>999.773</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:25</td>
	<td align=center>6.41930</td>
	<td align=center>72.55360</td>
	<td align=center>3.520500</td>
	<td align=center>1.056100</td>
	<td align=center>0.211600</td>
	<td align=center>0.235900</td>
	<td align=center>0.091300</td>
	<td align=center>0.049200</td>
	<td align=center>0.063900</td>
	<td align=center>15.798400</td>
	<td align=center>848.6489</td>
	<td align=center>0.7205000</td>
	<td align=center>999.773</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:20</td>
	<td align=center>6.43240</td>
	<td align=center>72.51770</td>
	<td align=center>3.525700</td>
	<td align=center>1.055400</td>
	<td align=center>0.211700</td>
	<td align=center>0.235800</td>
	<td align=center>0.090500</td>
	<td align=center>0.048000</td>
	<td align=center>0.064000</td>
	<td align=center>15.818900</td>
	<td align=center>848.2762</td>
	<td align=center>0.7207000</td>
	<td align=center>999.202</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:15</td>
	<td align=center>6.41590</td>
	<td align=center>72.55700</td>
	<td align=center>3.521100</td>
	<td align=center>1.057500</td>
	<td align=center>0.211800</td>
	<td align=center>0.235700</td>
	<td align=center>0.093300</td>
	<td align=center>0.052200</td>
	<td align=center>0.063900</td>
	<td align=center>15.791700</td>
	<td align=center>848.9202</td>
	<td align=center>0.7206000</td>
	<td align=center>1000.059</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:10</td>
	<td align=center>6.42570</td>
	<td align=center>72.53790</td>
	<td align=center>3.524800</td>
	<td align=center>1.056400</td>
	<td align=center>0.212200</td>
	<td align=center>0.236300</td>
	<td align=center>0.090300</td>
	<td align=center>0.048100</td>
	<td align=center>0.064300</td>
	<td align=center>15.804100</td>
	<td align=center>848.5316</td>
	<td align=center>0.7206000</td>
	<td align=center>999.573</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:05</td>
	<td align=center>6.43510</td>
	<td align=center>72.52970</td>
	<td align=center>3.542000</td>
	<td align=center>1.056900</td>
	<td align=center>0.213500</td>
	<td align=center>0.238400</td>
	<td align=center>0.090200</td>
	<td align=center>0.048800</td>
	<td align=center>0.065000</td>
	<td align=center>15.780500</td>
	<td align=center>848.9350</td>
	<td align=center>0.7208000</td>
	<td align=center>999.937</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:55</td>
	<td align=center>6.40800</td>
	<td align=center>72.53460</td>
	<td align=center>3.514200</td>
	<td align=center>1.054900</td>
	<td align=center>0.212400</td>
	<td align=center>0.238000</td>
	<td align=center>0.092500</td>
	<td align=center>0.050900</td>
	<td align=center>0.065000</td>
	<td align=center>15.829600</td>
	<td align=center>848.5656</td>
	<td align=center>0.7206000</td>
	<td align=center>999.608</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:50</td>
	<td align=center>6.43570</td>
	<td align=center>72.54870</td>
	<td align=center>3.537300</td>
	<td align=center>1.060500</td>
	<td align=center>0.213400</td>
	<td align=center>0.237400</td>
	<td align=center>0.091200</td>
	<td align=center>0.048500</td>
	<td align=center>0.064900</td>
	<td align=center>15.762300</td>
	<td align=center>849.1297</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.207</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:45</td>
	<td align=center>6.39910</td>
	<td align=center>72.53320</td>
	<td align=center>3.505100</td>
	<td align=center>1.050400</td>
	<td align=center>0.211100</td>
	<td align=center>0.235500</td>
	<td align=center>0.090300</td>
	<td align=center>0.048900</td>
	<td align=center>0.064000</td>
	<td align=center>15.862500</td>
	<td align=center>847.9323</td>
	<td align=center>0.7204000</td>
	<td align=center>999.001</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:40</td>
	<td align=center>6.42660</td>
	<td align=center>72.54340</td>
	<td align=center>3.523200</td>
	<td align=center>1.054400</td>
	<td align=center>0.212100</td>
	<td align=center>0.236000</td>
	<td align=center>0.092100</td>
	<td align=center>0.050400</td>
	<td align=center>0.064400</td>
	<td align=center>15.797400</td>
	<td align=center>848.6696</td>
	<td align=center>0.7207000</td>
	<td align=center>999.709</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:35</td>
	<td align=center>6.41880</td>
	<td align=center>72.55930</td>
	<td align=center>3.516700</td>
	<td align=center>1.053200</td>
	<td align=center>0.211800</td>
	<td align=center>0.235500</td>
	<td align=center>0.092800</td>
	<td align=center>0.050500</td>
	<td align=center>0.064100</td>
	<td align=center>15.797400</td>
	<td align=center>848.6696</td>
	<td align=center>0.7205000</td>
	<td align=center>999.801</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:30</td>
	<td align=center>6.40390</td>
	<td align=center>72.54580</td>
	<td align=center>3.506400</td>
	<td align=center>1.053200</td>
	<td align=center>0.211400</td>
	<td align=center>0.235700</td>
	<td align=center>0.094100</td>
	<td align=center>0.049300</td>
	<td align=center>0.064400</td>
	<td align=center>15.844300</td>
	<td align=center>848.0686</td>
	<td align=center>0.7204000</td>
	<td align=center>999.181</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:25</td>
	<td align=center>6.41830</td>
	<td align=center>72.57060</td>
	<td align=center>3.520800</td>
	<td align=center>1.058000</td>
	<td align=center>0.212700</td>
	<td align=center>0.237900</td>
	<td align=center>0.089500</td>
	<td align=center>0.048500</td>
	<td align=center>0.064000</td>
	<td align=center>15.779700</td>
	<td align=center>848.8734</td>
	<td align=center>0.7205000</td>
	<td align=center>1000.087</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:20</td>
	<td align=center>6.41190</td>
	<td align=center>72.56290</td>
	<td align=center>3.516700</td>
	<td align=center>1.054600</td>
	<td align=center>0.211500</td>
	<td align=center>0.235800</td>
	<td align=center>0.089800</td>
	<td align=center>0.048400</td>
	<td align=center>0.063700</td>
	<td align=center>15.804700</td>
	<td align=center>848.5186</td>
	<td align=center>0.7204000</td>
	<td align=center>999.714</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:15</td>
	<td align=center>6.42020</td>
	<td align=center>72.54890</td>
	<td align=center>3.524300</td>
	<td align=center>1.057100</td>
	<td align=center>0.212500</td>
	<td align=center>0.236300</td>
	<td align=center>0.093700</td>
	<td align=center>0.051700</td>
	<td align=center>0.063400</td>
	<td align=center>15.791800</td>
	<td align=center>848.9055</td>
	<td align=center>0.7206000</td>
	<td align=center>999.999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:10</td>
	<td align=center>6.41970</td>
	<td align=center>72.55220</td>
	<td align=center>3.523800</td>
	<td align=center>1.058000</td>
	<td align=center>0.212300</td>
	<td align=center>0.236500</td>
	<td align=center>0.091300</td>
	<td align=center>0.049400</td>
	<td align=center>0.063300</td>
	<td align=center>15.793500</td>
	<td align=center>848.7526</td>
	<td align=center>0.7206000</td>
	<td align=center>999.882</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:05</td>
	<td align=center>6.41340</td>
	<td align=center>72.55850</td>
	<td align=center>3.522600</td>
	<td align=center>1.058400</td>
	<td align=center>0.212100</td>
	<td align=center>0.235700</td>
	<td align=center>0.091500</td>
	<td align=center>0.049800</td>
	<td align=center>0.062300</td>
	<td align=center>15.795700</td>
	<td align=center>848.7526</td>
	<td align=center>0.7205000</td>
	<td align=center>999.935</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:55</td>
	<td align=center>6.42110</td>
	<td align=center>72.55680</td>
	<td align=center>3.527200</td>
	<td align=center>1.057800</td>
	<td align=center>0.212000</td>
	<td align=center>0.234900</td>
	<td align=center>0.091300</td>
	<td align=center>0.050300</td>
	<td align=center>0.060200</td>
	<td align=center>15.788500</td>
	<td align=center>848.6807</td>
	<td align=center>0.7205000</td>
	<td align=center>999.849</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:50</td>
	<td align=center>6.31760</td>
	<td align=center>72.67950</td>
	<td align=center>3.539500</td>
	<td align=center>1.062400</td>
	<td align=center>0.210800</td>
	<td align=center>0.233800</td>
	<td align=center>0.086900</td>
	<td align=center>0.046000</td>
	<td align=center>0.056100</td>
	<td align=center>15.767300</td>
	<td align=center>849.6427</td>
	<td align=center>0.7192000</td>
	<td align=center>1001.878</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:45</td>
	<td align=center>6.27780</td>
	<td align=center>72.73200</td>
	<td align=center>3.548600</td>
	<td align=center>1.058500</td>
	<td align=center>0.208300</td>
	<td align=center>0.229100</td>
	<td align=center>0.085800</td>
	<td align=center>0.046800</td>
	<td align=center>0.060400</td>
	<td align=center>15.752700</td>
	<td align=center>850.1909</td>
	<td align=center>0.7187000</td>
	<td align=center>1002.836</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:40</td>
	<td align=center>6.40380</td>
	<td align=center>72.63380</td>
	<td align=center>3.521300</td>
	<td align=center>1.049900</td>
	<td align=center>0.210700</td>
	<td align=center>0.234200</td>
	<td align=center>0.091400</td>
	<td align=center>0.049400</td>
	<td align=center>0.065900</td>
	<td align=center>15.739600</td>
	<td align=center>849.3371</td>
	<td align=center>0.7201000</td>
	<td align=center>1000.886</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:35</td>
	<td align=center>6.41500</td>
	<td align=center>72.56000</td>
	<td align=center>3.514300</td>
	<td align=center>1.051400</td>
	<td align=center>0.212100</td>
	<td align=center>0.236400</td>
	<td align=center>0.092100</td>
	<td align=center>0.050300</td>
	<td align=center>0.064900</td>
	<td align=center>15.803600</td>
	<td align=center>848.6295</td>
	<td align=center>0.7205000</td>
	<td align=center>999.768</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:30</td>
	<td align=center>6.43280</td>
	<td align=center>72.56150</td>
	<td align=center>3.534700</td>
	<td align=center>1.060800</td>
	<td align=center>0.213400</td>
	<td align=center>0.238600</td>
	<td align=center>0.091400</td>
	<td align=center>0.049400</td>
	<td align=center>0.066100</td>
	<td align=center>15.751400</td>
	<td align=center>849.3563</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.486</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:25</td>
	<td align=center>6.43490</td>
	<td align=center>72.56080</td>
	<td align=center>3.533600</td>
	<td align=center>1.060500</td>
	<td align=center>0.215000</td>
	<td align=center>0.239400</td>
	<td align=center>0.094500</td>
	<td align=center>0.052000</td>
	<td align=center>0.065800</td>
	<td align=center>15.743500</td>
	<td align=center>849.6219</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.716</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:20</td>
	<td align=center>6.44410</td>
	<td align=center>72.57270</td>
	<td align=center>3.542800</td>
	<td align=center>1.062900</td>
	<td align=center>0.213600</td>
	<td align=center>0.237800</td>
	<td align=center>0.094300</td>
	<td align=center>0.051800</td>
	<td align=center>0.066100</td>
	<td align=center>15.713800</td>
	<td align=center>849.8686</td>
	<td align=center>0.7208000</td>
	<td align=center>1001.012</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:15</td>
	<td align=center>6.42520</td>
	<td align=center>72.54210</td>
	<td align=center>3.522700</td>
	<td align=center>1.054200</td>
	<td align=center>0.212600</td>
	<td align=center>0.236800</td>
	<td align=center>0.092500</td>
	<td align=center>0.050600</td>
	<td align=center>0.066000</td>
	<td align=center>15.797400</td>
	<td align=center>848.7806</td>
	<td align=center>0.7207000</td>
	<td align=center>999.810</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:10</td>
	<td align=center>6.41300</td>
	<td align=center>72.53730</td>
	<td align=center>3.515000</td>
	<td align=center>1.055000</td>
	<td align=center>0.212300</td>
	<td align=center>0.237500</td>
	<td align=center>0.096100</td>
	<td align=center>0.052600</td>
	<td align=center>0.066100</td>
	<td align=center>15.815100</td>
	<td align=center>848.8608</td>
	<td align=center>0.7207000</td>
	<td align=center>999.874</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:05</td>
	<td align=center>6.42270</td>
	<td align=center>72.55610</td>
	<td align=center>3.522600</td>
	<td align=center>1.057500</td>
	<td align=center>0.213800</td>
	<td align=center>0.238100</td>
	<td align=center>0.093400</td>
	<td align=center>0.050900</td>
	<td align=center>0.067100</td>
	<td align=center>15.777100</td>
	<td align=center>849.1967</td>
	<td align=center>0.7207000</td>
	<td align=center>1000.292</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:55</td>
	<td align=center>6.41890</td>
	<td align=center>72.53910</td>
	<td align=center>3.519800</td>
	<td align=center>1.057400</td>
	<td align=center>0.213800</td>
	<td align=center>0.238200</td>
	<td align=center>0.093200</td>
	<td align=center>0.051100</td>
	<td align=center>0.068000</td>
	<td align=center>15.800600</td>
	<td align=center>849.0101</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.025</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:50</td>
	<td align=center>6.42490</td>
	<td align=center>72.54760</td>
	<td align=center>3.524500</td>
	<td align=center>1.057500</td>
	<td align=center>0.213200</td>
	<td align=center>0.237900</td>
	<td align=center>0.094100</td>
	<td align=center>0.051400</td>
	<td align=center>0.067800</td>
	<td align=center>15.781000</td>
	<td align=center>849.1988</td>
	<td align=center>0.7208000</td>
	<td align=center>1000.240</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:45</td>
	<td align=center>6.42960</td>
	<td align=center>72.51660</td>
	<td align=center>3.524500</td>
	<td align=center>1.058800</td>
	<td align=center>0.213800</td>
	<td align=center>0.238600</td>
	<td align=center>0.093800</td>
	<td align=center>0.050700</td>
	<td align=center>0.068600</td>
	<td align=center>15.805000</td>
	<td align=center>848.9567</td>
	<td align=center>0.7210000</td>
	<td align=center>999.834</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:40</td>
	<td align=center>6.42380</td>
	<td align=center>72.52730</td>
	<td align=center>3.526400</td>
	<td align=center>1.062200</td>
	<td align=center>0.215800</td>
	<td align=center>0.242000</td>
	<td align=center>0.094600</td>
	<td align=center>0.051900</td>
	<td align=center>0.067800</td>
	<td align=center>15.788300</td>
	<td align=center>849.3986</td>
	<td align=center>0.7210000</td>
	<td align=center>1000.345</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:35</td>
	<td align=center>6.43070</td>
	<td align=center>72.52490</td>
	<td align=center>3.523500</td>
	<td align=center>1.060400</td>
	<td align=center>0.215200</td>
	<td align=center>0.241000</td>
	<td align=center>0.094900</td>
	<td align=center>0.053200</td>
	<td align=center>0.068800</td>
	<td align=center>15.787600</td>
	<td align=center>849.3347</td>
	<td align=center>0.7210000</td>
	<td align=center>1000.225</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:30</td>
	<td align=center>6.40760</td>
	<td align=center>72.50070</td>
	<td align=center>3.510200</td>
	<td align=center>1.058400</td>
	<td align=center>0.214800</td>
	<td align=center>0.240800</td>
	<td align=center>0.095200</td>
	<td align=center>0.052500</td>
	<td align=center>0.068800</td>
	<td align=center>15.851000</td>
	<td align=center>848.7673</td>
	<td align=center>0.7210000</td>
	<td align=center>999.600</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:25</td>
	<td align=center>6.42970</td>
	<td align=center>72.49030</td>
	<td align=center>3.532400</td>
	<td align=center>1.067800</td>
	<td align=center>0.217000</td>
	<td align=center>0.242500</td>
	<td align=center>0.093800</td>
	<td align=center>0.052100</td>
	<td align=center>0.069300</td>
	<td align=center>15.805100</td>
	<td align=center>849.3802</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:20</td>
	<td align=center>6.42050</td>
	<td align=center>72.48270</td>
	<td align=center>3.531400</td>
	<td align=center>1.062200</td>
	<td align=center>0.216400</td>
	<td align=center>0.242900</td>
	<td align=center>0.093800</td>
	<td align=center>0.051200</td>
	<td align=center>0.071100</td>
	<td align=center>15.827800</td>
	<td align=center>849.1828</td>
	<td align=center>0.7212000</td>
	<td align=center>999.932</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:15</td>
	<td align=center>6.43220</td>
	<td align=center>72.50940</td>
	<td align=center>3.526000</td>
	<td align=center>1.063500</td>
	<td align=center>0.216600</td>
	<td align=center>0.243400</td>
	<td align=center>0.096000</td>
	<td align=center>0.053100</td>
	<td align=center>0.072300</td>
	<td align=center>15.787500</td>
	<td align=center>849.6395</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.432</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:10</td>
	<td align=center>6.42890</td>
	<td align=center>72.49500</td>
	<td align=center>3.517100</td>
	<td align=center>1.059100</td>
	<td align=center>0.215400</td>
	<td align=center>0.241200</td>
	<td align=center>0.096500</td>
	<td align=center>0.053500</td>
	<td align=center>0.071900</td>
	<td align=center>15.821300</td>
	<td align=center>849.1292</td>
	<td align=center>0.7212000</td>
	<td align=center>999.845</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:05</td>
	<td align=center>6.43800</td>
	<td align=center>72.51980</td>
	<td align=center>3.528800</td>
	<td align=center>1.063400</td>
	<td align=center>0.217200</td>
	<td align=center>0.243500</td>
	<td align=center>0.098000</td>
	<td align=center>0.054700</td>
	<td align=center>0.072100</td>
	<td align=center>15.764500</td>
	<td align=center>849.9520</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.765</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:55</td>
	<td align=center>6.43890</td>
	<td align=center>72.48450</td>
	<td align=center>3.526200</td>
	<td align=center>1.059800</td>
	<td align=center>0.215300</td>
	<td align=center>0.241600</td>
	<td align=center>0.097200</td>
	<td align=center>0.053600</td>
	<td align=center>0.072700</td>
	<td align=center>15.810300</td>
	<td align=center>849.2798</td>
	<td align=center>0.7214000</td>
	<td align=center>999.925</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:50</td>
	<td align=center>6.44110</td>
	<td align=center>72.53380</td>
	<td align=center>3.532800</td>
	<td align=center>1.062300</td>
	<td align=center>0.216800</td>
	<td align=center>0.243000</td>
	<td align=center>0.096500</td>
	<td align=center>0.053500</td>
	<td align=center>0.072400</td>
	<td align=center>15.747700</td>
	<td align=center>850.0145</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.900</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:45</td>
	<td align=center>6.43060</td>
	<td align=center>72.50120</td>
	<td align=center>3.514000</td>
	<td align=center>1.057200</td>
	<td align=center>0.215300</td>
	<td align=center>0.241300</td>
	<td align=center>0.095800</td>
	<td align=center>0.052600</td>
	<td align=center>0.072800</td>
	<td align=center>15.819400</td>
	<td align=center>849.0596</td>
	<td align=center>0.7212000</td>
	<td align=center>999.789</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:40</td>
	<td align=center>6.42050</td>
	<td align=center>72.50340</td>
	<td align=center>3.509300</td>
	<td align=center>1.055800</td>
	<td align=center>0.214200</td>
	<td align=center>0.240700</td>
	<td align=center>0.096000</td>
	<td align=center>0.053200</td>
	<td align=center>0.072000</td>
	<td align=center>15.835000</td>
	<td align=center>848.9058</td>
	<td align=center>0.7211000</td>
	<td align=center>999.675</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:35</td>
	<td align=center>6.42780</td>
	<td align=center>72.50750</td>
	<td align=center>3.513800</td>
	<td align=center>1.055900</td>
	<td align=center>0.214400</td>
	<td align=center>0.240500</td>
	<td align=center>0.095400</td>
	<td align=center>0.051800</td>
	<td align=center>0.072100</td>
	<td align=center>15.820800</td>
	<td align=center>848.9540</td>
	<td align=center>0.7211000</td>
	<td align=center>999.733</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:30</td>
	<td align=center>6.42680</td>
	<td align=center>72.51150</td>
	<td align=center>3.515200</td>
	<td align=center>1.058700</td>
	<td align=center>0.215000</td>
	<td align=center>0.240400</td>
	<td align=center>0.096700</td>
	<td align=center>0.054000</td>
	<td align=center>0.071200</td>
	<td align=center>15.810500</td>
	<td align=center>849.2060</td>
	<td align=center>0.7211000</td>
	<td align=center>1000.005</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:25</td>
	<td align=center>6.41750</td>
	<td align=center>72.49740</td>
	<td align=center>3.505900</td>
	<td align=center>1.055100</td>
	<td align=center>0.214500</td>
	<td align=center>0.240500</td>
	<td align=center>0.094300</td>
	<td align=center>0.051500</td>
	<td align=center>0.072100</td>
	<td align=center>15.851200</td>
	<td align=center>848.6376</td>
	<td align=center>0.7211000</td>
	<td align=center>999.393</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:20</td>
	<td align=center>6.42110</td>
	<td align=center>72.49740</td>
	<td align=center>3.512100</td>
	<td align=center>1.057500</td>
	<td align=center>0.215700</td>
	<td align=center>0.242100</td>
	<td align=center>0.097200</td>
	<td align=center>0.053500</td>
	<td align=center>0.072200</td>
	<td align=center>15.831100</td>
	<td align=center>849.1088</td>
	<td align=center>0.7212000</td>
	<td align=center>999.846</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:15</td>
	<td align=center>6.43500</td>
	<td align=center>72.50310</td>
	<td align=center>3.524200</td>
	<td align=center>1.061200</td>
	<td align=center>0.215800</td>
	<td align=center>0.241700</td>
	<td align=center>0.094800</td>
	<td align=center>0.051100</td>
	<td align=center>0.072700</td>
	<td align=center>15.800400</td>
	<td align=center>849.2891</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.048</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:10</td>
	<td align=center>6.43010</td>
	<td align=center>72.52550</td>
	<td align=center>3.524300</td>
	<td align=center>1.061800</td>
	<td align=center>0.216600</td>
	<td align=center>0.242300</td>
	<td align=center>0.097700</td>
	<td align=center>0.054500</td>
	<td align=center>0.072500</td>
	<td align=center>15.774600</td>
	<td align=center>849.8298</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.690</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:05</td>
	<td align=center>6.43770</td>
	<td align=center>72.50700</td>
	<td align=center>3.525800</td>
	<td align=center>1.061100</td>
	<td align=center>0.215600</td>
	<td align=center>0.242100</td>
	<td align=center>0.096300</td>
	<td align=center>0.051700</td>
	<td align=center>0.072500</td>
	<td align=center>15.790200</td>
	<td align=center>849.4429</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.207</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:55</td>
	<td align=center>6.43260</td>
	<td align=center>72.52550</td>
	<td align=center>3.524000</td>
	<td align=center>1.060600</td>
	<td align=center>0.215600</td>
	<td align=center>0.241400</td>
	<td align=center>0.095200</td>
	<td align=center>0.051500</td>
	<td align=center>0.072700</td>
	<td align=center>15.780800</td>
	<td align=center>849.5211</td>
	<td align=center>0.7211000</td>
	<td align=center>1000.391</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:50</td>
	<td align=center>6.42930</td>
	<td align=center>72.50720</td>
	<td align=center>3.515800</td>
	<td align=center>1.058100</td>
	<td align=center>0.215600</td>
	<td align=center>0.241300</td>
	<td align=center>0.097600</td>
	<td align=center>0.053900</td>
	<td align=center>0.072800</td>
	<td align=center>15.808400</td>
	<td align=center>849.3170</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.073</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:45</td>
	<td align=center>6.43030</td>
	<td align=center>72.51920</td>
	<td align=center>3.513500</td>
	<td align=center>1.055700</td>
	<td align=center>0.214300</td>
	<td align=center>0.240800</td>
	<td align=center>0.096700</td>
	<td align=center>0.053600</td>
	<td align=center>0.072500</td>
	<td align=center>15.803300</td>
	<td align=center>849.2191</td>
	<td align=center>0.7211000</td>
	<td align=center>1000.029</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:40</td>
	<td align=center>6.42000</td>
	<td align=center>72.49260</td>
	<td align=center>3.502600</td>
	<td align=center>1.052400</td>
	<td align=center>0.215000</td>
	<td align=center>0.241900</td>
	<td align=center>0.095600</td>
	<td align=center>0.051800</td>
	<td align=center>0.073000</td>
	<td align=center>15.855100</td>
	<td align=center>848.6309</td>
	<td align=center>0.7211000</td>
	<td align=center>999.330</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:35</td>
	<td align=center>6.44610</td>
	<td align=center>72.48540</td>
	<td align=center>3.531000</td>
	<td align=center>1.059900</td>
	<td align=center>0.215800</td>
	<td align=center>0.241800</td>
	<td align=center>0.097100</td>
	<td align=center>0.053900</td>
	<td align=center>0.073000</td>
	<td align=center>15.796000</td>
	<td align=center>849.4244</td>
	<td align=center>0.7214000</td>
	<td align=center>1000.055</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:30</td>
	<td align=center>6.43780</td>
	<td align=center>72.52250</td>
	<td align=center>3.525400</td>
	<td align=center>1.061300</td>
	<td align=center>0.215800</td>
	<td align=center>0.241500</td>
	<td align=center>0.095200</td>
	<td align=center>0.052400</td>
	<td align=center>0.072400</td>
	<td align=center>15.775800</td>
	<td align=center>849.5579</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.396</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:25</td>
	<td align=center>6.41870</td>
	<td align=center>72.50170</td>
	<td align=center>3.507800</td>
	<td align=center>1.055900</td>
	<td align=center>0.215200</td>
	<td align=center>0.242100</td>
	<td align=center>0.096500</td>
	<td align=center>0.054400</td>
	<td align=center>0.072400</td>
	<td align=center>15.835400</td>
	<td align=center>849.0272</td>
	<td align=center>0.7212000</td>
	<td align=center>999.781</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:20</td>
	<td align=center>6.43050</td>
	<td align=center>72.50680</td>
	<td align=center>3.518800</td>
	<td align=center>1.058900</td>
	<td align=center>0.214900</td>
	<td align=center>0.240600</td>
	<td align=center>0.097400</td>
	<td align=center>0.053600</td>
	<td align=center>0.072800</td>
	<td align=center>15.806300</td>
	<td align=center>849.3154</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.075</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:15</td>
	<td align=center>6.41500</td>
	<td align=center>72.48560</td>
	<td align=center>3.502700</td>
	<td align=center>1.054800</td>
	<td align=center>0.215100</td>
	<td align=center>0.242100</td>
	<td align=center>0.097400</td>
	<td align=center>0.054400</td>
	<td align=center>0.072800</td>
	<td align=center>15.860200</td>
	<td align=center>848.7987</td>
	<td align=center>0.7212000</td>
	<td align=center>999.472</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:10</td>
	<td align=center>6.42220</td>
	<td align=center>72.49630</td>
	<td align=center>3.510900</td>
	<td align=center>1.054900</td>
	<td align=center>0.215700</td>
	<td align=center>0.242700</td>
	<td align=center>0.097100</td>
	<td align=center>0.053500</td>
	<td align=center>0.073200</td>
	<td align=center>15.833400</td>
	<td align=center>849.0707</td>
	<td align=center>0.7212000</td>
	<td align=center>999.788</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:05</td>
	<td align=center>6.43430</td>
	<td align=center>72.52330</td>
	<td align=center>3.527200</td>
	<td align=center>1.063100</td>
	<td align=center>0.216500</td>
	<td align=center>0.242700</td>
	<td align=center>0.096100</td>
	<td align=center>0.053100</td>
	<td align=center>0.073600</td>
	<td align=center>15.770100</td>
	<td align=center>849.8295</td>
	<td align=center>0.7212000</td>
	<td align=center>1000.675</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:55</td>
	<td align=center>6.42970</td>
	<td align=center>72.49670</td>
	<td align=center>3.523500</td>
	<td align=center>1.061900</td>
	<td align=center>0.215900</td>
	<td align=center>0.242200</td>
	<td align=center>0.096600</td>
	<td align=center>0.052900</td>
	<td align=center>0.074600</td>
	<td align=center>15.806100</td>
	<td align=center>849.4850</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.209</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:50</td>
	<td align=center>6.42600</td>
	<td align=center>72.50620</td>
	<td align=center>3.516200</td>
	<td align=center>1.060100</td>
	<td align=center>0.216500</td>
	<td align=center>0.243000</td>
	<td align=center>0.097500</td>
	<td align=center>0.054800</td>
	<td align=center>0.074800</td>
	<td align=center>15.804800</td>
	<td align=center>849.5825</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.331</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:45</td>
	<td align=center>6.42970</td>
	<td align=center>72.52070</td>
	<td align=center>3.523800</td>
	<td align=center>1.062900</td>
	<td align=center>0.216300</td>
	<td align=center>0.242900</td>
	<td align=center>0.099400</td>
	<td align=center>0.055200</td>
	<td align=center>0.075700</td>
	<td align=center>15.773400</td>
	<td align=center>850.0573</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.869</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:40</td>
	<td align=center>6.41350</td>
	<td align=center>72.48950</td>
	<td align=center>3.518500</td>
	<td align=center>1.060700</td>
	<td align=center>0.216600</td>
	<td align=center>0.244000</td>
	<td align=center>0.098500</td>
	<td align=center>0.054800</td>
	<td align=center>0.076100</td>
	<td align=center>15.827700</td>
	<td align=center>849.6033</td>
	<td align=center>0.7214000</td>
	<td align=center>1000.317</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:35</td>
	<td align=center>6.42600</td>
	<td align=center>72.52400</td>
	<td align=center>3.531100</td>
	<td align=center>1.065800</td>
	<td align=center>0.218300</td>
	<td align=center>0.245900</td>
	<td align=center>0.097800</td>
	<td align=center>0.054200</td>
	<td align=center>0.076200</td>
	<td align=center>15.760700</td>
	<td align=center>850.3766</td>
	<td align=center>0.7214000</td>
	<td align=center>1001.238</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:30</td>
	<td align=center>6.42540</td>
	<td align=center>72.52620</td>
	<td align=center>3.538900</td>
	<td align=center>1.069500</td>
	<td align=center>0.218100</td>
	<td align=center>0.245200</td>
	<td align=center>0.098100</td>
	<td align=center>0.053900</td>
	<td align=center>0.076000</td>
	<td align=center>15.748800</td>
	<td align=center>850.5931</td>
	<td align=center>0.7214000</td>
	<td align=center>1001.492</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:25</td>
	<td align=center>6.40910</td>
	<td align=center>72.49500</td>
	<td align=center>3.515100</td>
	<td align=center>1.062200</td>
	<td align=center>0.217100</td>
	<td align=center>0.243900</td>
	<td align=center>0.098100</td>
	<td align=center>0.054700</td>
	<td align=center>0.076100</td>
	<td align=center>15.828500</td>
	<td align=center>849.6339</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.383</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:20</td>
	<td align=center>6.42860</td>
	<td align=center>72.52310</td>
	<td align=center>3.537600</td>
	<td align=center>1.068600</td>
	<td align=center>0.218500</td>
	<td align=center>0.245600</td>
	<td align=center>0.099700</td>
	<td align=center>0.054700</td>
	<td align=center>0.076300</td>
	<td align=center>15.747400</td>
	<td align=center>850.6497</td>
	<td align=center>0.7214000</td>
	<td align=center>1001.507</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:15</td>
	<td align=center>6.41660</td>
	<td align=center>72.49050</td>
	<td align=center>3.523000</td>
	<td align=center>1.064600</td>
	<td align=center>0.218100</td>
	<td align=center>0.245400</td>
	<td align=center>0.099600</td>
	<td align=center>0.055600</td>
	<td align=center>0.076300</td>
	<td align=center>15.810300</td>
	<td align=center>849.9749</td>
	<td align=center>0.7215000</td>
	<td align=center>1000.683</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:10</td>
	<td align=center>6.42540</td>
	<td align=center>72.48660</td>
	<td align=center>3.529300</td>
	<td align=center>1.064400</td>
	<td align=center>0.217800</td>
	<td align=center>0.245100</td>
	<td align=center>0.097300</td>
	<td align=center>0.052700</td>
	<td align=center>0.075800</td>
	<td align=center>15.805600</td>
	<td align=center>849.7869</td>
	<td align=center>0.7214000</td>
	<td align=center>1000.482</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:05</td>
	<td align=center>6.41930</td>
	<td align=center>72.50600</td>
	<td align=center>3.527700</td>
	<td align=center>1.066000</td>
	<td align=center>0.217700</td>
	<td align=center>0.244100</td>
	<td align=center>0.098000</td>
	<td align=center>0.053600</td>
	<td align=center>0.075400</td>
	<td align=center>15.792200</td>
	<td align=center>850.0074</td>
	<td align=center>0.7213000</td>
	<td align=center>1000.811</td> 
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
