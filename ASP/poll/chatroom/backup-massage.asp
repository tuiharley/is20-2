<!-- #include file="style.html" -->
<%  If session("user") = "chairman" then
username = "<font color=#3E65AE><b>Chairman</b></font>"
elseif session("user") = "president" then
username = "<font color=#3E66AE><b>President</b></font>"
else
 username = "<font color=#64C6A6><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Staff</b></font>"
end if
if request("massage") <> "" then
application.lock
	application("txt15") = application("txt14")
	application("txt14") = application("txt13")
	application("txt13") = application("txt12")
	application("txt12") = application("txt11")
	application("txt11") = application("txt10")
	application("txt10") = application("txt9")
	application("txt9") = application("txt8")
	application("txt8") = application("txt7")
	application("txt7") = application("txt6")
	application("txt6") = application("txt5")
	application("txt5") = application("txt4")
	application("txt4") = application("txt3")
	application("txt3") = application("txt2")
	application("txt2") = application("txt1")
	application("txt1") = username&" : "&request("massage")
application.unlock
end if
  %>
<html>
<head>
	<title>Message</title>
	<meta http-equiv="Content-Type" content="text/html; charset=TIS-620">
	<META NAME="Author" CONTENT="Kirk Pandhumapol">
</head>
<body bgcolor="#AECBFF" onload="document.m.massage.focus();" bottommargin="0">
<form action="massage.asp" name="m" id="m" method="post"  >
<font class="f1">ข้อความ :	</font><input type="text" name="massage" id="massage" size="98" onkeyPress="if(window.event.keyCode==13){document.m.submit();}"> 
<input type="Submit" value="ส่งข้อความ">
</form>
</body>
</html>
