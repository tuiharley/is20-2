<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm1.aspx.vb" Inherits="autoonclick.WebForm1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../scripts+pics/style/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<FONT face="Tahoma"><INPUT style="Z-INDEX: 101; LEFT: 88px; POSITION: absolute; TOP: 40px" type="radio" CHECKED></FONT>
			<asp:Label id="Label1" style="Z-INDEX: 102; LEFT: 208px; POSITION: absolute; TOP: 48px" runat="server">fadsfadsfasd</asp:Label>
			<asp:Button id="btn1" runat="server" Text="ค้นหา" onmouseover="this.className='ButtonClassB80_hover'"
				onmouseout="this.className='ButtonClassB80'" CssClass="ButtonClassB80"></asp:Button>
			<asp:LinkButton id="LinkButton1" style="Z-INDEX: 103; LEFT: 544px; POSITION: absolute; TOP: 64px"
				runat="server">LinkButton</asp:LinkButton>
		</form>
		<script language="javascript">
	
			function cCookies(carNum,carSaved){
				autoonclick.WebForm1.correctCookie(carNum,carSaved,mailBack);
				
			}
			function mailBack(res){
				var x = res.value;
				alert(x);
				
				//document.write(x[0] + ' ' + x[1]);
				//setHiddenBox(x[0],x[1]);
			}
			
			//cCookies(4,'fok');
			//redirect('parking2_example_01.aspx');
		
		</script>
	</body>
</HTML>
