<%@ Page Language="vb" AutoEventWireup="false" Codebehind="test1.aspx.vb" Inherits="autoonclick.test1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>test1</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" name="Form1" method="post" runat="server">
			<asp:button id="Button1" style="Z-INDEX: 101; LEFT: 464px; POSITION: absolute; TOP: 160px" runat="server"
				Text="Button"></asp:button><asp:image id="Image1" style="Z-INDEX: 102; LEFT: 152px; POSITION: absolute; TOP: 232px" runat="server"></asp:image><asp:image id="Image2" style="Z-INDEX: 103; LEFT: 808px; POSITION: absolute; TOP: 248px" runat="server"></asp:image><asp:radiobuttonlist id="RadioButtonList1" style="Z-INDEX: 104; LEFT: 368px; POSITION: absolute; TOP: 344px"
				runat="server">
				<asp:ListItem Value="0" Selected="True">test1</asp:ListItem>
				<asp:ListItem Value="1">test2</asp:ListItem>
			</asp:radiobuttonlist><asp:dropdownlist id="DropDownList1" style="Z-INDEX: 105; LEFT: 288px; POSITION: absolute; TOP: 192px"
				runat="server">
				<asp:ListItem Value="1" Selected="True">1</asp:ListItem>
				<asp:ListItem Value="2">2</asp:ListItem>
				<asp:ListItem Value="3">3</asp:ListItem>
				<asp:ListItem Value="4">4</asp:ListItem>
			</asp:dropdownlist><INPUT style="Z-INDEX: 106; LEFT: 240px; POSITION: absolute; TOP: 376px" onclick="sendMail()"
				type="button" value="Button">
			<asp:Label id="Label1" style="Z-INDEX: 107; LEFT: 264px; POSITION: absolute; TOP: 72px" runat="server">Label</asp:Label>
			
			<DIV style="DISPLAY: inline; Z-INDEX: 108; LEFT: 280px; WIDTH: 70px; POSITION: absolute; TOP: 120px; HEIGHT: 15px"
				ms_positioning="FlowLayout" id="label2">Label</DIV>
			<IMG id='image11' style="Z-INDEX: 109; LEFT: 416px; POSITION: absolute; TOP: 496px" alt=""
				src="">
		</form>
		<script type="text/javascript">
		function sendMail(){
			autoonclick.test1.test2(ok_callback);
			
		}
		function ok_callback(response){
			document.getElementById("Label1").innerHTML = response.value;
			document.getElementById("label2").innerHTML = response.value;
		}
		document.getElementById("image1").width=300;
		</script>
	</body>
</HTML>
