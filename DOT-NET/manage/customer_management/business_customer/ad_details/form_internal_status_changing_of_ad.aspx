<%@ Page CodeBehind="form_internal_status_changing_of_ad.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.form_internal_status_changing_of_ad" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../css/css.css" rel="stylesheet" type="text/css">
	</HEAD>
	<body>
		<form id='form1' runat="server">
			<table border="0" align="center" cellpadding="3" cellspacing="1" class="standard_font">
				<tr>
					<td bgcolor="#d9d9ff" class="standard_font"><div align="center"><strong>Status Changing of 
								Car Ad: 1234567890</strong></div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#e6e6e6" class="standard_font"><div align="center">Reason/Comment to 
							Customer:<br>
							&nbsp;&nbsp;
							<asp:TextBox id="changeRem" runat="server" TextMode="MultiLine" Height="86px" Width="258px"></asp:TextBox>
						</div>
					</td>
				</tr>
				<tr>
					<td height="5" bgcolor="#d9d9ff" class="standard_font"></td>
				</tr>
				<tr>
					<td height="5" class="standard_font"></td>
				</tr>
				<tr>
					<td class="standard_font">
						<div align="center">
							<asp:Button id="change" runat="server" Text="Change Status"></asp:Button>&nbsp;
							<asp:Button id="cancelBtn" runat="server" Text="Cancel"></asp:Button>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
