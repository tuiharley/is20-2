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
<title>Gas Quality Past 7 Days</title>
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
	<td width="750" class="head4" bgcolor="#000066"><font color="#ffffff">Gas Quality Past 7 Days</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="574" >
  <tr class="head">
	<td bgcolor="#37a4bb" align="left" colspan="16"  ><font color="#ffff80"><strong>ON LINE MONITOR BY GAS CHROMATOGRAPH  - PAST 7 DAY.</strong></font></td>
  </tr>
  <tr align="middle" bgcolor="#55caca" class="head">
	<td WIDTH="106" rowspan="2" >TIME</td>	
	<td  colspan="4" >ON#1 (AT BV.12)</td>
	<td  colspan="4" >MTP (AT DPCU)</td> 
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
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>884</td>
	<td align=center>979</td>
	<td align=center>0.73</td>
	<td align=center>1143</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>848</td>
	<td align=center>941</td>
	<td align=center>0.66</td>
	<td align=center>1159</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1142</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">22/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>875</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>872</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>870</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>879</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1137</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">21/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>885</td>
	<td align=center>980</td>
	<td align=center>0.74</td>
	<td align=center>1138</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>878</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1138</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>882</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1138</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>882</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1132</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.75</td>
	<td align=center>1131</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">20/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.75</td>
	<td align=center>1130</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.75</td>
	<td align=center>1128</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.75</td>
	<td align=center>1127</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>875</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
	<td align=center>885</td>
	<td align=center>979</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>872</td>
	<td align=center>965</td>
	<td align=center>0.73</td>
	<td align=center>1129</td>
	<td align=center>887</td>
	<td align=center>981</td>
	<td align=center>0.74</td>
	<td align=center>1139</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>873</td>
	<td align=center>966</td>
	<td align=center>0.73</td>
	<td align=center>1131</td>
	<td align=center>885</td>
	<td align=center>980</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>873</td>
	<td align=center>967</td>
	<td align=center>0.73</td>
	<td align=center>1132</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1127</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.75</td>
	<td align=center>1131</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>867</td>
	<td align=center>960</td>
	<td align=center>0.73</td>
	<td align=center>1122</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.75</td>
	<td align=center>1129</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>872</td>
	<td align=center>965</td>
	<td align=center>0.73</td>
	<td align=center>1128</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.75</td>
	<td align=center>1126</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1127</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>886</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>887</td>
	<td align=center>981</td>
	<td align=center>0.75</td>
	<td align=center>1130</td>
	<td align=center>872</td>
	<td align=center>966</td>
	<td align=center>0.73</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>885</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1130</td>
	<td align=center>871</td>
	<td align=center>965</td>
	<td align=center>0.73</td>
	<td align=center>1132</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>885</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1133</td>
	<td align=center>868</td>
	<td align=center>961</td>
	<td align=center>0.72</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>886</td>
	<td align=center>981</td>
	<td align=center>0.75</td>
	<td align=center>1133</td>
	<td align=center>868</td>
	<td align=center>962</td>
	<td align=center>0.72</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>886</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1132</td>
	<td align=center>869</td>
	<td align=center>962</td>
	<td align=center>0.72</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>885</td>
	<td align=center>979</td>
	<td align=center>0.75</td>
	<td align=center>1130</td>
	<td align=center>869</td>
	<td align=center>962</td>
	<td align=center>0.72</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>885</td>
	<td align=center>979</td>
	<td align=center>0.75</td>
	<td align=center>1130</td>
	<td align=center>872</td>
	<td align=center>966</td>
	<td align=center>0.73</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>886</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1132</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">19/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>886</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1133</td>
	<td align=center>873</td>
	<td align=center>967</td>
	<td align=center>0.73</td>
	<td align=center>1132</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>886</td>
	<td align=center>981</td>
	<td align=center>0.75</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>885</td>
	<td align=center>979</td>
	<td align=center>0.75</td>
	<td align=center>1133</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>884</td>
	<td align=center>979</td>
	<td align=center>0.75</td>
	<td align=center>1133</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.75</td>
	<td align=center>1132</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1129</td>
	<td align=center>885</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1127</td>
	<td align=center>886</td>
	<td align=center>981</td>
	<td align=center>0.75</td>
	<td align=center>1131</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1124</td>
	<td align=center>886</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.76</td>
	<td align=center>1123</td>
	<td align=center>886</td>
	<td align=center>981</td>
	<td align=center>0.75</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.75</td>
	<td align=center>1120</td>
	<td align=center>885</td>
	<td align=center>979</td>
	<td align=center>0.75</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>868</td>
	<td align=center>961</td>
	<td align=center>0.73</td>
	<td align=center>1123</td>
	<td align=center>885</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1133</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>863</td>
	<td align=center>957</td>
	<td align=center>0.72</td>
	<td align=center>1129</td>
	<td align=center>886</td>
	<td align=center>980</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.72</td>
	<td align=center>1128</td>
	<td align=center>884</td>
	<td align=center>979</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>865</td>
	<td align=center>958</td>
	<td align=center>0.72</td>
	<td align=center>1128</td>
	<td align=center>884</td>
	<td align=center>979</td>
	<td align=center>0.75</td>
	<td align=center>1131</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>862</td>
	<td align=center>955</td>
	<td align=center>0.72</td>
	<td align=center>1125</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>860</td>
	<td align=center>953</td>
	<td align=center>0.72</td>
	<td align=center>1121</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1127</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>868</td>
	<td align=center>961</td>
	<td align=center>0.74</td>
	<td align=center>1116</td>
	<td align=center>885</td>
	<td align=center>979</td>
	<td align=center>0.76</td>
	<td align=center>1126</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>839</td>
	<td align=center>930</td>
	<td align=center>0.71</td>
	<td align=center>1100</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1124</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>843</td>
	<td align=center>935</td>
	<td align=center>0.72</td>
	<td align=center>1101</td>
	<td align=center>870</td>
	<td align=center>963</td>
	<td align=center>0.73</td>
	<td align=center>1126</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>846</td>
	<td align=center>937</td>
	<td align=center>0.72</td>
	<td align=center>1101</td>
	<td align=center>863</td>
	<td align=center>956</td>
	<td align=center>0.71</td>
	<td align=center>1131</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>846</td>
	<td align=center>938</td>
	<td align=center>0.73</td>
	<td align=center>1099</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.72</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>845</td>
	<td align=center>937</td>
	<td align=center>0.72</td>
	<td align=center>1100</td>
	<td align=center>865</td>
	<td align=center>958</td>
	<td align=center>0.72</td>
	<td align=center>1130</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>843</td>
	<td align=center>934</td>
	<td align=center>0.72</td>
	<td align=center>1098</td>
	<td align=center>862</td>
	<td align=center>955</td>
	<td align=center>0.72</td>
	<td align=center>1124</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>845</td>
	<td align=center>937</td>
	<td align=center>0.72</td>
	<td align=center>1102</td>
	<td align=center>861</td>
	<td align=center>954</td>
	<td align=center>0.72</td>
	<td align=center>1123</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>845</td>
	<td align=center>936</td>
	<td align=center>0.72</td>
	<td align=center>1100</td>
	<td align=center>863</td>
	<td align=center>956</td>
	<td align=center>0.73</td>
	<td align=center>1117</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">18/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>840</td>
	<td align=center>931</td>
	<td align=center>0.73</td>
	<td align=center>1093</td>
	<td align=center>838</td>
	<td align=center>929</td>
	<td align=center>0.71</td>
	<td align=center>1103</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>844</td>
	<td align=center>935</td>
	<td align=center>0.73</td>
	<td align=center>1098</td>
	<td align=center>838</td>
	<td align=center>929</td>
	<td align=center>0.71</td>
	<td align=center>1099</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>844</td>
	<td align=center>935</td>
	<td align=center>0.73</td>
	<td align=center>1095</td>
	<td align=center>844</td>
	<td align=center>936</td>
	<td align=center>0.72</td>
	<td align=center>1101</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>845</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1096</td>
	<td align=center>844</td>
	<td align=center>935</td>
	<td align=center>0.72</td>
	<td align=center>1100</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>845</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1093</td>
	<td align=center>846</td>
	<td align=center>937</td>
	<td align=center>0.72</td>
	<td align=center>1102</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>845</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1092</td>
	<td align=center>846</td>
	<td align=center>938</td>
	<td align=center>0.73</td>
	<td align=center>1100</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>846</td>
	<td align=center>938</td>
	<td align=center>0.74</td>
	<td align=center>1093</td>
	<td align=center>844</td>
	<td align=center>935</td>
	<td align=center>0.72</td>
	<td align=center>1100</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>847</td>
	<td align=center>938</td>
	<td align=center>0.74</td>
	<td align=center>1093</td>
	<td align=center>842</td>
	<td align=center>933</td>
	<td align=center>0.72</td>
	<td align=center>1099</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>846</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1095</td>
	<td align=center>845</td>
	<td align=center>936</td>
	<td align=center>0.72</td>
	<td align=center>1102</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>846</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1094</td>
	<td align=center>842</td>
	<td align=center>933</td>
	<td align=center>0.72</td>
	<td align=center>1098</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>845</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1095</td>
	<td align=center>840</td>
	<td align=center>931</td>
	<td align=center>0.72</td>
	<td align=center>1093</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>844</td>
	<td align=center>935</td>
	<td align=center>0.73</td>
	<td align=center>1096</td>
	<td align=center>843</td>
	<td align=center>934</td>
	<td align=center>0.72</td>
	<td align=center>1098</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>846</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1096</td>
	<td align=center>845</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1096</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>848</td>
	<td align=center>940</td>
	<td align=center>0.73</td>
	<td align=center>1098</td>
	<td align=center>844</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1093</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>848</td>
	<td align=center>939</td>
	<td align=center>0.74</td>
	<td align=center>1094</td>
	<td align=center>844</td>
	<td align=center>935</td>
	<td align=center>0.73</td>
	<td align=center>1092</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>845</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1098</td>
	<td align=center>846</td>
	<td align=center>937</td>
	<td align=center>0.74</td>
	<td align=center>1093</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>852</td>
	<td align=center>943</td>
	<td align=center>0.74</td>
	<td align=center>1096</td>
	<td align=center>845</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1094</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>853</td>
	<td align=center>945</td>
	<td align=center>0.75</td>
	<td align=center>1091</td>
	<td align=center>846</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1096</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>853</td>
	<td align=center>945</td>
	<td align=center>0.75</td>
	<td align=center>1089</td>
	<td align=center>845</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1096</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>852</td>
	<td align=center>944</td>
	<td align=center>0.75</td>
	<td align=center>1088</td>
	<td align=center>845</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1097</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>850</td>
	<td align=center>941</td>
	<td align=center>0.75</td>
	<td align=center>1088</td>
	<td align=center>848</td>
	<td align=center>939</td>
	<td align=center>0.73</td>
	<td align=center>1098</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>856</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1097</td>
	<td align=center>848</td>
	<td align=center>940</td>
	<td align=center>0.73</td>
	<td align=center>1097</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>856</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1096</td>
	<td align=center>847</td>
	<td align=center>939</td>
	<td align=center>0.74</td>
	<td align=center>1094</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>856</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1097</td>
	<td align=center>843</td>
	<td align=center>935</td>
	<td align=center>0.73</td>
	<td align=center>1095</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">17/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>856</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1096</td>
	<td align=center>844</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1097</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>856</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1095</td>
	<td align=center>853</td>
	<td align=center>945</td>
	<td align=center>0.74</td>
	<td align=center>1094</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>856</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1096</td>
	<td align=center>853</td>
	<td align=center>944</td>
	<td align=center>0.75</td>
	<td align=center>1090</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>855</td>
	<td align=center>947</td>
	<td align=center>0.75</td>
	<td align=center>1096</td>
	<td align=center>853</td>
	<td align=center>944</td>
	<td align=center>0.75</td>
	<td align=center>1089</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>852</td>
	<td align=center>944</td>
	<td align=center>0.74</td>
	<td align=center>1097</td>
	<td align=center>851</td>
	<td align=center>942</td>
	<td align=center>0.75</td>
	<td align=center>1084</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>853</td>
	<td align=center>945</td>
	<td align=center>0.74</td>
	<td align=center>1097</td>
	<td align=center>855</td>
	<td align=center>946</td>
	<td align=center>0.75</td>
	<td align=center>1095</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>854</td>
	<td align=center>945</td>
	<td align=center>0.74</td>
	<td align=center>1098</td>
	<td align=center>855</td>
	<td align=center>947</td>
	<td align=center>0.75</td>
	<td align=center>1096</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>852</td>
	<td align=center>944</td>
	<td align=center>0.74</td>
	<td align=center>1097</td>
	<td align=center>856</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1097</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>852</td>
	<td align=center>944</td>
	<td align=center>0.74</td>
	<td align=center>1100</td>
	<td align=center>857</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1096</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>852</td>
	<td align=center>943</td>
	<td align=center>0.73</td>
	<td align=center>1101</td>
	<td align=center>856</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1097</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>851</td>
	<td align=center>943</td>
	<td align=center>0.74</td>
	<td align=center>1100</td>
	<td align=center>855</td>
	<td align=center>947</td>
	<td align=center>0.75</td>
	<td align=center>1096</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>853</td>
	<td align=center>945</td>
	<td align=center>0.74</td>
	<td align=center>1099</td>
	<td align=center>851</td>
	<td align=center>943</td>
	<td align=center>0.74</td>
	<td align=center>1097</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>858</td>
	<td align=center>950</td>
	<td align=center>0.74</td>
	<td align=center>1105</td>
	<td align=center>853</td>
	<td align=center>944</td>
	<td align=center>0.74</td>
	<td align=center>1098</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;11:00</td>
	<td align=center>858</td>
	<td align=center>950</td>
	<td align=center>0.74</td>
	<td align=center>1107</td>
	<td align=center>853</td>
	<td align=center>945</td>
	<td align=center>0.74</td>
	<td align=center>1097</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>858</td>
	<td align=center>951</td>
	<td align=center>0.74</td>
	<td align=center>1105</td>
	<td align=center>851</td>
	<td align=center>943</td>
	<td align=center>0.74</td>
	<td align=center>1096</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>861</td>
	<td align=center>953</td>
	<td align=center>0.74</td>
	<td align=center>1107</td>
	<td align=center>852</td>
	<td align=center>944</td>
	<td align=center>0.74</td>
	<td align=center>1099</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>861</td>
	<td align=center>953</td>
	<td align=center>0.74</td>
	<td align=center>1107</td>
	<td align=center>854</td>
	<td align=center>946</td>
	<td align=center>0.74</td>
	<td align=center>1102</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>862</td>
	<td align=center>955</td>
	<td align=center>0.74</td>
	<td align=center>1109</td>
	<td align=center>851</td>
	<td align=center>942</td>
	<td align=center>0.73</td>
	<td align=center>1100</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>862</td>
	<td align=center>954</td>
	<td align=center>0.74</td>
	<td align=center>1108</td>
	<td align=center>853</td>
	<td align=center>945</td>
	<td align=center>0.74</td>
	<td align=center>1100</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.74</td>
	<td align=center>1110</td>
	<td align=center>857</td>
	<td align=center>949</td>
	<td align=center>0.74</td>
	<td align=center>1105</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>865</td>
	<td align=center>957</td>
	<td align=center>0.74</td>
	<td align=center>1110</td>
	<td align=center>857</td>
	<td align=center>949</td>
	<td align=center>0.74</td>
	<td align=center>1107</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>865</td>
	<td align=center>958</td>
	<td align=center>0.74</td>
	<td align=center>1110</td>
	<td align=center>857</td>
	<td align=center>949</td>
	<td align=center>0.74</td>
	<td align=center>1105</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>865</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1108</td>
	<td align=center>860</td>
	<td align=center>952</td>
	<td align=center>0.74</td>
	<td align=center>1107</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>866</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1109</td>
	<td align=center>861</td>
	<td align=center>953</td>
	<td align=center>0.74</td>
	<td align=center>1107</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">16/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>865</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1109</td>
	<td align=center>861</td>
	<td align=center>954</td>
	<td align=center>0.74</td>
	<td align=center>1109</td>
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>866</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1109</td>
	<td align=center>861</td>
	<td align=center>953</td>
	<td align=center>0.74</td>
	<td align=center>1108</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>866</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1108</td>
	<td align=center>863</td>
	<td align=center>956</td>
	<td align=center>0.74</td>
	<td align=center>1110</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>866</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1109</td>
	<td align=center>865</td>
	<td align=center>958</td>
	<td align=center>0.74</td>
	<td align=center>1110</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>866</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1106</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.74</td>
	<td align=center>1109</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.75</td>
	<td align=center>1107</td>
	<td align=center>866</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1110</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>865</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1108</td>
	<td align=center>866</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1109</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>865</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1108</td>
	<td align=center>865</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1108</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>866</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1109</td>
	<td align=center>866</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1109</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.75</td>
	<td align=center>1105</td>
	<td align=center>866</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1109</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.75</td>
	<td align=center>1106</td>
	<td align=center>866</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1108</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.75</td>
	<td align=center>1107</td>
	<td align=center>864</td>
	<td align=center>956</td>
	<td align=center>0.75</td>
	<td align=center>1107</td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
	<td align="middle">15/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.75</td>
	<td align=center>1107</td>
	<td align=center>864</td>
	<td align=center>957</td>
	<td align=center>0.75</td>
	<td align=center>1108</td>
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
