<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Cars.aspx.vb" Inherits="manage.Cars" %>
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
			<table>
				<tr>
					<td>
						������ö
						<asp:textbox id="txtBrand" runat="server" Height="24px"></asp:textbox>
						<asp:button id="AddBTN" runat="server" Text="Add"></asp:button>
					</td>
				</tr>
				<tr>
					<td>
						<asp:datagrid id="Datagrid1" runat="server" DataKeyField="Brand" OnEditCommand="EditBook" OnCancelCommand="CancelBook"
							OnUpdateCommand="UpdateBook" Width="450" AutoGenerateColumns="False">
							<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
							<ItemStyle BackColor="#FF9933"></ItemStyle>
							<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
							<Columns>
								<asp:EditCommandColumn ButtonType="LinkButton" EditText="Edit" UpdateText="Update" CancelText="Cancel" />
								<asp:BoundColumn HeaderText="������ö" DataField="Brand_Name" />
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
						</asp:datagrid>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
