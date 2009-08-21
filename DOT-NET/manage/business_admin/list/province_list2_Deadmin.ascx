<%@ Control Language="vb" AutoEventWireup="false" Codebehind="province_list2_Deadmin.ascx.vb" Inherits="manage.province_list2_Deadmin" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<P>
	<script language="javascript">
	var total_province = <%=total_province%>;
	var province_name = new Array();
		<%
			Dim x As Integer
			For x = 1 To total_province
		%>
				province_name[<%=x%>] = '<%=listProvince.GetValue(x)%>';
		<%
			Next
		%>
	var district_name = new Array();
		<%
			Dim i As Integer
			For i = 1 To total_province
		%>
				district_name[<%=i%>] = '<%=listDistrict.GetValue(i)%>';
		<%
			Next
		%>
	function province_list(frm,provID){
		var c=document.getElementById(frm);
		while (c.options.length > 0) {
			 c.options[(c.options.length - 1)] = null;	
		}
		c.options[0]= new Option('------- เลือกจังหวัด ------ ','0');
		c.options[0].selected=true;
		for(var i=1;i<total_province;i++){
				c.options[i]= new Option(province_name[i],i);
		}
		if(provID!='0' && provID!='' ){
			c.selectedIndex = provID;
		}
	}
	function district_list(frm,provID,distrID){
		var c=document.getElementById(frm);
		while (c.options.length > 0) {
			 c.options[(c.options.length - 1)] = null;	
		}
		c.options[0]= new Option('------- เลือกอำเภอ ------ ','0');
		if(provID=='0' || provID==''){
			c.options[0].selected=true;
		}else{
		
			var district = district_name[provID].split(',');
			var district_show =new Array();
			for(var i=1;i<district.length;i++){
				district_show = district[i].split(':');
				c.options[i]= new Option(district_show[1],district_show[0]);
			}
		}
		if(distrID!='0' && distrID!='' ){
			c.value = distrID;
		}
	}
	
	
	
	<%if session("per_province") = 0 then%>
		province_list('province');
		district_list('district',0,0);
	<%else%>
		province_list('province',<%=session("per_province")%>);
		district_list('district',<%=session("per_province")%>,<%=session("per_district")%>);
	<%end if%>
	
	</script>
	<FONT face="Tahoma">
		<asp:Label id="Label1" runat="server"></asp:Label></FONT>
</P>
