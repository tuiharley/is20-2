<%@Register TagPrefix="LeftMenu" TagName="LeftM" Src="../Controls/LeftMenu.ascx"%>
<%@Register TagPrefix="MainMenu" TagName="MainM" Src="../Controls/MainMenu.ascx"%>
<%@ Page CodeBehind="EditCheck.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="vjtimber.EditCheck" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>VJ TIMBER CO LTD</title>
		<meta content="" name="keywords">
		<meta content="" name="description">
		<meta http-equiv="Content-Type" content="text/html; charset=window-874">
		<meta content="en" name="language">
		<LINK media="screen" href="../style.css" type="text/css" rel="stylesheet">
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
							<table cellSpacing="10" border="0">
								<tr>
									<td>เช็คลงวันที่</td>
									<td><asp:dropdownlist id="chkDate" runat="server"></asp:dropdownlist>/
										<asp:dropdownlist id="chkMonth" runat="server"></asp:dropdownlist>/
										<asp:dropdownlist id="chkYear" runat="server"></asp:dropdownlist>(dd/mm/yyyy)
									</td>
								</tr>
								<tr>
									<td>สั่งจ่ายโดย</td>
									<td><asp:dropdownlist id="chkCust" runat="server">
											<asp:ListItem Value="1">A1</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>จำนวนเงิน</td>
									<td><asp:textbox id="chkAmount" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>เลขที่ Check</td>
									<td><asp:textbox id="chkNo" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>รายละเอียด</td>
									<td><asp:textbox id="chkDetail" runat="server" Width="328px"></asp:textbox></td>
								</tr>
								<tr>
									<td>สถานะ</td>
									<td><asp:dropdownlist id="chkStatus" runat="server"></asp:dropdownlist></td>
								</tr>
								<tr>
									<td></td>
									<td><asp:Label ID="btnSave" Runat="server"></asp:Label>
										<input class="btn" type="button" onclick="goBack();" value="Back"></td>
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
		function doEdit(chkID){
			var bankList = get_radio_value();
			var chkDate = document.getElementById("chkDate");
			var chkMonth = document.getElementById("chkMonth");
			var chkYear = document.getElementById("chkYear");
			var chkCust = document.getElementById("chkCust");
			var chkAmount = document.getElementById("chkAmount");
			var chkNo = document.getElementById("chkNo");
			var chkDetail = document.getElementById("chkDetail");
			var chkStatus = document.getElementById("chkStatus");
			var pass = true;
			
			if(bankList==-1){
				alert("Bank?");
				pass=false;
				return;
			}
			if(chkAmount.value==""){
				alert("Amount is Empty");
				pass=false;
				return;
			}
			if(chkNo.value==""){
				alert("Check No is Empty");
				pass=false;
				return;
			}
			if(pass){
				vjtimber.EditCheck.editCheck(chkID,bankList,chkDate.value,chkMonth.value,chkYear.value,chkCust.value,chkAmount.value,chkNo.value,chkDetail.value,chkStatus.value,addFinish);
			}
			
		}
		function addFinish(response){
					alert("Success !");
					window.location.href=response.value;
					//vjtimber.EditCheck.showCheck("1",tableBack);
		}
		
		function goBack(){
			vjtimber.EditCheck.getBackPage(backUrl);
		}
		function backUrl(response){
			window.location.href=response.value;
		}
		
		</script>
	</body>
</HTML>
