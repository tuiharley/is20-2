<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="packageADM.aspx.vb" Inherits="manage.packageADM"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>packageADM</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table width="100%" border="0">
				<tr>
					<td><menu:header_manage id="header_manage" runat="server"></menu:header_manage></td>
				</tr>
				<tr>
					<td>
					</td>
				</tr>
				<tr>
					<td><input type="button" id="addNew" value="เพิ่ม" onclick="doAdd();">
					</td>
				</tr>
			</table>
			<div id="packList"></div>
		</form>
		<script type="text/javascript">
			showPac();
			function showPac(){
					manage.packageADM.getList(showP);
			}
			function showP(response){
				var show = document.getElementById("packList");
				show.innerHTML=response.value;
				//alert(response.value);
			}
			function doEdit(packageid){
				manage.packageADM.editPackage(packageid,showP);
			}
			function Edit(packid,cat,packageName,packageNum,packageStart,packageStop,packageWeek,packageType,packagePrice){
				alert(packagePrice);
				manage.packageADM.savePackage(packid,cat,packageName,packageNum,packageStart,packageStop,packageWeek,packageType,packagePrice,showP);
			}
			function doAdd(){
				manage.packageADM.addPackage(showP);
			}
			function AddNew(cat,packageName,packageNum,packageStart,packageStop,packageWeek,packageType,packagePrice){
				
				manage.packageADM.newPackage(cat,packageName,packageNum,packageStart,packageStop,packageWeek,packageType,packagePrice,showP);
			}
		</script>
	</body>
</HTML>
