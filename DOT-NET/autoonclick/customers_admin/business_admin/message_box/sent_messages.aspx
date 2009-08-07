<%@Register TagPrefix="logo" TagName="logo_login" Src="../MTop/MTop.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../MLeft/MLeft2.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../MBottom/MBottom.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../right_menu/sky2.ascx"%>
<%@ Page CodeBehind="sent_messages.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.sent_messages" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
  <HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css"> BODY { BACKGROUND-IMAGE: url(../../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff } A:active { TEXT-DECORATION: none } A:link { TEXT-DECORATION: none } A:visited { TEXT-DECORATION: none } A:hover { TEXT-DECORATION: none } </style>
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
	<body onLoad="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="Form1" runat="server">
			<table width="983" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td>&#3585;&#3621;&#3656;&#3629;&#3591;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617; 
												:</td>
											<td width="20"></td>
											<td><asp:HyperLink id="inMsg" CssClass="A_black_underline" runat="server">&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3648;&#3586;&#3657;&#3634;</asp:HyperLink></td>
											<td width="20"></td>
											<td><asp:HyperLink id="sendMsg" CssClass="A_black_underline" runat="server">&#3626;&#3656;&#3591;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;</asp:HyperLink></td>
											<td width="20"></td>
											<td class="Font_brown">&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3607;&#3637;&#3656;&#3626;&#3656;&#3591;&#3649;&#3621;&#3657;&#3623;
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
						</table>
					</td>
					<td></td>
					<td valign="top"></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td width="693" valign="top"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="693" height="21"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3607;&#3637;&#3656;&#3626;&#3656;&#3591;&#3649;&#3621;&#3657;&#3623;</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/mb_sent.gif"
										class="Font_white">
										<tr>
											<td width="3"></td>
											<td width="20"><div align="center">X</div>
											</td>
											<td width="5"></td>
											<td width="150"><div align="center">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;</div>
											</td>
											<td width="5"></td>
											<td width="507"><div align="center">&#3648;&#3619;&#3639;&#3656;&#3629;&#3591;</div>
											</td>
											<td width="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellspacing="0" cellpadding="0">
										<asp:Label id="mailList" runat="server"></asp:Label>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><INPUT class=button id=del onmouseover="document.all.del.className='buttonover'" style="CURSOR: hand" onclick=delMsg(); onmouseout="document.all.del.className='button'" type=button value=&#3621;&#3610; name=del></td>
											<td width="100"></td>
											<td><table border="0" align="right" cellpadding="0" cellspacing="0" class="Page_Number">
													<asp:label id="pageNumber" runat="server"></asp:label>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" valign="top"></td>
					<td width="120" valign="top" height="600"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
			</table>
		</form>
		<script language="javascript">
		function delMsg(){
			var i;
			var MsgSel="";
			var fg ;
			
			//alert(document.Form1.checkbox.length);
			if(document.Form1.checkbox.length==undefined){
				//alert('one');
				if(document.Form1.checkbox.checked){
						MsgSel = ',' + document.Form1.checkbox.value;
				}
			}else{
				//alert('two');
				for(i=0;i<=document.Form1.checkbox.length-1;i++){
					if(document.Form1.checkbox[i].checked){
						MsgSel += ',' + document.Form1.checkbox[i].value;
					}
				}
			}
			//alert(MsgSel);
			if(MsgSel!=""){
				autoonclick.sent_messages.deleteMessage(MsgSel,urlBack);
			}
			
		}
		function urlBack(response){window.location.href='sent_messages.aspx';}
		function goPage(pageno){
						window.location.href='sent_messages.aspx?curPage='+pageno;
					}
		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>