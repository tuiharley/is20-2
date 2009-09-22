<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Models.aspx.vb" Inherits="manage.Models" %>
<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
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
					<TD><asp:radiobuttonlist id="category_rd" runat="server" AutoPostBack="True" DataTextField="Category_Name"
							DataValueField="Category"></asp:radiobuttonlist></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 73px; HEIGHT: 32px"><FONT face="Tahoma">ยี่ห้อรถ</FONT></TD>
					<TD style="HEIGHT: 32px">
						<P><asp:dropdownlist id="brand_ddl" runat="server" AutoPostBack="True" DataTextField="Brand_name" DataValueField="Brand"
								Width="288px"></asp:dropdownlist></P>
					</TD>
				</TR>
				<tr>
					<td></td>
					<td><asp:button id="btnAdd" runat="server" Text="ADD"></asp:button></td>
				</tr>
			</TABLE>
			<asp:datagrid id="Datagrid1" runat="server" Width="550" DataKeyField="Model" OnEditCommand="EditBook"
				OnCancelCommand="CancelBook" OnUpdateCommand="UpdateBook" AutoGenerateColumns="False">
				<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
				<ItemStyle BackColor="#FF9933"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
				<Columns>
					<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
					<asp:BoundColumn HeaderText="ประเภทรถ" DataField="Category_Name" ReadOnly="True" />
					<asp:BoundColumn HeaderText="ยี่ห้อรถ" DataField="Brand_name" ReadOnly="True" />
					<asp:BoundColumn HeaderText="รุ่นรถ" DataField="Model_Name" />
					<asp:TemplateColumn HeaderText="Search">
						<ItemTemplate>
							<asp:Label id="lblSearchName" runat="server" Text='<%# Container.DataItem("SearchShow") %>'>
							</asp:Label>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:DropDownList id="cmbSearch" runat="server" datavaluefield="status_id" datatextfield="status_desc" DataSource="<%#StatusView%>" OnPreRender="setIndex1" >
							</asp:DropDownList>
						</EditItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="Offer">
						<ItemTemplate>
							<asp:Label id="lblOfferName" runat="server" Text='<%# Container.DataItem("OfferShow") %>'>
							</asp:Label>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:DropDownList id="cmdOffer" runat="server" datavaluefield="status_id" datatextfield="status_desc" DataSource="<%#StatusView%>" OnPreRender="setIndex2" >
							</asp:DropDownList>
						</EditItemTemplate>
					</asp:TemplateColumn>
				</Columns>
			</asp:datagrid></form>
	</body>
</HTML>
