<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Bank.aspx.vb" Inherits="manage.Bank" %>
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
			<FONT face="Tahoma"></FONT>
			<TABLE id="Table1" style="Z-INDEX: 105; LEFT: 624px; WIDTH: 264px; POSITION: absolute; TOP: 216px; HEIGHT: 142px"
				cellSpacing="1" cellPadding="1" width="264" border="0">
				<TR>
					<TD style="WIDTH: 85px; HEIGHT: 25px"><FONT face="Tahoma">ธนาคาร</FONT></TD>
					<TD style="HEIGHT: 25px"><asp:textbox id="BName" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 85px; HEIGHT: 9px"><FONT face="Tahoma">สาขา</FONT></TD>
					<TD style="HEIGHT: 9px">
						<P><asp:textbox id="BBranch" runat="server"></asp:textbox></P>
					</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 85px"><FONT face="Tahoma">ชื่อบัญชี</FONT></TD>
					<TD><asp:textbox id="BAccount" runat="server" Width="152px" Height="24px"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 85px"><FONT face="Tahoma">เลขที่บัญชี</FONT></TD>
					<TD><asp:textbox id="BNumber" runat="server" Width="152px" Height="24px"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 85px"><FONT face="Tahoma">ประเภท</FONT></TD>
					<TD><asp:textbox id="BType" runat="server" Width="152px" Height="24px"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:datagrid id="Datagrid1" runat="server" Width="608px" DataKeyField="Bank_Id" OnEditCommand="EditBook"
				OnCancelCommand="CancelBook" OnDeleteCommand="DeleteBook" OnUpdateCommand="UpdateBook" AutoGenerateColumns="False"
				AllowPaging="True" PageSize="20" OnPageIndexChanged="MyDataGrid_Paging">
				<PagerStyle Mode="NumericPages" />
				<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
				<ItemStyle BackColor="#FF9933"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
				<Columns>
					<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
					<asp:ButtonColumn ButtonType="LinkButton" CommandName="Delete" Text="Delete" />
					<asp:BoundColumn HeaderText="ธนาคาร" DataField="Bank_Name" />
					<asp:BoundColumn HeaderText="สาขา" DataField="Bank_Branch" />
					<asp:BoundColumn HeaderText="ชื่อบัญชี" DataField="Bank_AccountName" />
					<asp:BoundColumn HeaderText="เลขที่บัญชี" DataField="Bank_AccountNum" />
					<asp:BoundColumn HeaderText="ประเภท" DataField="Bank_Type" />
				</Columns>
			</asp:datagrid><asp:button id="AddBTN" style="Z-INDEX: 101; LEFT: 624px; POSITION: absolute; TOP: 368px" runat="server"
				Width="64px" Height="24px" Text="Add"></asp:button></form>
	</body>
</HTML>
