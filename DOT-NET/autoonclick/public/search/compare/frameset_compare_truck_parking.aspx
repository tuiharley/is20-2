<%@ Page CodeBehind="frameset_compare_truck_parking.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.frameset_compare_truck_parking" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>AUTO-ONCLICK .explore Mobility</title>
</head>

<frameset rows="85,*" cols="*" framespacing="0" frameborder="NO" border="0">
  <frame src="compare_top_vehicle_truck_parking.aspx" name="topFrame" scrolling="NO" noresize>
  <frameset rows="*,34" frameborder="NO" border="0" framespacing="0">
		<frame src="blankcompare_truck_parking.aspx" name="mainFrame" scrolling="YES">
		<frame src="compare_bottom.aspx?cur_Page=<%=request.queryString("cur_Page")%>" name="bottomFrame" scrolling="NO" noresize>
  </frameset>
</frameset>
<noframes><body>
</body></noframes>
</html>
