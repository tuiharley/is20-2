<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Truck.aspx.vb" Inherits="manage.Truck" %>
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
			<TABLE id="Table1" style="Z-INDEX: 105; LEFT: 600px; WIDTH: 392px; POSITION: absolute; TOP: 176px"
				cellSpacing="1" cellPadding="1" width="392" border="0">
				<TR>
					<TD style="WIDTH: 73px; HEIGHT: 20px"><FONT face="Tahoma">ประเภทรถ</FONT></TD>
					<TD style="HEIGHT: 20px"><FONT face="Tahoma">&nbsp;รถบรรทุก</FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 73px; HEIGHT: 32px"><FONT face="Tahoma">ยี่ห้อรถ</FONT></TD>
					<TD style="HEIGHT: 32px">
						<P><asp:dropdownlist id="brand_ddl" runat="server" DataValueField="Brand" DataTextField="Brand_name"
								Width="288px"></asp:dropdownlist></P>
					</TD>
				</TR>
			</TABLE>
			<asp:datagrid id="Datagrid1" runat="server" Width="550" OnPageIndexChanged="MyDataGrid_Paging"
				PageSize="20" AllowPaging="True" AutoGenerateColumns="False" OnUpdateCommand="UpdateBook"
				OnCancelCommand="CancelBook" OnEditCommand="EditBook" DataKeyField="Model">
				<PagerStyle Mode="NumericPages" />
				<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
				<ItemStyle BackColor="#FF9933"></ItemStyle>
				<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
				<Columns>
					<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
					<asp:BoundColumn HeaderText="ประเภทรถ" DataField="Category_Name" ReadOnly="True" />
					<asp:BoundColumn HeaderText="ยี่ห้อรถ" DataField="Brand_name" ReadOnly="True" />
				</Columns>
			</asp:datagrid><asp:button id="AddBTN" style="Z-INDEX: 101; LEFT: 680px; POSITION: absolute; TOP: 320px" runat="server"
				Width="88px" Height="32px" Text="เพิ่ม"></asp:button></form>
	</body>
</HTML>
