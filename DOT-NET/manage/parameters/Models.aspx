<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Models.aspx.vb" Inherits="manage.Models" %>
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
					<td><asp:Button id="btnAdd" runat="server" Text="ADD"></asp:Button></td>
				</tr>
			</TABLE>
			<asp:datagrid id="Datagrid1" runat="server" Width="550" AutoGenerateColumns="False" OnUpdateCommand="UpdateBook"
				OnCancelCommand="CancelBook" OnEditCommand="EditBook" DataKeyField="Model">
				<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
				<ItemStyle BackColor="#FF9933"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
				<Columns>
					<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
					<asp:BoundColumn HeaderText="ประเภทรถ" DataField="Category_Name" ReadOnly="True" />
					<asp:BoundColumn HeaderText="ยี่ห้อรถ" DataField="Brand_name" ReadOnly="True" />
					<asp:BoundColumn HeaderText="รุ่นรถ" DataField="Model_Name" />
				</Columns>
			</asp:datagrid></form>
	</body>
</HTML>
