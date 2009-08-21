<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Msgbox.aspx.vb" Inherits="manage.Msgbox" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title runat="server" id="title">Attention</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<style> BODY { FONT-SIZE: 8pt; FONT-FAMILY: Tahoma, Verdana, Arial } TD { FONT-SIZE: 8pt; FONT-FAMILY: Tahoma, Verdana, Arial } </style>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" cellPadding="3" border="0">
				<TR>
					<TD colSpan="3">
						<asp:Image id="imgIcon" runat="server"></asp:Image>&nbsp;
						<asp:Label id="lblHeader" Runat="server" Font-Bold="True" Font-Size="18pt">Error</asp:Label></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 16px" colSpan="3"></TD>
				</TR>
				<TR>
					<TD colSpan="3" align="center">
						<asp:Label id="Label1" runat="server" Font-Bold="True">Please correct the following errors:</asp:Label><br>
						<asp:PlaceHolder id="phErrors" runat="server"></asp:PlaceHolder></TD>
				</TR>
				<TR>
					<TD align="center" colSpan="3"><INPUT onclick="javascript:window.close();" type="button" value="OK"></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
