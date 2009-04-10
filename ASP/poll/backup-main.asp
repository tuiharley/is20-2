	<title>ระบบการประชุมผู้ถือหุ้น</title>
<frameset rows="75,*" framespacing="0" border="0" frameborder="0">
<% 
if (request("login") = "chairman" and request("pw") = "manager") or (request("login") = "staff" and request("pw") = "staff")  or (request("login") = "admin" and request("pw") = "admin") or (request("login") = "president" and request("pw") = "manager") then
	if request("login") = "president"   then
	session("user") = "president"  
	response.write "<frame src=top_m.asp name=top scrolling=no>"
	response.write "<frame src=result.asp name=bottom scrolling=auto>"
	elseif request("login") = "chairman"   then
	session("user") = "chairman"  
	response.write "<frame src=top_m.asp name=top scrolling=no>"
	response.write "<frame src=result.asp name=bottom scrolling=auto>"
	elseif request("login") = "staff" then
		session("user") = "staff"
		response.write "<frame src=top.asp name=top scrolling=no>"
		response.write "<frame src=home.asp name=bottom scrolling=auto>"
	elseif request("login") = "admin" then
		session("user") = "admin"
		response.write "<frame src=top_admin.asp name=top scrolling=no>"
		response.write "<frame src=home.asp name=bottom scrolling=auto>"
	end if
	%>
	</frameset>
	<%
else
  response.redirect "default.asp"
end if
 %>

