<%@ Control Language="vb" AutoEventWireup="false" Codebehind="model_car_list_business.ascx.vb" Inherits="manage.model_car_list_business" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<P>
	<script language="javascript">
	var total_brand = <%=total_brand%>;
	var brandIndex;
	var brand_name = new Array();
		<%
			Dim x As Integer
			For x = 1 To total_brand
		%>
				brand_name[<%=x%>] = '<%=listBrand.GetValue(x)%>';
		<%
			Next
		%>
	var model_name = new Array();
		<%
			Dim i As Integer
			For i = 1 To total_brand
		%>
				model_name[<%=i%>] = '<%=listModel.GetValue(i)%>';
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
				if(BrandID!='0' && BrandID!='' ){
					if(BrandID==brand_show[0]){
						c.selectedIndex = i;
						brandIndex = i;
					}
				}
		}
		
	}
	function model_list(frm,provID,modelID){
		var c=document.getElementById(frm);
		while (c.options.length > 0) {
			 c.options[(c.options.length - 1)] = null;	
		}
		c.options[0]= new Option('------------ เลือกรุ่น ------------ ','0');
		if(provID=='0' || provID==''){
			c.options[0].selected=true;
		}else{
			var model = model_name[provID].split(',');
			var model_show =new Array();
			for(var i=1;i<model.length;i++){
				model_show = model[i].split(':');
				c.options[i]= new Option(model_show[1],model_show[0]);
			}
		}
		if(modelID!='0' && modelID!='' ){
			c.value = modelID;
		}
		
	}
	
	<%if session("brandIndex") = 0 then%>
		brand_list('Brands','');
		model_list('Model',0,'');
	<%else%>
		brand_list('Brands',<%=session("brandIndex")%>);
		model_list('Model',brandIndex,<%=session("modelIndex")%>);
	<%end if%>
	document.form1.brandIndex.value ='<%=session("brandIndex")%>';
	document.form1.modelIndex.value='<%=session("modelIndex")%>';
	</script>
	<FONT face="Tahoma">
		<asp:Label id="Label1" runat="server"></asp:Label></FONT>
</P>
