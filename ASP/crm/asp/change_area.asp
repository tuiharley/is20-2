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
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Dim  area, prov ,first
	area = Request.Form("area")
	prov = Request.Form("prov")
	first = Request.Form("first")
	if area="" then
		area = Session("User_Area")
		prov = Session("User_Prov")
	end if
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">เปลี่ยนเขตการทำการ</font></b></td>
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
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="2" face="JasmineUPC">เลือกเขตที่ต้องการ</font></b></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="700" height="29" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td height="3" valign="bottom"><font size="2" color="#4B0097">ภาคธุรกิจ 
                  <select name="area" id="area" onChange="donewload();" onkeypress="if(window.event.keyCode==13){document.form1.prov.focus();}">
				  <% if first then
				  Sql= "SELECT PROVINCE.AREA,PROVINCE_ID FROM  PROVINCE INNER JOIN EMPLOYEE ON PROVINCE.P_LOC = EMPLOYEE.WORKING_PROVINCE WHERE (EMPLOYEE.EMP_ID = '" + Session("User_Id") + "')"
				  Rs.Open Sql,Session("Conn1"),1,3
				  if not Rs.Eof or not Rs.Bof then
				  area = Rs("AREA")
				  prov = Rs("PROVINCE_ID")
				  end if
				  Rs.Close
				  end if
				  %>
                        <option value="0" <%if Cint(area)=Cint(0) then%>selected<%end if%>>0</option>
                        <option value="1" <%if Cint(area)=Cint(1) then%>selected<%end if%>>1</option>
                        <option value="2" <%if Cint(area)=Cint(2) then%>selected<%end if%>>2</option>
                        <option value="3" <%if Cint(area)=Cint(3) then%>selected<%end if%>>3</option>
                        <option value="4" <%if Cint(area)=Cint(4) then%>selected<%end if%>>4</option>
                        <option value="5" <%if Cint(area)=Cint(5) then%>selected<%end if%>>5</option>
                        <option value="6" <%if Cint(area)=Cint(6) then%>selected<%end if%>>6</option>
                        <option value="7" <%if Cint(area)=Cint(7) then%>selected<%end if%>>7</option>
                        <option value="8" <%if Cint(area)=Cint(8) then%>selected<%end if%>>8</option>
                        <option value="9" <%if Cint(area)=Cint(9) then%>selected<%end if%>>9</option>
                      </select>
                  &nbsp;&nbsp;จังหวัด 
                  <select name="prov" id="prov" onkeypress="if(window.event.keyCode==13){document.form1.search.focus();}">
                      <%
					  			Sql = "SELECT PROVINCE_ID, PROVINCE FROM PROVINCE WHERE (AREA = '" & area & "')"
								Rs.Open Sql,Session("Conn1"),1,3
								do while not Rs.EOF
						%>
                      <option value="<%=Rs("PROVINCE_ID")%>" <%if Cint(prov)=Cint(Rs("PROVINCE_ID")) then%>selected<%end if%>><%=Rs("PROVINCE")%></option>
                      <%
								Rs.MoveNext
								loop
								Rs.Close
						%>
                    </select>
                                    &nbsp;&nbsp;
                    <input name="search" type="button" id="search" value="เปลี่ยน" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1'); doloaddata();">
                  </font></td>
              </tr>
            </table></td>
        </tr>
         <tr> 
          <td>&nbsp;</td>
        </tr>
		 <tr> 
           <td>&nbsp;</td>
		 </tr>
      </table>
    </form>
    </center>
</div>
<form name="form2" method="post" action="change_area.asp"> 
<input name="area" type="hidden" id="area">
<input name="prov" type="hidden" id="prov">
<input name="first" type="hidden" id="first">
</form>
  <form name="form3" method="post" action="edit_change_area.asp"> 
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
</form>

<script language="JavaScript">
	function donewload(){
		document.form2.area.value=document.form1.area.value;
		document.form2.prov.value=document.form1.prov.value;
		document.form2.first.value=false;
		document.body.style.cursor='wait';
		
		document.form2.submit();
		}
		
		function doloaddata(){
		document.form3.area.value=document.form1.area.value;
		document.form3.prov.value=document.form1.prov.value;
		document.body.style.cursor='wait';
		document.form3.submit();
		}
		
	</script>
</body>
</html>
