<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CustomerAds.aspx.vb" Inherits="manage.CustomerAds" %>
<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
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
			<table width="100%" border="0">
				<tr>
					<td><menu:header_manage id="header_manage" runat="server"></menu:header_manage></td>
				</tr>
			</table>
			<table width="50%" border="0">
				<tr>
					<td style="HEIGHT: 16px">เลือกเงื่อนไข</td>
					<td style="HEIGHT: 16px">ชื่อ</td>
					<td style="HEIGHT: 16px">นามสกุล</td>
					<td style="HEIGHT: 16px">รหัสลูกค้า</td>
				</tr>
				<tr>
					<td style="HEIGHT: 16px"><input type="radio" name="cond" id="cond1" value="1" onclick="doEnb(this.value);"></td>
					<td style="HEIGHT: 16px"><input type="text" name="custname" id="custname"></td>
					<td style="HEIGHT: 16px"><input type="text" name="custsur" id="custsur"></td>
					<td style="HEIGHT: 16px"><input type="text" name="custid" id="custid"></td>
				</tr>
				<tr>
					<td style="HEIGHT: 16px"><input type="radio" name="cond" id="cond3" value="3" onclick="doEnb(this.value);"></td>
					<td style="HEIGHT: 16px" colspan="2" align="left">
						ผู้ประกอบการ</td>
					<td style="HEIGHT: 16px">
					</td>
				</tr>
				<tr>
					<td style="HEIGHT: 16px"><input type="radio" name="cond" id="cond4" value="4" onclick="doEnb(this.value);"></td>
					<td style="HEIGHT: 16px" colspan="2" align="left"><FONT face="Tahoma">บุคคลทั่วไป</FONT></td>
					<td style="HEIGHT: 16px">
					</td>
				</tr>
				<tr>
					<td style="HEIGHT: 16px"><input type="radio" name="cond" id="cond2" value="2" onclick="doEnb(this.value);"></td>
					<td style="HEIGHT: 16px" colspan="2" align="left">
						ทั้งหมด</td>
					<td style="HEIGHT: 16px">
						<input type="button" id="dSearch" name="dSearch" onclick='doSearch();' value='Search'>
					</td>
				</tr>
			</table>
			<div id="custL"><FONT face="Tahoma"></FONT>
			</div>
		</form>
		<script language="javascript">
			function doEnb(raValue){
				if(raValue=="2"||raValue=="3"||raValue=="4"){
					document.Form1.custname.disabled=true;
					document.Form1.custsur.disabled=true;
					document.Form1.custid.disabled=true;
				}else{
					document.Form1.custname.disabled=false;
					document.Form1.custsur.disabled=false;
					document.Form1.custid.disabled=false;
				}
			}
			
			function doSearch(){
				var custname=document.Form1.custname.value;
				var custsur=document.Form1.custsur.value;
				var custid=document.Form1.custid.value;
				var custtype;
				var raValue=getCheckedValue(document.Form1.elements['cond']);
				var show = document.getElementById("custL");
				show.innerHTML="<img src='../pics/ajax-loader.gif'></img>";
				if(raValue=="2"||raValue=="3"||raValue=="4"){
					custname="";custsur="";custid="";custtype="";
				}
				if(raValue=="3"){
					custtype="1";
				}
				if(raValue=="4"){
					custtype="0";
				}
				manage.CustomerAds.listCust(custname,custsur,custid,custtype,CustomerList);
			}
			function CustomerList(response){
					var show = document.getElementById("custL");
					show.innerHTML=response.value;
			}
			
			function getCheckedValue(radioObj) {
				if(!radioObj)return "";
				var radioLength = radioObj.length;
				if(radioLength == undefined)
					if(radioObj.checked)
						return radioObj.value;
					else
						return "";
				for(var i = 0; i < radioLength; i++) {
					if(radioObj[i].checked) {
						return radioObj[i].value;
					}
				}
				return "";
			}

		</script>
	</body>
</HTML>
