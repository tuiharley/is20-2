<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm1.aspx.vb" Inherits="testPTTWS.WebForm1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="lblTxtResult" style="Z-INDEX: 100; LEFT: 88px; POSITION: absolute; TOP: 192px"
				runat="server" Width="400px" Height="200px">Nothing</asp:Label>
			<asp:Button id="btnEncyp" style="Z-INDEX: 105; LEFT: 456px; POSITION: absolute; TOP: 120px"
				runat="server" Text="Go Encrypt"></asp:Button>
			<asp:TextBox id="txt2" style="Z-INDEX: 104; LEFT: 88px; POSITION: absolute; TOP: 120px" runat="server"
				Width="360px"></asp:TextBox>
			<asp:Button id="btnGo" style="Z-INDEX: 102; LEFT: 456px; POSITION: absolute; TOP: 80px" runat="server"
				Text="Go Decrypt"></asp:Button>
			<asp:TextBox id="txt1" style="Z-INDEX: 103; LEFT: 88px; POSITION: absolute; TOP: 80px" runat="server"
				Width="360px"></asp:TextBox>
		</form>
	</body>
</HTML>
