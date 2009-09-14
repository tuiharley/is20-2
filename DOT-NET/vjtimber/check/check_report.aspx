<%@ Page CodeBehind="check_report.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="vjtimber.check_report" %>
<%@Register TagPrefix="MainMenu" TagName="MainM" Src="../Controls/MainMenu.ascx"%>
<%@Register TagPrefix="LeftMenu" TagName="LeftM" Src="../Controls/LeftMenu.ascx"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>VJ TIMBER CO LTD</title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<meta http-equiv="Content-Type" content="text/html; charset=window-874">
		<meta name="language" content="en">
		<link href="../style.css" rel="stylesheet" type="text/css" media="screen">
	</HEAD>
	<body>
		<form id="form1" name="form1" runat="server">
			<div id="main">
				<div id="top">
					<div id="logo">
						<h1>วี.เจ.ทิมเบอร์ จำกัด</h1>
						<h2></h2>
					</div>
					<MainMenu:MainM id="MainM" runat="server"></MainMenu:MainM>
				</div>
				<div id="middle">
					<div id="left">
						<LeftMenu:LeftM id="LeftM" runat="server"></LeftMenu:LeftM>
					</div>
					<div id="right">
						<div id="right_top">
							<h3 class="firsth3">เลือกธนาคาร</h3>
							<asp:radiobuttonlist id="bankList" RepeatColumns="2" runat="server"></asp:radiobuttonlist>
							<h3>รายละเอียดของ Check</h3>
							<table border="0" cellspacing="10">
								<tr>
									<td>เช็คลงวันที่</td>
									<td><asp:dropdownlist id="chkDateF" runat="server"></asp:dropdownlist>/
										<asp:dropdownlist id="chkMonthF" runat="server"></asp:dropdownlist>/
										<asp:dropdownlist id="chkYearF" runat="server"></asp:dropdownlist>(dd/mm/yyyy)
									</td>
								</tr>
								<tr>
									<td>ถึงวันที่</td>
									<td><asp:dropdownlist id="chkDateT" runat="server"></asp:dropdownlist>/
										<asp:dropdownlist id="chkMonthT" runat="server"></asp:dropdownlist>/
										<asp:dropdownlist id="chkYearT" runat="server"></asp:dropdownlist>(dd/mm/yyyy)
									</td>
								</tr>
								<tr>
									<td>สั่งจ่ายโดย</td>
									<td><asp:dropdownlist id="chkCust" runat="server">
											<asp:ListItem Value="1">A1</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>เลขที่ Check</td>
									<td><asp:textbox id="chkNo" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>สถานะ</td>
									<td><asp:dropdownlist id="chkStatus" runat="server"></asp:dropdownlist></td>
								</tr>
								<tr>
									<td></td>
									<td><input type="button" class="btn" onclick="showCheck();" value="Search"> <input type="reset" class="btn" value="Clear"></td>
								</tr>
							</table>
							<table>
								<tr height="1">
									<td></td>
								</tr>
							</table>
							<div id="tableList"></div>
							<table>
								<tr height="1">
									<td></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div id="bottom">
					<p>Copyright ? VJTIMBER Co.,Ltd., Designed by Trimit Chanchotiyan</p>
				</div>
			</div>
		</form>
		<script src="../jscript/bankradio.js"></script>
		<script language="javascript">
		
		function showCheck(){
			tableList.innerHTML="Wait...!";
			
			var bankList = get_radio_value();
			var chkDateF = document.getElementById("chkDateF");
			var chkMonthF = document.getElementById("chkMonthF");
			var chkYearF = document.getElementById("chkYearF");
			var chkDateT = document.getElementById("chkDateT");
			var chkMonthT = document.getElementById("chkMonthT");
			var chkYearT = document.getElementById("chkYearT");
			var chkCust = document.getElementById("chkCust");
			var chkNo = document.getElementById("chkNo");
			var chkStatus = document.getElementById("chkStatus");
			
			var Dfrom = chkMonthF.value+'-'+chkDateF.value+'-'+chkYearF.value;
			var Dto = chkMonthT.value+'-'+chkDateT.value+'-'+chkYearT.value;
					
			vjtimber.check_records.showCheck(bankList,Dfrom,Dto,chkCust.value,chkNo.value,chkStatus.value,tableBack);
		}
		function tableBack(response){
					var tableList = document.getElementById("tableList");
						tableList.innerHTML=response.value;
		}
		</script>
	</body>
</HTML>
