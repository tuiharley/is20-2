<%@ Control Language="vb" AutoEventWireup="false" Codebehind="province_list_search.ascx.vb" Inherits="autoonclick.province_list_search" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
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
	function province_list(frm,ProvID){
		var c=document.getElementById(frm);
		while (c.options.length > 0) {
			 c.options[(c.options.length - 1)] = null;	
		}
		c.options[0]= new Option('ทุกจังหวัด                                       ','0');
		c.options[0].selected=true;
		for(var i=1;i<total_province;i++){
				c.options[i]= new Option(province_name[i],i);
		}
		if(ProvID!='0' && ProvID!='' ){
			c.selectedIndex = ProvID;
		}
	}
	function district_list(frm,provID,distrID){
		var c=document.getElementById(frm);
		while (c.options.length > 0) {
			 c.options[(c.options.length - 1)] = null;	
		}
		c.options[0]= new Option('ทุกอำเภอ                      ','0');
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
			c.selectedIndex = distrID;
		}
	}
	
	
	
	<%if session("proinceIndex") = "" then%>
		province_list('Province');
		district_list('District',0);
	<%else%>
		province_list('Province',<%=session("proinceIndex")%>);
		district_list('District',<%=session("proinceIndex")%>,<%=session("districtIndex")%>);
	<%end if%>
	</script>
	<FONT face="Tahoma">
		<asp:Label id="Label1" runat="server"></asp:Label></FONT>
</P>
