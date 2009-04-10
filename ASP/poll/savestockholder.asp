<!-- #include file="openform.inc"-->
<%
sql = "select max(stockholder_id) from  stockholder"
gstockholder_name=request.form("stockholder_name")
gstockholder_group=request.form("stockholder_group")
gstock=request.form("stock")
Set rs=Server.CreateObject("ADODB.recordset")
rs.open sql,conn,1,3
gstockholder_id = rs(0)+1
sql  = "insert into stockholder values("&gstockholder_id&",'"&gstockholder_name&"','"&gstockholder_group&"',"&gstock&")"
'response.write sql
'response.end
conn.execute sql
if err<>0 then
rs.close
else
%>
<html>
<head>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">&#3619;&#3632;&#3610;&#3610;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;</font></b></span><b><font face="MS Sans Serif" size="4" color="#0000FF"><span lang="th">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3612;&#3641;&#3657;&#3606;&#3639;&#3629;&#3627;&#3640;&#3657;&#3609;</span></font></b></td>
  </tr>
  </table>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center"><font face="MS Sans Serif" color="#0000FF"><b><span lang="th">
&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3586;&#3629;&#3591;&#3607;&#3656;&#3634;&#3609;&#3652;&#3604;&#3657;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3648;&#3619;&#3637;&#3618;&#3610;&#3619;&#3657;&#3629;&#3618;&#3649;&#3621;&#3657;&#3623;</span></b></font></p>
<p align="center">&nbsp;</p>
<p align="center">
<input type=button value="Back" onclick="history.back(1);"> </p>
<%
response.redirect "addstockholder.asp"
end if
%>