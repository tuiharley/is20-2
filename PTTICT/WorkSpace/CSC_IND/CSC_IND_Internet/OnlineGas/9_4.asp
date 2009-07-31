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
	timerID = setTimeout(document.location='9_4.asp',300000);	  
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
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:40</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:35</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:30</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1141</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:25</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1143</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:20</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:15</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:10</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:05</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>884</td>
	<td align=center>979</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;10:00</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>884</td>
	<td align=center>979</td>
	<td align=center>0.73</td>
	<td align=center>1143</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:55</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1131</td>
	<td align=center>885</td>
	<td align=center>979</td>
	<td align=center>0.73</td>
	<td align=center>1143</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:50</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1132</td>
	<td align=center>885</td>
	<td align=center>980</td>
	<td align=center>0.73</td>
	<td align=center>1144</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:45</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:40</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:35</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>883</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:30</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>884</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1143</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:25</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
	<td align=center>882</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:20</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1141</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:15</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:10</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:05</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;09:00</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:55</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:50</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:45</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>882</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:40</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>882</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:35</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>882</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:30</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:25</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>883</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:20</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:15</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:10</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:05</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;08:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:55</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:50</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:45</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:40</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:35</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:30</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:25</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.72</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:20</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>867</td>
	<td align=center>960</td>
	<td align=center>0.71</td>
	<td align=center>1141</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:15</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>855</td>
	<td align=center>949</td>
	<td align=center>0.68</td>
	<td align=center>1150</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:10</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>847</td>
	<td align=center>940</td>
	<td align=center>0.66</td>
	<td align=center>1157</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:05</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>847</td>
	<td align=center>940</td>
	<td align=center>0.66</td>
	<td align=center>1156</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;07:00</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>848</td>
	<td align=center>941</td>
	<td align=center>0.66</td>
	<td align=center>1159</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:55</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>848</td>
	<td align=center>941</td>
	<td align=center>0.66</td>
	<td align=center>1159</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:50</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>850</td>
	<td align=center>943</td>
	<td align=center>0.66</td>
	<td align=center>1161</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:45</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>865</td>
	<td align=center>959</td>
	<td align=center>0.70</td>
	<td align=center>1146</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:40</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:35</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:30</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:25</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:20</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:15</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:10</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.72</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:05</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;06:00</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:55</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1141</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:50</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1141</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:45</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:40</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:35</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:30</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:25</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.72</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:20</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.72</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:15</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1141</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:10</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.72</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:05</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1141</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;05:00</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1142</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:55</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1141</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:50</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:45</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:40</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:35</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:30</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:25</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:20</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:15</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:10</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:05</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;04:00</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:55</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:50</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:45</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1141</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:40</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:35</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:30</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:25</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:20</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:15</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:10</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:05</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;03:00</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:55</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:50</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:45</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:40</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:35</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:30</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:25</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:20</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:15</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:10</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:05</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;02:00</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:55</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:50</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:45</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:40</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1139</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:35</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:30</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:25</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:20</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:15</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:10</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:05</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;01:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:55</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:50</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:45</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:40</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:35</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:30</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:25</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:20</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:15</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1134</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:10</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:05</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1134</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >22/12/2549&nbsp;&nbsp;00:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>875</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:55</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:50</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1134</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:45</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>874</td>
	<td align=center>967</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:40</td>
	<td align=center>879</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:35</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1137</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:30</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:25</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>874</td>
	<td align=center>967</td>
	<td align=center>0.73</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:20</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>873</td>
	<td align=center>967</td>
	<td align=center>0.73</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:15</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>873</td>
	<td align=center>967</td>
	<td align=center>0.72</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:10</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>873</td>
	<td align=center>966</td>
	<td align=center>0.72</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:05</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>871</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;23:00</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>872</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:55</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1132</td>
	<td align=center>870</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1134</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:50</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1133</td>
	<td align=center>871</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1134</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:45</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1134</td>
	<td align=center>872</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:40</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1133</td>
	<td align=center>871</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:35</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>871</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:30</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>870</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:25</td>
	<td align=center>879</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>870</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:20</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>871</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1136</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:15</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>869</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1134</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:10</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>870</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1134</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:05</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>870</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;22:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>870</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1135</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:55</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>870</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1134</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:50</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
	<td align=center>870</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1133</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:45</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>870</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1133</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:40</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>872</td>
	<td align=center>965</td>
	<td align=center>0.73</td>
	<td align=center>1133</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:35</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>873</td>
	<td align=center>966</td>
	<td align=center>0.73</td>
	<td align=center>1132</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:30</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:25</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:20</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:15</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:10</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:05</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;21:00</td>
	<td align=center>879</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:55</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:50</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:45</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:40</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:35</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:30</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:25</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:20</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:15</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:10</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:05</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;20:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:55</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:50</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:45</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:40</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:35</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:30</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:25</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:20</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:15</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:10</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:05</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;19:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:55</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:50</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:45</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:40</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:35</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:30</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:25</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:20</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:15</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:10</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:05</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;18:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:55</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:50</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:45</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>875</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1127</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:40</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>875</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:35</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:30</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:25</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:20</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>874</td>
	<td align=center>967</td>
	<td align=center>0.74</td>
	<td align=center>1127</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:15</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>874</td>
	<td align=center>967</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:10</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:05</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>874</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;17:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:55</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:50</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:45</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:40</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:35</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:30</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:25</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:20</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:15</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>875</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:10</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:05</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;16:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1136</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:55</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:50</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:45</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:40</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:35</td>
	<td align=center>881</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:30</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:25</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:20</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:15</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:10</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:05</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;15:00</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:55</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:50</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:45</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:40</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:35</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:30</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:25</td>
	<td align=center>879</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>876</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:20</td>
	<td align=center>879</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:15</td>
	<td align=center>879</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:10</td>
	<td align=center>879</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:05</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;14:00</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1128</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:55</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:50</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:45</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:40</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:35</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1133</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:30</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1133</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:25</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1132</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:20</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1133</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:15</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>877</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:10</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>878</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:05</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;13:00</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:55</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:50</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:45</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>880</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:40</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:35</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:30</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1135</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:25</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:20</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:15</td>
	<td align=center>879</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:10</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:05</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;12:00</td>
	<td align=center>882</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:55</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:50</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:45</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:40</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:35</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:30</td>
	<td align=center>881</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:25</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:20</td>
	<td align=center>880</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:15</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td>
	<td align=center>879</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1130</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:10</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
  </tr>
		  <tr class="body2" bgcolor="#E0EDFC" align="right" height="1"> 
	<td align="center" >21/12/2549&nbsp;&nbsp;11:05</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td>
	<td align=center>880</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td>
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




