<!-- #include file="style.html" -->
	<meta http-equiv="refresh" content="3;display.asp" charset=TIS-620">
	<META NAME="Author" CONTENT="Kirk Pandhumapol">
	<body leftmargin="0" bottommargin="15" topmargin="0">
	<table width=80% border="0" ><tr><td width="80%">
	<font class="f1">
<%
response.write Application("txt15")&"<br>"
response.write Application("txt14")&"<br>"
response.write Application("txt13")&"<br>"
response.write Application("txt12")&"<br>"
response.write Application("txt11")&"<br>"
response.write Application("txt10")&"<br>"
response.write Application("txt9")&"<br>"
response.write Application("txt8")&"<br>"
response.write Application("txt7")&"<br>"
response.write Application("txt6")&"<br>"
response.write Application("txt5")&"<br>"
response.write Application("txt4")&"<br>"
response.write Application("txt3")&"<br>"
response.write Application("txt2")&"<br>"
response.write Application("txt1")&"<br>"
if session("tt") <> Application("txt1") then
%>
<script language="JavaScript" >
	top.focus();
	top.top2.m.massage.focus();
</script>
<%
end if
session("tt") = Application("txt1")

 %></font></td></tr></table></body>
 

