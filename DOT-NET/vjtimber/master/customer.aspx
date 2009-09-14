<%@Register TagPrefix="LeftMenu" TagName="LeftM" Src="../Controls/MasterLeft.ascx"%>
<%@Register TagPrefix="MainMenu" TagName="MainM" Src="../Controls/MainMenu.ascx"%>
<%@ Page CodeBehind="customer.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="vjtimber.customer" %>
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
					<MAINMENU:MAINM id="MainM" runat="server"></MAINMENU:MAINM></div>
				<div id="middle">
					<div id="left"><LEFTMENU:LEFTM id="LeftM" runat="server"></LEFTMENU:LEFTM></div>
					<div id="right">
						<div id="right_top">
							<h3>รายละเอียดของ Check</h3>
							<table cellSpacing="10" border="0">
								<tr>
									<td>คำนำหน้า</td>
									<td><asp:dropdownlist id="CustTitle" runat="server"></asp:dropdownlist></td>
								</tr>
								<tr>
									<td>ชื่อลูกค้า / ชื่อร้าน</td>
									<td><asp:textbox id="CustName" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td>นามสกุล (ร้านค้าไม่ต้องใส่)</td>
									<td><asp:textbox id="CustSurname" runat="server"></asp:textbox></td>
								</tr>
								<tr>
									<td></td>
									<td><input class="btn" onclick="AddCust();" type="button" value="Add"> <input class="btn" type="reset" value="Clear"></td>
								</tr>
							</table>
							<table>
								<tr height="1">
									<td></td>
								</tr>
							</table>
							<asp:datagrid id="CustList" runat="server" AutoGenerateColumns="False" Width="90%" OnUpdateCommand="UpdateCust"
								OnCancelCommand="CancelCust" OnEditCommand="EditCust" DataKeyField="CUST_ID">
								<HeaderStyle BackColor="#aaaaa"></HeaderStyle>
								<ItemStyle BackColor="#FF9933"></ItemStyle>
								<AlternatingItemStyle BackColor="#FFCC00"></AlternatingItemStyle>
								<Columns>
									<asp:EditCommandColumn ButtonType="LinkButton" EditText="Edit" UpdateText="Update" CancelText="Cancel" />
									<asp:TemplateColumn HeaderText="ชื่อลูกค้า">
										<ItemTemplate>
											<asp:Label id="txtCustName" runat="server" Text='<%# Container.DataItem("CUST_NAME") %>'>
											</asp:Label>
										</ItemTemplate>
										<EditItemTemplate>
											<asp:DropDownList id="cmbTitle" runat="server" datavaluefield="Title" datatextfield="Title_Name" DataSource="<%#StatusView%>" OnPreRender="setIndex1" >
											</asp:DropDownList>
											<asp:TextBox ID="lblCustName" Runat="server" OnPreRender="ShowName"></asp:TextBox>
											<asp:TextBox ID="lblCustSurName" Runat="server" OnPreRender="ShowSurName"></asp:TextBox>
										</EditItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="Search">
										<ItemTemplate>
											<asp:Label id="lblShow" runat="server" Text='<%# Container.DataItem("SHOW") %>'>
											</asp:Label>
										</ItemTemplate>
										<EditItemTemplate>
											<asp:DropDownList id="cmbShow" runat="server" datavaluefield="status_id" datatextfield="status_desc" DataSource="<%#StatusView2%>" OnPreRender="setIndex2" >
											</asp:DropDownList>
										</EditItemTemplate>
									</asp:TemplateColumn>
								</Columns>
							</asp:datagrid>
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
		
		function AddCust(){
			//tableList.innerHTML="Wait...!";
			
			var CustTitle = document.getElementById("CustTitle");
			var CustName = document.getElementById("CustName");
			var CustSurname = document.getElementById("CustSurname");
					
			if(CustTitle.value=="0"){alert("เลือกคำนำหน้า");return false;}					
			if(CustName.value==""){alert("ระบุชื่อลูกค้า");return false;}					
					
			vjtimber.customer.AddCust(CustTitle.value,CustName.value,CustSurname.value,tableBack);
		}
		function tableBack(response){
					//var tableList = document.getElementById("tableList");
						//tableList.innerHTML=response.value;
						window.location.href=window.self.location.href;
		}
		</script>
	</body>
</HTML>
