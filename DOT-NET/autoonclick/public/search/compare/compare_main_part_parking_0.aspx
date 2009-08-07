<%@ Page CodeBehind="compare_main_part_parking_0.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.compare_main_part_parking_0" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="../../../css/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<FORM id="form1" name="form1" runat="server">
			<table>
				<tr>
					<td width="10">
					</td>
					<td>
						<asp:label id="carCompare" runat="server"></asp:label>
					</td>
				</tr>
			</table>
			<script language="javascript">
			
				function removeCompare(commandid,carid,curData,fmp){
					switch (commandid){
						case '0':
							alert('Please select command');
							break;
						case '1':
							//window.open('../search3_detail_car.aspx?carid='+carid);
							return targetopener('../parking3_example_detail_part_00.aspx?curData='+curData+'&fmp=result&carid='+carid);
							break;
						case '2':
							var tmpArray;
							var tmpString2='';
							var tmpString;
							var url;
							tmpString = '<%=Session("want_comp")%>';
							if(tmpString.length==3){
								alert('Can not remove!');
							}else{
								tmpArray = tmpString.split(':');
							
								for(i=0;i<=tmpArray.length-1;i++){
									if(tmpArray[i]!=carid){
										tmpString2 += ':' + tmpArray[i];
									}
									
								}
							
								url = 'compare_main_part_parking_0.aspx?sort_by=<%=Request.QueryString("sort_by")%>&want_comp='+tmpString2.substr(1,tmpString2.length-1);
								window.location.href=url;
							}
							
							break;
					}
				}
				
				function targetopener(mylink, closeme, closeonly)
				{
					if (!(window.focus && window.top.opener))return true;
					
					window.top.opener.focus();
					var hrefNext;
					if (typeof(mylink) == 'string')
						hrefNext=mylink;
					else
						hrefNext=mylink.href;
				
					if (!closeonly)window.top.opener.location.href=hrefNext;
					if (closeme)window.close();
					return false;
				}
				window.focus();
			</script>
		</FORM>
	</body>
</HTML>
