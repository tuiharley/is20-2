<%@ language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
'	Server.ScriptTimeout=999
'	Session.Timeout=Server.ScriptTimeout

	Dim HeadHeight, MenuHeight
	HeadHeight = 0
	MenuHeight = 30
%>
<html>
<head>
<meta http-equiv="Content-Language" content="th">
<meta http-equiv="Content-Type" content="text/html; charset=Windows-874">
<link href="INCLUDE/stylesheet.css" rel="stylesheet" type="text/css">
<title>CRM ( Customer Relationship Management )</title>
</head>
<body topmargin="0" rightmargin="0" bottommargin="0" leftmargin="0" onresize="doResize()" style="overflow:hidden">
  <iframe id="FullPage" name="FullPage" nowrap frameborder="0" scrolling="no" height="100%" width="100%" 
    src="asp/login.asp" style="position:absolute; left:0; top:0;">
  </iframe>

  <iframe id="Head" name="Head" nowrap frameborder="0" scrolling="no" height="<%=HeadHeight%>px" width="100%" 
    src="asp/BLANK.asp" style="position:absolute; left:0; top:0; visibility:hidden;">
  </iframe>
  <iframe id="MenuBar" name="MenuBar" nowrap frameborder="0" scrolling="no" height="<%=MenuHeight%>px" width="100%" 
	src="asp/BLANK.asp" style="position:absolute; left:0; top:<%=HeadHeight%>; visibility:hidden;">
  </iframe>

  <iframe id="Desktop1" name="Desktop1" nowrap frameborder="0" scrolling="auto" width="100%" 
	src="asp/BLANK.asp" style="position:absolute; left:0; top:<%=(HeadHeight+MenuHeight)%>; visibility:hidden;">
  </iframe>
  <iframe id="Desktop2" name="Desktop2" nowrap frameborder="0" scrolling="auto" width="100%" 
	src="asp/BLANK.asp" style="position:absolute; left:0; top:<%=(HeadHeight+MenuHeight)%>; visibility:hidden;">
  </iframe>
  <iframe id="Desktop3" name="Desktop3" nowrap frameborder="0" scrolling="auto" width="100%" 
	src="asp/BLANK.asp" style="position:absolute; left:0; top:<%=(HeadHeight+MenuHeight)%>; visibility:hidden;">
  </iframe>
  <iframe id="Desktop4" name="Desktop4" nowrap frameborder="0" scrolling="auto" width="100%" 
	src="asp/BLANK.asp" style="position:absolute; left:0; top:<%=(HeadHeight+MenuHeight)%>; visibility:hidden;">
  </iframe>

  <iframe id=DialogS1 name=DialogS1 frameborder=0 scrolling=auto style="position:absolute; visibility:hidden;"></iframe>
  <iframe id=DialogS2 name=DialogS2 frameborder=0 scrolling=auto style="position:absolute; visibility:hidden;"></iframe>

  <iframe id=Dialog1 name=Dialog1 frameborder=0 scrolling=no style="position:absolute; visibility:hidden;"></iframe>
  <iframe id=Dialog2 name=Dialog2 frameborder=0 scrolling=no style="position:absolute; visibility:hidden;"></iframe>

  <iframe id=DialogSS1 name=DialogSS1 frameborder=0 scrolling=auto style="position:absolute; visibility:hidden;"></iframe>
  <iframe id=DialogSS2 name=DialogSS2 frameborder=0 scrolling=auto style="position:absolute; visibility:hidden;"></iframe>

  <iframe id="Temp1" name=Temp1 frameborder=0 scrolling=auto width="150" height="150" style="position:absolute; left:0; top:0; visibility:hidden;"></iframe>
  <iframe id="Temp2" name=Temp2 frameborder=0 scrolling=auto width="150" height="150" style="position:absolute; left:0; top:0; visibility:hidden;"></iframe>
  <iframe id="Temp3" name=Temp3 frameborder=0 scrolling=auto width="150" height="150" style="position:absolute; left:0; top:0; visibility:hidden;"></iframe>
</body>

<SCRIPT language="VBScript">
	call doResize()

Sub doResize()
	If document.body.clientHeight < 435 Then
	    document.all.Desktop1.style.height = 435 - <%=HeadHeight%> - <%=MenuHeight%>
	Else
	    document.all.Desktop1.style.height = document.body.clientHeight - <%=HeadHeight%> - <%=MenuHeight%>
	End If
    document.all.Desktop2.style.height = document.all.Desktop1.style.height
    document.all.Desktop3.style.height = document.all.Desktop1.style.height
    document.all.Desktop4.style.height = document.all.Desktop1.style.height
	If document.body.clientWidth < 780 Then
	    document.all.Desktop1.style.width = 780
	Else
	    document.all.Desktop1.style.width = document.body.clientWidth
	End If
    document.all.Desktop2.style.width = document.all.Desktop1.style.width
    document.all.Desktop3.style.width = document.all.Desktop1.style.width
    document.all.Desktop4.style.width = document.all.Desktop1.style.width
	document.body.scroll = "YES"
End Sub
</SCRIPT>
<script language=JavaScript>
  function SetPositionWindow(win, leftPos, topPos){
    win2 = eval("document.all." + win);
    if(leftPos) win2.style.left = leftPos;
    if(topPos) win2.style.top = topPos;
  }

  function SetSizeWindow(win, height, width){
    win2 = eval("document.all." + win);
    win2.height = height + 6;
    win2.width = width + 6;
  }

  function CenterWindow(win){
    var desktop = document.all.Desktop1;
    win2 = eval("document.all." + win);
    var leftPos = (desktop.offsetWidth / 2) - (win2.offsetWidth / 2) + desktop.offsetLeft;
    var topPos = (desktop.offsetHeight / 2) - (win2.offsetHeight / 2) + desktop.offsetTop;
	SetPositionWindow(win, leftPos, topPos);
  }

  function HideWindow(win){
    win2 = eval("document.all." + win);
    win2.style.visibility = "hidden";
    RunWindow(win,'../asp/BLANK.asp');
  }

  function HideAllWindow(){
	HideWindow('Desktop2');
	HideWindow('Desktop3');
	HideWindow('Desktop4');
	HideWindow('DialogS1');
	HideWindow('DialogS2');
	HideWindow('Dialog1');
	HideWindow('Dialog2');
	HideWindow('DialogSS1');
	HideWindow('DialogSS2');
	HideWindow('Temp1');
	HideWindow('Temp2');
	HideWindow('Temp3');
  }

  function ShowWindow(win){
    win2 = eval("document.all." + win);
    win2.style.visibility = "visible";
  }

  function RunWindow(win, url){
    win2 = eval("window." + win);
    win2.location.replace(url);
  }

  function ShowRunWindow(win, url){
    win2 = eval("window." + win);
    win2.location.replace(url);
	ShowWindow(win);
  }

  function ShowPositionSizeWindow(win, leftPos, topPos, height, width){
	SetPositionWindow(win, leftPos, topPos);
	SetSizeWindow(win, height, width);
	ShowWindow(win);
  }

  function ShowCenterSizeWindow(win, height, width){
	SetSizeWindow(win, height, width);
	CenterWindow(win);
	ShowWindow(win);
  }

  function ShowRunPositionSizeWindow(win, leftPos, topPos, height, width, url){
	SetPositionWindow(win, leftPos, topPos);
	SetSizeWindow(win, height, width);
	ShowRunWindow(win, url);
  }

  function ShowRunCenterSizeWindow(win, height, width, url){
	SetSizeWindow(win, height, width);
	CenterWindow(win);
	ShowRunWindow(win, url);
  }

  function ClearWindow(win){
    ShowWindow(win,"../asp/blank.asp");
  }

// test // These functions below should be modified. Nobody use them, but me, Kaew.

  function Logout(){
 
	HideWindow('Head');
	HideWindow('MenuBar');
	HideWindow('Desktop1');
	HideAllWindow();
	ShowRunWindow("FullPage","../asp/login.asp");
  }
</script>
</html>
