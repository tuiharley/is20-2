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
	Response.End
	end if
%>
<%
 	Dim cgcode, i
	cgcode = Request.QueryString("cgcode")
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">�ѹ�֡�������١���</font></b></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="55%"><font size="2" color="#4B0097">������к� : <%=Session("User_Name")&"  ( "&Session("User_Id")&" )"%></font></td>
                <td><font size="2" color="#4B0097">�ѹ������к� : <%=formatDateTime(Session("Date_Now"),1)%></font></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
		<% 
		Dim SQL, Rs
		set Rs = Server.CreateObject("Adodb.RecordSet")
		SQL = "SELECT     CUST_GROUP.CG_CODE, COMP_MAIN.CM_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.AREA, PROVINCE.PROVINCE, CUST_GROUP.CG_CODE FROM         CUST_GROUP INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID WHERE     (CUST_GROUP.CG_CODE = N'" & cgcode & "')"
		Rs.Open SQL, Session("Conn1"),1,3	
		%>
        <tr> 
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="13%">&nbsp;</td>
                <td width="2%" rowspan="2"><img src="../images/blank.gif"></td>
                <td width="85%"><table width="100%" border="3" cellSpacing="0" borderColor="#ada2eb" bgColor="#ffffff">
                    <tr> 
                      <td width="16%" bgColor="#306790"><div align="right"><font color="#ffffff" size="1"><b>����-ʡ��</b></font></div></td>
                      <td width="84%" bgColor="#fff0df"><font color="#4b0097" size="2"><%=Rs("CM_NAME") &"  "&Rs("CG_NAME")%> 
                        <input name="gccode" type="hidden" value="<%=Rs("CM_CODE") %>">
                        <input name="cgcode" type="hidden" value="<%=Rs("CG_CODE") %>">
                        </font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><font color="#ffffff" size="1"><b>�������</b></font></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"><%=Rs("CGADDR_BAND")&" "&Rs("CGADDR_SOI")&" "&Rs("CGADDR_STREET")&" "&Rs("CGADDR_TUMBOL")&" "&Rs("CGADDR_DISTRICT")&" "&Rs("CGADDR_PROVINCE")&" "&Rs("CGADDR_POSTCODE")%></font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><b><font size="1" color="#FFFFFF">�Ҥ��áԨ</font></b></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097">
                        <% =Rs("AREA")%>
                        </font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><b><font size="1" color="#FFFFFF">�ѧ��Ѵ</font></b></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"><%=Rs("PROVINCE")%></font></td>
                    </tr>
                  </table></td>
              </tr>
<%Rs.Close%>
              <tr> 
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f1.color='#ff0000'" onMouseOut="document.all.f1.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f1" id="f1" size="2">�����ŷ����</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f12.color='#ff0000'" onMouseOut="document.all.f12.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add12.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f12" id="f12" size="2">��������١���</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f11.color='#ff0000'" onMouseOut="document.all.f11.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add11.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f11" id="f11" size="2">�Ţ��������</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f2.color='#ff0000'" onMouseOut="document.all.f2.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add2.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f2" id="f2" size="2">����ѷ������</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f3.color='#ff0000'" onMouseOut="document.all.f3.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add3.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f3" id="f3" size="2">��Ҫԡ��Ҥ�</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f4.color='#ff0000'" onMouseOut="document.all.f4.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add4.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f4" id="f4" size="2">���˹�ҷ����Դ���</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f6.color='#ff0000'" onMouseOut="document.all.f6.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add6.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f6" id="f6" size="2">�Թ�����к�ԡ�÷��������</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f7.color='#ff0000'" onMouseOut="document.all.f7.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add7.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f7" id="f7" size="2">������ԡ�þ���� (SPC)</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f8.color='#ff0000'" onMouseOut="document.all.f8.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add8.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f8" id="f8" size="2">�Ըա�ê��Ф�Һ�ԡ��</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f9.color='#ff0000'" onMouseOut="document.all.f9.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add9.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f9" id="f9" size="2">�Թ�����к�ԡ���͹Ҥ�</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f10.color='#ff0000'" onMouseOut="document.all.f10.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add10.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f10" id="f10" size="2">�������С�����</font></div></td>
                  </tr>
                </table></td>
                <td valign="top"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="100%">
                    <tr> 
                      <td colspan="6" valign="top"><div align="center"><font color="#4B0097" size="3"><strong>�ѭ�����˵��Դ�ҡ 
                          TT&amp;T</strong></font></div></td>
                    </tr>
                    <tr> 
                      <td width="5%"><div align="center"><strong><font color="#4B0097" size="2">�ӴѺ</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">�ѭ�ҷ���Դ</font></strong></div></td>
                      <td width="20%"><div align="center"><strong><font color="#4B0097" size="2">�ѹ����Դ�ѭ��</font></strong></div></td>
                      <td width="20%"><div align="center"><strong><font color="#4B0097" size="2">������</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">�ѹ�����䢻ѭ������</font></strong></div></td>
                      <td width="10%">&nbsp;</td>
					</tr>
<%
	i=1
	Sql = "SELECT TTT_PROB.TPNAME, PROBLEM.PROB_ID, PROBLEM.PDATE, SOLVE.SOLNAME, PROBLEM.SDATE FROM PROBLEM INNER JOIN SOLVE ON PROBLEM.SOLID = SOLVE.SOLID INNER JOIN TTT_PROB ON PROBLEM.PID = TTT_PROB.TPID WHERE (PROBLEM.CG_CODE = '"& cgcode &"') AND PROBLEM.TYPE= 't'"
	Rs.Open SQL, Session("Conn1"),1,3	
	
	do while not Rs.EOF
%>
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2"><%=i%></font></div></td>
                      <td><font color="#4B0097" size="2"><%=Rs("TPNAME")%></font></td>
 					  <td><font color="#4B0097" size="2"><%=left(FormatDateTime(Rs("PDATE"),1),len(FormatDateTime(Rs("PDATE"),1))-4)&right(FormatDateTime(Rs("PDATE"),1),4)+543%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("SOLNAME")%></font></td>
					  <td><font color="#4B0097" size="2"><%=left(FormatDateTime(Rs("SDATE"),1),len(FormatDateTime(Rs("SDATE"),1))-4)&right(FormatDateTime(Rs("SDATE"),1),4)+543%></font></td>
               
                      <td> <div align="center">
                          <input name="Edit" type="button" id="Edit" value="���" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','160px','450px','sub_custmain_edit10_ttt.asp?cgcode=<%=cgcode%>&prob_id=<%=Rs("PROB_ID")%>');">
                          <input name="Delete" type="button" id="Delete" value="ź" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','160px','450px','sub_custmain_delete10_ttt.asp?cgcode=<%=cgcode%>&prob_id=<%=Rs("PROB_ID")%>');" <%if Cint(Session("User_Level"))<>Cint(4) and Cint(Session("User_Area"))<>Cint(Session("Temp")) then%>disabled<%end if%>>
                        </div></td>
                    </tr>
<%
		i=i+1
		Rs.MoveNext
	loop
	Rs.Close
%>
                    <tr> 
                      <td colspan="6" valign="top"><div align="right"> 
                          <input name="add" type="button" id="add" value="  ����  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','160px','450px','sub_custmain_add10_ttt.asp?cgcode=<%=cgcode%>');">
                        </div></td>
                    </tr>
				</table>
				  <table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="100%">
                    <tr> 
                      <td colspan="6" valign="top"><div align="center"><font color="#4B0097" size="3"><strong>�ѭ�����˵��Դ�ҡ�١���</strong></font></div></td>
                    </tr>
                    <tr> 
                      <td width="5%"><div align="center"><strong><font color="#4B0097" size="2">�ӴѺ</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">�ѭ�ҷ���Դ</font></strong></div></td>
                      <td width="20%"><div align="center"><strong><font color="#4B0097" size="2">�ѹ����Դ�ѭ��</font></strong></div></td>
                      <td width="20%"><div align="center"><strong><font color="#4B0097" size="2">������</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">�ѹ�����䢻ѭ������</font></strong></div></td>
                      <td width="10%">&nbsp;</td>
					</tr>
<%
	i=1
Sql = "SELECT CUST_PROB.CONAME, PROBLEM.PROB_ID, PROBLEM.PDATE, SOLVE.SOLNAME, PROBLEM.SDATE FROM PROBLEM INNER JOIN SOLVE ON PROBLEM.SOLID = SOLVE.SOLID INNER JOIN CUST_PROB ON PROBLEM.PID = CUST_PROB.CPID WHERE (PROBLEM.CG_CODE = '"& cgcode &"') AND PROBLEM.TYPE= 'c'"
	Rs.Open SQL, Session("Conn1"),1,3	
	
	do while not Rs.EOF
%>
             <tr> 
                      <td><div align="right"><font color="#4B0097" size="2"><%=i%></font></div></td>
                      <td><font color="#4B0097" size="2"><%=Rs("CONAME")%></font></td>
 					  <td><font color="#4B0097" size="2"><%=left(FormatDateTime(Rs("PDATE"),1),len(FormatDateTime(Rs("PDATE"),1))-4)&right(FormatDateTime(Rs("PDATE"),1),4)+543%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("SOLNAME")%></font></td>
					  <td><font color="#4B0097" size="2"><%=left(FormatDateTime(Rs("SDATE"),1),len(FormatDateTime(Rs("SDATE"),1))-4)&right(FormatDateTime(Rs("SDATE"),1),4)+543%></font></td>
               
                      <td> <div align="center">
                          <input name="Edit2" type="button" id="Edit2" value="���" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','160px','450px','sub_custmain_edit10_cust.asp?cgcode=<%=cgcode%>&prob_id=<%=Rs("PROB_ID")%>');">
                          <input name="Delete2" type="button" id="Delete2" value="ź" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','160px','450px','sub_custmain_delete10_cust.asp?cgcode=<%=cgcode%>&prob_id=<%=Rs("PROB_ID")%>');" <%if Cint(Session("User_Level"))<>Cint(4) and Cint(Session("User_Area"))<>Cint(Session("Temp")) then%>disabled<%end if%>>
                        </div></td>
                    </tr>
<%
		i=i+1
		Rs.MoveNext
	loop
	Rs.Close
%>
                    <tr> 
                      <td colspan="6" valign="top"><div align="right"> 
                          <input name="add" type="button" id="add" value="  ����  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','160px','450px','sub_custmain_add10_cust.asp?cgcode=<%=cgcode%>');">
                        </div></td>
                    </tr>
				</table>
				  
                </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td> <div align="center"> 
              <input id="back" type="button" value=" ��Ѻ˹����� " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop3');">
            </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
</body>
</html>