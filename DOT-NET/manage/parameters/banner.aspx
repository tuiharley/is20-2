<%@ Page Language="vb" AutoEventWireup="false" Codebehind="banner.aspx.vb" Inherits="manage.bannerPage" %>
<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>banner</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table width="100%" border="0">
				<tr>
					<td><menu:header_manage id="header_manage" runat="server"></menu:header_manage></td>
				</tr>
			</table>
			<div id='bann'><FONT face="Tahoma"></FONT>
			</div>
		</form>
		<script type="text/javascript">
			showAll();
			function showAll(){
				var show = document.getElementById("bann");
				show.innerHTML="<img src='../pics/ajax-loader.gif'></img>";
				manage.bannerPage.showAllBanner(showTable);
			}
			function showTable(response){
					var show = document.getElementById("bann");
					show.innerHTML=response.value;
			}
		
			function del(bannerid){
				var show = document.getElementById("bann");
				if(confirm("Sure To Delete!!")){
					show.innerHTML="<img src='../pics/ajax-loader.gif'></img>";
					manage.bannerPage.getOldPic(bannerid,CustomerList);
				}
			}
			function CustomerList(){
					manage.bannerPage.showAllBanner(showTable);
			}
		</script>
	</body>
</HTML>
