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
	Dim cus_id, cbus, cmcode, cgname, prov, band, home, soi, street, tumbol, dis, provname, postcode, maxnumber, cgid, cgcode
	cus_id = Request.Form("cus_id")
	cbus = Request.Form("cbus")
	cmcode = Request.Form("cmcode")
	cgcode = Request.Form("cgcode")
	cgname = Request.Form("cgname")
	cgid = Request.Form("cgid")
	prov = Request.Form("prov")
	band = Request.Form("band")
	home = Request.Form("home")
	soi = Request.Form("soi")
	street = Request.Form("street")
	tumbol = Request.Form("tumbol")
	dis = Request.Form("dis")
	provname = Request.Form("provname")
	postcode = Request.Form("postcode")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Sql = "UPDATE CG_ADDRESS SET CGADDR_SNAME='" & band & "', CGADDR_BAND='" & home & "', CGADDR_SOI='" & soi & "', CGADDR_STREET='" & street & "', CGADDR_TUMBOL='" & tumbol & "', CGADDR_DISTRICT='" & dis & "', CGADDR_PROVINCE='" & provname & "', CGADDR_POSTCODE='" & postcode & "' WHERE CGADDR_ID='" & cgid & "' "
	Rs2.Open Sql,Session("Conn1"),1,3

	Sql = "UPDATE CUST_GROUP SET CG_NAME='" & cgname & "', CG_DATE_UPDATE=getdate(), CG_CODE_UPDATE='" & Session("User_Id") & "' WHERE CG_CODE='" & cgcode & "' "
	Rs2.Open Sql,Session("Conn1"),1,3
	
%>
<script language=javascript>
	top.Desktop2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop2','custgrouping.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cmcode%>&cgcode=<%=cgcode%>');
	top.HideWindow('Desktop3');
</script>
</BODY>
</HTML>
