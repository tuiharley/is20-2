<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Package.aspx.vb" Inherits="manage.Package"%>
<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Package</title>
		<meta name="vs_snapToGrid" content="True">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<menu:header_manage id="header_manage" runat="server"></menu:header_manage>
			<FONT face="Tahoma">
				<asp:datagrid id="Datagrid1" runat="server" Width="630" OnPageIndexChanged="MyDataGrid_Paging"
					PageSize="20" AllowPaging="True" AutoGenerateColumns="False" OnUpdateCommand="UpdateBook"
					OnDeleteCommand="DeleteBook" OnCancelCommand="CancelBook" OnEditCommand="EditBook" DataKeyField="Package_Id">
					<PagerStyle Mode="NumericPages" />
					<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
					<ItemStyle BackColor="#FF9933"></ItemStyle>
					<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
					<Columns>
						<asp:EditCommandColumn EditText="Edit" UpdateText="Update" CancelText="Cancel" />
						<asp:ButtonColumn ButtonType="LinkButton" CommandName="Delete" Text="Delete" />
						<asp:BoundColumn ItemStyle-Width="100px" HeaderText="ประเภท" DataField="Category_Name" ReadOnly="True" />
						<asp:BoundColumn ItemStyle-Width="90px" HeaderText="ชื่อ package" DataField="Package_Name" />
						<asp:BoundColumn ItemStyle-Width="80px" HeaderText="ประกาศตั้งแต่" DataField="Package_AreaStart" />
						<asp:BoundColumn ItemStyle-Width="80px" HeaderText="ถึง" DataField="Package_AreaStop" />
						<asp:BoundColumn ItemStyle-Width="60px" HeaderText="ระยะเวลา" DataField="Package_Week" />
						<asp:BoundColumn DataFormatString="{0:##,###}" HeaderText="ราคา" DataField="Package_Price" />
					</Columns>
				</asp:datagrid></FONT>
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="696" border="0" style="WIDTH: 696px; HEIGHT: 263px">
				<TR>
					<TD style="WIDTH: 95px">
						<asp:Label id="Label1" runat="server" Font-Size="X-Large" ForeColor="Blue" Height="32px" Width="120px"></asp:Label></TD>
					<TD style="WIDTH: 143px"></TD>
					<TD><FONT face="Tahoma"></FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 95px"></TD>
					<TD style="WIDTH: 143px">
						<asp:Label id="Label2" runat="server">ประเภท</asp:Label><FONT face="Tahoma">&nbsp;</FONT></TD>
					<TD>
						<asp:RadioButtonList id="category_rd" runat="server" Width="296px" RepeatColumns="3" RepeatDirection="Horizontal">
							<asp:ListItem Value="1" Selected="True">รถยนต์</asp:ListItem>
							<asp:ListItem Value="2">รถจักรยานยนต์</asp:ListItem>
							<asp:ListItem Value="3">รถบรรทุก</asp:ListItem>
							<asp:ListItem Value="4">อะไหล่</asp:ListItem>
							<asp:ListItem Value="9">special-offer</asp:ListItem>
						</asp:RadioButtonList></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 95px"></TD>
					<TD style="WIDTH: 143px"><FONT face="Tahoma">
							<asp:Label id="Label3" runat="server">ชื่อ package</asp:Label></FONT></TD>
					<TD>
						<asp:TextBox id="package_name" runat="server" Width="192px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 95px"></TD>
					<TD style="WIDTH: 143px">
						<asp:Label id="Label4" runat="server">จำนวนที่ลงประกาศ</asp:Label></TD>
					<TD>
						<asp:TextBox id="Number_start" runat="server" Width="32px"></asp:TextBox><FONT face="Tahoma">&nbsp;
						</FONT>
						<asp:Label id="Label5" runat="server">ถึง</asp:Label>&nbsp;
						<asp:TextBox id="Number_stop" runat="server" Width="32px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 95px"></TD>
					<TD style="WIDTH: 143px">
						<asp:Label id="Label6" runat="server" Width="64px">ระยะเวลา</asp:Label></TD>
					<TD>
						<asp:TextBox id="period" runat="server" Width="40px"></asp:TextBox><FONT face="Tahoma">&nbsp;
							<asp:Label id="Label7" runat="server">สัปดาห์</asp:Label>&nbsp;
							<asp:Label id="Label10" runat="server" Width="112px" ForeColor="#8080FF">(เช่น 2)</asp:Label>
						</FONT>
					</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 95px"></TD>
					<TD style="WIDTH: 143px">
						<asp:Label id="Label8" runat="server" Width="64px">ราคา</asp:Label></TD>
					<TD>
						<asp:TextBox id="price" runat="server" Width="104px"></asp:TextBox><FONT face="Tahoma">&nbsp;
							<asp:Label id="Label9" runat="server" Width="112px" ForeColor="#8080FF">(เช่น 4500)</asp:Label></FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 95px"></TD>
					<TD style="WIDTH: 143px"><FONT face="Tahoma">
							<asp:button id="AddBTN" runat="server" Text="Add" Height="24px" Width="73px"></asp:button></FONT></TD>
					<TD><FONT face="Tahoma">&nbsp;&nbsp;&nbsp; </FONT>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
