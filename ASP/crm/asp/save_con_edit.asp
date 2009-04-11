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
	Dim ctid, cgcode, opendate1, h1, m1, D1, ct_no, empid1, empid2, empid3, custname1, custtel1, custfax1, custmail1, custname2, custtel2, custfax2, custmail2, custname3, custtel3, custfax3, custmail3, checkboxall, check, checkcount, remark, checkboxall2, check2, checkcount2, remark2, detail
	ctid = Request.Form("ctid")
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

	Sql = "UPDATE CONTACT set  CT_DATEMET=CONVERT(DATETIME, '" & right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2) & " " & h1 & ":" & m1 & ":00', 102), CT_TYPEMET='" & D1 & "', CT_EMPMET='" & empid1 & "', CT_EMPMET1='" & empid2 & "', CT_EMPMET2='" & empid3 & "', CT_CUST_NAME='" & custname1 & "', CT_CUST_TEL='" & custtel1 & "', CT_CUST_FAX='" & custfax1 & "', CT_CUST_EMAIL='" & custmail1 & "', CT_CUST_NAME1='" & custname2 & "', CT_CUST_TEL1='" & custtel2 & "', CT_CUST_FAX1='" & custfax2 & "', CT_CUST_EMAIL1='" & custmail2 & "', CT_CUST_NAME2='" & custname3 & "', CT_CUST_TEL2='" & custtel3 & "', CT_CUST_FAX2='" & custfax3 & "', CT_CUST_EMAIL2='" & custmail3 & "', CT_REMARK='" & detail & "', CT_DATEUPDATE=getdate(), CT_EMPUPDATE='" & Session("User_Id") & "' WHERE CT_ID=" & ctid & " "
	Rs2.Open Sql,Session("Conn1"),1,3
	
	Dim i
	Sql = "DELETE CON_OBJECT WHERE CT_ID = " & ctid & " "
	Rs.Open Sql,Session("Conn1"),1,3
	for i=0 to checkcount-1
		Sql = "INSERT INTO CON_OBJECT(CT_ID, OID, REMARK) VALUES(" & ctid & "," & check(i) & ",'" & remark & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
	next

	Sql = "DELETE CON_RESULT WHERE CT_ID = " & ctid & " "
	Rs.Open Sql,Session("Conn1"),1,3
	for i=0 to checkcount2-1
		Sql = "INSERT INTO CON_RESULT(CT_ID, REID, REMARK) VALUES(" & ctid & "," & check2(i) & ",'" & remark2 & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
	next
%>
<script language=javascript>
	alert('บันทึกข้อมูลเรียบร้อย');
	top.Desktop2.document.body.style.cursor='wait'; 
	top.HideWindow('Desktop2');
</script>
</BODY>
</HTML>
