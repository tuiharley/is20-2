<%@Register TagPrefix="righter" TagName="righter_bar" Src="../right_menu/sky2.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../MTop/MTop.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../MLeft/MLeft2.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../MBottom/MBottom.ascx"%>
<%@ Page CodeBehind="payment1_notify1_selectionD.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.payment1_notify1_selectionD" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="../../../css/style.css" type="text/css" rel="stylesheet">
			<style type="text/css">BODY { BACKGROUND-IMAGE: url(../../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
	A:active { TEXT-DECORATION: none }
	A:link { TEXT-DECORATION: none }
	A:visited { TEXT-DECORATION: none }
	A:hover { TEXT-DECORATION: none }
	</style>
			<STYLE type="text/css">#topbar { BORDER-RIGHT: white 0px solid; PADDING-RIGHT: 0px; BORDER-TOP: white 0px solid; PADDING-LEFT: 0px; Z-INDEX: 100; VISIBILITY: hidden; PADDING-BOTTOM: 0px; WIDTH: 200px; PADDING-TOP: 0px; POSITION: absolute; HEIGHT: 350px }
	</STYLE>
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
	<body onload="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
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
											<td><IMG height="9" src="../../../images/objects/so_ar_o_w.gif" width="19"><span class="Font_orange">&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;</span></td>
											<td width="20"></td>
											<td><span class="Font_grey">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;&#3585;&#3634;&#3619;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</span></td>
										</tr>
									</table>
									<INPUT id="payment_num" type="hidden" name="payment_num" runat="server">
								</td>
							</tr>
							<tr>
								<td height="15"></td>
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
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3649;&#3592;&#3657;&#3591;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;: 
												&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3607;&#3637;&#3656;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3649;&#3592;&#3657;&#3591;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="693" background="../../../images/table/g_693.gif"
										border="0">
										<tr>
											<td colSpan="3" height="5"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="683">&#3627;&#3621;&#3633;&#3591;&#3592;&#3634;&#3585;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3652;&#3604;&#3657;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;&#3588;&#3656;&#3634;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3648;&#3619;&#3637;&#3618;&#3610;&#3619;&#3657;&#3629;&#3618;&#3649;&#3621;&#3657;&#3623; 
												&#3588;&#3640;&#3603;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3649;&#3592;&#3657;&#3591;&#3585;&#3634;&#3619;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;&#3652;&#3604;&#3657;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656; 
												&#3650;&#3604;&#3618;&#3585;&#3619;&#3629;&#3585;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3585;&#3634;&#3619;&#3650;&#3629;&#3609;&#3648;&#3591;&#3636;&#3609;&#3605;&#3634;&#3617;&#3649;&#3610;&#3610;&#3615;&#3629;&#3619;&#3660;&#3617;&#3604;&#3657;&#3634;&#3609;&#3621;&#3656;&#3634;&#3591;&#3609;&#3637;&#3657; 
												&#3627;&#3621;&#3633;&#3591;&#3592;&#3634;&#3585;&#3607;&#3637;&#3656;&#3652;&#3604;&#3657;&#3605;&#3619;&#3623;&#3592;&#3626;&#3629;&#3610;&#3649;&#3621;&#3657;&#3623;&#3607;&#3634;&#3591;&#3648;&#3619;&#3634;&#3592;&#3632;&#3604;&#3635;&#3648;&#3609;&#3636;&#3609;&#3585;&#3634;&#3619;&#3651;&#3627;&#3657;&#3607;&#3633;&#3609;&#3607;&#3637;
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="3" height="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../../images/lines/l_o_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../../images/header/pay_noti.gif"
										border="0">
										<tr>
											<td width="3"></td>
											<td width="29">
												<DIV align="center"><input class="Font_black" onclick="checkAll(document.form1.payment_list,this.checked)"
														type="checkbox" value="checkbox" name="CheckAll">
												</DIV>
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
												<div align="center">&#3588;&#3656;&#3634;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3626;&#3640;&#3607;&#3608;&#3636;</div>
											</td>
											<td width="5"></td>
											<td width="69">
												<DIV align="center"><span>&#3627;&#3617;&#3634;&#3618;&#3648;&#3627;&#3605;</span>&#3640;</DIV>
											</td>
											<td width="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" background="../../../images/table/pay_noti1.gif"
										border="0">
										<asp:label id="invoiceList" runat="server"></asp:label></table>
								</td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../../images/lines/l_b_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="5"><FONT face="Tahoma"><asp:customvalidator id="payment_check" runat="server" ErrorMessage="&#3588;&#3640;&#3603;&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3652;&#3604;&#3657;&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;"
											Display="None" ClientValidationFunction="checkPayment">*</asp:customvalidator></FONT></td>
							</tr>
							<tr>
								<td>
									<div align="left">
										<table cellSpacing="0" cellPadding="0" align="center" border="0">
											<tr>
												<td><asp:button class="button" id="next_page" onmouseover="document.all.next_page.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.next_page.className='button'" runat="server"
														Text="&#3606;&#3633;&#3604;&#3652;&#3611;" name="next_page"></asp:button></td>
												<td width="4"></td>
												<td><asp:button class="button" id="cancel_but" onmouseover="document.all.cancel_but.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.cancel_but.className='button'" runat="server"
														Text="&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;" name="cancel_but" CausesValidation="False"></asp:button></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td></td>
							</tr>
						</table>
						<asp:validationsummary id="vsmSummary" runat="server" ShowSummary="False" icon="warning" modal="True" customtitle="Error on Form"
							customheader="Attention!" customheight="300" customwidth="225" customurl="../../../Class/Msgbox.aspx"
							showcustompopup="True" ForeColor="DarkRed"></asp:validationsummary></td>
					<td vAlign="top" width="15"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<script language="javascript">
			document.form1.payment_num.value=0;
			function checkAll(field,checkEd){
				if(!checkEd){
					if(field.length==undefined){
						field.checked=false;
					}else{
						for (i = 0; i < field.length; i++){
							field[i].checked = false ;
						}
					}
					document.form1.payment_num.value=0;
				}else{
					if(field.length==undefined){
						field.checked=true;
					}else{
						for (i = 0; i < field.length; i++){
							field[i].checked = true ;
						}
					}
					document.form1.payment_num.value=<%=invoices.Length - 1%>;
				}
			}
			function changeOne(sign){
				if(sign){
					document.form1.payment_num.value = parseInt(document.form1.payment_num.value) + 1 ;
				}else{
					document.form1.payment_num.value = parseInt(document.form1.payment_num.value) - 1;
				}
			}
			function checkPayment(source, clientside_arguments){
				if(parseInt(document.form1.payment_num.value)==0){
					clientside_arguments.IsValid=false;
				}
				
			}

		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
