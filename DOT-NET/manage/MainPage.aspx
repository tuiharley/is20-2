<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MainPage.aspx.vb" Inherits="manage.MainPage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>MainPage</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:RadioButtonList id="menu_list" style="Z-INDEX: 101; LEFT: 56px; POSITION: absolute; TOP: 144px"
				runat="server" Width="192px" Height="40px" DataTextField="Menu_Name" DataValueField="Menu_ID"></asp:RadioButtonList>
			<asp:Button id="Button1" style="Z-INDEX: 102; LEFT: 56px; POSITION: absolute; TOP: 320px" runat="server"
				Width="64px" Text="Go!!"></asp:Button>
		</form>
	</body>
</HTML>
