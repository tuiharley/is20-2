<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
%>
<HTML>
<HEAD>
	<meta http-equiv=Expires content=0>
	<meta http-equiv=Content-Type content="text/html; charset=Windows-874">
	<link href=/include/stylesheet.css rel=stylesheet type=text/css>
</HEAD>
<BODY>
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
%>
<%
	Dim cgcode, opendate1, h1, m1, opendate2, h2, m2, app_obj, app_count, remark
	Dim APP_CUST_NAME, APP_TEL_CONTACT, APP_FAX_NO, APP_MAIL, APP_EMPAPP1, APP_EMPAPP2, APP_REMARK
	cgcode = Request.Form("cgcode")
	opendate1 = Request.Form("opendate1")
	h1 = Request.Form("h1")
	m1 = Request.Form("m1")
	opendate2 = Request.Form("opendate2")
	h2 = Request.Form("h2")
	m2 = Request.Form("m2")
	app_obj = Request.Form("app_obj")
	app_count = Request.Form("app_count")
	remark = Request.Form("remark")
	APP_CUST_NAME = Request.Form("APP_CUST_NAME")
	APP_TEL_CONTACT = Request.Form("APP_TEL_CONTACT")
	APP_FAX_NO = Request.Form("APP_FAX_NO")
	APP_MAIL = Request.Form("APP_MAIL")
	APP_EMPAPP1 = Request.Form("APP_EMPAPP1")
	APP_EMPAPP2 = Request.Form("APP_EMPAPP2")
	APP_REMARK = Request.Form("APP_REMARK")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Dim app_id, i, oid
	app_id = 1
	Sql = "select max(app_id) from appoint"
	Rs2.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs2(0)) then
		app_id = Rs2(0)+1
		end if
	Rs2.Close

	Sql = "INSERT INTO APPOINT(APP_ID, CG_CODE, APP_DATEAP, APP_DATECT, AS_STATUS_ID, APP_DATERC, APP_EMPAPP, APP_EMPAPP1, APP_EMPAPP2, APP_DATEUPDATE, APP_EMPUPDATE, APP_CUST_NAME, APP_TEL_CONTACT, APP_FAX_NO, APP_EMAIL, APP_REMARK) values ("& app_id &", '" & cgcode & "', CONVERT(DATETIME, '" & right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2) & " " & h1 & ":" & m1 & ":00', 102), CONVERT(DATETIME, '" & right(opendate2,4) & "-" & mid(opendate2,4,2) & "-" & left(opendate2,2) & " " & h2 & ":" & m2 & ":00', 102),1, getdate() ,'" & Session("User_Id") & "','" & APP_EMPAPP1 &"','" & APP_EMPAPP2 & "',getdate(),'" & Session("User_Id") & "','" & APP_CUST_NAME & "','" & APP_TEL_CONTACT & "','" & APP_FAX_NO & "','" & APP_MAIL & "','" & APP_REMARK & "') "
	Rs2.Open Sql,Session("Conn1"),1,3

	oid = split(app_obj,",")
	for i=0 to Cint(app_count)-1
		if Cint(oid(i))=255 then
			Sql = "INSERT INTO APP_OBJECT(APP_ID, OID, REMARK) values(" & app_id &"," & oid(i) & ",'" & remark & "') "
		else
			Sql = "INSERT INTO APP_OBJECT(APP_ID, OID) values(" & app_id &"," & oid(i) & ") "
		end if
		Rs2.Open Sql,Session("Conn1"),1,3
	next

	Dim CDONTS, emailfrom, emailto, subject, body, body2, side_ab, name, sur

		emailfrom = "CRM"
		subject = "CRM : แจ้งนัดหมายการเข้าพบลูกค้า"
		body2 = ""
		body2 = body2 & "<br>"
	Sql = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
	Rs.Open SQL,Session("Conn1"),1,3
		body2 = body2 & "<br><dd>ท่านมีนัดหมายเข้าพบลูกค้า รหัส " & cgcode & " ชื่อ " & Rs("CM_NAME") & " " & Rs("CM_NAME") & " ในวันที่ "& opendate2 &"</dd> "
	Rs.Close
	Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID='" & Session("User_Id") & "' "
	Rs.Open Sql,Session("Conn1"),1,3
		body2 = body2 & "<br>โดยนัดพบคุณ" & APP_CUST_NAME & "  " & APP_TEL_CONTACT & " "
	Rs.Close
	Rs.Open Sql,Session("Conn1"),1,3
		body2 = body2 & "<br>พนักงานที่นัดหมายคือคุณ" & Rs("NAME_THAI") & "  " & Rs("SURNAME_THAI") & " (" & Rs("EMP_ID") & ") "
	Rs.Close

if APP_EMPAPP1<>"" then
		body = ""
	Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID='" & APP_EMPAPP1 & "' "
	Rs.Open Sql,Session("Conn1"),1,3
		emailto = Rs("EMAIL")
		body = body & "เรียนคุณ" & Rs("NAME_THAI") & "  " & Rs("SURNAME_THAI") & " "
		body = body & body2
	Rs.Close
	
		set CDONTS = Server.CreateObject("CDONTS.NewMail")
		CDONTS.From = emailfrom
		CDONTS.To = emailto
		CDONTS.BodyFormat = 0
		CDONTS.MailFormat = 0
		CDONTS.Subject = subject
		CDONTS.Body = body
		CDONTS.Send
end if

if APP_EMPAPP2<>"" then
		body = ""
	Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID='" & APP_EMPAPP2 & "' "
	Rs.Open Sql,Session("Conn1"),1,3
		emailto = Rs("EMAIL")
		body = body & "เรียนคุณ" & Rs("NAME_THAI") & "  " & Rs("SURNAME_THAI") & " "
		body = body & body2
	Rs.Close
	
		set CDONTS = Server.CreateObject("CDONTS.NewMail")
		CDONTS.From = emailfrom
		CDONTS.To = emailto
		CDONTS.BodyFormat = 0
		CDONTS.MailFormat = 0
		CDONTS.Subject = subject
		CDONTS.Body = body
		CDONTS.Send
end if

%>
<script language=javascript>
	alert('บันทึกข้อมูลเรียบร้อย');
	top.Desktop2.document.body.style.cursor='wait'; 
	top.HideWindow('Desktop2');
</script>
</BODY>
</HTML>
