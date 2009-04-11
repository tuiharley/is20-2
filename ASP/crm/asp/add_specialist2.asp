<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">


<html>
<head>
<title>Promotion Detail</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
</head>
<%empcode = Request.QueryString("empcode")
empname = Request.QueryString("empname")
app_id = Request.QueryString("app_id")
cgcode = Request.QueryString("cgcode")
%>


  <frameset cols="35%,*" frameborder="NO" border="0" framespacing="0">
    <frame src="search_specialist_left2.asp?empcode=<%=empcode%>&app_id=<%=app_id%>&cgcode=<%=cgcode%>" name="leftFrame" >
    <frame src="search_specialist_right2.asp?empcode=<%=empcode%>&empname=<%=empname%>&app_id=<%=app_id%>&cgcode=<%=cgcode%>" name="rightFrame">
  </frameset>

<noframes><body >
</body></noframes>
</html>
