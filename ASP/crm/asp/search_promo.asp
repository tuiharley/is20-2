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
<body bgcolor="#E8F8FF" onLoad="document.form1.promotionname.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
	Dim Rs,  Sql , kind , comp , i 
	Dim  service
	

	service = Request.QueryString("service")
	set Rs = Server.CreateObject("Adodb.RecordSet")

	kind = Request.QueryString("kind")
	comp = Request.QueryString("comp")
	

	
	Sql = "select * from COMPANY Order by COMPID"
	Rs.Open Sql,Session("Conn1"),1,3

%>
	
<form name="form1" method="post" action="edit_promo.asp ">
  <table width="309" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="24%"><div align="right"><font color="#4B0097" size="2"><strong>บริษัท</strong></font></div></td>
      <td width="76%">&nbsp;&nbsp;<select name="comp"  onkeypress="if(window.event.keyCode==13){document.form1.kind.focus();}"  onchange="document.body.style.cursor='wait'; top.RunWindow(self.name,'search_promo.asp?comp='+document.form1.comp.value+'');" >
	<option>--บริษัท--</option>
<% i = 1
do while not Rs.EOF
%>
          <option value ="<%=Rs("COMPID")%>"  <%if comp <> "" then %> <%if Cint(comp)=Cint(i) then%>selected<%end if%> <% end if %>><%=Rs("COMPNAME")%></option>
<%  i = i + 1
		Rs.Movenext
		loop
%>
        </select></td>
    </tr>
     <tr>  
	  <td width="24%"><div align="right"><font color="#4B0097" size="2"><strong>ประเภท</strong></font></div></td>
	  <td width="76%">&nbsp;&nbsp;<select name="kind"  id="kind" onChange="document.body.style.cursor='wait'; top.RunWindow(self.name,'search_promo.asp?comp='+document.form1.comp.value+'&kind='+this.value);"  onkeypress="if(window.event.keyCode==13){document.form1.service.focus();}">
		 <option>--Service--</option>
		 <option  value="False"  <%if kind="False" then%>selected<%end if%> >VOICE</option>
		 <option value="True" <%if kind="True" then%>selected<%end if%> >NONVOICE</option>
       </select></td>
     </tr> 
	 <tr><td width="24%"><div align="right"><font color="#4B0097" size="2"><strong>บริการ</strong></font></div></td>
       <td valign="bottom"> &nbsp;&nbsp;<select name="service" id="service" onkeypress="if(window.event.keyCode==13){document.form1.promotionname.focus();}">
<option value="">รายชื่อบริการ</option>
<%
	if kind<>""  then
		if kind = "False" then
		Sql = "SELECT voiceid as id, voicename as sname FROM VOICE_SERVICE ORDER BY id  "
		elseif  kind = "True" then
		Sql = "SELECT nonid as id, nonname as sname FROM  NONVOICE_SERVICE ORDER BY id"
		end if
		Rs.close
		Rs.Open Sql,Session("Conn1"),1,3
		i = 1
		do while not Rs.EOF
%>
<option  value="<%=Rs("id")%>"  <%if Cint(service)=Cint(i) then%>selected<%end if%> ><%=Rs("sname")%></option>
<%
			Rs.MoveNext
			i = i + 1
			loop
			
		end if
%>
     </select></td>
	 </tr>
	 <tr>  
	  <td width="24%"><div align="right"><font color="#4B0097" size="2"><strong>ชื่อโปรโมชั่น</strong></font></div></td>
	  <td width="76%">&nbsp;&nbsp;<input name="promotionname" type="text" class="text" id="promotionname" size="30" maxlength="50"  onkeypress="if(window.event.keyCode==13){dosend();}"></td>
     </tr> 
	 <tr>
	 	  <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="เริ่มค้นหา" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
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
		
		/*if((document.form1.comp.value=="") && (document.form1.kind.value=="") && (document.form1.service.value=="") && ( document.form1.promotionname.value=="")){
			alert('กรุณาเลือกเงื่อนไขใดอันใดอันหนึ่ง');
			document.form1.comp.focus();
			return;
		}*/
		
		if (document.form1.kind.value == 1 ) { document.form1.kind.value = 0}
		if (document.form1.kind.value == 2 ) { document.form1.kind.value = 1}
		top.ShowRunWindow('Desktop2','add_promotion.asp?promoname=' + document.form1.promotionname.value + '&comp=' + document.form1.comp.value +'&kind='+document.form1.kind.value+'&service='+document.form1.service.value+'' );
		top.HideWindow('Dialog1');
		
	}	
	</script>

</body>
</html>
