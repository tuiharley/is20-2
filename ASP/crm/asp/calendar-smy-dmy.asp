<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body>
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
%>
<form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="5"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr>
      <td><table width="250" border="0" align="center" cellpadding="0" cellspacing="0">
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
                <select name="month" id="month" onchange="top.RunWindow('Dialog1','calendar-smy-dmy.asp?input1=<%=input1%>&input2=<%=input2%>&dmonth='+document.form1.month.value+'&dyear='+document.form1.year.value)">
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
                <select name="year" id="year" onchange="top.RunWindow('Dialog1','calendar-smy-dmy.asp?input1=<%=input1%>&input2=<%=input2%>&dmonth='+document.form1.month.value+'&dyear='+document.form1.year.value)">
<%
	Dim i
	i=year(Date)+5
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
            <td><img src="../images/DELETE.ICO" width="30" height="30" onClick="top.HideWindow(self.name);"></td>
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
            <td width="1" height="21" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ff0000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ffaaaa'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
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
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ff0000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ffaaaa'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
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
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ff0000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ffaaaa'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
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
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ff0000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ffaaaa'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
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
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ff0000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ffaaaa'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
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
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ff0000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FF0000" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#000000'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="3"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td name="td<%=startdate%>" id="td<%=startdate%>" <%if startdate>0 and startdate<=nday then%>style="cursor:hand" onmouseover="document.all.f<%=startdate%>.color='#0000ff'; document.all.td<%=startdate%>.bgColor='#FFFFCC'" onmouseout="document.all.f<%=startdate%>.color='#ffaaaa'; document.all.td<%=startdate%>.bgColor='#ffffff'" onclick="doclick('<%=Right("0"&startdate,2)&"/"&Right("0"&dmonth,2)&"/"&dyear%>','<%=Right("0"&dmonth,2)&"/"&Right("0"&startdate,2)&"/"&dyear%>');"<%end if%>><div align="center"><strong><font name="f<%=startdate%>" id="f<%=startdate%>" color="#FFaaaa" size="3"><%if startdate>0 and startdate<=nday then%><%=startdate%><%end if%><%startdate=startdate+1%></font></strong></div></td>
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
        </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
  <script language=javascript>
  		m = new Array('มกราคม','กุมภาพันธ์','มีนาคม','เมษายน','พฤษภาคม','มิถุนายน','กรกฏาคม','สิงหาคม','กันยายน','ตุลาคม','พฤศจิกายน','ธันวาคม')
	function doclick(ddate1, ddate2){
		var newdate;
		newdate = new Date(ddate2);
		<%=input1%>.value=ddate1;
		<%=input2%>.value= m[newdate.getMonth()]+'  '+(parseInt(ddate2.substr(ddate2.length-4,4))+543);
		top.HideWindow(self.name);
	}
  </script>
</form>
</body>
</html>
