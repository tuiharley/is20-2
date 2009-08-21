<%@ Control Language="vb" AutoEventWireup="false" Codebehind="header_manage.ascx.vb" Inherits="manage.header_manage" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<P align="center"><IMG height="99" src="../pics/template_pics/table_headings+corners+bg/ao_heading.jpg"
		width="780">
</P>
<div align="center">
	<TABLE id="Table1" cellSpacing="2" cellPadding="2" width="100%" border="0">
		<TR>
			<TD><FONT face="Tahoma">
					<asp:HyperLink id="Province" runat="server" NavigateUrl="Provinces.aspx" Font-Bold="True" BackColor="#C0FFC0"
						Font-Names="Tahoma">Province</asp:HyperLink></FONT></TD>
			<TD>
				<asp:HyperLink id="District" runat="server" NavigateUrl="District.aspx" Font-Bold="True" BackColor="#C0FFC0"
					Font-Names="Tahoma">District</asp:HyperLink></TD>
			<TD>
				<asp:HyperLink id="HyperLink1" Font-Names="Tahoma" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="Models.aspx"
					runat="server">Model</asp:HyperLink></TD>
			<TD>
				<asp:HyperLink id="Brand" runat="server" NavigateUrl="Cars.aspx" Font-Bold="True" BackColor="#C0FFC0"
					Font-Names="Tahoma">Brand</asp:HyperLink></TD>
			<TD></TD>
			<TD>
				<asp:HyperLink id="Colors" runat="server" NavigateUrl="Colors.aspx" Font-Bold="True" BackColor="#C0FFC0"
					Font-Names="Tahoma">Colors</asp:HyperLink></TD>
			<TD>
				<asp:HyperLink id="Car_Accessory" Font-Names="Tahoma" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="Car_Accessory.aspx"
					runat="server">Car Accessory</asp:HyperLink></TD>
			<TD>
				<asp:HyperLink id="Bike_Accessory" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="Bike_Accessory.aspx"
					runat="server" Font-Names="Tahoma">Bike Accessory</asp:HyperLink></TD>
			<TD>
				<asp:HyperLink id="Truck_Accessory" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="Truck_Accessory.aspx"
					runat="server" Font-Names="Tahoma">Truck Accessory</asp:HyperLink></TD>
		</TR>
		<TR>
			<TD><FONT face="Tahoma">
					<asp:HyperLink id="Parts" Font-Names="Tahoma" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="Parts.aspx"
						runat="server">Parts</asp:HyperLink></FONT></TD>
			<TD><FONT face="Tahoma">
					<asp:HyperLink id="check_payment" Font-Names="Tahoma" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="Customer_Payment.aspx"
						runat="server">Check Payment</asp:HyperLink></FONT></TD>
			<TD>
				<asp:HyperLink id="package" Font-Names="Tahoma" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="packageADM.aspx"
					runat="server">Package</asp:HyperLink></TD>
			<TD>
				<asp:HyperLink id="management" Font-Names="Tahoma" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="../customer_management/customer_list.aspx"
					runat="server">Management</asp:HyperLink></TD>
			<TD></TD>
			<TD></TD>
			<TD><FONT face="Tahoma">
					<asp:HyperLink id="Customer" Font-Names="Tahoma" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="CustomerAds.aspx"
						runat="server">Customer</asp:HyperLink></FONT></TD>
			<TD><FONT face="Tahoma">
					<asp:HyperLink id="Banner" Font-Names="Tahoma" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="banner.aspx"
						runat="server">Banner</asp:HyperLink></FONT></TD>
			<TD><FONT face="Tahoma">
					<asp:HyperLink id="HyperLink2" Font-Names="Tahoma" BackColor="#C0FFC0" Font-Bold="True" NavigateUrl="Truck.aspx"
						runat="server">Truck Brand</asp:HyperLink></FONT></TD>
		</TR>
		<TR>
			<TD><FONT face="Tahoma"></FONT></TD>
			<TD><FONT face="Tahoma"></FONT></TD>
			<TD><FONT face="Tahoma"></FONT></TD>
			<TD><FONT face="Tahoma"></FONT></TD>
			<TD><FONT face="Tahoma"></FONT></TD>
			<TD><FONT face="Tahoma"></FONT></TD>
			<TD><FONT face="Tahoma"></FONT></TD>
			<TD><FONT face="Tahoma"></FONT></TD>
			<TD><FONT face="Tahoma"></FONT></TD>
		</TR>
	</TABLE>
</div>
