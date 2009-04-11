<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	end if
%>
<%
	Dim input1, input2, dmonth, dyear, begindate, enddate, nday, startdate
	input1 = Request.QueryString("input1")
	input2 = Request.QueryString("input2")
	dmonth = Request.QueryString("dmonth")
	dyear = Request.QueryString("dyear")

	if dmonth="" then
		dmonth = month(Date)
		dyear = year(Date)
	end if
	begindate = "1/"&dmonth&"/"&dyear
	if dmonth+1=13 then
		enddate = "1/1/"&dyear+1
	else
		enddate = "1/"&dmonth+1&"/"&dyear
	end if
	nday = DateDiff("d",begindate,enddate)
	startdate = 2-Weekday(begindate)
	enddate = Dateadd("d",nday-1,begindate)
	
	Dim Rs, Rs1, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	Sql = "SELECT  DISTINCT CAST(CONVERT(char(10), APP_DATECT , 102) AS DATETIME) AS APP_DATECT FROM  APPOINT WHERE (APP_DATECT >= CONVERT(DATETIME, '"&dyear&"-"&dmonth&"-"&Day(begindate)&" 00:00:00', 102) AND APP_DATECT <= CONVERT(DATETIME, '"&dyear&"-"&dmonth&"-"&Day(enddate)&" 23:59:59', 102)) AND (APP_EMPAPP = '"&Session("User_Id")&"') OR (APP_DATECT >= CONVERT(DATETIME, '"&dyear&"-"&dmonth&"-"&Day(begindate)&" 00:00:00', 102) AND APP_DATECT <= CONVERT(DATETIME, '"&dyear&"-"&dmonth&"-"&Day(enddate)&" 00:00:00', 102)) AND  (APP_EMPAPP1 = '"&Session("User_Id")&"') OR (APP_DATECT >= CONVERT(DATETIME, '"&dyear&"-"&dmonth&"-"&Day(begindate)&" 00:00:00', 102) AND APP_DATECT <= CONVERT(DATETIME, '"&dyear&"-"&dmonth&"-"&Day(enddate)&" 00:00:00', 102)) AND  (APP_EMPAPP2 = '"&Session("User_Id")&"') ORDER BY  APP_DATECT "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<form name="form1" id="form1" action="" method="post">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr> 
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="8%"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><b><font color="#005279" face="JasmineUPC" size="5">บันทึกช่วยจำ</font></b></td>
          </tr>
        </table></td>
      </tr>
      <tr> 
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr> 
              <td width="10%"><img src="../images/blank.gif" width="1" height="1"></td>
              
            <td width="55%"><font size="2" color="#4B0097">ผู้ใช้ระบบ : <%=Session("User_Name")&"  ( "&Session("User_Id")&" )"%></font></td>
              <td><font size="2" color="#4B0097">วันที่ใช้ระบบ : <%=formatDateTime(Session("Date_Now"),1)%></font></td>
            </tr>
          </table></td>
      </tr>
      <tr> 
        <td>&nbsp;</td>
      </tr>
      <tr> 
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr> 
              <td><div align="center"><b><font color="#005279" size="4">นัดหมายของคุณในเดือน</font></b></div></td>
            </tr>
          </table></td>
      </tr>
      <tr> 
        <td><table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr bgcolor="#009CE8"> 
            <td height="1" colspan="31"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="3" colspan="29"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="19" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td>&nbsp;</td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td colspan="17"><div align="center"> 
                <select name="month" id="month" onchange="top.RunWindow('Desktop1','appointment.asp?dmonth='+document.form1.month.value+'&dyear='+document.form1.year.value)">
                  <option value="1" <%if Cint(dmonth)=Cint(1) then%>selected<%end if%>>มกราคม</option>
                  <option value="2" <%if Cint(dmonth)=Cint(2) then%>selected<%end if%>>กุมภาพันธ์</option>
                  <option value="3" <%if Cint(dmonth)=Cint(3) then%>selected<%end if%>>มีนาคม</option>
                  <option value="4" <%if Cint(dmonth)=Cint(4) then%>selected<%end if%>>เมษายน</option>
                  <option value="5" <%if Cint(dmonth)=Cint(5) then%>selected<%end if%>>พฤษภาคม</option>
                  <option value="6" <%if Cint(dmonth)=Cint(6) then%>selected<%end if%>>มิถุนายน</option>
                  <option value="7" <%if Cint(dmonth)=Cint(7) then%>selected<%end if%>>กรกฏาคม</option>
                  <option value="8" <%if Cint(dmonth)=Cint(8) then%>selected<%end if%>>สิงหาคม</option>
                  <option value="9" <%if Cint(dmonth)=Cint(9) then%>selected<%end if%>>กันยายน</option>
                  <option value="10" <%if Cint(dmonth)=Cint(10) then%>selected<%end if%>>ตุลาคม</option>
                  <option value="11" <%if Cint(dmonth)=Cint(11) then%>selected<%end if%>>พฤศจิกายน</option>
                  <option value="12" <%if Cint(dmonth)=Cint(12) then%>selected<%end if%>>ธันวาคม</option>
                </select>
                <select name="year" id="year" onchange="top.RunWindow('Desktop1','appointment.asp?dmonth='+document.form1.month.value+'&dyear='+document.form1.year.value)">
<%
	Dim i
	i=year(Date)
	do while i >= 2535-543
%>
                  <option value="<%=i%>" <%if Cint(dyear)=Cint(i) then%>selected<%end if%>><%=i+543%></option>
<%
		i=i-1
	loop
%>
                </select>
              </div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="19" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="3" colspan="29"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" height="21" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="30"><div align="center"><strong><font color="#FF0000" size="3">อา</font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="30"><div align="center"><strong><font size="3">จ</font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="30"><div align="center"><strong><font size="3">อ</font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="30"><div align="center"><strong><font size="3">พ</font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="30"><div align="center"><strong><font size="3">พฤ</font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="30"><div align="center"><strong><font size="3">ศ</font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="30"><div align="center"><strong><font color="#FF6666" size="3">ส</font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="3" colspan="29"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" height="20" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="3" colspan="29"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" height="21" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');" <%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="3" colspan="29"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" height="21" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand"  onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand"  onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');" <%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand"  onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="3" colspan="29"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" height="21" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="3" colspan="29"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" height="21" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand"  onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%><%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand"  onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand"  onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="3" colspan="29"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" height="21" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>  <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>1and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>1 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>1 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>1 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>1 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>1 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td  <%if not Rs.EOF and not Rs.BOF then%><%if startdate=Day(Rs("APP_DATECT")) then%>bgcolor="red"<%Rs.Movenext%>style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','appoint2.asp?selectdate=<%=startdate%>/<%=dmonth%>/<%=dyear%>');"<%end if%><%end if%> name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%> <%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="3" colspan="29"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#009CE8"> 
            <td height="1" colspan="31"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
        </table>
    </tr>
     <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<form name="form2" method="get" action="appointment.asp">
  <input name="dmonth" type="hidden" id="dmonth" value="<%=dmonth%>">
  <input name="dyear" type="hidden" id="dyear" value="<%=dyear%>">
</form>
</body>
</html>