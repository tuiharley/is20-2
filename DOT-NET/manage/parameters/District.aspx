<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="District.aspx.vb" Inherits="manage.District" %>
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
			<FONT face="Tahoma"></FONT>
			<TABLE id="Table1" style="Z-INDEX: 105; LEFT: 600px; WIDTH: 296px; POSITION: absolute; TOP: 176px; HEIGHT: 104px"
				cellSpacing="1" cellPadding="1" width="296" border="0">
				<TR>
					<TD style="WIDTH: 73px; HEIGHT: 9px"><FONT face="Tahoma">จังหวัด</FONT></TD>
					<TD style="HEIGHT: 9px">
						<P><asp:dropdownlist id="province" runat="server" DataValueField="Province" DataTextField="Province_name"
								Width="208px"></asp:dropdownlist></P>
					</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 73px"><FONT face="Tahoma">อำเภอ</FONT></TD>
					<TD><asp:textbox id="district_txt" runat="server" Height="24px"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:datagrid id="Datagrid1" runat="server" Width="550" OnPageIndexChanged="MyDataGrid_Paging"
				PageSize="20" AllowPaging="True" AutoGenerateColumns="False" OnUpdateCommand="UpdateBook"
				OnCancelCommand="CancelBook" OnEditCommand="EditBook" DataKeyField="District">
				<PagerStyle Mode="NumericPages" />
				<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
				<ItemStyle BackColor="#FF9933"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
				<Columns>
					<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
					<asp:BoundColumn HeaderText="จังหวัด" DataField="Province_Name" ReadOnly="True" />
					<asp:BoundColumn HeaderText="อำเภอ" DataField="District_name" />
				</Columns>
			</asp:datagrid><asp:button id="AddBTN" style="Z-INDEX: 101; LEFT: 680px; POSITION: absolute; TOP: 320px" runat="server"
				Width="88px" Height="32px" Text="Add"></asp:button></form>
	</body>
</HTML>
