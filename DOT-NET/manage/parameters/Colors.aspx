<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Colors.aspx.vb" Inherits="manage.colors" %>
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
			<TABLE id="Table1" style="Z-INDEX: 105; LEFT: 424px; WIDTH: 392px; POSITION: absolute; TOP: 160px; HEIGHT: 104px"
				cellSpacing="1" cellPadding="1" width="392" border="0">
				<TR>
					<TD style="WIDTH: 73px"><FONT face="Tahoma"></FONT></TD>
					<TD></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 73px; HEIGHT: 9px"><FONT face="Tahoma"></FONT></TD>
					<TD style="HEIGHT: 9px">
						<P>&nbsp;</P>
					</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 73px"><FONT face="Tahoma">สี</FONT></TD>
					<TD><asp:textbox id="txtcolor" runat="server" Height="24px" Width="176px"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:datagrid id="Datagrid1" runat="server" Width="360" OnPageIndexChanged="MyDataGrid_Paging"
				PageSize="20" AllowPaging="True" AutoGenerateColumns="False" OnUpdateCommand="UpdateBook"
				OnCancelCommand="CancelBook" OnEditCommand="EditBook" DataKeyField="Color">
				<PagerStyle Mode="NumericPages" />
				<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
				<ItemStyle BackColor="#FF9933"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
				<Columns>
					<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
					<asp:BoundColumn HeaderText="สี" DataField="Color_Name" />
				</Columns>
			</asp:datagrid><asp:button id="AddBTN" style="Z-INDEX: 101; LEFT: 504px; POSITION: absolute; TOP: 272px" runat="server"
				Width="88px" Height="32px" Text="Add"></asp:button></form>
	</body>
</HTML>
