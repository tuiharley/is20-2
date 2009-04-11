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
<body bgcolor="#E8F8FF" onLoad="document.form1.comp.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
	 Dim Rs,  Sql , kind , comp , i , service
	set Rs = Server.CreateObject("Adodb.RecordSet")
	kind = Request.QueryString("kind")
	comp = Request.QueryString("comp")
	service = Request.QueryString("service")
	
	
	Sql = "select * from COMPANY Order by COMPID"
	Rs.Open Sql,Session("Conn1"),1,3

%>

<form name="form1" method="post" action="add_promotion_name.asp ">
  <table width="309" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="24%"><div align="right"><font color="#4B0097" size="2"><strong>บริษัท</strong></font></div></td>
      <td width="76%">&nbsp;&nbsp;<select name="comp" >
<% i = 1
do while not Rs.EOF
%>
          <option value ="<%=Rs("COMPID")%>"  <%if Cint(comp)=Cint( i ) then%>selected<%end if%>><%=Rs("COMPNAME")%></option>
<%  i = i + 1
		Rs.Movenext
		loop
%>
        </select></td>
    </tr>
     <tr>  
	  <td width="24%"><div align="right"><font color="#4B0097" size="2"><strong>ประเภท</strong></font></div></td>
	  <td width="76%">&nbsp;&nbsp;<select name="kind"  id="kind" onChange="document.body.style.cursor='wait'; top.RunWindow(self.name,'sub_promotion_add.asp?comp='+ document.form1.comp.value +'&kind='+this.value);" onkeypress="if(window.event.keyCode==13){document.form1.service.focus();}">>
		 <option >--Service--</option>
		 <option  value="1"  <%if Cint(kind)=Cint(1) then%>selected<%end if%> >VOICE</option>
		 <option value="2" <%if Cint(kind)=Cint(2) then%>selected<%end if%> >NONVOICE</option>
       </select><%response.write(kind)%></td>
     </tr> 
	 <tr><td width="24%"><div align="right"><font color="#4B0097" size="2"><strong>บริการ</strong></font></div></td>
	     <td valign="bottom"> &nbsp;&nbsp;<select name="service" id="service" onkeypress="if(window.event.keyCode==13){document.form1.promotionname.focus();}">
<option value="">รายชื่อบริการ</option>
<%
	if (kind<>"" ) and (kind <> 0) then
		if kind = "1" then
		Sql = "SELECT voiceid as id, voicename as sname FROM VOICE_SERVICE ORDER BY id  "
		elseif  kind = "2" then
		Sql = "SELECT nonid as id, nonname as sname FROM  NONVOICE_SERVICE ORDER BY id"
		end if
		Rs.close
		Rs.Open Sql,Session("Conn1"),1,3
		do while not Rs.EOF
%>
<option  value="<%=Rs("id")%>"  ><%=Rs("sname")%></option>
<%
			Rs.MoveNext
			loop
			Rs.Close
		end if
%>

	  	 
       </select></td>
	 </tr>
	 <tr>  
	  <td width="24%"><div align="right"><font color="#4B0097" size="2"><strong>ชื่อโปรโมชั่น</strong></font></div></td>
	  <td width="76%">&nbsp;&nbsp;<input name="promotionname" type="text" class="text" id="promotionname" size="30" maxlength="50"></td>
     </tr> 
	 <tr>
	 	  <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="บันทึกข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
<script languange=JavaScript>

	function dosend () 
	{
		
		if  (document.form1.promotionname.value=="" ) 
		{
			alert('กรุณาใส่ชื่อโปรโมชั่น');
			document.form1.promotionname.focus();
			return;
		}
		if (confirm('ยืนยันการบันทึกข้อมูล')){	
		//if (document.form1.kind.value == 1 ) { document.form1.kind.value = 0}
		//if (document.form1.kind.value == 2 ) { document.form1.kind.value = 1}
		top.RunWindow('Temp1','add_promotion_name.asp?promotionname=' + document.form1.promotionname.value + '&kind=' + document.form1.kind.value + '&comp=' + document.form1.comp.value + '&id=' + document.form1.service.value + '');
		top.HideWindow('Dialog1');
		}
	}	
	</script>

</body>
</html>
