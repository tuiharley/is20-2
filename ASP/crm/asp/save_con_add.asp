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
	Dim cgcode, opendate1, h1, m1, D1, ct_no, empid1, empid2, empid3, custname1, custtel1, custfax1, custmail1, custname2, custtel2, custfax2, custmail2, custname3, custtel3, custfax3, custmail3, checkboxall, check, checkcount, remark, checkboxall2, check2, checkcount2, remark2, detail
	cgcode = Request.Form("cgcode")
	opendate1 = Request.Form("opendate1")
	h1 = Request.Form("h1")
	m1 = Request.Form("m1")
	D1 = Request.Form("D1")
	ct_no = Request.Form("ct_no")
	empid1 = Request.Form("empid1")
	empid2 = Request.Form("empid2")
	empid3 = Request.Form("empid3")
	custname1 = Request.Form("custname1")
	custtel1 = Request.Form("custtel1")
	custfax1 = Request.Form("custfax1")
	custmail1 = Request.Form("custmail1")
	custname2 = Request.Form("custname2")
	custtel2 = Request.Form("custtel2")
	custfax2 = Request.Form("custfax2")
	custmail2 = Request.Form("custmail2")
	custname3 = Request.Form("custname3")
	custtel3 = Request.Form("custtel3")
	custfax3 = Request.Form("custfax3")
	custmail3 = Request.Form("custmail3")
	checkboxall = Request.Form("checkboxall")
	check = split(checkboxall,",")
	checkcount = Request.Form("checkcount")
	remark = Request.Form("remark")
	checkboxall2 = Request.Form("checkboxall2")
	check2 = split(checkboxall2,",")
	checkcount2 = Request.Form("checkcount2")
	remark2 = Request.Form("remark2")
	detail = Request.Form("detail")
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet") 

	Dim con_id
	con_id=1
	sql="SELECT max(CT_ID) AS COUNTER FROM CONTACT"
	Rs2.Open SQL,Session("Conn1"),1,3
		if not isNull(Rs2(0)) then
			con_id = Rs2("COUNTER")+1
		end if
	Rs2.Close	

	Sql = "INSERT INTO CONTACT(CT_ID, CG_CODE, CT_NO, CT_DATEMET, CT_TYPEMET, CT_EMPMET, CT_EMPMET1, CT_EMPMET2, CT_CUST_NAME, CT_CUST_TEL, CT_CUST_FAX, CT_CUST_EMAIL, CT_CUST_NAME1, CT_CUST_TEL1, CT_CUST_FAX1, CT_CUST_EMAIL1, CT_CUST_NAME2, CT_CUST_TEL2, CT_CUST_FAX2, CT_CUST_EMAIL2, CT_REMARK, CT_DATEUPDATE, CT_EMPUPDATE) values("&con_id&", '"& cgcode & "', '"& ct_no &"', CONVERT(DATETIME, '" & right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2) & " " & h1 & ":" & m1 & ":00', 102), '" & D1 & "','" & Session("User_Id") & "','" & empid2 &"', '" & empid3 & "','" & custname1 & "','" & custtel1 & "','" & custfax1 & "','" & custmail1 & "','" & custname2 & "','" & custtel2 & "','" & custfax2 & "','" & custmail2 & "','"& custname3 &"','" & custtel3 & "','" & custfax3 & "','" & custmail3 & "', '" & detail & "' ,getdate(),'" & Session("User_Id") & "')"
	Rs2.Open Sql,Session("Conn1"),1,3
	
	Dim i
	for i=0 to checkcount-1
		Sql = "INSERT INTO CON_OBJECT(CT_ID, OID, REMARK) VALUES(" & con_id & "," & check(i) & ",'" & remark & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
	next

	for i=0 to checkcount2-1
		Sql = "INSERT INTO CON_RESULT(CT_ID, REID, REMARK) VALUES(" & con_id & "," & check2(i) & ",'" & remark2 & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
	next

	Sql ="UPDATE APPOINT SET AS_STATUS_ID = 2 WHERE (CG_CODE = '" & cgcode & "') AND (APP_DATECT BETWEEN CONVERT(DATETIME, '" & right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2) & " 00:00:00', 102) AND CONVERT(DATETIME, '" & right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2) & " 23:59:59', 102)) "
	Rs2.Open Sql,Session("Conn1"),1,3

%>
<script language=javascript>
	alert('บันทึกข้อมูลเรียบร้อย');
	top.Desktop2.document.body.style.cursor='wait'; 
//	top.RunWindow('Desktop2','custgrouping.asp?cus_id=<%'=cus_id%>&cbus=<%'=cbus%>&cmcode=<%'=cbus&Right("00"&maxnumber,3)%>');
	top.HideWindow('Desktop2');
</script>
</BODY>
</HTML>
