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
	Dim cus_id, cbus, cmcode, cgname, prov, band, home, soi, street, tumbol, dis, provname, postcode, maxnumber, cg_id, oldiframe, iframe
	cus_id = Request.Form("cus_id")
	cbus = Request.Form("cbus")
	cmcode = Request.Form("cmcode")
	cgname = Request.Form("cgname")
	prov = Request.Form("prov")
	band = Request.Form("band")
	home = Request.Form("home")
	soi = Request.Form("soi")
	street = Request.Form("street")
	tumbol = Request.Form("tumbol")
	dis = Request.Form("dis")
	provname = Request.Form("provname")
	postcode = Request.Form("postcode")
	oldiframe = Request.Form("oldiframe")
	iframe = Request.Form("iframe")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Sql = "SELECT MAX(CGADDR_ID) AS CGADDR_ID FROM CG_ADDRESS "
	Rs.Open Sql,Session("Conn1"),1,3

	cg_id = 1
	if not Rs.EOF and not Rs.BOF and Rs("CGADDR_ID")<>"" then
		cg_id = Rs("CGADDR_ID")+cg_id
	end if
	Rs.Close

	Sql = "INSERT INTO CG_ADDRESS(CGADDR_ID, CGADDR_SNAME, CGADDR_BAND, CGADDR_SOI, CGADDR_STREET, CGADDR_TUMBOL, CGADDR_DISTRICT, CGADDR_PROVINCE, CGADDR_POSTCODE) VALUES(" & cg_id & ",'" & band & "','" & home & "','" & soi & "','" & street & "','" & tumbol & "','" & dis & "','" & provname & "','" & postcode & "') "
	Rs2.Open Sql,Session("Conn1"),1,3

	Sql = "SELECT MAX(CG_CODE) AS CG_CODE FROM CUST_GROUP WHERE (CM_CODE = N'" & cmcode & "') AND (PROVINCE_ID = '" & prov & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	
	maxnumber = 1
	if not Rs.EOF and not Rs.BOF and Rs("CG_CODE")<>"" then
		maxnumber = Right(Rs("CG_CODE"),5)+maxnumber
	end if
	Rs.Close

	Dim ploc
	Sql = "SELECT P_LOC, PROVINCE_ID FROM PROVINCE WHERE (PROVINCE_ID = '"&prov&"') "
	Rs.Open Sql,Session("Conn1"),1,3
		ploc = Rs("P_LOC")
	Rs.Close

	Sql = "INSERT INTO CUST_GROUP(CG_CODE, CG_NAME, CM_CODE, PROVINCE_ID, CGADDR_ID, CG_DATE_RC, CG_CODE_RC, CG_DATE_UPDATE, CG_CODE_UPDATE) VALUES('" & cmcode&ploc&right("0000"&maxnumber,5) & "','" & cgname & "','" & cmcode & "','" & prov & "'," & cg_id & ",getdate(),'" & Session("User_Id") & "',getdate(),'" & Session("User_Id") & "') "
	Rs2.Open Sql,Session("Conn1"),1,3

	Sql = "INSERT INTO CUST_DATA(CG_CODE) VALUES('"&cmcode&ploc&right("0000"&maxnumber,5) & "') "
	Rs2.Open Sql,Session("Conn1"),1,3
	
%>
<script language=javascript>
	top.Desktop2.document.body.style.cursor='wait'; 
	top.RunWindow('<%=oldiframe%>','sub_custmain_edit11.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cmcode%>&cgcode=<%=cmcode&ploc&Right("0000"&maxnumber,5)%>');
	top.HideWindow('<%=iframe%>');
</script>
</BODY>
</HTML>
