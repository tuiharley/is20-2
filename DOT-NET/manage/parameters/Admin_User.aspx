<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Admin_User.aspx.vb" Inherits="manage.Admin_User" %>
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
			<FONT face="Tahoma"></FONT>
			<TABLE id="Table1" style="Z-INDEX: 105; LEFT: 624px; WIDTH: 280px; POSITION: absolute; TOP: 216px; HEIGHT: 80px"
				cellSpacing="1" cellPadding="1" width="280" border="0">
				<TR>
					<TD style="WIDTH: 85px; HEIGHT: 25px"><FONT face="Tahoma">UserName</FONT></TD>
					<TD style="HEIGHT: 25px"><asp:textbox id="BName" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 85px; HEIGHT: 9px"><FONT face="Tahoma">Password</FONT></TD>
					<TD style="HEIGHT: 9px">
						<P><asp:textbox id="BBranch" runat="server"></asp:textbox></P>
					</TD>
				</TR>
			</TABLE>
			<asp:datagrid id="Datagrid1" runat="server" Width="608px" DataKeyField="UserID" OnEditCommand="EditBook"
				OnCancelCommand="CancelBook" OnDeleteCommand="DeleteBook" OnUpdateCommand="UpdateBook" AutoGenerateColumns="False"
				AllowPaging="True" PageSize="20" OnPageIndexChanged="MyDataGrid_Paging">
				<PagerStyle Mode="NumericPages" />
				<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
				<ItemStyle BackColor="#FF9933"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
				<Columns>
					<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
					<asp:ButtonColumn ButtonType="LinkButton" CommandName="Delete" Text="Delete" />
					<asp:BoundColumn HeaderText="UserName" DataField="UserName" />
					
				
				</Columns>
			</asp:datagrid><asp:button id="AddBTN" style="Z-INDEX: 101; LEFT: 624px; POSITION: absolute; TOP: 304px" runat="server"
				Width="64px" Height="24px" Text="Add"></asp:button></form>
	</body>
</HTML>
