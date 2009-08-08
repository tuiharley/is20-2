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
						<h1>วี.เจ.ทิมเบอร์ จำกัด</h1>
						<h2></h2>
					</div>
					<div id="menu">
						<ul>
							<li>
								<A href="../index.html">หน้าแรก</A>
							</li>
							<li>
								<A href="#">บันทึก check</A>
							</li>
							<li>
								<A href="#">สินค้า</A>
							</li>
							<li>
								<A href="#">Services</A>
							</li>
							<li>
								<A href="#">จัดการข้อมูล</A>
							</li>
							<li>
								<A href="#">Contact Us</A>
							</li>
						</ul>
					</div>
				</div>
				<div id="middle">
					<div id="left">
						<div id="left_bot">
							<h3>Menu</h3>
							<ul>
								<li>
									- <A href="#">บันทึกรับ Check ใหม่</A>
								<li>
									- <A href="EditCheck.html">แก้ไข Check</A>
								<li>
									- <A href="check_records.html">ดูรายการรับ Check ทั้งหมด</A> 
									<!--<li>&raquo; <a href="#">Suspendisse potenti</a></li>
                        <li>&raquo; <a href="#">Morbi bibendum</a></li>
                        <li>&raquo; <a href="#">Nulla facilisi</a></li>--></li></ul>
						</div>
					</div>
					<div id="right">
						<div id="right_top">
							<h3 class="firsth3">เลือกธนาคาร</h3>
							<asp:radiobuttonlist id="bankList" runat="server" RepeatColumns="2">
								<asp:ListItem Value="0">K-Bank</asp:ListItem>
								<asp:ListItem Value="1">Bangkok Bank</asp:ListItem>
								<asp:ListItem Value="2">Krungsri Aydhaya Bank</asp:ListItem>
								<asp:ListItem Value="3">Siam Commercial Bank</asp:ListItem>
							</asp:radiobuttonlist>
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
							<h3 class="firsth3">รายละเอียดของ Check</h3>
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
		<script language="javascript">
		vjtimber.addNewCheck.showCheck("1",tableBack);
		function tableBack(response){
					var tableList = document.getElementById("tableList");
						tableList.innerHTML=response.value;
						//autoonclick.package2_list.showNotice(noticeBack);
		}
		
		function doAdd(){
			//var bankList = document.getElementById("bankList");
			var bankList = "2";
			var chkDate = document.getElementById("chkDate");
			var chkMonth = document.getElementById("chkMonth");
			var chkYear = document.getElementById("chkYear");
			var chkCust = document.getElementById("chkCust");
			var chkAmount = document.getElementById("chkAmount");
			var chkNo = document.getElementById("chkNo");
			var chkDetail = document.getElementById("chkDetail");
			var pass = true;
			//alert("start");
			//ByVal bankCode As String, ByVal d As String, ByVal m As String, ByVal y As String, ByVal cust As String, ByVal amount As String, ByVal chkNo As String, ByVal chkDetail As String
			
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
				vjtimber.addNewCheck.addCheck("2",chkDate.value,chkMonth.value,chkYear.value,chkCust.value,chkAmount.value,chkNo.value,chkDetail.value,addFinish);
			}
			
		}
		function addFinish(response){
					alert("Success !");
					vjtimber.addNewCheck.showCheck("1",tableBack);
		}
		
		function delCheck(checkid){
			if(confirm("Confirm delete check ?")){
				vjtimber.addNewCheck.delCheck(checkid,addFinish);
			}
		}
		
		</script>
	</body>
</HTML>
