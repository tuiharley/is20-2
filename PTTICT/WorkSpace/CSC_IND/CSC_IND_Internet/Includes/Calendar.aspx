<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Calendar.aspx.vb" Inherits="CSC_IND_Internet.Calendar" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Calendar</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../CSS/CSC_IND.css" type="text/css" rel="stylesheet">
			<SCRIPT language="javascript">
			function FindDate(){
				var ErrMsg;
					ErrMsg="";
				if (document.Form1.elements("txtYear").value < 1900) ErrMsg+="* ปี พ.ศ. ห้ามน้อยกว่า 1900 \n";
				if (IsNumeric(document.Form1.elements("txtYear").value) ==false) ErrMsg+="* ปี พ.ศ. ควรเป็นข้อมูลชนิดตัวเลข \n";
					if (ErrMsg != "" ) {
						alert("กรุณาระบุข้อมูลที่จำเป็นให้ครบถ้วนและตรวจสอบความถูกต้อง \n"+ErrMsg);
					} else {
						document.Form1.elements("ServerAction").value="SEARCH"
						document.Form1.submit();
					}
			}
			function IsNumeric(sText){
				var ValidChars = "0123456789.,";
				var IsNumber=true;
				var Char;
				for (i = 0; i < sText.length && IsNumber == true; i++){ 
					Char = sText.charAt(i); 
					if (ValidChars.indexOf(Char) == -1) 
					{
						IsNumber = false;
					}
				}
					return IsNumber;
				}
			</SCRIPT>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<input type="hidden" id="ServerAction" name="ServerAction">
			<table style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" cellSpacing="0" cellPadding="0"
				width="270" border="0">
				<tr>
					<td align="center" colSpan="5"><asp:calendar id="usrCalendar" runat="server" Width="220px" FirstDayOfWeek="Sunday" NextPrevFormat="ShortMonth">
							<TodayDayStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" Font-Bold="True" BorderWidth="1px"
								ForeColor="Blue" BorderStyle="Solid" BorderColor="DarkOrange" BackColor="Transparent"></TodayDayStyle>
							<SelectorStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" Font-Bold="True" ForeColor="#404040"
								BackColor="#FFFF80"></SelectorStyle>
							<DayStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif"></DayStyle>
							<DayHeaderStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" Font-Bold="True" ForeColor="MediumBlue"
								BackColor="Honeydew"></DayHeaderStyle>
							<SelectedDayStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" Font-Bold="True" Wrap="False"
								ForeColor="#404040" BackColor="#FFFF80"></SelectedDayStyle>
							<TitleStyle Font-Size="X-Small" Font-Underline="True" Font-Names="Microsoft Sans Serif" Font-Bold="True"
								BackColor="AliceBlue"></TitleStyle>
							<WeekendDayStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" ForeColor="Red" BackColor="Cornsilk"></WeekendDayStyle>
							<OtherMonthDayStyle Font-Italic="True" ForeColor="DarkGray"></OtherMonthDayStyle>
						</asp:calendar></td>
				</tr>
				<tr>
					<td align="center">เดือน&nbsp;</td>
					<td align="center"><asp:dropdownlist id="lstMonth" runat="server">
							<asp:ListItem Value="1">มกราคม</asp:ListItem>
							<asp:ListItem Value="2">กุมภาพันธ์</asp:ListItem>
							<asp:ListItem Value="3">มีนาคม</asp:ListItem>
							<asp:ListItem Value="4">เมษายน</asp:ListItem>
							<asp:ListItem Value="5">พฤษภาคม</asp:ListItem>
							<asp:ListItem Value="6">มิถุนายน</asp:ListItem>
							<asp:ListItem Value="7">กรกฎาคม</asp:ListItem>
							<asp:ListItem Value="8">สิงหาคม</asp:ListItem>
							<asp:ListItem Value="9">กันยายน</asp:ListItem>
							<asp:ListItem Value="10">ตุลาคม</asp:ListItem>
							<asp:ListItem Value="11">พฤศจิกายน</asp:ListItem>
							<asp:ListItem Value="12">ธันวาคม</asp:ListItem>
						</asp:dropdownlist></td>
					<td align="center">ปี พ.ศ.&nbsp;</td>
					<td align="center">
						<asp:TextBox id="txtYear" runat="server" Width="50px" MaxLength="4"></asp:TextBox><a href="#" onclick="JavaScript:FindDate();"><input type="button" id="btnGo" name="btnGo" runat="server" value="..."></a></td>
					<td align="center"></td>
				</tr>
			</table>
		</form>
		<%if  CloseMe then %>
		<SCRIPT language="vbscript">
			window.close 
		</SCRIPT>
		<%end if%>
	</body>
</HTML>
