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
<title>Current Gas Composition (RB)</title>
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
	timerID = setTimeout(document.location='9_19.asp',300000);	  
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
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT Ratchaburi (RB) - CURRENT</strong></td>
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
	<td align=center>5.89949</td>
	<td align=center>71.69460</td>
	<td align=center>2.941172</td>
	<td align=center>0.855064</td>
	<td align=center>0.176740</td>
	<td align=center>0.206687</td>
	<td align=center>0.088300</td>
	<td align=center>0.051134</td>
	<td align=center>0.116183</td>
	<td align=center>17.968020</td>
	<td align=center>824.6174</td>
	<td align=center>0.7199027</td>
	<td align=center>971.945</td> 
	<td align=center></td> 
  </tr>
	
			
  <tr class="body1" bgcolor="#FAF9E7" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
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
	<td align=center></td> 
  </tr>
  

			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:40</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:35</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:30</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:25</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:20</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:15</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:10</td>
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:05</td>
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
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:55</td>
	<td align=center>6.44790</td>
	<td align=center>72.35980</td>
	<td align=center>3.539100</td>
	<td align=center>1.050000</td>
	<td align=center>0.215900</td>
	<td align=center>0.242700</td>
	<td align=center>0.092500</td>
	<td align=center>0.051000</td>
	<td align=center>0.094700</td>
	<td align=center>15.906300</td>
	<td align=center>849.2658</td>
	<td align=center>0.7223000</td>
	<td align=center>999.458</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:50</td>
	<td align=center>6.45510</td>
	<td align=center>72.36250</td>
	<td align=center>3.547000</td>
	<td align=center>1.054000</td>
	<td align=center>0.217100</td>
	<td align=center>0.244100</td>
	<td align=center>0.093300</td>
	<td align=center>0.051700</td>
	<td align=center>0.095400</td>
	<td align=center>15.879800</td>
	<td align=center>850.7624</td>
	<td align=center>0.7225000</td>
	<td align=center>998.784</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:45</td>
	<td align=center>6.48070</td>
	<td align=center>72.40440</td>
	<td align=center>3.578200</td>
	<td align=center>1.063900</td>
	<td align=center>0.219200</td>
	<td align=center>0.246500</td>
	<td align=center>0.094900</td>
	<td align=center>0.052800</td>
	<td align=center>0.095500</td>
	<td align=center>15.763800</td>
	<td align=center>851.9626</td>
	<td align=center>0.7226000</td>
	<td align=center>999.229</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:40</td>
	<td align=center>6.51030</td>
	<td align=center>72.43300</td>
	<td align=center>3.608800</td>
	<td align=center>1.073200</td>
	<td align=center>0.221300</td>
	<td align=center>0.248900</td>
	<td align=center>0.095100</td>
	<td align=center>0.052300</td>
	<td align=center>0.095400</td>
	<td align=center>15.661700</td>
	<td align=center>851.1788</td>
	<td align=center>0.7224000</td>
	<td align=center>1000.893</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:35</td>
	<td align=center>6.49640</td>
	<td align=center>72.42860</td>
	<td align=center>3.591100</td>
	<td align=center>1.065600</td>
	<td align=center>0.219500</td>
	<td align=center>0.246600</td>
	<td align=center>0.094400</td>
	<td align=center>0.051700</td>
	<td align=center>0.094500</td>
	<td align=center>15.711600</td>
	<td align=center>849.9908</td>
	<td align=center>0.7222000</td>
	<td align=center>1002.195</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:30</td>
	<td align=center>6.47100</td>
	<td align=center>72.40630</td>
	<td align=center>3.562000</td>
	<td align=center>1.055900</td>
	<td align=center>0.217400</td>
	<td align=center>0.244400</td>
	<td align=center>0.093400</td>
	<td align=center>0.051700</td>
	<td align=center>0.094200</td>
	<td align=center>15.803700</td>
	<td align=center>848.7827</td>
	<td align=center>0.7222000</td>
	<td align=center>1001.406</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:25</td>
	<td align=center>6.45130</td>
	<td align=center>72.36560</td>
	<td align=center>3.537500</td>
	<td align=center>1.048200</td>
	<td align=center>0.215800</td>
	<td align=center>0.242900</td>
	<td align=center>0.092500</td>
	<td align=center>0.051200</td>
	<td align=center>0.094100</td>
	<td align=center>15.900800</td>
	<td align=center>848.0274</td>
	<td align=center>0.7221000</td>
	<td align=center>1000.143</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:20</td>
	<td align=center>6.43340</td>
	<td align=center>72.34620</td>
	<td align=center>3.520500</td>
	<td align=center>1.043500</td>
	<td align=center>0.214700</td>
	<td align=center>0.241500</td>
	<td align=center>0.092400</td>
	<td align=center>0.050900</td>
	<td align=center>0.094000</td>
	<td align=center>15.953800</td>
	<td align=center>848.3434</td>
	<td align=center>0.7221000</td>
	<td align=center>997.949</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:15</td>
	<td align=center>6.43660</td>
	<td align=center>72.35470</td>
	<td align=center>3.527200</td>
	<td align=center>1.045200</td>
	<td align=center>0.214700</td>
	<td align=center>0.241600</td>
	<td align=center>0.092800</td>
	<td align=center>0.051300</td>
	<td align=center>0.094000</td>
	<td align=center>15.941900</td>
	<td align=center>848.3957</td>
	<td align=center>0.7222000</td>
	<td align=center>998.124</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:10</td>
	<td align=center>6.44090</td>
	<td align=center>72.34710</td>
	<td align=center>3.530400</td>
	<td align=center>1.046900</td>
	<td align=center>0.215400</td>
	<td align=center>0.242200</td>
	<td align=center>0.092700</td>
	<td align=center>0.051100</td>
	<td align=center>0.094000</td>
	<td align=center>15.939300</td>
	<td align=center>848.3087</td>
	<td align=center>0.7221000</td>
	<td align=center>998.311</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:05</td>
	<td align=center>6.44280</td>
	<td align=center>72.35660</td>
	<td align=center>3.534700</td>
	<td align=center>1.048100</td>
	<td align=center>0.215500</td>
	<td align=center>0.242400</td>
	<td align=center>0.093000</td>
	<td align=center>0.051100</td>
	<td align=center>0.093700</td>
	<td align=center>15.922100</td>
	<td align=center>848.6115</td>
	<td align=center>0.7221000</td>
	<td align=center>998.233</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:55</td>
	<td align=center>6.44610</td>
	<td align=center>72.36010</td>
	<td align=center>3.535700</td>
	<td align=center>1.048200</td>
	<td align=center>0.215800</td>
	<td align=center>0.242800</td>
	<td align=center>0.093100</td>
	<td align=center>0.051500</td>
	<td align=center>0.093800</td>
	<td align=center>15.912800</td>
	<td align=center>848.5195</td>
	<td align=center>0.7221000</td>
	<td align=center>998.697</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:50</td>
	<td align=center>6.44040</td>
	<td align=center>72.36440</td>
	<td align=center>3.531200</td>
	<td align=center>1.046600</td>
	<td align=center>0.215000</td>
	<td align=center>0.242100</td>
	<td align=center>0.092300</td>
	<td align=center>0.050700</td>
	<td align=center>0.093800</td>
	<td align=center>15.923500</td>
	<td align=center>848.5677</td>
	<td align=center>0.7222000</td>
	<td align=center>998.681</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:45</td>
	<td align=center>6.44320</td>
	<td align=center>72.35390</td>
	<td align=center>3.533200</td>
	<td align=center>1.048000</td>
	<td align=center>0.215800</td>
	<td align=center>0.242700</td>
	<td align=center>0.092800</td>
	<td align=center>0.051400</td>
	<td align=center>0.093700</td>
	<td align=center>15.925600</td>
	<td align=center>848.6287</td>
	<td align=center>0.7221000</td>
	<td align=center>998.524</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:40</td>
	<td align=center>6.44720</td>
	<td align=center>72.37480</td>
	<td align=center>3.540100</td>
	<td align=center>1.049800</td>
	<td align=center>0.215900</td>
	<td align=center>0.242800</td>
	<td align=center>0.093200</td>
	<td align=center>0.051200</td>
	<td align=center>0.093500</td>
	<td align=center>15.891700</td>
	<td align=center>848.9047</td>
	<td align=center>0.7222000</td>
	<td align=center>998.631</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:35</td>
	<td align=center>6.45200</td>
	<td align=center>72.36870</td>
	<td align=center>3.541600</td>
	<td align=center>1.050500</td>
	<td align=center>0.215800</td>
	<td align=center>0.242500</td>
	<td align=center>0.092700</td>
	<td align=center>0.051300</td>
	<td align=center>0.093400</td>
	<td align=center>15.891700</td>
	<td align=center>848.7257</td>
	<td align=center>0.7222000</td>
	<td align=center>999.002</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:30</td>
	<td align=center>6.45430</td>
	<td align=center>72.36010</td>
	<td align=center>3.540400</td>
	<td align=center>1.049300</td>
	<td align=center>0.215600</td>
	<td align=center>0.242400</td>
	<td align=center>0.092400</td>
	<td align=center>0.050900</td>
	<td align=center>0.093200</td>
	<td align=center>15.901300</td>
	<td align=center>848.8703</td>
	<td align=center>0.7221000</td>
	<td align=center>998.912</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:25</td>
	<td align=center>6.45790</td>
	<td align=center>72.37310</td>
	<td align=center>3.542400</td>
	<td align=center>1.048800</td>
	<td align=center>0.215200</td>
	<td align=center>0.242000</td>
	<td align=center>0.092600</td>
	<td align=center>0.051300</td>
	<td align=center>0.093100</td>
	<td align=center>15.883700</td>
	<td align=center>848.8790</td>
	<td align=center>0.7222000</td>
	<td align=center>998.683</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:20</td>
	<td align=center>6.46020</td>
	<td align=center>72.36870</td>
	<td align=center>3.542100</td>
	<td align=center>1.049700</td>
	<td align=center>0.216100</td>
	<td align=center>0.242500</td>
	<td align=center>0.092700</td>
	<td align=center>0.051000</td>
	<td align=center>0.093100</td>
	<td align=center>15.884000</td>
	<td align=center>848.6060</td>
	<td align=center>0.7222000</td>
	<td align=center>998.879</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:15</td>
	<td align=center>6.46000</td>
	<td align=center>72.36410</td>
	<td align=center>3.539100</td>
	<td align=center>1.045500</td>
	<td align=center>0.214000</td>
	<td align=center>0.241300</td>
	<td align=center>0.092900</td>
	<td align=center>0.051600</td>
	<td align=center>0.093200</td>
	<td align=center>15.898300</td>
	<td align=center>848.7603</td>
	<td align=center>0.7222000</td>
	<td align=center>998.569</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:10</td>
	<td align=center>6.45840</td>
	<td align=center>72.36240</td>
	<td align=center>3.539800</td>
	<td align=center>1.049700</td>
	<td align=center>0.216100</td>
	<td align=center>0.242300</td>
	<td align=center>0.092600</td>
	<td align=center>0.051000</td>
	<td align=center>0.093000</td>
	<td align=center>15.894700</td>
	<td align=center>848.8124</td>
	<td align=center>0.7223000</td>
	<td align=center>998.555</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:05</td>
	<td align=center>6.46380</td>
	<td align=center>72.35700</td>
	<td align=center>3.544900</td>
	<td align=center>1.050300</td>
	<td align=center>0.215600</td>
	<td align=center>0.242300</td>
	<td align=center>0.092600</td>
	<td align=center>0.050900</td>
	<td align=center>0.093300</td>
	<td align=center>15.889100</td>
	<td align=center>848.9134</td>
	<td align=center>0.7222000</td>
	<td align=center>998.730</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:55</td>
	<td align=center>6.46880</td>
	<td align=center>72.36450</td>
	<td align=center>3.552500</td>
	<td align=center>1.054000</td>
	<td align=center>0.216600</td>
	<td align=center>0.243300</td>
	<td align=center>0.092700</td>
	<td align=center>0.051200</td>
	<td align=center>0.093100</td>
	<td align=center>15.863200</td>
	<td align=center>849.4453</td>
	<td align=center>0.7224000</td>
	<td align=center>998.926</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:50</td>
	<td align=center>6.47520</td>
	<td align=center>72.36920</td>
	<td align=center>3.559200</td>
	<td align=center>1.056300</td>
	<td align=center>0.217500</td>
	<td align=center>0.243900</td>
	<td align=center>0.092700</td>
	<td align=center>0.050800</td>
	<td align=center>0.093100</td>
	<td align=center>15.842000</td>
	<td align=center>849.1357</td>
	<td align=center>0.7222000</td>
	<td align=center>999.139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:45</td>
	<td align=center>6.46660</td>
	<td align=center>72.37170</td>
	<td align=center>3.550600</td>
	<td align=center>1.052900</td>
	<td align=center>0.215600</td>
	<td align=center>0.242400</td>
	<td align=center>0.092700</td>
	<td align=center>0.051300</td>
	<td align=center>0.093000</td>
	<td align=center>15.863100</td>
	<td align=center>849.3657</td>
	<td align=center>0.7223000</td>
	<td align=center>999.413</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:40</td>
	<td align=center>6.46890</td>
	<td align=center>72.37460</td>
	<td align=center>3.551800</td>
	<td align=center>1.052600</td>
	<td align=center>0.216300</td>
	<td align=center>0.242900</td>
	<td align=center>0.092800</td>
	<td align=center>0.051600</td>
	<td align=center>0.093000</td>
	<td align=center>15.855500</td>
	<td align=center>849.1968</td>
	<td align=center>0.7223000</td>
	<td align=center>999.379</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:35</td>
	<td align=center>6.47010</td>
	<td align=center>72.36780</td>
	<td align=center>3.552700</td>
	<td align=center>1.053800</td>
	<td align=center>0.216800</td>
	<td align=center>0.243200</td>
	<td align=center>0.092700</td>
	<td align=center>0.050800</td>
	<td align=center>0.092900</td>
	<td align=center>15.859100</td>
	<td align=center>848.8601</td>
	<td align=center>0.7222000</td>
	<td align=center>999.229</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:30</td>
	<td align=center>6.46070</td>
	<td align=center>72.36060</td>
	<td align=center>3.544200</td>
	<td align=center>1.051000</td>
	<td align=center>0.215900</td>
	<td align=center>0.242800</td>
	<td align=center>0.092800</td>
	<td align=center>0.051000</td>
	<td align=center>0.092800</td>
	<td align=center>15.888700</td>
	<td align=center>848.9162</td>
	<td align=center>0.7222000</td>
	<td align=center>999.162</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:25</td>
	<td align=center>6.46060</td>
	<td align=center>72.36060</td>
	<td align=center>3.545000</td>
	<td align=center>1.052200</td>
	<td align=center>0.216400</td>
	<td align=center>0.243000</td>
	<td align=center>0.092500</td>
	<td align=center>0.051000</td>
	<td align=center>0.092800</td>
	<td align=center>15.886000</td>
	<td align=center>849.1078</td>
	<td align=center>0.7223000</td>
	<td align=center>998.803</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:20</td>
	<td align=center>6.46770</td>
	<td align=center>72.36340</td>
	<td align=center>3.550000</td>
	<td align=center>1.051600</td>
	<td align=center>0.215900</td>
	<td align=center>0.242500</td>
	<td align=center>0.092800</td>
	<td align=center>0.051100</td>
	<td align=center>0.092900</td>
	<td align=center>15.872200</td>
	<td align=center>848.9846</td>
	<td align=center>0.7222000</td>
	<td align=center>999.084</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:15</td>
	<td align=center>6.46320</td>
	<td align=center>72.37750</td>
	<td align=center>3.545900</td>
	<td align=center>1.050500</td>
	<td align=center>0.216000</td>
	<td align=center>0.242400</td>
	<td align=center>0.092000</td>
	<td align=center>0.050500</td>
	<td align=center>0.092700</td>
	<td align=center>15.869400</td>
	<td align=center>848.6192</td>
	<td align=center>0.7221000</td>
	<td align=center>998.954</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:10</td>
	<td align=center>6.45840</td>
	<td align=center>72.36600</td>
	<td align=center>3.538100</td>
	<td align=center>1.047900</td>
	<td align=center>0.215100</td>
	<td align=center>0.241700</td>
	<td align=center>0.092200</td>
	<td align=center>0.050700</td>
	<td align=center>0.092500</td>
	<td align=center>15.897400</td>
	<td align=center>849.0796</td>
	<td align=center>0.7222000</td>
	<td align=center>999.009</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:05</td>
	<td align=center>6.46480</td>
	<td align=center>72.37860</td>
	<td align=center>3.547200</td>
	<td align=center>1.050900</td>
	<td align=center>0.216300</td>
	<td align=center>0.242700</td>
	<td align=center>0.092600</td>
	<td align=center>0.050800</td>
	<td align=center>0.092500</td>
	<td align=center>15.863500</td>
	<td align=center>848.9755</td>
	<td align=center>0.7222000</td>
	<td align=center>998.589</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:55</td>
	<td align=center>6.46110</td>
	<td align=center>72.37040</td>
	<td align=center>3.544900</td>
	<td align=center>1.050900</td>
	<td align=center>0.215900</td>
	<td align=center>0.242500</td>
	<td align=center>0.092600</td>
	<td align=center>0.051400</td>
	<td align=center>0.092500</td>
	<td align=center>15.877300</td>
	<td align=center>849.0187</td>
	<td align=center>0.7222000</td>
	<td align=center>998.969</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:50</td>
	<td align=center>6.46650</td>
	<td align=center>72.37040</td>
	<td align=center>3.547700</td>
	<td align=center>1.052100</td>
	<td align=center>0.216100</td>
	<td align=center>0.242900</td>
	<td align=center>0.092300</td>
	<td align=center>0.050500</td>
	<td align=center>0.092700</td>
	<td align=center>15.868800</td>
	<td align=center>848.9651</td>
	<td align=center>0.7222000</td>
	<td align=center>998.954</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:45</td>
	<td align=center>6.46650</td>
	<td align=center>72.36620</td>
	<td align=center>3.549300</td>
	<td align=center>1.051700</td>
	<td align=center>0.215300</td>
	<td align=center>0.242300</td>
	<td align=center>0.092500</td>
	<td align=center>0.051000</td>
	<td align=center>0.092400</td>
	<td align=center>15.872700</td>
	<td align=center>848.9051</td>
	<td align=center>0.7222000</td>
	<td align=center>999.002</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:40</td>
	<td align=center>6.46590</td>
	<td align=center>72.36620</td>
	<td align=center>3.547300</td>
	<td align=center>1.051500</td>
	<td align=center>0.215900</td>
	<td align=center>0.242400</td>
	<td align=center>0.092000</td>
	<td align=center>0.050600</td>
	<td align=center>0.092300</td>
	<td align=center>15.875800</td>
	<td align=center>849.0733</td>
	<td align=center>0.7222000</td>
	<td align=center>998.872</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:35</td>
	<td align=center>6.46670</td>
	<td align=center>72.37640</td>
	<td align=center>3.549000</td>
	<td align=center>1.051900</td>
	<td align=center>0.216100</td>
	<td align=center>0.242700</td>
	<td align=center>0.092100</td>
	<td align=center>0.050500</td>
	<td align=center>0.092500</td>
	<td align=center>15.862100</td>
	<td align=center>849.2595</td>
	<td align=center>0.7222000</td>
	<td align=center>998.917</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:30</td>
	<td align=center>6.46680</td>
	<td align=center>72.38190</td>
	<td align=center>3.551600</td>
	<td align=center>1.052900</td>
	<td align=center>0.216200</td>
	<td align=center>0.242800</td>
	<td align=center>0.092600</td>
	<td align=center>0.051200</td>
	<td align=center>0.092600</td>
	<td align=center>15.851400</td>
	<td align=center>849.3229</td>
	<td align=center>0.7223000</td>
	<td align=center>999.089</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:25</td>
	<td align=center>6.46910</td>
	<td align=center>72.37420</td>
	<td align=center>3.555100</td>
	<td align=center>1.054600</td>
	<td align=center>0.216700</td>
	<td align=center>0.243300</td>
	<td align=center>0.092700</td>
	<td align=center>0.051100</td>
	<td align=center>0.092700</td>
	<td align=center>15.850500</td>
	<td align=center>849.4343</td>
	<td align=center>0.7223000</td>
	<td align=center>999.302</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:20</td>
	<td align=center>6.47330</td>
	<td align=center>72.38110</td>
	<td align=center>3.557100</td>
	<td align=center>1.055500</td>
	<td align=center>0.216800</td>
	<td align=center>0.243200</td>
	<td align=center>0.092400</td>
	<td align=center>0.050800</td>
	<td align=center>0.092800</td>
	<td align=center>15.837000</td>
	<td align=center>849.3336</td>
	<td align=center>0.7222000</td>
	<td align=center>999.330</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:15</td>
	<td align=center>6.47340</td>
	<td align=center>72.38680</td>
	<td align=center>3.554700</td>
	<td align=center>1.052600</td>
	<td align=center>0.215900</td>
	<td align=center>0.242600</td>
	<td align=center>0.092500</td>
	<td align=center>0.051000</td>
	<td align=center>0.092600</td>
	<td align=center>15.837800</td>
	<td align=center>849.1898</td>
	<td align=center>0.7222000</td>
	<td align=center>999.356</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:10</td>
	<td align=center>6.47310</td>
	<td align=center>72.37610</td>
	<td align=center>3.552800</td>
	<td align=center>1.051900</td>
	<td align=center>0.216100</td>
	<td align=center>0.242600</td>
	<td align=center>0.092500</td>
	<td align=center>0.051000</td>
	<td align=center>0.092800</td>
	<td align=center>15.850900</td>
	<td align=center>849.2690</td>
	<td align=center>0.7222000</td>
	<td align=center>999.384</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:05</td>
	<td align=center>6.47250</td>
	<td align=center>72.37930</td>
	<td align=center>3.552800</td>
	<td align=center>1.052700</td>
	<td align=center>0.216400</td>
	<td align=center>0.243000</td>
	<td align=center>0.092800</td>
	<td align=center>0.051000</td>
	<td align=center>0.092800</td>
	<td align=center>15.846900</td>
	<td align=center>849.2573</td>
	<td align=center>0.7223000</td>
	<td align=center>999.184</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:55</td>
	<td align=center>6.47360</td>
	<td align=center>72.37680</td>
	<td align=center>3.559800</td>
	<td align=center>1.056900</td>
	<td align=center>0.217300</td>
	<td align=center>0.244000</td>
	<td align=center>0.092700</td>
	<td align=center>0.050500</td>
	<td align=center>0.092800</td>
	<td align=center>15.835600</td>
	<td align=center>849.2570</td>
	<td align=center>0.7223000</td>
	<td align=center>999.645</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:50</td>
	<td align=center>6.47000</td>
	<td align=center>72.36830</td>
	<td align=center>3.554000</td>
	<td align=center>1.054300</td>
	<td align=center>0.216900</td>
	<td align=center>0.243500</td>
	<td align=center>0.092800</td>
	<td align=center>0.051100</td>
	<td align=center>0.092800</td>
	<td align=center>15.856300</td>
	<td align=center>849.2570</td>
	<td align=center>0.7223000</td>
	<td align=center>999.533</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:45</td>
	<td align=center>6.47240</td>
	<td align=center>72.36470</td>
	<td align=center>3.553700</td>
	<td align=center>1.054200</td>
	<td align=center>0.217500</td>
	<td align=center>0.243900</td>
	<td align=center>0.093000</td>
	<td align=center>0.051000</td>
	<td align=center>0.092900</td>
	<td align=center>15.856700</td>
	<td align=center>849.4574</td>
	<td align=center>0.7222000</td>
	<td align=center>999.228</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:40</td>
	<td align=center>6.47350</td>
	<td align=center>72.37830</td>
	<td align=center>3.557700</td>
	<td align=center>1.053900</td>
	<td align=center>0.216200</td>
	<td align=center>0.243100</td>
	<td align=center>0.093100</td>
	<td align=center>0.051400</td>
	<td align=center>0.092800</td>
	<td align=center>15.840000</td>
	<td align=center>849.2708</td>
	<td align=center>0.7223000</td>
	<td align=center>999.505</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:35</td>
	<td align=center>6.47000</td>
	<td align=center>72.36810</td>
	<td align=center>3.555100</td>
	<td align=center>1.055200</td>
	<td align=center>0.217000</td>
	<td align=center>0.243600</td>
	<td align=center>0.092300</td>
	<td align=center>0.050600</td>
	<td align=center>0.093000</td>
	<td align=center>15.855200</td>
	<td align=center>849.3280</td>
	<td align=center>0.7223000</td>
	<td align=center>999.420</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:30</td>
	<td align=center>6.47320</td>
	<td align=center>72.36490</td>
	<td align=center>3.557500</td>
	<td align=center>1.055900</td>
	<td align=center>0.217000</td>
	<td align=center>0.243600</td>
	<td align=center>0.092700</td>
	<td align=center>0.050900</td>
	<td align=center>0.093000</td>
	<td align=center>15.851500</td>
	<td align=center>849.1420</td>
	<td align=center>0.7223000</td>
	<td align=center>999.247</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:25</td>
	<td align=center>6.47030</td>
	<td align=center>72.37180</td>
	<td align=center>3.551400</td>
	<td align=center>1.052200</td>
	<td align=center>0.215900</td>
	<td align=center>0.242400</td>
	<td align=center>0.092500</td>
	<td align=center>0.051200</td>
	<td align=center>0.093300</td>
	<td align=center>15.859000</td>
	<td align=center>849.1628</td>
	<td align=center>0.7222000</td>
	<td align=center>999.281</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:20</td>
	<td align=center>6.46870</td>
	<td align=center>72.37560</td>
	<td align=center>3.550200</td>
	<td align=center>1.051400</td>
	<td align=center>0.216000</td>
	<td align=center>0.242400</td>
	<td align=center>0.092700</td>
	<td align=center>0.050900</td>
	<td align=center>0.093300</td>
	<td align=center>15.858700</td>
	<td align=center>849.2845</td>
	<td align=center>0.7222000</td>
	<td align=center>999.177</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:15</td>
	<td align=center>6.46870</td>
	<td align=center>72.37970</td>
	<td align=center>3.550900</td>
	<td align=center>1.052600</td>
	<td align=center>0.216400</td>
	<td align=center>0.243400</td>
	<td align=center>0.092700</td>
	<td align=center>0.051100</td>
	<td align=center>0.093400</td>
	<td align=center>15.851100</td>
	<td align=center>849.2025</td>
	<td align=center>0.7223000</td>
	<td align=center>999.141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:10</td>
	<td align=center>6.47170</td>
	<td align=center>72.36470</td>
	<td align=center>3.551100</td>
	<td align=center>1.053400</td>
	<td align=center>0.216800</td>
	<td align=center>0.243700</td>
	<td align=center>0.093200</td>
	<td align=center>0.051400</td>
	<td align=center>0.093200</td>
	<td align=center>15.860700</td>
	<td align=center>849.3675</td>
	<td align=center>0.7223000</td>
	<td align=center>999.301</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:05</td>
	<td align=center>6.46740</td>
	<td align=center>72.37370</td>
	<td align=center>3.552600</td>
	<td align=center>1.054600</td>
	<td align=center>0.217300</td>
	<td align=center>0.244100</td>
	<td align=center>0.093200</td>
	<td align=center>0.051300</td>
	<td align=center>0.093100</td>
	<td align=center>15.852700</td>
	<td align=center>849.2355</td>
	<td align=center>0.7223000</td>
	<td align=center>999.137</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:55</td>
	<td align=center>6.46740</td>
	<td align=center>72.36110</td>
	<td align=center>3.549200</td>
	<td align=center>1.052900</td>
	<td align=center>0.216200</td>
	<td align=center>0.243000</td>
	<td align=center>0.092100</td>
	<td align=center>0.050300</td>
	<td align=center>0.092200</td>
	<td align=center>15.875500</td>
	<td align=center>848.8426</td>
	<td align=center>0.7222000</td>
	<td align=center>999.449</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:50</td>
	<td align=center>6.46090</td>
	<td align=center>72.36840</td>
	<td align=center>3.544000</td>
	<td align=center>1.051100</td>
	<td align=center>0.216100</td>
	<td align=center>0.242500</td>
	<td align=center>0.091900</td>
	<td align=center>0.050500</td>
	<td align=center>0.092100</td>
	<td align=center>15.882600</td>
	<td align=center>848.8426</td>
	<td align=center>0.7222000</td>
	<td align=center>998.883</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:45</td>
	<td align=center>6.46260</td>
	<td align=center>72.37070</td>
	<td align=center>3.544100</td>
	<td align=center>1.050800</td>
	<td align=center>0.215800</td>
	<td align=center>0.242300</td>
	<td align=center>0.092200</td>
	<td align=center>0.050300</td>
	<td align=center>0.091900</td>
	<td align=center>15.879300</td>
	<td align=center>848.8143</td>
	<td align=center>0.7222000</td>
	<td align=center>998.838</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:40</td>
	<td align=center>6.45960</td>
	<td align=center>72.34820</td>
	<td align=center>3.544100</td>
	<td align=center>1.052400</td>
	<td align=center>0.216400</td>
	<td align=center>0.242800</td>
	<td align=center>0.091700</td>
	<td align=center>0.050500</td>
	<td align=center>0.091900</td>
	<td align=center>15.902300</td>
	<td align=center>848.6247</td>
	<td align=center>0.7222000</td>
	<td align=center>998.748</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:35</td>
	<td align=center>6.46280</td>
	<td align=center>72.35950</td>
	<td align=center>3.542900</td>
	<td align=center>1.049700</td>
	<td align=center>0.215500</td>
	<td align=center>0.241900</td>
	<td align=center>0.091700</td>
	<td align=center>0.050600</td>
	<td align=center>0.091700</td>
	<td align=center>15.893600</td>
	<td align=center>848.3381</td>
	<td align=center>0.7221000</td>
	<td align=center>998.584</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:30</td>
	<td align=center>6.46280</td>
	<td align=center>72.35950</td>
	<td align=center>3.542900</td>
	<td align=center>1.049700</td>
	<td align=center>0.215500</td>
	<td align=center>0.241900</td>
	<td align=center>0.091700</td>
	<td align=center>0.050600</td>
	<td align=center>0.091700</td>
	<td align=center>15.893600</td>
	<td align=center>848.3381</td>
	<td align=center>0.7221000</td>
	<td align=center>998.584</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:25</td>
	<td align=center>6.45510</td>
	<td align=center>72.36150</td>
	<td align=center>3.534600</td>
	<td align=center>1.046400</td>
	<td align=center>0.214600</td>
	<td align=center>0.240800</td>
	<td align=center>0.091400</td>
	<td align=center>0.050400</td>
	<td align=center>0.091600</td>
	<td align=center>15.913600</td>
	<td align=center>848.5909</td>
	<td align=center>0.7220000</td>
	<td align=center>998.584</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:20</td>
	<td align=center>6.46810</td>
	<td align=center>72.37780</td>
	<td align=center>3.549800</td>
	<td align=center>1.052000</td>
	<td align=center>0.216100</td>
	<td align=center>0.242200</td>
	<td align=center>0.091300</td>
	<td align=center>0.050100</td>
	<td align=center>0.091700</td>
	<td align=center>15.860900</td>
	<td align=center>848.9156</td>
	<td align=center>0.7222000</td>
	<td align=center>998.620</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:15</td>
	<td align=center>6.46760</td>
	<td align=center>72.36600</td>
	<td align=center>3.548800</td>
	<td align=center>1.052000</td>
	<td align=center>0.215800</td>
	<td align=center>0.242200</td>
	<td align=center>0.091900</td>
	<td align=center>0.050700</td>
	<td align=center>0.092000</td>
	<td align=center>15.873000</td>
	<td align=center>849.1785</td>
	<td align=center>0.7222000</td>
	<td align=center>999.026</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:10</td>
	<td align=center>6.47320</td>
	<td align=center>72.37340</td>
	<td align=center>3.555000</td>
	<td align=center>1.054800</td>
	<td align=center>0.216800</td>
	<td align=center>0.242900</td>
	<td align=center>0.091600</td>
	<td align=center>0.050200</td>
	<td align=center>0.091600</td>
	<td align=center>15.850400</td>
	<td align=center>848.8205</td>
	<td align=center>0.7222000</td>
	<td align=center>998.883</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:05</td>
	<td align=center>6.46660</td>
	<td align=center>72.36280</td>
	<td align=center>3.549000</td>
	<td align=center>1.052000</td>
	<td align=center>0.216000</td>
	<td align=center>0.242100</td>
	<td align=center>0.091300</td>
	<td align=center>0.050100</td>
	<td align=center>0.091600</td>
	<td align=center>15.878400</td>
	<td align=center>848.8205</td>
	<td align=center>0.7221000</td>
	<td align=center>999.179</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:55</td>
	<td align=center>6.46560</td>
	<td align=center>72.37320</td>
	<td align=center>3.547500</td>
	<td align=center>1.051400</td>
	<td align=center>0.215700</td>
	<td align=center>0.241700</td>
	<td align=center>0.091700</td>
	<td align=center>0.050600</td>
	<td align=center>0.091500</td>
	<td align=center>15.871100</td>
	<td align=center>848.9987</td>
	<td align=center>0.7221000</td>
	<td align=center>998.839</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:50</td>
	<td align=center>6.46600</td>
	<td align=center>72.38000</td>
	<td align=center>3.548900</td>
	<td align=center>1.051800</td>
	<td align=center>0.215800</td>
	<td align=center>0.242000</td>
	<td align=center>0.091700</td>
	<td align=center>0.050200</td>
	<td align=center>0.091600</td>
	<td align=center>15.862100</td>
	<td align=center>848.7488</td>
	<td align=center>0.7221000</td>
	<td align=center>998.904</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:45</td>
	<td align=center>6.46230</td>
	<td align=center>72.37480</td>
	<td align=center>3.543200</td>
	<td align=center>1.048700</td>
	<td align=center>0.214600</td>
	<td align=center>0.241000</td>
	<td align=center>0.091900</td>
	<td align=center>0.051400</td>
	<td align=center>0.091600</td>
	<td align=center>15.880600</td>
	<td align=center>849.1549</td>
	<td align=center>0.7222000</td>
	<td align=center>999.042</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:40</td>
	<td align=center>6.47110</td>
	<td align=center>72.37830</td>
	<td align=center>3.552900</td>
	<td align=center>1.053500</td>
	<td align=center>0.216500</td>
	<td align=center>0.242600</td>
	<td align=center>0.091800</td>
	<td align=center>0.050500</td>
	<td align=center>0.091600</td>
	<td align=center>15.851300</td>
	<td align=center>849.1380</td>
	<td align=center>0.7221000</td>
	<td align=center>998.764</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:35</td>
	<td align=center>6.46920</td>
	<td align=center>72.38200</td>
	<td align=center>3.554000</td>
	<td align=center>1.053400</td>
	<td align=center>0.215900</td>
	<td align=center>0.242200</td>
	<td align=center>0.091400</td>
	<td align=center>0.049900</td>
	<td align=center>0.091600</td>
	<td align=center>15.850400</td>
	<td align=center>849.0688</td>
	<td align=center>0.7222000</td>
	<td align=center>999.292</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:30</td>
	<td align=center>6.46940</td>
	<td align=center>72.37460</td>
	<td align=center>3.552300</td>
	<td align=center>1.052500</td>
	<td align=center>0.216100</td>
	<td align=center>0.242300</td>
	<td align=center>0.091900</td>
	<td align=center>0.050500</td>
	<td align=center>0.091600</td>
	<td align=center>15.858800</td>
	<td align=center>849.0688</td>
	<td align=center>0.7222000</td>
	<td align=center>999.194</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:25</td>
	<td align=center>6.46920</td>
	<td align=center>72.38000</td>
	<td align=center>3.550500</td>
	<td align=center>1.051600</td>
	<td align=center>0.215900</td>
	<td align=center>0.242200</td>
	<td align=center>0.092100</td>
	<td align=center>0.050900</td>
	<td align=center>0.091400</td>
	<td align=center>15.856300</td>
	<td align=center>848.8510</td>
	<td align=center>0.7222000</td>
	<td align=center>999.074</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:20</td>
	<td align=center>6.47070</td>
	<td align=center>72.38110</td>
	<td align=center>3.554700</td>
	<td align=center>1.054200</td>
	<td align=center>0.216500</td>
	<td align=center>0.242900</td>
	<td align=center>0.092000</td>
	<td align=center>0.050600</td>
	<td align=center>0.091600</td>
	<td align=center>15.845600</td>
	<td align=center>849.0123</td>
	<td align=center>0.7223000</td>
	<td align=center>998.845</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:15</td>
	<td align=center>6.46980</td>
	<td align=center>72.35900</td>
	<td align=center>3.555200</td>
	<td align=center>1.055100</td>
	<td align=center>0.216400</td>
	<td align=center>0.242900</td>
	<td align=center>0.091400</td>
	<td align=center>0.049900</td>
	<td align=center>0.091600</td>
	<td align=center>15.868500</td>
	<td align=center>849.4603</td>
	<td align=center>0.7224000</td>
	<td align=center>999.300</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:10</td>
	<td align=center>6.47730</td>
	<td align=center>72.36330</td>
	<td align=center>3.563500</td>
	<td align=center>1.059100</td>
	<td align=center>0.217700</td>
	<td align=center>0.243900</td>
	<td align=center>0.092500</td>
	<td align=center>0.050800</td>
	<td align=center>0.091700</td>
	<td align=center>15.840200</td>
	<td align=center>849.3516</td>
	<td align=center>0.7223000</td>
	<td align=center>998.962</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:05</td>
	<td align=center>6.47420</td>
	<td align=center>72.36910</td>
	<td align=center>3.561600</td>
	<td align=center>1.057500</td>
	<td align=center>0.216500</td>
	<td align=center>0.242900</td>
	<td align=center>0.092100</td>
	<td align=center>0.050700</td>
	<td align=center>0.091600</td>
	<td align=center>15.843800</td>
	<td align=center>849.1017</td>
	<td align=center>0.7224000</td>
	<td align=center>999.414</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:55</td>
	<td align=center>6.47270</td>
	<td align=center>72.38850</td>
	<td align=center>3.556700</td>
	<td align=center>1.053500</td>
	<td align=center>0.215800</td>
	<td align=center>0.242300</td>
	<td align=center>0.092000</td>
	<td align=center>0.050800</td>
	<td align=center>0.091700</td>
	<td align=center>15.836000</td>
	<td align=center>849.1448</td>
	<td align=center>0.7222000</td>
	<td align=center>999.483</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:50</td>
	<td align=center>6.47470</td>
	<td align=center>72.37770</td>
	<td align=center>3.556300</td>
	<td align=center>1.054200</td>
	<td align=center>0.216400</td>
	<td align=center>0.242700</td>
	<td align=center>0.091000</td>
	<td align=center>0.049200</td>
	<td align=center>0.091700</td>
	<td align=center>15.846200</td>
	<td align=center>849.4012</td>
	<td align=center>0.7222000</td>
	<td align=center>999.394</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:45</td>
	<td align=center>6.47330</td>
	<td align=center>72.38370</td>
	<td align=center>3.556900</td>
	<td align=center>1.054800</td>
	<td align=center>0.216300</td>
	<td align=center>0.242500</td>
	<td align=center>0.092900</td>
	<td align=center>0.051500</td>
	<td align=center>0.091800</td>
	<td align=center>15.836200</td>
	<td align=center>849.3810</td>
	<td align=center>0.7222000</td>
	<td align=center>999.169</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:40</td>
	<td align=center>6.47530</td>
	<td align=center>72.38220</td>
	<td align=center>3.561300</td>
	<td align=center>1.056800</td>
	<td align=center>0.216200</td>
	<td align=center>0.242300</td>
	<td align=center>0.091400</td>
	<td align=center>0.050100</td>
	<td align=center>0.091700</td>
	<td align=center>15.832800</td>
	<td align=center>848.9922</td>
	<td align=center>0.7221000</td>
	<td align=center>999.445</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:35</td>
	<td align=center>6.46850</td>
	<td align=center>72.38320</td>
	<td align=center>3.549000</td>
	<td align=center>1.049900</td>
	<td align=center>0.215100</td>
	<td align=center>0.241200</td>
	<td align=center>0.091200</td>
	<td align=center>0.049500</td>
	<td align=center>0.091600</td>
	<td align=center>15.860800</td>
	<td align=center>848.7592</td>
	<td align=center>0.7221000</td>
	<td align=center>999.082</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:30</td>
	<td align=center>6.46850</td>
	<td align=center>72.38320</td>
	<td align=center>3.549000</td>
	<td align=center>1.049900</td>
	<td align=center>0.215100</td>
	<td align=center>0.241200</td>
	<td align=center>0.091200</td>
	<td align=center>0.049500</td>
	<td align=center>0.091600</td>
	<td align=center>15.860800</td>
	<td align=center>848.7592</td>
	<td align=center>0.7221000</td>
	<td align=center>999.082</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:25</td>
	<td align=center>6.46940</td>
	<td align=center>72.37920</td>
	<td align=center>3.544800</td>
	<td align=center>1.048800</td>
	<td align=center>0.215000</td>
	<td align=center>0.240900</td>
	<td align=center>0.091300</td>
	<td align=center>0.050200</td>
	<td align=center>0.091600</td>
	<td align=center>15.869000</td>
	<td align=center>848.7803</td>
	<td align=center>0.7220000</td>
	<td align=center>998.941</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:20</td>
	<td align=center>6.46380</td>
	<td align=center>72.37850</td>
	<td align=center>3.545300</td>
	<td align=center>1.047200</td>
	<td align=center>0.213600</td>
	<td align=center>0.240700</td>
	<td align=center>0.094300</td>
	<td align=center>0.053200</td>
	<td align=center>0.091600</td>
	<td align=center>15.872000</td>
	<td align=center>848.8278</td>
	<td align=center>0.7221000</td>
	<td align=center>998.845</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:15</td>
	<td align=center>6.46380</td>
	<td align=center>72.38470</td>
	<td align=center>3.545300</td>
	<td align=center>1.049200</td>
	<td align=center>0.214900</td>
	<td align=center>0.240900</td>
	<td align=center>0.091700</td>
	<td align=center>0.049700</td>
	<td align=center>0.091500</td>
	<td align=center>15.868300</td>
	<td align=center>848.6426</td>
	<td align=center>0.7221000</td>
	<td align=center>998.928</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:10</td>
	<td align=center>6.46170</td>
	<td align=center>72.37340</td>
	<td align=center>3.543600</td>
	<td align=center>1.050200</td>
	<td align=center>0.215300</td>
	<td align=center>0.241200</td>
	<td align=center>0.090400</td>
	<td align=center>0.048600</td>
	<td align=center>0.091800</td>
	<td align=center>15.884000</td>
	<td align=center>848.9037</td>
	<td align=center>0.7222000</td>
	<td align=center>998.896</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:05</td>
	<td align=center>6.46340</td>
	<td align=center>72.36820</td>
	<td align=center>3.548800</td>
	<td align=center>1.051500</td>
	<td align=center>0.215300</td>
	<td align=center>0.241200</td>
	<td align=center>0.092200</td>
	<td align=center>0.051400</td>
	<td align=center>0.091700</td>
	<td align=center>15.876300</td>
	<td align=center>848.7048</td>
	<td align=center>0.7221000</td>
	<td align=center>998.668</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:55</td>
	<td align=center>6.46270</td>
	<td align=center>72.36870</td>
	<td align=center>3.543100</td>
	<td align=center>1.048200</td>
	<td align=center>0.214500</td>
	<td align=center>0.240600</td>
	<td align=center>0.091500</td>
	<td align=center>0.050200</td>
	<td align=center>0.091500</td>
	<td align=center>15.889100</td>
	<td align=center>848.7051</td>
	<td align=center>0.7220000</td>
	<td align=center>998.719</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:50</td>
	<td align=center>6.45820</td>
	<td align=center>72.37840</td>
	<td align=center>3.543000</td>
	<td align=center>1.048800</td>
	<td align=center>0.214700</td>
	<td align=center>0.240700</td>
	<td align=center>0.091500</td>
	<td align=center>0.049700</td>
	<td align=center>0.091700</td>
	<td align=center>15.883100</td>
	<td align=center>848.7834</td>
	<td align=center>0.7222000</td>
	<td align=center>998.578</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:45</td>
	<td align=center>6.46320</td>
	<td align=center>72.37060</td>
	<td align=center>3.543400</td>
	<td align=center>1.049100</td>
	<td align=center>0.214800</td>
	<td align=center>0.241000</td>
	<td align=center>0.092600</td>
	<td align=center>0.052000</td>
	<td align=center>0.091600</td>
	<td align=center>15.881600</td>
	<td align=center>848.7925</td>
	<td align=center>0.7223000</td>
	<td align=center>998.759</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:40</td>
	<td align=center>6.45930</td>
	<td align=center>72.37640</td>
	<td align=center>3.540600</td>
	<td align=center>1.047200</td>
	<td align=center>0.213900</td>
	<td align=center>0.239500</td>
	<td align=center>0.090500</td>
	<td align=center>0.050600</td>
	<td align=center>0.091600</td>
	<td align=center>15.890600</td>
	<td align=center>848.6096</td>
	<td align=center>0.7220000</td>
	<td align=center>998.713</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:35</td>
	<td align=center>6.46060</td>
	<td align=center>72.38070</td>
	<td align=center>3.541900</td>
	<td align=center>1.046400</td>
	<td align=center>0.214100</td>
	<td align=center>0.240200</td>
	<td align=center>0.091800</td>
	<td align=center>0.049900</td>
	<td align=center>0.091300</td>
	<td align=center>15.883100</td>
	<td align=center>848.5934</td>
	<td align=center>0.7220000</td>
	<td align=center>998.555</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:30</td>
	<td align=center>6.46180</td>
	<td align=center>72.37790</td>
	<td align=center>3.541300</td>
	<td align=center>1.046200</td>
	<td align=center>0.213900</td>
	<td align=center>0.240300</td>
	<td align=center>0.091700</td>
	<td align=center>0.050700</td>
	<td align=center>0.091400</td>
	<td align=center>15.884800</td>
	<td align=center>848.6537</td>
	<td align=center>0.7220000</td>
	<td align=center>998.663</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:25</td>
	<td align=center>6.46520</td>
	<td align=center>72.38360</td>
	<td align=center>3.543700</td>
	<td align=center>1.047200</td>
	<td align=center>0.214500</td>
	<td align=center>0.240000</td>
	<td align=center>0.091600</td>
	<td align=center>0.049400</td>
	<td align=center>0.091000</td>
	<td align=center>15.873800</td>
	<td align=center>848.7189</td>
	<td align=center>0.7221000</td>
	<td align=center>998.625</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:20</td>
	<td align=center>6.46700</td>
	<td align=center>72.37300</td>
	<td align=center>3.546400</td>
	<td align=center>1.047500</td>
	<td align=center>0.213200</td>
	<td align=center>0.239900</td>
	<td align=center>0.092900</td>
	<td align=center>0.052200</td>
	<td align=center>0.090900</td>
	<td align=center>15.877100</td>
	<td align=center>848.7316</td>
	<td align=center>0.7221000</td>
	<td align=center>998.716</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:15</td>
	<td align=center>6.46490</td>
	<td align=center>72.37290</td>
	<td align=center>3.546200</td>
	<td align=center>1.050300</td>
	<td align=center>0.215300</td>
	<td align=center>0.241200</td>
	<td align=center>0.091500</td>
	<td align=center>0.050400</td>
	<td align=center>0.090200</td>
	<td align=center>15.877100</td>
	<td align=center>848.8455</td>
	<td align=center>0.7221000</td>
	<td align=center>998.775</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:10</td>
	<td align=center>6.46470</td>
	<td align=center>72.38090</td>
	<td align=center>3.549000</td>
	<td align=center>1.051800</td>
	<td align=center>0.215600</td>
	<td align=center>0.241500</td>
	<td align=center>0.090800</td>
	<td align=center>0.049400</td>
	<td align=center>0.090100</td>
	<td align=center>15.866200</td>
	<td align=center>848.8181</td>
	<td align=center>0.7220000</td>
	<td align=center>998.748</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:05</td>
	<td align=center>6.45700</td>
	<td align=center>72.37950</td>
	<td align=center>3.543900</td>
	<td align=center>1.051000</td>
	<td align=center>0.216000</td>
	<td align=center>0.241700</td>
	<td align=center>0.091900</td>
	<td align=center>0.050900</td>
	<td align=center>0.089600</td>
	<td align=center>15.878500</td>
	<td align=center>848.5463</td>
	<td align=center>0.7221000</td>
	<td align=center>998.914</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:55</td>
	<td align=center>6.46740</td>
	<td align=center>72.38530</td>
	<td align=center>3.549400</td>
	<td align=center>1.051600</td>
	<td align=center>0.215100</td>
	<td align=center>0.240100</td>
	<td align=center>0.090000</td>
	<td align=center>0.049500</td>
	<td align=center>0.087900</td>
	<td align=center>15.863600</td>
	<td align=center>848.7668</td>
	<td align=center>0.7221000</td>
	<td align=center>998.548</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:50</td>
	<td align=center>6.46470</td>
	<td align=center>72.37580</td>
	<td align=center>3.550400</td>
	<td align=center>1.051000</td>
	<td align=center>0.215100</td>
	<td align=center>0.240200</td>
	<td align=center>0.092600</td>
	<td align=center>0.051200</td>
	<td align=center>0.087600</td>
	<td align=center>15.871400</td>
	<td align=center>848.7529</td>
	<td align=center>0.7215000</td>
	<td align=center>998.796</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:45</td>
	<td align=center>6.36000</td>
	<td align=center>72.47870</td>
	<td align=center>3.555200</td>
	<td align=center>1.052900</td>
	<td align=center>0.213800</td>
	<td align=center>0.238200</td>
	<td align=center>0.086600</td>
	<td align=center>0.046800</td>
	<td align=center>0.089200</td>
	<td align=center>15.878600</td>
	<td align=center>849.4910</td>
	<td align=center>0.7209000</td>
	<td align=center>999.204</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:40</td>
	<td align=center>6.36000</td>
	<td align=center>72.47870</td>
	<td align=center>3.555200</td>
	<td align=center>1.052900</td>
	<td align=center>0.213800</td>
	<td align=center>0.238200</td>
	<td align=center>0.086600</td>
	<td align=center>0.046800</td>
	<td align=center>0.089200</td>
	<td align=center>15.878600</td>
	<td align=center>849.2199</td>
	<td align=center>0.7216000</td>
	<td align=center>999.204</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:35</td>
	<td align=center>6.46600</td>
	<td align=center>72.38370</td>
	<td align=center>3.542600</td>
	<td align=center>1.046700</td>
	<td align=center>0.214200</td>
	<td align=center>0.240800</td>
	<td align=center>0.091800</td>
	<td align=center>0.050600</td>
	<td align=center>0.093000</td>
	<td align=center>15.870600</td>
	<td align=center>849.3272</td>
	<td align=center>0.7224000</td>
	<td align=center>999.653</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:30</td>
	<td align=center>6.46600</td>
	<td align=center>72.38370</td>
	<td align=center>3.542600</td>
	<td align=center>1.046700</td>
	<td align=center>0.214200</td>
	<td align=center>0.240800</td>
	<td align=center>0.091800</td>
	<td align=center>0.050600</td>
	<td align=center>0.093000</td>
	<td align=center>15.870600</td>
	<td align=center>849.3272</td>
	<td align=center>0.7224000</td>
	<td align=center>999.653</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:25</td>
	<td align=center>6.46880</td>
	<td align=center>72.36320</td>
	<td align=center>3.551000</td>
	<td align=center>1.054000</td>
	<td align=center>0.219100</td>
	<td align=center>0.244200</td>
	<td align=center>0.093500</td>
	<td align=center>0.051800</td>
	<td align=center>0.093300</td>
	<td align=center>15.861000</td>
	<td align=center>849.3969</td>
	<td align=center>0.7223000</td>
	<td align=center>998.826</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:20</td>
	<td align=center>6.47090</td>
	<td align=center>72.37250</td>
	<td align=center>3.551300</td>
	<td align=center>1.053500</td>
	<td align=center>0.218100</td>
	<td align=center>0.243600</td>
	<td align=center>0.094000</td>
	<td align=center>0.051900</td>
	<td align=center>0.093700</td>
	<td align=center>15.850600</td>
	<td align=center>848.9387</td>
	<td align=center>0.7222000</td>
	<td align=center>999.363</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:15</td>
	<td align=center>6.47220</td>
	<td align=center>72.37220</td>
	<td align=center>3.548900</td>
	<td align=center>1.048800</td>
	<td align=center>0.214200</td>
	<td align=center>0.241200</td>
	<td align=center>0.092200</td>
	<td align=center>0.051300</td>
	<td align=center>0.093800</td>
	<td align=center>15.865100</td>
	<td align=center>848.9387</td>
	<td align=center>0.7222000</td>
	<td align=center>999.192</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:10</td>
	<td align=center>6.46040</td>
	<td align=center>72.37590</td>
	<td align=center>3.542900</td>
	<td align=center>1.049800</td>
	<td align=center>0.215900</td>
	<td align=center>0.242100</td>
	<td align=center>0.091900</td>
	<td align=center>0.050200</td>
	<td align=center>0.094200</td>
	<td align=center>15.876600</td>
	<td align=center>849.0049</td>
	<td align=center>0.7222000</td>
	<td align=center>998.906</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:05</td>
	<td align=center>6.46640</td>
	<td align=center>72.37590</td>
	<td align=center>3.545700</td>
	<td align=center>1.048300</td>
	<td align=center>0.214800</td>
	<td align=center>0.241700</td>
	<td align=center>0.092600</td>
	<td align=center>0.052100</td>
	<td align=center>0.094200</td>
	<td align=center>15.868500</td>
	<td align=center>848.9449</td>
	<td align=center>0.7222000</td>
	<td align=center>998.953</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:55</td>
	<td align=center>6.46300</td>
	<td align=center>72.36610</td>
	<td align=center>3.542500</td>
	<td align=center>1.058900</td>
	<td align=center>0.221400</td>
	<td align=center>0.243700</td>
	<td align=center>0.090200</td>
	<td align=center>0.048000</td>
	<td align=center>0.095300</td>
	<td align=center>15.870900</td>
	<td align=center>849.3232</td>
	<td align=center>0.7224000</td>
	<td align=center>999.076</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:50</td>
	<td align=center>6.46450</td>
	<td align=center>72.37020</td>
	<td align=center>3.547200</td>
	<td align=center>1.048000</td>
	<td align=center>0.212700</td>
	<td align=center>0.240600</td>
	<td align=center>0.098100</td>
	<td align=center>0.056600</td>
	<td align=center>0.095300</td>
	<td align=center>15.866700</td>
	<td align=center>848.8284</td>
	<td align=center>0.7221000</td>
	<td align=center>999.149</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:45</td>
	<td align=center>6.46510</td>
	<td align=center>72.37940</td>
	<td align=center>3.545400</td>
	<td align=center>1.051500</td>
	<td align=center>0.216000</td>
	<td align=center>0.243200</td>
	<td align=center>0.088800</td>
	<td align=center>0.044700</td>
	<td align=center>0.095700</td>
	<td align=center>15.870200</td>
	<td align=center>849.1082</td>
	<td align=center>0.7222000</td>
	<td align=center>999.261</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:40</td>
	<td align=center>6.46570</td>
	<td align=center>72.35410</td>
	<td align=center>3.536700</td>
	<td align=center>1.049300</td>
	<td align=center>0.217000</td>
	<td align=center>0.244100</td>
	<td align=center>0.092800</td>
	<td align=center>0.052400</td>
	<td align=center>0.096100</td>
	<td align=center>15.891800</td>
	<td align=center>849.3821</td>
	<td align=center>0.7225000</td>
	<td align=center>999.091</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:35</td>
	<td align=center>6.46630</td>
	<td align=center>72.35510</td>
	<td align=center>3.543000</td>
	<td align=center>1.050500</td>
	<td align=center>0.215100</td>
	<td align=center>0.243100</td>
	<td align=center>0.097700</td>
	<td align=center>0.057500</td>
	<td align=center>0.096200</td>
	<td align=center>15.875500</td>
	<td align=center>849.1282</td>
	<td align=center>0.7226000</td>
	<td align=center>998.765</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:30</td>
	<td align=center>6.47310</td>
	<td align=center>72.33170</td>
	<td align=center>3.551300</td>
	<td align=center>1.054500</td>
	<td align=center>0.217800</td>
	<td align=center>0.245000</td>
	<td align=center>0.093300</td>
	<td align=center>0.050900</td>
	<td align=center>0.096800</td>
	<td align=center>15.885600</td>
	<td align=center>849.2728</td>
	<td align=center>0.7225000</td>
	<td align=center>999.219</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:25</td>
	<td align=center>6.46850</td>
	<td align=center>72.35610</td>
	<td align=center>3.546400</td>
	<td align=center>1.053000</td>
	<td align=center>0.217500</td>
	<td align=center>0.244800</td>
	<td align=center>0.094000</td>
	<td align=center>0.050800</td>
	<td align=center>0.097100</td>
	<td align=center>15.871800</td>
	<td align=center>849.2159</td>
	<td align=center>0.7226000</td>
	<td align=center>998.883</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:20</td>
	<td align=center>6.47260</td>
	<td align=center>72.32500</td>
	<td align=center>3.551900</td>
	<td align=center>1.059100</td>
	<td align=center>0.218700</td>
	<td align=center>0.245400</td>
	<td align=center>0.092700</td>
	<td align=center>0.048800</td>
	<td align=center>0.098300</td>
	<td align=center>15.887500</td>
	<td align=center>849.7324</td>
	<td align=center>0.7228000</td>
	<td align=center>999.002</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:15</td>
	<td align=center>6.46790</td>
	<td align=center>72.32160</td>
	<td align=center>3.556200</td>
	<td align=center>1.061100</td>
	<td align=center>0.219900</td>
	<td align=center>0.246900</td>
	<td align=center>0.096400</td>
	<td align=center>0.053200</td>
	<td align=center>0.099000</td>
	<td align=center>15.877900</td>
	<td align=center>849.7831</td>
	<td align=center>0.7229000</td>
	<td align=center>998.920</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:10</td>
	<td align=center>6.46380</td>
	<td align=center>72.32160</td>
	<td align=center>3.553500</td>
	<td align=center>1.055500</td>
	<td align=center>0.217200</td>
	<td align=center>0.246200</td>
	<td align=center>0.099900</td>
	<td align=center>0.058100</td>
	<td align=center>0.099300</td>
	<td align=center>15.885300</td>
	<td align=center>849.2046</td>
	<td align=center>0.7227000</td>
	<td align=center>999.439</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:05</td>
	<td align=center>6.46790</td>
	<td align=center>72.32160</td>
	<td align=center>3.540100</td>
	<td align=center>1.053600</td>
	<td align=center>0.220200</td>
	<td align=center>0.247900</td>
	<td align=center>0.095000</td>
	<td align=center>0.051600</td>
	<td align=center>0.099500</td>
	<td align=center>15.902500</td>
	<td align=center>849.1019</td>
	<td align=center>0.7228000</td>
	<td align=center>999.468</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:55</td>
	<td align=center>6.47480</td>
	<td align=center>72.33010</td>
	<td align=center>3.542900</td>
	<td align=center>1.055600</td>
	<td align=center>0.220600</td>
	<td align=center>0.248600</td>
	<td align=center>0.094400</td>
	<td align=center>0.051500</td>
	<td align=center>0.099400</td>
	<td align=center>15.882000</td>
	<td align=center>849.3685</td>
	<td align=center>0.7227000</td>
	<td align=center>998.890</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:50</td>
	<td align=center>6.47910</td>
	<td align=center>72.33180</td>
	<td align=center>3.548200</td>
	<td align=center>1.051400</td>
	<td align=center>0.215400</td>
	<td align=center>0.245200</td>
	<td align=center>0.097100</td>
	<td align=center>0.054900</td>
	<td align=center>0.099500</td>
	<td align=center>15.877300</td>
	<td align=center>849.4659</td>
	<td align=center>0.7228000</td>
	<td align=center>999.085</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:45</td>
	<td align=center>6.47090</td>
	<td align=center>72.33100</td>
	<td align=center>3.539600</td>
	<td align=center>1.055000</td>
	<td align=center>0.219500</td>
	<td align=center>0.246300</td>
	<td align=center>0.096700</td>
	<td align=center>0.055200</td>
	<td align=center>0.099500</td>
	<td align=center>15.886300</td>
	<td align=center>849.3788</td>
	<td align=center>0.7227000</td>
	<td align=center>999.052</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:40</td>
	<td align=center>6.47760</td>
	<td align=center>72.31730</td>
	<td align=center>3.533900</td>
	<td align=center>1.048900</td>
	<td align=center>0.216400</td>
	<td align=center>0.245000</td>
	<td align=center>0.095800</td>
	<td align=center>0.053100</td>
	<td align=center>0.099200</td>
	<td align=center>15.912800</td>
	<td align=center>849.0503</td>
	<td align=center>0.7226000</td>
	<td align=center>999.090</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:35</td>
	<td align=center>6.46850</td>
	<td align=center>72.33420</td>
	<td align=center>3.530300</td>
	<td align=center>1.046100</td>
	<td align=center>0.214800</td>
	<td align=center>0.244800</td>
	<td align=center>0.096000</td>
	<td align=center>0.054600</td>
	<td align=center>0.099200</td>
	<td align=center>15.911600</td>
	<td align=center>849.2034</td>
	<td align=center>0.7227000</td>
	<td align=center>998.768</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:30</td>
	<td align=center>6.46850</td>
	<td align=center>72.33420</td>
	<td align=center>3.530300</td>
	<td align=center>1.046100</td>
	<td align=center>0.214800</td>
	<td align=center>0.244800</td>
	<td align=center>0.096000</td>
	<td align=center>0.054600</td>
	<td align=center>0.099200</td>
	<td align=center>15.911600</td>
	<td align=center>849.2034</td>
	<td align=center>0.7227000</td>
	<td align=center>998.768</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:25</td>
	<td align=center>6.47360</td>
	<td align=center>72.33290</td>
	<td align=center>3.540600</td>
	<td align=center>1.051700</td>
	<td align=center>0.217700</td>
	<td align=center>0.245600</td>
	<td align=center>0.095700</td>
	<td align=center>0.053300</td>
	<td align=center>0.099200</td>
	<td align=center>15.889600</td>
	<td align=center>849.2481</td>
	<td align=center>0.7228000</td>
	<td align=center>998.523</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:20</td>
	<td align=center>6.46580</td>
	<td align=center>72.32820</td>
	<td align=center>3.533600</td>
	<td align=center>1.048200</td>
	<td align=center>0.215300</td>
	<td align=center>0.243800</td>
	<td align=center>0.096300</td>
	<td align=center>0.053100</td>
	<td align=center>0.099300</td>
	<td align=center>15.916400</td>
	<td align=center>848.9026</td>
	<td align=center>0.7227000</td>
	<td align=center>998.900</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:15</td>
	<td align=center>6.46440</td>
	<td align=center>72.32100</td>
	<td align=center>3.534300</td>
	<td align=center>1.051400</td>
	<td align=center>0.217800</td>
	<td align=center>0.244800</td>
	<td align=center>0.095300</td>
	<td align=center>0.052700</td>
	<td align=center>0.099300</td>
	<td align=center>15.919000</td>
	<td align=center>849.1405</td>
	<td align=center>0.7228000</td>
	<td align=center>998.514</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:10</td>
	<td align=center>6.46890</td>
	<td align=center>72.31620</td>
	<td align=center>3.538200</td>
	<td align=center>1.050700</td>
	<td align=center>0.217500</td>
	<td align=center>0.246100</td>
	<td align=center>0.097200</td>
	<td align=center>0.055100</td>
	<td align=center>0.099800</td>
	<td align=center>15.910200</td>
	<td align=center>849.0217</td>
	<td align=center>0.7227000</td>
	<td align=center>998.568</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:05</td>
	<td align=center>6.47390</td>
	<td align=center>72.32280</td>
	<td align=center>3.537100</td>
	<td align=center>1.051700</td>
	<td align=center>0.218200</td>
	<td align=center>0.246500</td>
	<td align=center>0.095700</td>
	<td align=center>0.051100</td>
	<td align=center>0.099800</td>
	<td align=center>15.903300</td>
	<td align=center>849.4905</td>
	<td align=center>0.7227000</td>
	<td align=center>998.757</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:55</td>
	<td align=center>6.48230</td>
	<td align=center>72.33150</td>
	<td align=center>3.547500</td>
	<td align=center>1.055100</td>
	<td align=center>0.218200</td>
	<td align=center>0.246800</td>
	<td align=center>0.099600</td>
	<td align=center>0.055300</td>
	<td align=center>0.099900</td>
	<td align=center>15.863800</td>
	<td align=center>849.3871</td>
	<td align=center>0.7228000</td>
	<td align=center>998.995</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:50</td>
	<td align=center>6.48350</td>
	<td align=center>72.32670</td>
	<td align=center>3.546000</td>
	<td align=center>1.053400</td>
	<td align=center>0.216800</td>
	<td align=center>0.246000</td>
	<td align=center>0.097700</td>
	<td align=center>0.053600</td>
	<td align=center>0.099800</td>
	<td align=center>15.876500</td>
	<td align=center>849.4609</td>
	<td align=center>0.7228000</td>
	<td align=center>999.376</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:45</td>
	<td align=center>6.48900</td>
	<td align=center>72.33300</td>
	<td align=center>3.546500</td>
	<td align=center>1.054400</td>
	<td align=center>0.217600</td>
	<td align=center>0.246500</td>
	<td align=center>0.096200</td>
	<td align=center>0.053500</td>
	<td align=center>0.099800</td>
	<td align=center>15.863500</td>
	<td align=center>849.2872</td>
	<td align=center>0.7227000</td>
	<td align=center>999.023</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:40</td>
	<td align=center>6.47980</td>
	<td align=center>72.33630</td>
	<td align=center>3.544000</td>
	<td align=center>1.048600</td>
	<td align=center>0.214600</td>
	<td align=center>0.245100</td>
	<td align=center>0.097100</td>
	<td align=center>0.055100</td>
	<td align=center>0.099900</td>
	<td align=center>15.879600</td>
	<td align=center>849.2588</td>
	<td align=center>0.7227000</td>
	<td align=center>998.987</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:35</td>
	<td align=center>6.47670</td>
	<td align=center>72.33890</td>
	<td align=center>3.540600</td>
	<td align=center>1.050900</td>
	<td align=center>0.217900</td>
	<td align=center>0.246100</td>
	<td align=center>0.096600</td>
	<td align=center>0.053700</td>
	<td align=center>0.100200</td>
	<td align=center>15.878500</td>
	<td align=center>849.1982</td>
	<td align=center>0.7227000</td>
	<td align=center>998.956</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:30</td>
	<td align=center>6.47670</td>
	<td align=center>72.33890</td>
	<td align=center>3.540600</td>
	<td align=center>1.050900</td>
	<td align=center>0.217900</td>
	<td align=center>0.246100</td>
	<td align=center>0.096600</td>
	<td align=center>0.053700</td>
	<td align=center>0.100200</td>
	<td align=center>15.878500</td>
	<td align=center>849.1982</td>
	<td align=center>0.7227000</td>
	<td align=center>998.956</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:25</td>
	<td align=center>6.47110</td>
	<td align=center>72.33110</td>
	<td align=center>3.534200</td>
	<td align=center>1.051800</td>
	<td align=center>0.219500</td>
	<td align=center>0.247000</td>
	<td align=center>0.095900</td>
	<td align=center>0.052600</td>
	<td align=center>0.100000</td>
	<td align=center>15.896700</td>
	<td align=center>849.3324</td>
	<td align=center>0.7228000</td>
	<td align=center>999.069</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:20</td>
	<td align=center>6.47230</td>
	<td align=center>72.33960</td>
	<td align=center>3.542500</td>
	<td align=center>1.053300</td>
	<td align=center>0.219000</td>
	<td align=center>0.247000</td>
	<td align=center>0.097100</td>
	<td align=center>0.054300</td>
	<td align=center>0.100200</td>
	<td align=center>15.874700</td>
	<td align=center>849.0564</td>
	<td align=center>0.7227000</td>
	<td align=center>998.986</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:15</td>
	<td align=center>6.47050</td>
	<td align=center>72.32460</td>
	<td align=center>3.535300</td>
	<td align=center>1.050000</td>
	<td align=center>0.217300</td>
	<td align=center>0.245600</td>
	<td align=center>0.096200</td>
	<td align=center>0.053300</td>
	<td align=center>0.100600</td>
	<td align=center>15.906500</td>
	<td align=center>849.1856</td>
	<td align=center>0.7226000</td>
	<td align=center>999.300</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:10</td>
	<td align=center>6.47980</td>
	<td align=center>72.34240</td>
	<td align=center>3.542800</td>
	<td align=center>1.051600</td>
	<td align=center>0.216900</td>
	<td align=center>0.245900</td>
	<td align=center>0.093600</td>
	<td align=center>0.050300</td>
	<td align=center>0.100600</td>
	<td align=center>15.876000</td>
	<td align=center>849.0814</td>
	<td align=center>0.7226000</td>
	<td align=center>998.704</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:05</td>
	<td align=center>6.46750</td>
	<td align=center>72.33270</td>
	<td align=center>3.537600</td>
	<td align=center>1.055000</td>
	<td align=center>0.221500</td>
	<td align=center>0.249100</td>
	<td align=center>0.091100</td>
	<td align=center>0.046000</td>
	<td align=center>0.101000</td>
	<td align=center>15.898400</td>
	<td align=center>849.2681</td>
	<td align=center>0.7228000</td>
	<td align=center>998.920</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:55</td>
	<td align=center>6.47270</td>
	<td align=center>72.33300</td>
	<td align=center>3.538200</td>
	<td align=center>1.051500</td>
	<td align=center>0.218200</td>
	<td align=center>0.246900</td>
	<td align=center>0.096900</td>
	<td align=center>0.053800</td>
	<td align=center>0.101500</td>
	<td align=center>15.887200</td>
	<td align=center>849.8944</td>
	<td align=center>0.7228000</td>
	<td align=center>998.892</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:50</td>
	<td align=center>6.48000</td>
	<td align=center>72.34710</td>
	<td align=center>3.549900</td>
	<td align=center>1.055400</td>
	<td align=center>0.218800</td>
	<td align=center>0.247600</td>
	<td align=center>0.096500</td>
	<td align=center>0.054100</td>
	<td align=center>0.101600</td>
	<td align=center>15.848900</td>
	<td align=center>849.4920</td>
	<td align=center>0.7228000</td>
	<td align=center>999.072</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:45</td>
	<td align=center>6.47390</td>
	<td align=center>72.32940</td>
	<td align=center>3.540600</td>
	<td align=center>1.052800</td>
	<td align=center>0.218600</td>
	<td align=center>0.247000</td>
	<td align=center>0.097000</td>
	<td align=center>0.053900</td>
	<td align=center>0.102200</td>
	<td align=center>15.884600</td>
	<td align=center>850.0056</td>
	<td align=center>0.7229000</td>
	<td align=center>999.636</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:40</td>
	<td align=center>6.47760</td>
	<td align=center>72.32210</td>
	<td align=center>3.545000</td>
	<td align=center>1.054400</td>
	<td align=center>0.218800</td>
	<td align=center>0.247500</td>
	<td align=center>0.095900</td>
	<td align=center>0.052400</td>
	<td align=center>0.102700</td>
	<td align=center>15.883500</td>
	<td align=center>849.9818</td>
	<td align=center>0.7229000</td>
	<td align=center>999.705</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:35</td>
	<td align=center>6.48380</td>
	<td align=center>72.34170</td>
	<td align=center>3.552800</td>
	<td align=center>1.054700</td>
	<td align=center>0.217600</td>
	<td align=center>0.247000</td>
	<td align=center>0.097900</td>
	<td align=center>0.055100</td>
	<td align=center>0.103100</td>
	<td align=center>15.846000</td>
	<td align=center>850.0760</td>
	<td align=center>0.7229000</td>
	<td align=center>999.107</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:30</td>
	<td align=center>6.48350</td>
	<td align=center>72.34170</td>
	<td align=center>3.551100</td>
	<td align=center>1.056600</td>
	<td align=center>0.220000</td>
	<td align=center>0.248100</td>
	<td align=center>0.097200</td>
	<td align=center>0.054400</td>
	<td align=center>0.103500</td>
	<td align=center>15.843700</td>
	<td align=center>850.3068</td>
	<td align=center>0.7229000</td>
	<td align=center>999.679</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:25</td>
	<td align=center>6.47150</td>
	<td align=center>72.34850</td>
	<td align=center>3.551600</td>
	<td align=center>1.058600</td>
	<td align=center>0.220600</td>
	<td align=center>0.249400</td>
	<td align=center>0.097900</td>
	<td align=center>0.054700</td>
	<td align=center>0.103600</td>
	<td align=center>15.843700</td>
	<td align=center>850.4602</td>
	<td align=center>0.7229000</td>
	<td align=center>999.767</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:20</td>
	<td align=center>6.45610</td>
	<td align=center>72.33830</td>
	<td align=center>3.542500</td>
	<td align=center>1.052500</td>
	<td align=center>0.217900</td>
	<td align=center>0.247700</td>
	<td align=center>0.101900</td>
	<td align=center>0.060100</td>
	<td align=center>0.103400</td>
	<td align=center>15.879600</td>
	<td align=center>850.2545</td>
	<td align=center>0.7228000</td>
	<td align=center>1000.256</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:15</td>
	<td align=center>6.46290</td>
	<td align=center>72.34990</td>
	<td align=center>3.550400</td>
	<td align=center>1.058300</td>
	<td align=center>0.220300</td>
	<td align=center>0.249300</td>
	<td align=center>0.097900</td>
	<td align=center>0.054700</td>
	<td align=center>0.103000</td>
	<td align=center>15.853200</td>
	<td align=center>850.2168</td>
	<td align=center>0.7229000</td>
	<td align=center>999.838</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:10</td>
	<td align=center>6.46650</td>
	<td align=center>72.34220</td>
	<td align=center>3.552700</td>
	<td align=center>1.058600</td>
	<td align=center>0.219600</td>
	<td align=center>0.249200</td>
	<td align=center>0.098300</td>
	<td align=center>0.054900</td>
	<td align=center>0.102900</td>
	<td align=center>15.855100</td>
	<td align=center>850.0394</td>
	<td align=center>0.7228000</td>
	<td align=center>1000.059</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:05</td>
	<td align=center>6.45990</td>
	<td align=center>72.34110</td>
	<td align=center>3.545900</td>
	<td align=center>1.056900</td>
	<td align=center>0.219800</td>
	<td align=center>0.248700</td>
	<td align=center>0.098400</td>
	<td align=center>0.055200</td>
	<td align=center>0.102700</td>
	<td align=center>15.871400</td>
	<td align=center>850.1262</td>
	<td align=center>0.7228000</td>
	<td align=center>999.977</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:55</td>
	<td align=center>6.46440</td>
	<td align=center>72.33580</td>
	<td align=center>3.550700</td>
	<td align=center>1.059000</td>
	<td align=center>0.220200</td>
	<td align=center>0.249100</td>
	<td align=center>0.098300</td>
	<td align=center>0.055000</td>
	<td align=center>0.102000</td>
	<td align=center>15.865600</td>
	<td align=center>849.8832</td>
	<td align=center>0.7229000</td>
	<td align=center>999.922</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:50</td>
	<td align=center>6.46520</td>
	<td align=center>72.32190</td>
	<td align=center>3.550400</td>
	<td align=center>1.058200</td>
	<td align=center>0.219500</td>
	<td align=center>0.248800</td>
	<td align=center>0.098000</td>
	<td align=center>0.054900</td>
	<td align=center>0.101800</td>
	<td align=center>15.881200</td>
	<td align=center>849.9456</td>
	<td align=center>0.7229000</td>
	<td align=center>999.840</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:45</td>
	<td align=center>6.46760</td>
	<td align=center>72.32710</td>
	<td align=center>3.551500</td>
	<td align=center>1.059200</td>
	<td align=center>0.219800</td>
	<td align=center>0.249400</td>
	<td align=center>0.097700</td>
	<td align=center>0.054300</td>
	<td align=center>0.101300</td>
	<td align=center>15.872000</td>
	<td align=center>850.0458</td>
	<td align=center>0.7228000</td>
	<td align=center>999.556</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:40</td>
	<td align=center>6.46350</td>
	<td align=center>72.33360</td>
	<td align=center>3.549400</td>
	<td align=center>1.058000</td>
	<td align=center>0.219400</td>
	<td align=center>0.248000</td>
	<td align=center>0.097600</td>
	<td align=center>0.054400</td>
	<td align=center>0.100500</td>
	<td align=center>15.875600</td>
	<td align=center>850.1419</td>
	<td align=center>0.7228000</td>
	<td align=center>999.793</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:35</td>
	<td align=center>6.45740</td>
	<td align=center>72.33670</td>
	<td align=center>3.543500</td>
	<td align=center>1.054000</td>
	<td align=center>0.218100</td>
	<td align=center>0.246300</td>
	<td align=center>0.096300</td>
	<td align=center>0.053400</td>
	<td align=center>0.099800</td>
	<td align=center>15.894400</td>
	<td align=center>849.3707</td>
	<td align=center>0.7225000</td>
	<td align=center>999.946</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:30</td>
	<td align=center>6.45740</td>
	<td align=center>72.33670</td>
	<td align=center>3.543500</td>
	<td align=center>1.054000</td>
	<td align=center>0.218100</td>
	<td align=center>0.246300</td>
	<td align=center>0.096300</td>
	<td align=center>0.053400</td>
	<td align=center>0.099800</td>
	<td align=center>15.894400</td>
	<td align=center>849.3707</td>
	<td align=center>0.7225000</td>
	<td align=center>999.946</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:25</td>
	<td align=center>6.45870</td>
	<td align=center>72.35310</td>
	<td align=center>3.540000</td>
	<td align=center>1.050600</td>
	<td align=center>0.217100</td>
	<td align=center>0.245000</td>
	<td align=center>0.096100</td>
	<td align=center>0.053400</td>
	<td align=center>0.099700</td>
	<td align=center>15.886300</td>
	<td align=center>849.3707</td>
	<td align=center>0.7224000</td>
	<td align=center>999.220</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:20</td>
	<td align=center>6.45510</td>
	<td align=center>72.36370</td>
	<td align=center>3.537300</td>
	<td align=center>1.049400</td>
	<td align=center>0.216700</td>
	<td align=center>0.245200</td>
	<td align=center>0.095500</td>
	<td align=center>0.053100</td>
	<td align=center>0.099800</td>
	<td align=center>15.884100</td>
	<td align=center>849.1152</td>
	<td align=center>0.7225000</td>
	<td align=center>999.220</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:15</td>
	<td align=center>6.45360</td>
	<td align=center>72.34940</td>
	<td align=center>3.533500</td>
	<td align=center>1.048500</td>
	<td align=center>0.216700</td>
	<td align=center>0.244700</td>
	<td align=center>0.095500</td>
	<td align=center>0.053400</td>
	<td align=center>0.099600</td>
	<td align=center>15.905100</td>
	<td align=center>849.5103</td>
	<td align=center>0.7225000</td>
	<td align=center>999.551</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:10</td>
	<td align=center>6.46040</td>
	<td align=center>72.35960</td>
	<td align=center>3.542800</td>
	<td align=center>1.052000</td>
	<td align=center>0.217200</td>
	<td align=center>0.245600</td>
	<td align=center>0.095700</td>
	<td align=center>0.053100</td>
	<td align=center>0.099600</td>
	<td align=center>15.874200</td>
	<td align=center>849.3738</td>
	<td align=center>0.7225000</td>
	<td align=center>998.948</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:05</td>
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
	<td align=center>849.4654</td>
	<td align=center>0.7225000</td>
	<td align=center>999.224</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:55</td>
	<td align=center>6.46200</td>
	<td align=center>72.34480</td>
	<td align=center>3.544000</td>
	<td align=center>1.052300</td>
	<td align=center>0.216900</td>
	<td align=center>0.245300</td>
	<td align=center>0.095700</td>
	<td align=center>0.053300</td>
	<td align=center>0.099200</td>
	<td align=center>15.886400</td>
	<td align=center>849.3041</td>
	<td align=center>0.7225000</td>
	<td align=center>998.913</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:50</td>
	<td align=center>6.45900</td>
	<td align=center>72.35260</td>
	<td align=center>3.541100</td>
	<td align=center>1.050800</td>
	<td align=center>0.216800</td>
	<td align=center>0.244600</td>
	<td align=center>0.095600</td>
	<td align=center>0.052900</td>
	<td align=center>0.099200</td>
	<td align=center>15.887400</td>
	<td align=center>849.2318</td>
	<td align=center>0.7225000</td>
	<td align=center>999.176</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:45</td>
	<td align=center>6.45770</td>
	<td align=center>72.34800</td>
	<td align=center>3.540300</td>
	<td align=center>1.050600</td>
	<td align=center>0.216800</td>
	<td align=center>0.245100</td>
	<td align=center>0.095300</td>
	<td align=center>0.053000</td>
	<td align=center>0.098900</td>
	<td align=center>15.894400</td>
	<td align=center>849.3946</td>
	<td align=center>0.7224000</td>
	<td align=center>999.156</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:40</td>
	<td align=center>6.45720</td>
	<td align=center>72.36040</td>
	<td align=center>3.540800</td>
	<td align=center>1.051100</td>
	<td align=center>0.216700</td>
	<td align=center>0.244900</td>
	<td align=center>0.095600</td>
	<td align=center>0.053400</td>
	<td align=center>0.098700</td>
	<td align=center>15.881300</td>
	<td align=center>849.3946</td>
	<td align=center>0.7225000</td>
	<td align=center>999.066</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:35</td>
	<td align=center>6.46410</td>
	<td align=center>72.35030</td>
	<td align=center>3.545700</td>
	<td align=center>1.052500</td>
	<td align=center>0.217000</td>
	<td align=center>0.244700</td>
	<td align=center>0.095200</td>
	<td align=center>0.053000</td>
	<td align=center>0.098900</td>
	<td align=center>15.878600</td>
	<td align=center>849.3946</td>
	<td align=center>0.7225000</td>
	<td align=center>999.073</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:30</td>
	<td align=center>6.46450</td>
	<td align=center>72.34810</td>
	<td align=center>3.546900</td>
	<td align=center>1.052300</td>
	<td align=center>0.217000</td>
	<td align=center>0.245100</td>
	<td align=center>0.095400</td>
	<td align=center>0.053000</td>
	<td align=center>0.098600</td>
	<td align=center>15.879100</td>
	<td align=center>848.7302</td>
	<td align=center>0.7224000</td>
	<td align=center>999.222</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:25</td>
	<td align=center>6.44650</td>
	<td align=center>72.34220</td>
	<td align=center>3.528400</td>
	<td align=center>1.046200</td>
	<td align=center>0.215900</td>
	<td align=center>0.243900</td>
	<td align=center>0.094800</td>
	<td align=center>0.052600</td>
	<td align=center>0.098500</td>
	<td align=center>15.930900</td>
	<td align=center>848.8972</td>
	<td align=center>0.7225000</td>
	<td align=center>999.222</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:20</td>
	<td align=center>6.45670</td>
	<td align=center>72.33870</td>
	<td align=center>3.539800</td>
	<td align=center>1.051200</td>
	<td align=center>0.217100</td>
	<td align=center>0.244900</td>
	<td align=center>0.095600</td>
	<td align=center>0.052700</td>
	<td align=center>0.098600</td>
	<td align=center>15.904600</td>
	<td align=center>849.2284</td>
	<td align=center>0.7226000</td>
	<td align=center>998.688</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:15</td>
	<td align=center>6.45630</td>
	<td align=center>72.33240</td>
	<td align=center>3.542900</td>
	<td align=center>1.053200</td>
	<td align=center>0.217400</td>
	<td align=center>0.245300</td>
	<td align=center>0.095600</td>
	<td align=center>0.053400</td>
	<td align=center>0.098600</td>
	<td align=center>15.904900</td>
	<td align=center>849.2165</td>
	<td align=center>0.7226000</td>
	<td align=center>998.933</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:10</td>
	<td align=center>6.45970</td>
	<td align=center>72.33110</td>
	<td align=center>3.544900</td>
	<td align=center>1.052800</td>
	<td align=center>0.217200</td>
	<td align=center>0.245100</td>
	<td align=center>0.095600</td>
	<td align=center>0.053300</td>
	<td align=center>0.098500</td>
	<td align=center>15.901800</td>
	<td align=center>849.1485</td>
	<td align=center>0.7225000</td>
	<td align=center>999.002</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:05</td>
	<td align=center>6.45910</td>
	<td align=center>72.33950</td>
	<td align=center>3.540600</td>
	<td align=center>1.051500</td>
	<td align=center>0.216800</td>
	<td align=center>0.245000</td>
	<td align=center>0.095000</td>
	<td align=center>0.053000</td>
	<td align=center>0.098700</td>
	<td align=center>15.900900</td>
	<td align=center>849.1628</td>
	<td align=center>0.7225000</td>
	<td align=center>998.978</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:55</td>
	<td align=center>6.45790</td>
	<td align=center>72.33930</td>
	<td align=center>3.539700</td>
	<td align=center>1.050700</td>
	<td align=center>0.216700</td>
	<td align=center>0.244600</td>
	<td align=center>0.095200</td>
	<td align=center>0.052800</td>
	<td align=center>0.098800</td>
	<td align=center>15.904300</td>
	<td align=center>848.8647</td>
	<td align=center>0.7224000</td>
	<td align=center>999.075</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:50</td>
	<td align=center>6.45050</td>
	<td align=center>72.34260</td>
	<td align=center>3.531500</td>
	<td align=center>1.047300</td>
	<td align=center>0.216000</td>
	<td align=center>0.243900</td>
	<td align=center>0.094800</td>
	<td align=center>0.053400</td>
	<td align=center>0.098800</td>
	<td align=center>15.921100</td>
	<td align=center>849.1785</td>
	<td align=center>0.7225000</td>
	<td align=center>998.894</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:45</td>
	<td align=center>6.45560</td>
	<td align=center>72.34840</td>
	<td align=center>3.537800</td>
	<td align=center>1.050100</td>
	<td align=center>0.216800</td>
	<td align=center>0.244900</td>
	<td align=center>0.095200</td>
	<td align=center>0.053100</td>
	<td align=center>0.099000</td>
	<td align=center>15.899100</td>
	<td align=center>849.0883</td>
	<td align=center>0.7225000</td>
	<td align=center>998.681</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:40</td>
	<td align=center>6.45620</td>
	<td align=center>72.34720</td>
	<td align=center>3.538100</td>
	<td align=center>1.051000</td>
	<td align=center>0.217000</td>
	<td align=center>0.244800</td>
	<td align=center>0.095100</td>
	<td align=center>0.052600</td>
	<td align=center>0.099000</td>
	<td align=center>15.902100</td>
	<td align=center>849.1194</td>
	<td align=center>0.7226000</td>
	<td align=center>998.921</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:35</td>
	<td align=center>6.45770</td>
	<td align=center>72.32990</td>
	<td align=center>3.540700</td>
	<td align=center>1.052400</td>
	<td align=center>0.217400</td>
	<td align=center>0.245100</td>
	<td align=center>0.095300</td>
	<td align=center>0.052700</td>
	<td align=center>0.099100</td>
	<td align=center>15.909600</td>
	<td align=center>849.1194</td>
	<td align=center>0.7225000</td>
	<td align=center>998.961</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:30</td>
	<td align=center>6.45500</td>
	<td align=center>72.33580</td>
	<td align=center>3.538600</td>
	<td align=center>1.051200</td>
	<td align=center>0.217000</td>
	<td align=center>0.244800</td>
	<td align=center>0.095300</td>
	<td align=center>0.053300</td>
	<td align=center>0.099200</td>
	<td align=center>15.909800</td>
	<td align=center>849.0786</td>
	<td align=center>0.7225000</td>
	<td align=center>998.873</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:25</td>
	<td align=center>6.45730</td>
	<td align=center>72.33580</td>
	<td align=center>3.537900</td>
	<td align=center>1.050300</td>
	<td align=center>0.217100</td>
	<td align=center>0.244700</td>
	<td align=center>0.095100</td>
	<td align=center>0.053000</td>
	<td align=center>0.099500</td>
	<td align=center>15.909200</td>
	<td align=center>849.1422</td>
	<td align=center>0.7225000</td>
	<td align=center>998.901</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:20</td>
	<td align=center>6.45770</td>
	<td align=center>72.35460</td>
	<td align=center>3.538200</td>
	<td align=center>1.049000</td>
	<td align=center>0.216500</td>
	<td align=center>0.244600</td>
	<td align=center>0.095700</td>
	<td align=center>0.053400</td>
	<td align=center>0.099600</td>
	<td align=center>15.890600</td>
	<td align=center>849.3254</td>
	<td align=center>0.7225000</td>
	<td align=center>998.974</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:15</td>
	<td align=center>6.45900</td>
	<td align=center>72.35250</td>
	<td align=center>3.539200</td>
	<td align=center>1.050400</td>
	<td align=center>0.217600</td>
	<td align=center>0.245500</td>
	<td align=center>0.095400</td>
	<td align=center>0.052900</td>
	<td align=center>0.099500</td>
	<td align=center>15.888000</td>
	<td align=center>849.1365</td>
	<td align=center>0.7225000</td>
	<td align=center>999.119</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:10</td>
	<td align=center>6.45390</td>
	<td align=center>72.34450</td>
	<td align=center>3.535000</td>
	<td align=center>1.049500</td>
	<td align=center>0.217200</td>
	<td align=center>0.245100</td>
	<td align=center>0.095700</td>
	<td align=center>0.053300</td>
	<td align=center>0.099400</td>
	<td align=center>15.906600</td>
	<td align=center>848.3012</td>
	<td align=center>0.7224000</td>
	<td align=center>999.167</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:05</td>
	<td align=center>6.43740</td>
	<td align=center>72.32270</td>
	<td align=center>3.517100</td>
	<td align=center>1.043600</td>
	<td align=center>0.215300</td>
	<td align=center>0.243400</td>
	<td align=center>0.095400</td>
	<td align=center>0.052900</td>
	<td align=center>0.099300</td>
	<td align=center>15.972900</td>
	<td align=center>848.1035</td>
	<td align=center>0.7224000</td>
	<td align=center>998.949</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:55</td>
	<td align=center>6.43090</td>
	<td align=center>72.30520</td>
	<td align=center>3.512500</td>
	<td align=center>1.042500</td>
	<td align=center>0.215300</td>
	<td align=center>0.243400</td>
	<td align=center>0.095100</td>
	<td align=center>0.052900</td>
	<td align=center>0.098900</td>
	<td align=center>16.003300</td>
	<td align=center>847.3768</td>
	<td align=center>0.7223000</td>
	<td align=center>997.393</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:50</td>
	<td align=center>6.41670</td>
	<td align=center>72.29050</td>
	<td align=center>3.497600</td>
	<td align=center>1.038500</td>
	<td align=center>0.214700</td>
	<td align=center>0.242500</td>
	<td align=center>0.094600</td>
	<td align=center>0.052800</td>
	<td align=center>0.098700</td>
	<td align=center>16.053500</td>
	<td align=center>847.3412</td>
	<td align=center>0.7223000</td>
	<td align=center>997.647</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:45</td>
	<td align=center>6.41590</td>
	<td align=center>72.29340</td>
	<td align=center>3.496300</td>
	<td align=center>1.038100</td>
	<td align=center>0.214200</td>
	<td align=center>0.242400</td>
	<td align=center>0.094800</td>
	<td align=center>0.052600</td>
	<td align=center>0.098400</td>
	<td align=center>16.053800</td>
	<td align=center>846.8775</td>
	<td align=center>0.7223000</td>
	<td align=center>996.994</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:40</td>
	<td align=center>6.43180</td>
	<td align=center>72.31590</td>
	<td align=center>3.512100</td>
	<td align=center>1.042800</td>
	<td align=center>0.215300</td>
	<td align=center>0.243500</td>
	<td align=center>0.095000</td>
	<td align=center>0.052400</td>
	<td align=center>0.098200</td>
	<td align=center>15.992900</td>
	<td align=center>848.2862</td>
	<td align=center>0.7225000</td>
	<td align=center>996.461</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:35</td>
	<td align=center>6.44570</td>
	<td align=center>72.31720</td>
	<td align=center>3.521000</td>
	<td align=center>1.045500</td>
	<td align=center>0.215900</td>
	<td align=center>0.243700</td>
	<td align=center>0.094500</td>
	<td align=center>0.052600</td>
	<td align=center>0.098200</td>
	<td align=center>15.965800</td>
	<td align=center>848.4661</td>
	<td align=center>0.7225000</td>
	<td align=center>997.755</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:30</td>
	<td align=center>6.45220</td>
	<td align=center>72.32570</td>
	<td align=center>3.524500</td>
	<td align=center>1.046500</td>
	<td align=center>0.215800</td>
	<td align=center>0.243800</td>
	<td align=center>0.094800</td>
	<td align=center>0.052700</td>
	<td align=center>0.097900</td>
	<td align=center>15.946100</td>
	<td align=center>848.0640</td>
	<td align=center>0.7224000</td>
	<td align=center>997.981</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:25</td>
	<td align=center>6.44410</td>
	<td align=center>72.31440</td>
	<td align=center>3.516600</td>
	<td align=center>1.043600</td>
	<td align=center>0.215200</td>
	<td align=center>0.242600</td>
	<td align=center>0.094200</td>
	<td align=center>0.052400</td>
	<td align=center>0.098400</td>
	<td align=center>15.978500</td>
	<td align=center>848.3804</td>
	<td align=center>0.7225000</td>
	<td align=center>998.186</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:20</td>
	<td align=center>6.45010</td>
	<td align=center>72.32390</td>
	<td align=center>3.520900</td>
	<td align=center>1.043700</td>
	<td align=center>0.215200</td>
	<td align=center>0.242800</td>
	<td align=center>0.094500</td>
	<td align=center>0.052500</td>
	<td align=center>0.098500</td>
	<td align=center>15.958000</td>
	<td align=center>848.2034</td>
	<td align=center>0.7225000</td>
	<td align=center>998.095</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:15</td>
	<td align=center>6.44950</td>
	<td align=center>72.31590</td>
	<td align=center>3.519400</td>
	<td align=center>1.043600</td>
	<td align=center>0.215400</td>
	<td align=center>0.243200</td>
	<td align=center>0.095100</td>
	<td align=center>0.052800</td>
	<td align=center>0.098300</td>
	<td align=center>15.966800</td>
	<td align=center>848.3956</td>
	<td align=center>0.7225000</td>
	<td align=center>997.975</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:10</td>
	<td align=center>6.45500</td>
	<td align=center>72.32300</td>
	<td align=center>3.523400</td>
	<td align=center>1.045000</td>
	<td align=center>0.215800</td>
	<td align=center>0.243500</td>
	<td align=center>0.094900</td>
	<td align=center>0.052800</td>
	<td align=center>0.098400</td>
	<td align=center>15.948400</td>
	<td align=center>848.1825</td>
	<td align=center>0.7224000</td>
	<td align=center>997.870</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:05</td>
	<td align=center>6.44370</td>
	<td align=center>72.31460</td>
	<td align=center>3.513600</td>
	<td align=center>1.041600</td>
	<td align=center>0.214900</td>
	<td align=center>0.242600</td>
	<td align=center>0.094600</td>
	<td align=center>0.052400</td>
	<td align=center>0.098100</td>
	<td align=center>15.983800</td>
	<td align=center>847.9594</td>
	<td align=center>0.7224000</td>
	<td align=center>997.889</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:55</td>
	<td align=center>6.45660</td>
	<td align=center>72.32310</td>
	<td align=center>3.529000</td>
	<td align=center>1.047400</td>
	<td align=center>0.216400</td>
	<td align=center>0.243900</td>
	<td align=center>0.094700</td>
	<td align=center>0.052800</td>
	<td align=center>0.098200</td>
	<td align=center>15.937900</td>
	<td align=center>848.5024</td>
	<td align=center>0.7225000</td>
	<td align=center>998.066</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:50</td>
	<td align=center>6.45140</td>
	<td align=center>72.32820</td>
	<td align=center>3.524600</td>
	<td align=center>1.046700</td>
	<td align=center>0.216000</td>
	<td align=center>0.243600</td>
	<td align=center>0.094500</td>
	<td align=center>0.052400</td>
	<td align=center>0.098400</td>
	<td align=center>15.944000</td>
	<td align=center>848.5839</td>
	<td align=center>0.7225000</td>
	<td align=center>998.282</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:45</td>
	<td align=center>6.45530</td>
	<td align=center>72.32320</td>
	<td align=center>3.528600</td>
	<td align=center>1.047800</td>
	<td align=center>0.216400</td>
	<td align=center>0.244000</td>
	<td align=center>0.095000</td>
	<td align=center>0.052500</td>
	<td align=center>0.098100</td>
	<td align=center>15.939100</td>
	<td align=center>848.0966</td>
	<td align=center>0.7225000</td>
	<td align=center>998.236</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:40</td>
	<td align=center>6.44500</td>
	<td align=center>72.31490</td>
	<td align=center>3.514500</td>
	<td align=center>1.042100</td>
	<td align=center>0.215100</td>
	<td align=center>0.242700</td>
	<td align=center>0.094800</td>
	<td align=center>0.052800</td>
	<td align=center>0.098400</td>
	<td align=center>15.979700</td>
	<td align=center>848.0610</td>
	<td align=center>0.7225000</td>
	<td align=center>997.758</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:35</td>
	<td align=center>6.44270</td>
	<td align=center>72.30860</td>
	<td align=center>3.513200</td>
	<td align=center>1.041300</td>
	<td align=center>0.214600</td>
	<td align=center>0.242300</td>
	<td align=center>0.095800</td>
	<td align=center>0.055700</td>
	<td align=center>0.098600</td>
	<td align=center>15.987300</td>
	<td align=center>848.6023</td>
	<td align=center>0.7225000</td>
	<td align=center>997.702</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:30</td>
	<td align=center>6.45530</td>
	<td align=center>72.32620</td>
	<td align=center>3.526800</td>
	<td align=center>1.046100</td>
	<td align=center>0.216100</td>
	<td align=center>0.243300</td>
	<td align=center>0.095100</td>
	<td align=center>0.054700</td>
	<td align=center>0.098200</td>
	<td align=center>15.938200</td>
	<td align=center>848.1904</td>
	<td align=center>0.7225000</td>
	<td align=center>997.691</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:25</td>
	<td align=center>6.44990</td>
	<td align=center>72.31800</td>
	<td align=center>3.522300</td>
	<td align=center>1.046400</td>
	<td align=center>0.216000</td>
	<td align=center>0.243400</td>
	<td align=center>0.094600</td>
	<td align=center>0.052400</td>
	<td align=center>0.098200</td>
	<td align=center>15.958900</td>
	<td align=center>848.3288</td>
	<td align=center>0.7225000</td>
	<td align=center>997.837</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:20</td>
	<td align=center>6.44990</td>
	<td align=center>72.31800</td>
	<td align=center>3.522300</td>
	<td align=center>1.046400</td>
	<td align=center>0.216000</td>
	<td align=center>0.243400</td>
	<td align=center>0.094600</td>
	<td align=center>0.052400</td>
	<td align=center>0.098200</td>
	<td align=center>15.958900</td>
	<td align=center>848.2967</td>
	<td align=center>0.7224000</td>
	<td align=center>997.837</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:15</td>
	<td align=center>6.45040</td>
	<td align=center>72.32630</td>
	<td align=center>3.520400</td>
	<td align=center>1.043400</td>
	<td align=center>0.215200</td>
	<td align=center>0.242900</td>
	<td align=center>0.094700</td>
	<td align=center>0.052700</td>
	<td align=center>0.098500</td>
	<td align=center>15.955400</td>
	<td align=center>848.3662</td>
	<td align=center>0.7223000</td>
	<td align=center>997.982</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:10</td>
	<td align=center>6.45150</td>
	<td align=center>72.34020</td>
	<td align=center>3.521300</td>
	<td align=center>1.042800</td>
	<td align=center>0.214800</td>
	<td align=center>0.242400</td>
	<td align=center>0.094200</td>
	<td align=center>0.052100</td>
	<td align=center>0.098500</td>
	<td align=center>15.942200</td>
	<td align=center>848.2294</td>
	<td align=center>0.7224000</td>
	<td align=center>998.013</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:05</td>
	<td align=center>6.44820</td>
	<td align=center>72.33320</td>
	<td align=center>3.517000</td>
	<td align=center>1.041700</td>
	<td align=center>0.214900</td>
	<td align=center>0.242500</td>
	<td align=center>0.094400</td>
	<td align=center>0.052300</td>
	<td align=center>0.098900</td>
	<td align=center>15.956900</td>
	<td align=center>848.8224</td>
	<td align=center>0.7225000</td>
	<td align=center>998.150</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:55</td>
	<td align=center>6.45050</td>
	<td align=center>72.31020</td>
	<td align=center>3.520200</td>
	<td align=center>1.044400</td>
	<td align=center>0.215600</td>
	<td align=center>0.243000</td>
	<td align=center>0.094300</td>
	<td align=center>0.052300</td>
	<td align=center>0.099000</td>
	<td align=center>15.970400</td>
	<td align=center>848.2978</td>
	<td align=center>0.7225000</td>
	<td align=center>998.434</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:50</td>
	<td align=center>6.45200</td>
	<td align=center>72.31750</td>
	<td align=center>3.521100</td>
	<td align=center>1.045700</td>
	<td align=center>0.216300</td>
	<td align=center>0.243600</td>
	<td align=center>0.094400</td>
	<td align=center>0.052300</td>
	<td align=center>0.098200</td>
	<td align=center>15.958800</td>
	<td align=center>848.0198</td>
	<td align=center>0.7225000</td>
	<td align=center>997.804</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:45</td>
	<td align=center>6.44520</td>
	<td align=center>72.30920</td>
	<td align=center>3.515800</td>
	<td align=center>1.042900</td>
	<td align=center>0.214300</td>
	<td align=center>0.242300</td>
	<td align=center>0.095500</td>
	<td align=center>0.052800</td>
	<td align=center>0.098700</td>
	<td align=center>15.983400</td>
	<td align=center>848.5556</td>
	<td align=center>0.7225000</td>
	<td align=center>997.971</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:40</td>
	<td align=center>6.44890</td>
	<td align=center>72.32170</td>
	<td align=center>3.519400</td>
	<td align=center>1.040800</td>
	<td align=center>0.213100</td>
	<td align=center>0.242400</td>
	<td align=center>0.096100</td>
	<td align=center>0.053800</td>
	<td align=center>0.098500</td>
	<td align=center>15.965500</td>
	<td align=center>848.6844</td>
	<td align=center>0.7225000</td>
	<td align=center>998.289</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:35</td>
	<td align=center>6.45760</td>
	<td align=center>72.32750</td>
	<td align=center>3.529900</td>
	<td align=center>1.047500</td>
	<td align=center>0.216400</td>
	<td align=center>0.244300</td>
	<td align=center>0.095300</td>
	<td align=center>0.052900</td>
	<td align=center>0.098300</td>
	<td align=center>15.930400</td>
	<td align=center>848.1552</td>
	<td align=center>0.7224000</td>
	<td align=center>997.869</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:30</td>
	<td align=center>6.44710</td>
	<td align=center>72.31890</td>
	<td align=center>3.517400</td>
	<td align=center>1.042600</td>
	<td align=center>0.214500</td>
	<td align=center>0.242500</td>
	<td align=center>0.095100</td>
	<td align=center>0.053000</td>
	<td align=center>0.098800</td>
	<td align=center>15.970000</td>
	<td align=center>848.3688</td>
	<td align=center>0.7225000</td>
	<td align=center>998.401</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:25</td>
	<td align=center>6.45150</td>
	<td align=center>72.32110</td>
	<td align=center>3.522700</td>
	<td align=center>1.045600</td>
	<td align=center>0.216100</td>
	<td align=center>0.243500</td>
	<td align=center>0.094300</td>
	<td align=center>0.052300</td>
	<td align=center>0.098700</td>
	<td align=center>15.954200</td>
	<td align=center>848.4763</td>
	<td align=center>0.7225000</td>
	<td align=center>997.839</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:20</td>
	<td align=center>6.45410</td>
	<td align=center>72.32770</td>
	<td align=center>3.526200</td>
	<td align=center>1.048500</td>
	<td align=center>0.217600</td>
	<td align=center>0.245600</td>
	<td align=center>0.089900</td>
	<td align=center>0.044500</td>
	<td align=center>0.098700</td>
	<td align=center>15.947100</td>
	<td align=center>847.8974</td>
	<td align=center>0.7224000</td>
	<td align=center>998.192</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:15</td>
	<td align=center>6.44460</td>
	<td align=center>72.30750</td>
	<td align=center>3.516300</td>
	<td align=center>1.043100</td>
	<td align=center>0.215600</td>
	<td align=center>0.243400</td>
	<td align=center>0.093800</td>
	<td align=center>0.049300</td>
	<td align=center>0.098800</td>
	<td align=center>15.987500</td>
	<td align=center>848.4147</td>
	<td align=center>0.7225000</td>
	<td align=center>997.959</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:10</td>
	<td align=center>6.45030</td>
	<td align=center>72.32200</td>
	<td align=center>3.521600</td>
	<td align=center>1.045200</td>
	<td align=center>0.216300</td>
	<td align=center>0.244100</td>
	<td align=center>0.094900</td>
	<td align=center>0.052400</td>
	<td align=center>0.099000</td>
	<td align=center>15.954100</td>
	<td align=center>847.8906</td>
	<td align=center>0.7224000</td>
	<td align=center>997.549</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:05</td>
	<td align=center>6.44760</td>
	<td align=center>72.31170</td>
	<td align=center>3.514800</td>
	<td align=center>1.041600</td>
	<td align=center>0.213900</td>
	<td align=center>0.241800</td>
	<td align=center>0.094700</td>
	<td align=center>0.051800</td>
	<td align=center>0.098600</td>
	<td align=center>15.983600</td>
	<td align=center>848.5999</td>
	<td align=center>0.7225000</td>
	<td align=center>998.110</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:55</td>
	<td align=center>6.44630</td>
	<td align=center>72.32560</td>
	<td align=center>3.518000</td>
	<td align=center>1.044300</td>
	<td align=center>0.215500</td>
	<td align=center>0.243300</td>
	<td align=center>0.094900</td>
	<td align=center>0.052600</td>
	<td align=center>0.098800</td>
	<td align=center>15.960800</td>
	<td align=center>848.2180</td>
	<td align=center>0.7226000</td>
	<td align=center>997.935</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:50</td>
	<td align=center>6.44600</td>
	<td align=center>72.30110</td>
	<td align=center>3.518000</td>
	<td align=center>1.043300</td>
	<td align=center>0.214600</td>
	<td align=center>0.242600</td>
	<td align=center>0.097600</td>
	<td align=center>0.056100</td>
	<td align=center>0.098500</td>
	<td align=center>15.982200</td>
	<td align=center>848.0567</td>
	<td align=center>0.7225000</td>
	<td align=center>998.027</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:45</td>
	<td align=center>6.44690</td>
	<td align=center>72.30390</td>
	<td align=center>3.516500</td>
	<td align=center>1.045800</td>
	<td align=center>0.216600</td>
	<td align=center>0.243800</td>
	<td align=center>0.095000</td>
	<td align=center>0.050400</td>
	<td align=center>0.098500</td>
	<td align=center>15.982500</td>
	<td align=center>847.6381</td>
	<td align=center>0.7223000</td>
	<td align=center>997.807</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:40</td>
	<td align=center>6.43750</td>
	<td align=center>72.29040</td>
	<td align=center>3.507400</td>
	<td align=center>1.046800</td>
	<td align=center>0.218600</td>
	<td align=center>0.245000</td>
	<td align=center>0.093800</td>
	<td align=center>0.052400</td>
	<td align=center>0.098700</td>
	<td align=center>16.009200</td>
	<td align=center>847.8540</td>
	<td align=center>0.7224000</td>
	<td align=center>997.319</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:35</td>
	<td align=center>6.44660</td>
	<td align=center>72.31520</td>
	<td align=center>3.516400</td>
	<td align=center>1.038900</td>
	<td align=center>0.211900</td>
	<td align=center>0.240700</td>
	<td align=center>0.096000</td>
	<td align=center>0.051700</td>
	<td align=center>0.099100</td>
	<td align=center>15.983600</td>
	<td align=center>847.8965</td>
	<td align=center>0.7224000</td>
	<td align=center>997.495</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:30</td>
	<td align=center>6.44820</td>
	<td align=center>72.31270</td>
	<td align=center>3.514200</td>
	<td align=center>1.041300</td>
	<td align=center>0.214200</td>
	<td align=center>0.242100</td>
	<td align=center>0.093400</td>
	<td align=center>0.052300</td>
	<td align=center>0.099200</td>
	<td align=center>15.982400</td>
	<td align=center>847.7394</td>
	<td align=center>0.7223000</td>
	<td align=center>997.523</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:25</td>
	<td align=center>6.44190</td>
	<td align=center>72.31910</td>
	<td align=center>3.510000</td>
	<td align=center>1.037500</td>
	<td align=center>0.213100</td>
	<td align=center>0.241900</td>
	<td align=center>0.093800</td>
	<td align=center>0.052100</td>
	<td align=center>0.098800</td>
	<td align=center>15.991700</td>
	<td align=center>847.5835</td>
	<td align=center>0.7223000</td>
	<td align=center>997.545</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:20</td>
	<td align=center>6.44680</td>
	<td align=center>72.29500</td>
	<td align=center>3.511600</td>
	<td align=center>1.042300</td>
	<td align=center>0.214800</td>
	<td align=center>0.243200</td>
	<td align=center>0.097400</td>
	<td align=center>0.054200</td>
	<td align=center>0.098500</td>
	<td align=center>15.996600</td>
	<td align=center>847.6888</td>
	<td align=center>0.7224000</td>
	<td align=center>997.256</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:15</td>
	<td align=center>6.43890</td>
	<td align=center>72.29500</td>
	<td align=center>3.511600</td>
	<td align=center>1.046400</td>
	<td align=center>0.216900</td>
	<td align=center>0.243900</td>
	<td align=center>0.090900</td>
	<td align=center>0.048300</td>
	<td align=center>0.099200</td>
	<td align=center>16.008900</td>
	<td align=center>847.8196</td>
	<td align=center>0.7226000</td>
	<td align=center>997.502</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:10</td>
	<td align=center>6.43780</td>
	<td align=center>72.28220</td>
	<td align=center>3.507000</td>
	<td align=center>1.045100</td>
	<td align=center>0.219000</td>
	<td align=center>0.245500</td>
	<td align=center>0.094000</td>
	<td align=center>0.051800</td>
	<td align=center>0.098900</td>
	<td align=center>16.018600</td>
	<td align=center>847.8058</td>
	<td align=center>0.7224000</td>
	<td align=center>997.303</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:05</td>
	<td align=center>6.43830</td>
	<td align=center>72.30410</td>
	<td align=center>3.505400</td>
	<td align=center>1.042100</td>
	<td align=center>0.217400</td>
	<td align=center>0.243500</td>
	<td align=center>0.093900</td>
	<td align=center>0.051500</td>
	<td align=center>0.099000</td>
	<td align=center>16.004700</td>
	<td align=center>847.2256</td>
	<td align=center>0.7224000</td>
	<td align=center>997.339</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:55</td>
	<td align=center>6.44390</td>
	<td align=center>72.31550</td>
	<td align=center>3.512400</td>
	<td align=center>1.036200</td>
	<td align=center>0.211100</td>
	<td align=center>0.240800</td>
	<td align=center>0.093500</td>
	<td align=center>0.049200</td>
	<td align=center>0.099400</td>
	<td align=center>15.998200</td>
	<td align=center>847.7160</td>
	<td align=center>0.7223000</td>
	<td align=center>997.617</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:50</td>
	<td align=center>6.44020</td>
	<td align=center>72.31550</td>
	<td align=center>3.510700</td>
	<td align=center>1.036700</td>
	<td align=center>0.212000</td>
	<td align=center>0.241500</td>
	<td align=center>0.095000</td>
	<td align=center>0.052200</td>
	<td align=center>0.099200</td>
	<td align=center>15.997100</td>
	<td align=center>847.8514</td>
	<td align=center>0.7224000</td>
	<td align=center>997.193</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:45</td>
	<td align=center>6.43400</td>
	<td align=center>72.31420</td>
	<td align=center>3.506800</td>
	<td align=center>1.041000</td>
	<td align=center>0.215900</td>
	<td align=center>0.243900</td>
	<td align=center>0.093400</td>
	<td align=center>0.050900</td>
	<td align=center>0.099600</td>
	<td align=center>16.000300</td>
	<td align=center>848.0815</td>
	<td align=center>0.7226000</td>
	<td align=center>997.395</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:40</td>
	<td align=center>6.44110</td>
	<td align=center>72.29330</td>
	<td align=center>3.512200</td>
	<td align=center>1.045700</td>
	<td align=center>0.217400</td>
	<td align=center>0.244700</td>
	<td align=center>0.094000</td>
	<td align=center>0.052200</td>
	<td align=center>0.099100</td>
	<td align=center>16.000400</td>
	<td align=center>847.9948</td>
	<td align=center>0.7226000</td>
	<td align=center>997.671</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:35</td>
	<td align=center>6.43860</td>
	<td align=center>72.28470</td>
	<td align=center>3.510000</td>
	<td align=center>1.046300</td>
	<td align=center>0.218000</td>
	<td align=center>0.244700</td>
	<td align=center>0.095300</td>
	<td align=center>0.054000</td>
	<td align=center>0.098600</td>
	<td align=center>16.009700</td>
	<td align=center>847.7848</td>
	<td align=center>0.7223000</td>
	<td align=center>997.553</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:30</td>
	<td align=center>6.44080</td>
	<td align=center>72.31730</td>
	<td align=center>3.509700</td>
	<td align=center>1.040000</td>
	<td align=center>0.214400</td>
	<td align=center>0.242800</td>
	<td align=center>0.093100</td>
	<td align=center>0.051200</td>
	<td align=center>0.098700</td>
	<td align=center>15.991800</td>
	<td align=center>848.0761</td>
	<td align=center>0.7225000</td>
	<td align=center>997.523</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:25</td>
	<td align=center>6.43810</td>
	<td align=center>72.30840</td>
	<td align=center>3.508800</td>
	<td align=center>1.045500</td>
	<td align=center>0.217100</td>
	<td align=center>0.244400</td>
	<td align=center>0.095100</td>
	<td align=center>0.051900</td>
	<td align=center>0.098900</td>
	<td align=center>15.991800</td>
	<td align=center>848.0761</td>
	<td align=center>0.7225000</td>
	<td align=center>997.477</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:20</td>
	<td align=center>6.44500</td>
	<td align=center>72.30640</td>
	<td align=center>3.516600</td>
	<td align=center>1.044200</td>
	<td align=center>0.216400</td>
	<td align=center>0.244300</td>
	<td align=center>0.095400</td>
	<td align=center>0.052800</td>
	<td align=center>0.099300</td>
	<td align=center>15.979500</td>
	<td align=center>848.2207</td>
	<td align=center>0.7225000</td>
	<td align=center>997.729</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:15</td>
	<td align=center>6.44610</td>
	<td align=center>72.31020</td>
	<td align=center>3.517000</td>
	<td align=center>1.043900</td>
	<td align=center>0.215900</td>
	<td align=center>0.244000</td>
	<td align=center>0.095400</td>
	<td align=center>0.053300</td>
	<td align=center>0.099100</td>
	<td align=center>15.975300</td>
	<td align=center>848.5800</td>
	<td align=center>0.7226000</td>
	<td align=center>997.829</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:10</td>
	<td align=center>6.45480</td>
	<td align=center>72.31020</td>
	<td align=center>3.526200</td>
	<td align=center>1.047700</td>
	<td align=center>0.217100</td>
	<td align=center>0.245300</td>
	<td align=center>0.095700</td>
	<td align=center>0.053100</td>
	<td align=center>0.099300</td>
	<td align=center>15.950600</td>
	<td align=center>848.6817</td>
	<td align=center>0.7226000</td>
	<td align=center>997.858</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:05</td>
	<td align=center>6.45520</td>
	<td align=center>72.32210</td>
	<td align=center>3.528300</td>
	<td align=center>1.047900</td>
	<td align=center>0.216300</td>
	<td align=center>0.244400</td>
	<td align=center>0.095500</td>
	<td align=center>0.053500</td>
	<td align=center>0.099100</td>
	<td align=center>15.937800</td>
	<td align=center>848.8757</td>
	<td align=center>0.7225000</td>
	<td align=center>998.206</td> 
	<td>&nbsp;</td> 
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
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:55</td>
	<td align=center>6.45200</td>
	<td align=center>72.33590</td>
	<td align=center>3.526100</td>
	<td align=center>1.041900</td>
	<td align=center>0.213100</td>
	<td align=center>0.242700</td>
	<td align=center>0.096700</td>
	<td align=center>0.054500</td>
	<td align=center>0.099000</td>
	<td align=center>15.937900</td>
	<td align=center>848.8810</td>
	<td align=center>0.7225000</td>
	<td align=center>998.527</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:50</td>
	<td align=center>6.46760</td>
	<td align=center>72.33940</td>
	<td align=center>3.536000</td>
	<td align=center>1.052300</td>
	<td align=center>0.218700</td>
	<td align=center>0.245900</td>
	<td align=center>0.091800</td>
	<td align=center>0.049400</td>
	<td align=center>0.098100</td>
	<td align=center>15.900600</td>
	<td align=center>848.8442</td>
	<td align=center>0.7224000</td>
	<td align=center>998.320</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:45</td>
	<td align=center>6.46420</td>
	<td align=center>72.35710</td>
	<td align=center>3.534800</td>
	<td align=center>1.047500</td>
	<td align=center>0.215700</td>
	<td align=center>0.244300</td>
	<td align=center>0.093500</td>
	<td align=center>0.049900</td>
	<td align=center>0.097900</td>
	<td align=center>15.895000</td>
	<td align=center>848.9297</td>
	<td align=center>0.7225000</td>
	<td align=center>998.652</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:40</td>
	<td align=center>6.45750</td>
	<td align=center>72.33710</td>
	<td align=center>3.534700</td>
	<td align=center>1.050300</td>
	<td align=center>0.217900</td>
	<td align=center>0.245300</td>
	<td align=center>0.097300</td>
	<td align=center>0.054700</td>
	<td align=center>0.097800</td>
	<td align=center>15.907900</td>
	<td align=center>848.9064</td>
	<td align=center>0.7225000</td>
	<td align=center>998.715</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:35</td>
	<td align=center>6.45690</td>
	<td align=center>72.34040</td>
	<td align=center>3.532300</td>
	<td align=center>1.049600</td>
	<td align=center>0.216600</td>
	<td align=center>0.244700</td>
	<td align=center>0.095800</td>
	<td align=center>0.053700</td>
	<td align=center>0.096900</td>
	<td align=center>15.913100</td>
	<td align=center>848.6962</td>
	<td align=center>0.7225000</td>
	<td align=center>998.677</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:30</td>
	<td align=center>6.45690</td>
	<td align=center>72.34040</td>
	<td align=center>3.532300</td>
	<td align=center>1.049600</td>
	<td align=center>0.216600</td>
	<td align=center>0.244700</td>
	<td align=center>0.095800</td>
	<td align=center>0.053700</td>
	<td align=center>0.096900</td>
	<td align=center>15.913100</td>
	<td align=center>848.6962</td>
	<td align=center>0.7225000</td>
	<td align=center>998.677</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:25</td>
	<td align=center>6.46450</td>
	<td align=center>72.33090</td>
	<td align=center>3.538700</td>
	<td align=center>1.051300</td>
	<td align=center>0.217500</td>
	<td align=center>0.245500</td>
	<td align=center>0.092900</td>
	<td align=center>0.048600</td>
	<td align=center>0.096500</td>
	<td align=center>15.913600</td>
	<td align=center>848.8936</td>
	<td align=center>0.7225000</td>
	<td align=center>998.710</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:20</td>
	<td align=center>6.46500</td>
	<td align=center>72.33360</td>
	<td align=center>3.536300</td>
	<td align=center>1.052100</td>
	<td align=center>0.219400</td>
	<td align=center>0.246200</td>
	<td align=center>0.093600</td>
	<td align=center>0.051400</td>
	<td align=center>0.095800</td>
	<td align=center>15.906700</td>
	<td align=center>848.1544</td>
	<td align=center>0.7225000</td>
	<td align=center>998.647</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:15</td>
	<td align=center>6.47350</td>
	<td align=center>72.31400</td>
	<td align=center>3.526200</td>
	<td align=center>1.045700</td>
	<td align=center>0.215500</td>
	<td align=center>0.243000</td>
	<td align=center>0.094100</td>
	<td align=center>0.052100</td>
	<td align=center>0.095600</td>
	<td align=center>15.940400</td>
	<td align=center>848.4707</td>
	<td align=center>0.7224000</td>
	<td align=center>998.347</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:10</td>
	<td align=center>6.46290</td>
	<td align=center>72.34050</td>
	<td align=center>3.531800</td>
	<td align=center>1.047500</td>
	<td align=center>0.216000</td>
	<td align=center>0.242700</td>
	<td align=center>0.093000</td>
	<td align=center>0.051200</td>
	<td align=center>0.095100</td>
	<td align=center>15.919400</td>
	<td align=center>848.4968</td>
	<td align=center>0.7223000</td>
	<td align=center>997.761</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:05</td>
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
	<td align=center>848.5190</td>
	<td align=center>0.7223000</td>
	<td align=center>998.364</td> 
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
