<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm2.aspx.vb" Inherits="vjtimber.WebForm2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>WebForm2</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../style.css" type="text/css" rel="stylesheet">
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<FONT face="Tahoma">
				<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 232px; POSITION: absolute; TOP: 128px" runat="server">Label</asp:Label>
				<asp:DropDownList id="CmbYear" style="Z-INDEX: 103; LEFT: 320px; POSITION: absolute; TOP: 80px" runat="server">
					<asp:ListItem Value="2009">2009</asp:ListItem>
					<asp:ListItem Value="2008">2008</asp:ListItem>
				</asp:DropDownList>
				<asp:DropDownList id="CmbMonth" style="Z-INDEX: 102; LEFT: 224px; POSITION: absolute; TOP: 80px" runat="server"
					Width="72px"></asp:DropDownList>
				<asp:Button id="btnOk" style="Z-INDEX: 104; LEFT: 432px; POSITION: absolute; TOP: 80px" runat="server"
					Text="View"></asp:Button></FONT>
		</form>
	</body>
</HTML>
