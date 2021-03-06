<%@Register TagPrefix="MainMenu" TagName="MainM" Src="../Controls/MainMenu.ascx"%>
<%@Register TagPrefix="LeftMenu" TagName="LeftM" Src="../Controls/LeftMenu.ascx"%>
<%@ Page CodeBehind="addNewCheck.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="vjtimber.addNewCheck" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
	<HEAD>
		<title>VJ TIMBER CO LTD</title>
		<meta content="" name="keywords">
		<meta content="" name="description">
		<!--meta http-equiv="Content-Type" content="text/html; charset=utf-8" /-->
		<meta content="en" name="language">
		<LINK media="screen" href="../style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="form1" name="form1" runat="server">
			<div id="main">
				<div id="top">
					<div id="logo">
						<h1>��.�.������� �ӡѴ</h1>
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
							<h3 class="firsth3">���͡��Ҥ��</h3>
							<asp:radiobuttonlist id="bankList" runat="server" RepeatColumns="2"></asp:radiobuttonlist>
							<!--table border="0">
								<tr>
									<td><input type="radio" id="bank" name="bank" value="1"></td>
									<td>K-Bank</td>
								</tr>
								<tr>
									<td><input type="radio" id="bank" name="bank" value="1"></td>
									<td>Bangkok Bank</td>
								</tr>
								<tr>
									<td><input type="radio" id="bank" name="bank" value="1"></td>
									<td>Krungsri Aydhaya Bank</td>
								</tr>
								<tr>
									<td><input type="radio" id="bank" name="bank" value="1"></td>
									<td>Siam Commercial Bank</td>
								</tr>
							</table-->
							<h3 class="firsth3">��������´�ͧ Check</h3>
							<table cellSpacing="10" border="0">
								<tr>
									<td>��ŧ�ѹ���</td>
									<td><asp:dropdownlist id="chkDate" runat="server"></asp:dropdownlist>/
										<asp:dropdownlist id="chkMonth" runat="server"></asp:dropdownlist>/
										<asp:dropdownlist id="chkYear" runat="server"></asp:dropdownlist>(dd/mm/yyyy)
									</td>
								</tr>
								<tr>
									<td>��觨�����</td>
									<td><asp:dropdownlist id="chkCust" runat="server">
											<asp:ListItem Value="1">A1</asp:ListItem>
										</asp:dropdownlist></td>
								</tr>
								<tr>
									<td>�ӹǹ�Թ</td>
									<td><asp:textbox id="chkAmount" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>�Ţ��� Check</td>
									<td><asp:textbox id="chkNo" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>��������´</td>
									<td><asp:textbox id="chkDetail" runat="server" Width="328px"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td><input class="btn" onclick="doAdd();" type="button" value="Save"> <input class="btn" type="reset" value="Clear"></td>
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
		vjtimber.addNewCheck.showCheck("1",tableBack);
		function tableBack(response){
					var tableList = document.getElementById("tableList");
						tableList.innerHTML=response.value;
						//autoonclick.package2_list.showNotice(noticeBack);
		}
		
		function doAdd(){
			var bankList = get_radio_value();
			var chkDate = document.getElementById("chkDate");
			var chkMonth = document.getElementById("chkMonth");
			var chkYear = document.getElementById("chkYear");
			var chkCust = document.getElementById("chkCust");
			var chkAmount = document.getElementById("chkAmount");
			var chkNo = document.getElementById("chkNo");
			var chkDetail = document.getElementById("chkDetail");
			var pass = true;
			
			//ByVal bankCode As String, ByVal d As String, ByVal m As String, ByVal y As String, ByVal cust As String, ByVal amount As String, ByVal chkNo As String, ByVal chkDetail As String
			
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
				vjtimber.addNewCheck.addCheck(bankList,chkDate.value,chkMonth.value,chkYear.value,chkCust.value,chkAmount.value,chkNo.value,chkDetail.value,addFinish);
			}
			
		}
		function addFinish(response){
					alert("Success !");
					vjtimber.addNewCheck.showCheck("1",tableBack);
					document.form1.reset();
		}
		
		function delCheck(checkid){
			if(confirm("Confirm delete check ?")){
				vjtimber.addNewCheck.delCheck(checkid,addFinish);
			}
		}
		
		function goEdit(checkid){
			window.location.href='EditCheck.aspx?checkid='+checkid;
		}
		
		
		</script>
	</body>
</HTML>
