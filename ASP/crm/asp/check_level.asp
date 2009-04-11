<%@LANGUAGE="VBSCRIPT"%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
On Error Resume Next
 
Dim ADsPath, pwd, uid, emp, flags
 
rename=request.form("username")
name=instr(rename,"@")
if name=0 then
	username=rename
else
	username=mid(rename,1,(name-1))
end if

ADsPath = "LDAP://add.ttt.co.th"
uid = "ttthq\" +  username		'E - M A I L    A C C O U N T
emp = username
pwd = request.form("password")                   'P A S S W O R D
flags = 0

Dim ADsNameSpace, oADsObject

Set ADsNameSpace = GetObject("LDAP:")
set oADsObject = ADsNameSpace.OpenDSObject( ADsPath, uid, pwd, flags )

Response.Write err.number
If err.number = 0 Then
    Response.redirect("http://intranet.ttt.co.th/adgetempid/webform1.aspx?email=" & emp & "&filenm=http://dev.ttt.co.th/newcrm/asp/send_login.asp")
Else
%>
<script language=javascript>
	alert("login หรือ password ไม่ถูกต้อง");
</script>
<%
End If
%>
</body>
</html>
