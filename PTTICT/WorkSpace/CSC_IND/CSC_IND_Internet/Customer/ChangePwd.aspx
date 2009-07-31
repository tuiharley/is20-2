<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChangePwd.aspx.vb" Inherits="CSC_IND_Internet.ChangePwd" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>เปลี่ยนรหัสผ่าน</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/CSC_IND.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="javascript">
			function SaveItem(){
					document.frmPassword.elements("ServerAction").value = "SAVE";
					document.frmPassword.submit();
			}
			function CancelItem(){
				window.location.href="LogOn.aspx" 
			}
			</script>
	</HEAD>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form id="frmPassword" name="frmPassword" runat="server" method="post" action="">
			<input id="ServerAction" type="hidden" name="ServerAction">
			<table width="450" border="0" cellspacing="0" cellpadding="0" align="center">
				<tr>
					<td>
						<table width="400" border="0" cellspacing="0" cellpadding="0" align="center">
							<tr bgColor="#f1f8ff">
								<td colspan="2" class="text1" height="5"></td>
							</tr>
							<tr bgColor="#f1f8ff">
								<td colspan="2" class="HeaderText">
									<div align="center">เปลี่ยนรหัสผ่าน</div>
								</td>
							</tr>
							<tr bgColor="#f1f8ff">
								<td colspan="2" class="text1" height="5"></td>
							</tr>
							<tr>
								<td colspan="2" class="text1" height="6"></td>
							</tr>
							<tr>
								<td width="321" class="text1">&nbsp;</td>
								<td width="323" class="text1">&nbsp;</td>
							</tr>
							<tr>
								<td width="321" class="text1">
									<div align="right">ชื่อผู้ใช้ &nbsp;:&nbsp;</div>
								</td>
								<td width="323" class="text1">
									<font color="#0000ff">
										<asp:Label id="lblUsername" runat="server" Width="140px"></asp:Label></font>
								</td>
							</tr>
							<tr>
								<td width="321" class="text1">
									<div align="right">รหัสผ่านเดิม &nbsp;:&nbsp;</div>
								</td>
								<td width="323" class="text1">
									<asp:TextBox id="txtOldPwd" runat="server" TextMode="Password"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td width="321" class="text1">
									<div align="right">รหัสผ่านใหม่ &nbsp;:&nbsp;</div>
								</td>
								<td width="323" class="text1"><asp:TextBox id="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td width="321" class="text1">
									<div align="right">ยืนยันรหัสผ่าน&nbsp; :&nbsp;</div>
								</td>
								<td width="323" class="text1"><asp:TextBox id="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<td width="321" class="text1">&nbsp;</td>
								<td width="323" class="text1">&nbsp;</td>
							</tr>
							<tr>
								<td colspan="2" class="text1" align="center">
									<A onclick="JavaScript:SaveItem();" href="#"><IMG src="../Images/Button/btn_save.gif" border="0"></A>
									&nbsp; <A onclick="JavaScript:CancelItem();" href="#"><IMG src="../Images/Button/btn_cancel.gif" border="0"></A>
								</td>
							</tr>
							<tr>
								<td width="321" class="text1">&nbsp;</td>
								<td width="323" class="text1">&nbsp;</td>
							</tr>
							<tr>
								<td width="321"><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="กรุณาระบุรหัสผ่านเดิม"
										Display="None" ControlToValidate="txtOldPwd"></asp:RequiredFieldValidator>
									<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="กรุณาระบุรหัสผ่านใหม่"
										Display="None" ControlToValidate="txtNewPwd"></asp:RequiredFieldValidator>
									<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="กรุณายืนยันรหัสผ่านใหม่"
										Display="None" ControlToValidate="txtConfirmPwd"></asp:RequiredFieldValidator></td>
								<td width="323"><asp:CompareValidator id="CompareValidator1" runat="server" ErrorMessage="รหัสผ่านไม่ตรงกัน ! กรุณาระบุใหม่"
										Display="None" ControlToValidate="txtConfirmPwd" ControlToCompare="txtNewPwd"></asp:CompareValidator>
									<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
		<%	if Msg <> "" then%>
		<SCRIPT language="javascript">
				alert("<%=Msg%>");
				window.close(); 
		</SCRIPT>
		<%end if%>
	</body>
</HTML>
