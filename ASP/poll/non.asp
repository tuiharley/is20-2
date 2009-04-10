<%
 if session("username") <> "manager" or session("username") <> "staff" then
 response.redirect "http://localhost/poll"
 end if
%>
