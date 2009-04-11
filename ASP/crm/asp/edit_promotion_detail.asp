<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">


<html>
<head>
<title>Promotion Detail</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
</head>
<%promo_id = Request.QueryString("promo_id")
promoname = Request.QueryString("promoname")
%>

<frameset rows="80,*" cols="*" frameborder="NO" border="0" framespacing="0">
  <frame src="promotion_top.asp" name="topFrame" scrolling="NO" noresize>
  <frameset cols="45%,*" frameborder="NO" border="0" framespacing="0">
    <frame src="promotion_left.asp?promo_id=<%=promo_id %>" name="leftFrame" scrolling="NO" noresize>
    <frame src="promotion_right.asp?promo_id=<%=promo_id %>&promoname=<%=promoname%> " name="mainFrame">
  </frameset>
</frameset>
<noframes><body >
</body></noframes>
</html>
