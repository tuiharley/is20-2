<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Car_Accessory.aspx.vb" Inherits="manage.Car_Accessory" %>
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
			<TABLE id="Table1" style="Z-INDEX: 102; LEFT: 600px; WIDTH: 304px; POSITION: absolute; TOP: 232px; HEIGHT: 80px"
				cellSpacing="1" cellPadding="1" width="304" border="0">
				<TR>
					<TD style="WIDTH: 91px; HEIGHT: 9px"><FONT face="Tahoma">ประเภท</FONT></TD>
					<TD style="HEIGHT: 9px">
						<P>
							<asp:RadioButtonList id="Acc_type" runat="server" Width="144px" DataTextField="AccessoryType_Name" DataValueField="AccessoryType"
								AutoPostBack="True"></asp:RadioButtonList></P>
					</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 91px"><FONT face="Tahoma">อุปกรณ์เสริม</FONT></TD>
					<TD><asp:textbox id="accs_name" runat="server" Height="24px"></asp:textbox></TD>
				</TR>
			</TABLE>
			<asp:datagrid id="Datagrid1" runat="server" Width="550" OnPageIndexChanged="MyDataGrid_Paging"
				PageSize="20" AllowPaging="True" AutoGenerateColumns="False" OnUpdateCommand="UpdateBook"
				OnCancelCommand="CancelBook" OnEditCommand="EditBook" DataKeyField="Accessory">
				<PagerStyle Mode="NumericPages" />
				<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
				<ItemStyle BackColor="#FF9933"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
				<Columns>
					<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
					<asp:BoundColumn HeaderText="ประเภท" DataField="AccessoryType_Name" ReadOnly="True" />
					<asp:BoundColumn HeaderText="อุปกรณ์เสริม" DataField="Accessory_Name" />
				</Columns>
			</asp:datagrid>
			<asp:Label id="Label1" style="Z-INDEX: 103; LEFT: 608px; POSITION: absolute; TOP: 184px" runat="server"
				Width="120px" Height="32px" Font-Size="X-Large" ForeColor="Blue"></asp:Label><asp:button id="AddBTN" style="Z-INDEX: 101; LEFT: 608px; POSITION: absolute; TOP: 360px" runat="server"
				Width="73px" Height="24px" Text="Add"></asp:button></form>
	</body>
</HTML>
