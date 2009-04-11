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
	Dim empid, counttotal, male, female, A14, A19, A24, A29, A39, A49, A50, S, job
	Dim comsevice, comsevicecount, paymethod, easycon, remark
	Dim easycount, commu, tv, radio, newspaper, commuttt, commutttcount, data
	Dim temp, temp2, i
	empid = Request.Form("empid")
	counttotal = Request.Form("counttotal")
	male = Request.Form("male")
	female = Request.Form("female")
	A14 = Request.Form("A14")
	A19 = Request.Form("A19")
	A24 = Request.Form("A24")
	A29 = Request.Form("A29")
	A39 = Request.Form("A39")
	A49 = Request.Form("A49")
	A50 = Request.Form("A50")
	S = Request.Form("S")
	if S="" then
		S=0
	end if
	job = Request.Form("job")
	paymethod = Request.Form("paymethod")
	if paymethod="" then
		paymethod=0
	end if
	commu = Request.Form("commu")
	tv = Request.Form("tv")
	radio = Request.Form("radio")
	newspaper = Request.Form("newspaper")
	data = Request.Form("data")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Sql = "delete emp_family where empid=" & empid & " "
	Rs.Open Sql, Session("Conn1"),1,3
	Sql = "delete emp_company where empid=" & empid & " "
	Rs.Open Sql, Session("Conn1"),1,3
	Sql = "delete emp_easy where empid=" & empid & " "
	Rs.Open Sql, Session("Conn1"),1,3
	Sql = "delete emp_commu_ttt where empid=" & empid & " "
	Rs.Open Sql, Session("Conn1"),1,3

	
	Sql = "INSERT INTO EMP_FAMILY(EMPID, NUMTOTAL, NUMMALE, NUMFEMALE, NUM14, NUM19, NUM24, NUM29, NUM39, NUM49, NUM50, SALARYALL, JOBID, PAYID, COID, TVID, RAID, NPID, DIID) VALUES(" & empid & "," & counttotal & "," & male & "," & female & "," & A14 & "," & A19 & "," & A24 & "," & A29 & "," & A39 & "," & A49 & "," & A50 & "," & S & "," & job & "," & paymethod & "," & commu & "," & tv & "," & radio & "," & newspaper & "," & data & ") "
	Rs.Open Sql, Session("Conn1"),1,3

	comsevice = Request.Form("comsevice")
	comsevicecount = Request.Form("comsevicecount")
	temp = split(comsevice,",")
	if comsevicecount>0 then
		for i=0 to Cint(comsevicecount)-1
			Sql = "INSERT INTO EMP_COMPANY(EMPID, COMPID) VALUES(" & empid & "," & temp(i) & ") "
			Rs.Open Sql, Session("Conn1"),1,3
		next
	end if

	easycon = Request.Form("easycon")
	remark = Request.Form("remark")
	easycount = Request.Form("easycount")
	temp = split(easycon,",")
	temp2 = split(remark,",")
	if easycount>0 then
		for i=0 to easycount-1
			Sql = "INSERT INTO EMP_EASY(EMPID, ECID, REMARK) VALUES(" & empid & "," & temp(i) & ",'" & temp2(i) & "') "
			Rs.Open Sql, Session("Conn1"),1,3
		next
	end if

	commuttt = Request.Form("commuttt")
	commutttcount = Request.Form("commutttcount")
	temp = split(commuttt,",")
	if commutttcount>0 then
		for i=0 to commutttcount-1
			Sql = "INSERT INTO EMP_COMMU_TTT(EMPID, COID) VALUES(" & empid & "," & temp(i) & ") "
			Rs.Open Sql, Session("Conn1"),1,3
		next
	end if

%>
<script language=javascript>
	alert('บันทึกข้อมูลเรียบร้อย');
//	top.Desktop4.document.body.style.cursor='wait'; 
	top.HideWindow('Desktop4');
</script>
</BODY>
</HTML>
