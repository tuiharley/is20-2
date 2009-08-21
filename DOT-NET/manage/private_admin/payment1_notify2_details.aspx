<%@Register TagPrefix="logo" TagName="logo_login" Src="top_menu/top_menu_puadmin.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menu2_puadmin.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_menu/footer_menu_puadmin.ascx"%>
<%@ Page CodeBehind="payment1_notify2_details.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.payment1_notify2_details" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="../../css/style.css" type="text/css" rel="stylesheet">
			<style type="text/css">BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
	A:active { TEXT-DECORATION: none }
	A:link { TEXT-DECORATION: none }
	A:visited { TEXT-DECORATION: none }
	A:hover { TEXT-DECORATION: none }
	</style>
			<script language="JavaScript" type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
			</script>
	</HEAD>
	<body onload="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="983" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><span class="Font_orange">&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;</span></td>
											<td width="20"></td>
											<td><IMG height="9" src="../../images/objects/so_ar_o_w.gif" width="19"><span class="Font_orange">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;&#3585;&#3634;&#3619;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</span></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="15"><INPUT id="payment_num" type="hidden" name="payment_num"></td>
							</tr>
						</table>
					</td>
					<td></td>
					<td vAlign="top"></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td height="21">
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3649;&#3592;&#3657;&#3591;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;: 
												&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619; 
												&amp; 
												&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;&#3585;&#3634;&#3619;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="1"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/pay_noti.gif"
										border="0">
										<tr>
											<td width="3"></td>
											<td width="29">
												<DIV align="center"></DIV>
											</td>
											<td width="5"></td>
											<td width="68">
												<DIV align="center">&#3619;&#3627;&#3633;&#3626;&#3629;&#3657;&#3634;&#3591;&#3629;&#3636;&#3591;</DIV>
											</td>
											<td width="5"></td>
											<td width="110">
												<DIV align="center">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3648;&#3621;&#3639;&#3629;&#3585;</DIV>
											</td>
											<td width="5"></td>
											<td width="190">
												<DIV align="center">&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;/&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</DIV>
											</td>
											<td width="5"></td>
											<td width="80">
												<DIV align="center">&#3619;&#3632;&#3618;&#3632;&#3648;&#3623;&#3621;&#3634;</DIV>
											</td>
											<td width="5"></td>
											<td width="111">
												<div align="center">&#3588;&#3656;&#3634;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>
											</td>
											<td width="5"></td>
											<td width="69">
												<DIV align="center"><span>&#3627;&#3617;&#3634;&#3618;&#3648;&#3627;&#3605;&#3640;</span></DIV>
											</td>
											<td width="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" background="../../images/table/pay_noti1.gif"
										border="0">
										<asp:label id="invoiceList" runat="server"></asp:label></table>
								</td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../images/lines/l_b_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<div align="left">
										<table cellSpacing="0" cellPadding="0" border="0">
											<tr>
												<td><asp:button class="button" id="del_but" onmouseover="document.all.del_but.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.del_but.className='button'" runat="server"
														name="del_but" Text="&#3621;&#3610;" CausesValidation="False"></asp:button></td>
												<td width="4"></td>
												<td><asp:button class="button" id="prev_but" onmouseover="document.all.prev_but.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.prev_but.className='button'" runat="server"
														name="prev_but" Text="&#3618;&#3657;&#3629;&#3609;&#3585;&#3621;&#3633;&#3610;" CausesValidation="False"></asp:button></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td>
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/h_b_693.gif"
										border="0">
										<tr>
											<td width="5"></td>
											<td width="683">
												<div align="center">- 
													&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3637;&#3656;&#3592;&#3635;&#3648;&#3611;&#3655;&#3609;&#3648;&#3609;&#3657;&#3609;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3604;&#3657;&#3623;&#3618;<span class="Font_orange_bold">&#3626;&#3637;&#3626;&#3657;&#3617;</span>
													-</div>
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" background="../../images/table/pay_noti2.gif"
										border="0">
										<tr>
											<td colSpan="5" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="76">
												<div align="right"><span class="Font_orange">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</span></div>
											</td>
											<td width="21"></td>
											<td width="586">&nbsp;
												<asp:button class="button" id="showCal" onmouseover="document.all.showCal.className='buttonover'"
													style="CURSOR: hand" onmouseout="document.all.showCal.className='button'" runat="server"
													name="showCal" Text="Date..." CausesValidation="False"></asp:button>
												<asp:TextBox id="date_paid" runat="server" ForeColor="Blue" ReadOnly="True" Font-Bold="True"
													CssClass="Font_black"></asp:TextBox>
												<asp:RequiredFieldValidator id="dateRequire" runat="server" ErrorMessage="&#3588;&#3640;&#3603;&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3652;&#3604;&#3657;&#3648;&#3621;&#3639;&#3629;&#3585;&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;"
													Font-Bold="True" ControlToValidate="date_paid">*</asp:RequiredFieldValidator>
												<asp:calendar id="Calendar1" runat="server" FirstDayOfWeek="Sunday" Visible="False">
													<TodayDayStyle BackColor="#FFC080"></TodayDayStyle>
													<DayHeaderStyle BackColor="#FFFFC0"></DayHeaderStyle>
													<TitleStyle BackColor="#C0C0FF"></TitleStyle>
													<WeekendDayStyle BackColor="White"></WeekendDayStyle>
													<OtherMonthDayStyle ForeColor="Silver"></OtherMonthDayStyle>
												</asp:calendar></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="5" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td>
												<div align="right"><span class="Font_orange">&#3648;&#3623;&#3621;&#3634;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</span></div>
											</td>
											<td width="21"></td>
											<td width="586">&nbsp;
												<asp:dropdownlist id="hours" runat="server" CssClass="Font_black">
													<asp:ListItem Value="99">&#3594;&#3633;&#3656;&#3623;&#3650;&#3617;&#3591;</asp:ListItem>
													<asp:ListItem Value="0">00</asp:ListItem>
													<asp:ListItem Value="1">01</asp:ListItem>
													<asp:ListItem Value="2">02</asp:ListItem>
													<asp:ListItem Value="3">03</asp:ListItem>
													<asp:ListItem Value="4">04</asp:ListItem>
													<asp:ListItem Value="5">05</asp:ListItem>
													<asp:ListItem Value="6">06</asp:ListItem>
													<asp:ListItem Value="7">07</asp:ListItem>
													<asp:ListItem Value="8">08</asp:ListItem>
													<asp:ListItem Value="9">09</asp:ListItem>
													<asp:ListItem Value="10">10</asp:ListItem>
													<asp:ListItem Value="11">11</asp:ListItem>
													<asp:ListItem Value="12">12</asp:ListItem>
													<asp:ListItem Value="13">13</asp:ListItem>
													<asp:ListItem Value="14">14</asp:ListItem>
													<asp:ListItem Value="15">15</asp:ListItem>
													<asp:ListItem Value="16">16</asp:ListItem>
													<asp:ListItem Value="17">17</asp:ListItem>
													<asp:ListItem Value="18">18</asp:ListItem>
													<asp:ListItem Value="19">19</asp:ListItem>
													<asp:ListItem Value="20">20</asp:ListItem>
													<asp:ListItem Value="21">21</asp:ListItem>
													<asp:ListItem Value="22">22</asp:ListItem>
													<asp:ListItem Value="23">23</asp:ListItem>
												</asp:dropdownlist>
												<asp:customvalidator id="hourValidate" runat="server" ErrorMessage="&#3588;&#3640;&#3603;&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3652;&#3604;&#3657;&#3648;&#3621;&#3639;&#3629;&#3585;&#3594;&#3633;&#3656;&#3623;&#3650;&#3617;&#3591;"
													ClientValidationFunction="checkHour" ControlToValidate="hours" Font-Bold="True">*</asp:customvalidator>
												<asp:dropdownlist id="minutes" runat="server" CssClass="Font_black">
													<asp:ListItem Value="99">&#3609;&#3634;&#3607;&#3637;</asp:ListItem>
													<asp:ListItem Value="00">00</asp:ListItem>
													<asp:ListItem Value="05">05</asp:ListItem>
													<asp:ListItem Value="10">10</asp:ListItem>
													<asp:ListItem Value="15">15</asp:ListItem>
													<asp:ListItem Value="20">20</asp:ListItem>
													<asp:ListItem Value="25">25</asp:ListItem>
													<asp:ListItem Value="30">30</asp:ListItem>
													<asp:ListItem Value="35">35</asp:ListItem>
													<asp:ListItem Value="40">40</asp:ListItem>
													<asp:ListItem Value="45">45</asp:ListItem>
													<asp:ListItem Value="50">50</asp:ListItem>
													<asp:ListItem Value="55">55</asp:ListItem>
												</asp:dropdownlist>
												<asp:customvalidator id="minValidate" runat="server" ErrorMessage="&#3588;&#3640;&#3603;&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3652;&#3604;&#3657;&#3648;&#3621;&#3639;&#3629;&#3585;&#3609;&#3634;&#3607;&#3637;"
													ClientValidationFunction="checkMin" ControlToValidate="minutes" Font-Bold="True">*</asp:customvalidator></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="5" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td>
												<div align="right"><span class="Font_orange">&#3594;&#3635;&#3619;&#3632;&#3648;&#3586;&#3657;&#3634;&#3608;&#3609;&#3634;&#3588;&#3634;&#3619;</span></div>
											</td>
											<td width="21"></td>
											<td width="586">
												<table cellSpacing="1" cellPadding="2" width="500" bgColor="#003399" border="0">
													<TR bgColor="#9bbcff">
														<TD></TD>
														<TD>
															<div align="center"><strong>&#3608;&#3609;&#3634;&#3588;&#3634;&#3619;</strong></div>
														</TD>
														<TD>
															<div align="center"><strong>&#3626;&#3634;&#3586;&#3634;</strong></div>
														</TD>
														<TD>
															<div align="center"><strong>&#3594;&#3639;&#3656;&#3629;&#3610;&#3633;&#3597;&#3594;&#3637;</strong></div>
														</TD>
														<TD>
															<div align="center"><strong>&#3648;&#3621;&#3586;&#3607;&#3637;&#3656;&#3610;&#3633;&#3597;&#3594;&#3637;</strong></div>
														</TD>
														<TD>
															<div align="center"><strong>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;</strong></div>
														</TD>
													</TR>
													<TR bgColor="#e8efff">
														<TD>
															<div align="center">
																<INPUT id="bank" type="radio" value="1" name="bank" CHECKED>
															</div>
														</TD>
														<TD>
															<div align="center">&#3585;&#3619;&#3640;&#3591;&#3648;&#3607;&#3614;</div>
														</TD>
														<TD>
															<div align="center">&#3627;&#3633;&#3623;&#3627;&#3617;&#3634;&#3585;</div>
														</TD>
														<TD>
															<div align="center">&#3629;&#3629;&#3650;&#3605;&#3657;&#3629;&#3629;&#3609;&#3588;&#3621;&#3636;&#3658;&#3585;</div>
														</TD>
														<TD>
															<div align="center">180-7-96871-2
															</div>
														</TD>
														<TD>
															<div align="center">&#3629;&#3629;&#3617;&#3607;&#3619;&#3633;&#3614;&#3618;&#3660;</div>
														</TD>
													</TR>
													<TR bgColor="#cedeff">
														<TD>
															<div align="center"><INPUT id="bank" type="radio" value="2" name="bank">
															</div>
														</TD>
														<TD>
															<div align="center">&#3585;&#3626;&#3636;&#3585;&#3619;&#3652;&#3607;&#3618;</div>
														</TD>
														<TD>
															<div align="center">&#3618;&#3656;&#3629;&#3618;&#3606;&#3609;&#3609;&#3619;&#3634;&#3617;&#3588;&#3635;&#3649;&#3627;&#3591;</div>
														</TD>
														<TD>
															<div align="center">&#3629;&#3629;&#3650;&#3605;&#3657;&#3629;&#3629;&#3609;&#3588;&#3621;&#3636;&#3658;&#3585;</div>
														</TD>
														<TD>
															<div align="center">736-2-48193-1
															</div>
														</TD>
														<TD>
															<div align="center">&#3629;&#3629;&#3617;&#3607;&#3619;&#3633;&#3614;&#3618;&#3660;</div>
														</TD>
													</TR>
												</table>
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="5" height="10"></td>
										</tr>
										<tr>
											<td width="5" height="13"></td>
											<td height="13">
												<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3591;&#3636;&#3609;</div>
											</td>
											<td width="21" height="13"></td>
											<td width="586" height="13">&nbsp;
												<asp:Label id="iPrice" runat="server"></asp:Label>
												<asp:label id="price" runat="server"></asp:label>
												<asp:Label id="bPrice" runat="server"></asp:Label>
												<!--<span class="Font_blue_bold">
													
												</span>--></td>
											<td width="5" height="13"></td>
										</tr>
										<tr>
											<td colSpan="5" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td>
												<div align="right">&#3627;&#3617;&#3634;&#3618;&#3648;&#3627;&#3605;&#3640;</div>
											</td>
											<td width="21"></td>
											<td width="586"><SPAN class="app_fcap">&nbsp;
<asp:TextBox id="remark" runat="server" CssClass="Font_black"></asp:TextBox>
												</SPAN></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="5" height="10"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../images/lines/l_b_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<div align="left">
										<table cellSpacing="0" cellPadding="0" align="center" border="0">
											<tr>
												<td><FONT face="Tahoma"></FONT></td>
												<td width="4"><asp:button class="button" id="pay_but" onmouseover="document.all.pay_but.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.pay_but.className='button'" runat="server" name="pay_but"
														Text="&#3605;&#3585;&#3621;&#3591;"></asp:button></td>
												<td><asp:button class="button" id="cancel_but" onmouseover="document.all.cancel_but.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.cancel_but.className='button'" runat="server"
														name="cancel_but" Text="&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;" CausesValidation="False"></asp:button></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td height="20"><asp:validationsummary id="vsmSummary" runat="server" ShowSummary="False" icon="warning" modal="True" customtitle="Error on Form"
										customheader="Attention!" customheight="300" customwidth="225" customurl="../../Class/Msgbox.aspx" showcustompopup="True"
										ForeColor="DarkRed"></asp:validationsummary></td>
							</tr>
						</table>
					</td>
					<td vAlign="top" width="15"></td>
					<td vAlign="top" width="120"><IMG height="600" src="../../images/objects/skyscraper_120x600.gif" width="120"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<script language="javascript">
			document.form1.payment_num.value=0;
			function checkPayment(source, clientside_arguments){
				if(parseInt(document.form1.payment_num.value)==0){
					clientside_arguments.IsValid=false;
				}
				
			}
			function checkHour(source, clientside_arguments){
				if(clientside_arguments.Value=="99"){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function checkMin(source, clientside_arguments){
				if(clientside_arguments.Value=="99"){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function changeOne(sign){
				if(sign){
					document.form1.payment_num.value = parseInt(document.form1.payment_num.value) + 1 ;
				}else{
					document.form1.payment_num.value = parseInt(document.form1.payment_num.value) - 1;
				}
			}
			
		</script>
	</body>
</HTML>
