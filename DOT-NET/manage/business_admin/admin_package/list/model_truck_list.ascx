<%@ Control Language="vb" AutoEventWireup="false" Codebehind="model_truck_list.ascx.vb" Inherits="manage.adminP_model_truck_list" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<P>
	<script language="javascript">
	var total_brand = <%=total_brand%>;
	var brand_name = new Array();
		<%
			Dim x As Integer
			For x = 1 To total_brand
		%>
				brand_name[<%=x%>] = '<%=listBrand.GetValue(x)%>';
		<%
			Next
		%>
	
	
	function brand_list(frm,BrandID){
		var c=document.getElementById(frm);
		while (c.options.length > 0) {
			 c.options[(c.options.length - 1)] = null;	
		}
		c.options[0]= new Option('------------ เลือกยี่ห้อ ----------- ','0');
		c.options[0].selected=true;
		var brand_show = new Array();
		for(var i=1;i<=total_brand;i++){
				brand_show = brand_name[i].split(':');
				c.options[i]= new Option(brand_show[1],brand_show[0]);
		}
		if(BrandID!='0' && BrandID!='' ){
			c.selectedIndex = BrandID;
		}
	}
	
	<%if session("brandIndex") = "" then%>
		brand_list('Brands','');
	<%else%>
		brand_list('Brands',<%=session("brandIndex")%>);
	<%end if%>
	document.form1.brandIndex.value ='<%=session("brandIndex")%>';
	</script>
	<FONT face="Tahoma">
		<asp:Label id="Label1" runat="server"></asp:Label></FONT>
</P>
