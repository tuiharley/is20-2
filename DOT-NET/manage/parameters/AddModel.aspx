<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AddModel.aspx.vb" Inherits="manage.AddModel" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Cars</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<menu:header_manage id="header_manage" runat="server"></menu:header_manage>
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="392" border="0">
				<TR>
					<TD style="WIDTH: 73px"><FONT face="Tahoma">ประเภทรถ</FONT></TD>
					<TD><asp:radiobuttonlist id="category_rd" runat="server" DataValueField="Category" DataTextField="Category_Name"
							AutoPostBack="True"></asp:radiobuttonlist></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 73px; HEIGHT: 32px"><FONT face="Tahoma">ยี่ห้อรถ</FONT></TD>
					<TD style="HEIGHT: 32px">
						<P><asp:dropdownlist id="brand_ddl" runat="server" DataValueField="Brand" DataTextField="Brand_name"
								Width="288px" AutoPostBack="True"></asp:dropdownlist></P>
					</TD>
				</TR>
				<tr>
					<td>
					</td>
					<td><asp:TextBox id="modelTxt" runat="server"></asp:TextBox>
						<asp:Button id="btnAdd" runat="server" Text="Save"></asp:Button>
					</td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
