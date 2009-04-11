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
	Dim app_id, opendate1, h1, m1, opendate2, h2, m2, app_obj, app_count, remark, oid, i, emp1, emp2, emp3, emp4
	Dim APP_CUST_NAME, APP_TEL_CONTACT, APP_FAX_NO, APP_MAIL, APP_EMPAPP1, APP_EMPAPP2, APP_REMARK, app_status, cgcode
	app_id = Request.Form("app_id")
	cgcode = Request.Form("cgcode")
	opendate1 = Request.Form("opendate1")
	opendate2 = Request.Form("opendate2")
	h1 = Request.Form("h1")
	m1 = Request.Form("m1")
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
	app_status = Request.Form("app_status")
 
	Dim Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Sql = "SELECT APP_EMPAPP1, APP_EMPAPP2 FROM APPOINT WHERE (APP_ID = " & app_id &") "
	Rs.Open Sql,Session("Conn1"),1,3
	
		emp1 = Rs("APP_EMPAPP1")
		emp2 = Rs("APP_EMPAPP2")
	Rs.Close

	Sql = "UPDATE APPOINT SET APP_DATEAP=CONVERT(DATETIME, '" & right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2) & " " & h1 & ":" & m1 & ":00', 102), APP_DATECT=CONVERT(DATETIME, '" & right(opendate2,4) & "-" & mid(opendate2,4,2) & "-" & left(opendate2,2) & " " & h2 & ":" & m2 & ":00', 102), AS_STATUS_ID='" & app_status & "', APP_EMPAPP='" & Session("User_Id") & "', APP_EMPAPP1='" & APP_EMPAPP1 &"', APP_EMPAPP2='" & APP_EMPAPP2 & "', APP_DATEUPDATE=getdate(), APP_EMPUPDATE='" & Session("User_Id") & "', APP_CUST_NAME='" & APP_CUST_NAME & "', APP_TEL_CONTACT='" & APP_TEL_CONTACT & "', APP_FAX_NO='" & APP_FAX_NO & "', APP_EMAIL='" & APP_MAIL & "', APP_REMARK='" & APP_REMARK & "' WHERE APPOINT.APP_ID='" & app_id &"'"
	Rs.Open Sql,Session("Conn1"),1,3
	Sql = "DELETE APP_OBJECT WHERE APP_ID=" & app_id & " "
	Rs.Open Sql,Session("Conn1"),1,3

	oid = split(app_obj,",")
	for i=0 to Cint(app_count)-1
		if Cint(oid(i))=255 then
			Sql = "INSERT INTO APP_OBJECT(APP_ID, OID, REMARK) values(" & app_id &"," & oid(i) & ",'" & remark & "') "
		else
			Sql = "INSERT INTO APP_OBJECT(APP_ID, OID) values(" & app_id &"," & oid(i) & ") "
		end if
		Rs.Open Sql,Session("Conn1"),1,3
	next


	Dim CDONTS, emailfrom, emailto, subject, body, body2, side_ab, name, sur, check

	emailfrom = "CRM"
	subject = "CRM : แจ้งเปลี่ยนแปลงรายละเอียดการนัดหมายการเข้าพบลูกค้า"
	body2 = ""
	body2 = body2 & "<br>"
	Sql = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
	Rs.Open SQL,Session("Conn1"),1,3
		body2 = body2 & "<br><dd>มีการเปลี่ยนแปลงรายละเอียดการนัดหมายเข้าพบลูกค้า รหัส " & cgcode & " ชื่อ " & Rs("CM_NAME") & " " & Rs("CM_NAME") & " ในวันที่ "& opendate2 &"</dd> "
	Rs.Close
	Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID='" & Session("User_Id") & "' "
	Rs.Open Sql,Session("Conn1"),1,3
		body2 = body2 & "<br>โดยนัดพบคุณ" & APP_CUST_NAME & "  " & APP_TEL_CONTACT & " "
	Rs.Close
	Rs.Open Sql,Session("Conn1"),1,3
		body2 = body2 & "<br>พนักงานที่นัดหมายคือคุณ" & Rs("NAME_THAI") & "  " & Rs("SURNAME_THAI") & " (" & Rs("EMP_ID") & ") "
	Rs.Close

	check = 0
	Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID in (SELECT  EMP_ID FROM APP_EMPAPP WHERE (APP_ID = " & app_id & "))"
	Rs.Open Sql,Session("Conn1"),1,3
	if Rs.Recordcount <> 0 then 
		do while not Rs.EOF	
			if Rs("EMAIL") <> "" then
				emailto = Rs("EMAIL")
				body = ""
				body = body & "เรียนคุณ" & Rs("NAME_THAI") & "  " & Rs("SURNAME_THAI") & " "
				body = body & body2

				set CDONTS = Server.CreateObject("CDO.Message")
				CDONTS.From = emailfrom
				CDONTS.To = emailto
				'CDONTS.BodyFormat = 0
				'CDONTS.MailFormat = 0
				CDONTS.Subject = subject
				CDONTS.HTMLBody = body
				CDONTS.Send
	 	end if 
		Rs.MoveNext		
	loop
end if 
	Rs.Close
	%>
<script language=javascript>
	alert('บันทึกข้อมูลเรียบร้อย');
	top.Desktop1.document.body.style.cursor='wait'; 
	top.Desktop1.document.form5.submit();
	top.HideWindow('Desktop2');
</script>
</BODY>
</HTML>
