<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CustInfo.aspx.vb" Inherits="manage.CustInfo"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>CustInfo</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<FONT face="Tahoma">
				<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="300" border="1" background="../pics/photos/detail_car_search.jpg">
					<TR>
						<TD>
							<asp:Label id="Label1" runat="server">UserName</asp:Label></TD>
						<TD>
							<asp:Label id="Cuser" runat="server"></asp:Label></TD>
						<TD rowspan="3">
							<asp:Image id="Image1" runat="server"></asp:Image></TD>
					</TR>
					<TR>
						<TD>
							<asp:Label id="Label2" runat="server">ชื่อ</asp:Label></TD>
						<TD>
							<asp:Label id="Cname" runat="server"></asp:Label></TD>
					</TR>
					<TR>
						<TD>
							<asp:Label id="Label3" runat="server">นามสกุล</asp:Label></TD>
						<TD>
							<asp:Label id="Csur" runat="server"></asp:Label></TD>
					</TR>
					<TR>
						<TD>
							<asp:Label id="Label4" runat="server">Tel:</asp:Label></TD>
						<TD>
							<asp:Label id="Ctel" runat="server"></asp:Label></TD>
						<td></td>
					</TR>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
