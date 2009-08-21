<%@ Page Language="vb" AutoEventWireup="false" Codebehind="indexx.aspx.vb" Inherits="manage.indexx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>indexx</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table width="100%">
				<tr>
					<td width="10%"></td>
					<td width="720">
						<table width='100%' height="405" background="images/ext_1500_trx_phtgal_05.jpg">
							<tr valign="top" align="left">
								<td><asp:TextBox id="loginname" runat="server" Columns="10" MaxLength="10" tabIndex="1"></asp:TextBox>
									Login<br>
									<asp:TextBox id="pswd" runat="server" Columns="10" MaxLength="9" TextMode="Password" tabIndex="2"></asp:TextBox>
									Password<br>
									<asp:Button id="login" runat="server" Text="Login" tabIndex="3"></asp:Button><input type="reset" id="cancel" value="Reset" tabIndex="4">
								</td>
							</tr>
						</table>
					</td>
					<td width="10%"></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
