<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
%>
<%
	Dim user, passwd, comp
	user = Request.QueryString("sdata")
	comp = Request.QueryString("ttype")
	user = right(user,4)
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv=Content-Type content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
	Dim Rs, Sql
	set Rs = Server.CreateObject("Adodb.Recordset")

	if user <> "" then
		Session("User_Comp")=comp
		Session("User_Id")=user
		
		'บันทึกเวลาปัจจุบันใส่ในฟิลด์ end_date  และ ดึงข้อมูลจากฟิลด์ end_date ใส่ใน end_date1 แทนเพื่อนำมาอ้างอิงวันที่ Login ครั้งก่อนของไฟล์ Rep_appointment และ password_default
		Sql = "SELECT * FROM STATUS_USER WHERE (EL_EMPID = N'" & user & "') "
		Rs.Open Sql, Session("Conn1"),1,3
		if not Rs.EOF then
			Rs("su_peviousdate")=Rs("su_end_date")
			Rs("su_end_date")=cdate(now)
			Rs.update
			Rs.close


			Sql = "SELECT EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, EMP_LEVEL.L_LEVEL_CODE, PROVINCE.AREA, PROVINCE.PROVINCE_ID FROM EMPLOYEE INNER JOIN EMP_LEVEL ON EMPLOYEE.EMP_ID = EMP_LEVEL.EL_EMPID INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (EMPLOYEE.EMP_ID = '" & user & "') "
			Rs.Open Sql, Session("Conn1"),1,3
				Session("User_Name") = Rs("TITLE_THAI") & Rs("NAME_THAI") & " " & Rs("SURNAME_THAI")
				Session("User_Level") = Rs("L_LEVEL_CODE")
				Session("User_Area") = Rs("AREA")
				Session("User_Prov") = Rs("PROVINCE_ID")
			Rs.Close
%>
<script language=javascript>
<%if Cint(Session("User_Level"))=Cint(4) then%>
	top.ShowRunWindow('MenuBar','menu_admin.asp');
<%else%>
	top.ShowRunWindow('MenuBar','menu.asp');
<%end if%>
	top.ShowRunWindow('Desktop1','appointment.asp');
</script>
<%
		else
%>
<script language=javascript>
	alert('ท่านไม่สิทธิในการเข้าใช้ระบบ');
</script>
<%
		end if
	end if
%>
</body>
</html>
