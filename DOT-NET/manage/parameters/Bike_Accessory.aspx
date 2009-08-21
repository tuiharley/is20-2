<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Bike_Accessory.aspx.vb" Inherits="manage.Bike_Accessory" %>
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
			<TABLE id="Table1" style="Z-INDEX: 102; LEFT: 504px; WIDTH: 320px; POSITION: absolute; TOP: 216px; HEIGHT: 48px"
				cellSpacing="1" cellPadding="1" width="320" border="0">
				<TR>
					<TD style="WIDTH: 116px"><FONT face="Tahoma">ชื่ออุปกรณ์เสริม</FONT></TD>
					<TD><asp:textbox id="txt_name" runat="server" Height="24px" Width="192px"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:datagrid id="Datagrid1" runat="server" Width="360" OnPageIndexChanged="MyDataGrid_Paging"
				PageSize="20" AllowPaging="True" AutoGenerateColumns="False" OnUpdateCommand="UpdateBook"
				OnCancelCommand="CancelBook" OnEditCommand="EditBook" DataKeyField="Accessory">
				<PagerStyle Mode="NumericPages" />
				<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
				<ItemStyle BackColor="#FF9933"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
				<Columns>
					<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
					<asp:BoundColumn HeaderText="ชื่ออุปกรณ์เสริม" DataField="Accessory_Name" />
				</Columns>
			</asp:datagrid>
			<asp:Label id="Label1" style="Z-INDEX: 103; LEFT: 504px; POSITION: absolute; TOP: 176px" runat="server"
				Width="128px" Height="32px" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue"></asp:Label><asp:button id="AddBTN" style="Z-INDEX: 101; LEFT: 504px; POSITION: absolute; TOP: 272px" runat="server"
				Width="80px" Height="24px" Text="Add"></asp:button></form>
	</body>
</HTML>
