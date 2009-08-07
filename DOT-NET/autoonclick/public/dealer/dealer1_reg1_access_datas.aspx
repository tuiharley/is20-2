<%@ Page CodeBehind="dealer1_reg1_access_datas.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.dealer1_reg1_access_datas" %>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../footer_bar/footer_bar.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="topM/dealer_top.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="leftM/dealer_left.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK …explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=tis-620">
		<link href="../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css"> BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff } A:active { TEXT-DECORATION: none } A:link { TEXT-DECORATION: none } A:visited { TEXT-DECORATION: none } A:hover { TEXT-DECORATION: none } </style>
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
		<form name="form1" id="form1" runat="server">
			<table width="983" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server" />
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server" />
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../images/objects/so_ar_o_w.gif" width="19" height="9"><span class="Font_orange">ข้อมูลการเข้าระบบ</span></td>
											<td width="20"></td>
											<td><span class="Font_grey">ข้อมูลการติดต่อ &amp; ธุรกิจหลัก</span></td>
											<td width="20"></td>
											<td><span class="Font_grey">หมวดหมู่ธุรกิจหลักและธุรกิจเสริม</span></td>
											<td width="20"></td>
											<td class="Font_grey">รายละเอียดธุรกิจ</td>
											<td width="20"></td>
											<td class="Font_grey">การยอมรับ</td>
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
								<td width="693"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">ลงทะเบียนผู้ประกอบการ: ข้อมูลการเข้าระบบ
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
										class="Font_black_LH_17px">
										<tr>
											<td height="5" colspan="3"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="683">กรุณาระบุ Username และ Password เพื่อใช้ในขั้นตอนการเข้าระบบ<br>
												และอนุญาตให้คุณเข้าไปจัดการกับประกาศของคุณได้ 
												คุณควรมั่นใจว่ามันจะไม่ถูกล่วงรู้โดยผู้อื่น</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="5" colspan="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/h_b_693.gif"
										class="H1_white">
										<tr>
											<td width="5"></td>
											<td width="683"><div align="center">- ข้อมูลที่จำเป็นเน้นข้อความด้วย<span class="Font_orange_bold">สีส้ม</span>
													-</div>
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
										class="Font_black">
										<tr>
											<td height="7" colspan="7"></td>
										</tr>
										<tr>
											<td width="5" height="24"></td>
											<td width="232" height="24"><div align="right" class="Font_orange">Username</div>
											</td>
											<td width="10" height="24"></td>
											<td width="200" height="24"><INPUT id="username" type="text" maxLength="12" size="27" onkeyPress="checkTxt()"></td>
											<td width="10" height="24"><div id="errUsr"></div>
											</td>
											<td width="231" height="24" class="Font_sm_black">(อักษร A-Z, a-z และตัวเลข 0-9 
												ความยาว
												<br>
												5-12 ตัวอักษร)</td>
											<td width="5" height="24"></td>
										</tr>
										<tr>
											<td height="4" colspan="7"></td>
										</tr>
										<tr>
											<td width="5" height="24"></td>
											<td width="232" height="24"><div align="right" class="Font_orange">Password</div>
											</td>
											<td width="10" height="24"></td>
											<td width="200" height="24"><INPUT id="pass" type="password" maxLength="12" size="29"></td>
											<td width="10" height="24"><div id="errPass"></div>
											</td>
											<td width="231" height="24" class="Font_sm_black">(อักษร A-Z, a-z และตัวเลข 0-9 
												ความยาว
												<br>
												5-12 ตัวอักษร)</td>
											<td width="5" height="24"></td>
										</tr>
										<tr>
											<td height="4" colspan="7"></td>
										</tr>
										<tr>
											<td width="5" height="24"></td>
											<td width="232" height="24"><div align="right" class="Font_orange">Re Password</div>
											</td>
											<td width="10" height="24"></td>
											<td width="200" height="24"><INPUT id="confpass" type="password" maxLength="12" size="29"></td>
											<td width="10" height="24"><div id="errConPass"></div>
											</td>
											<td width="231" height="24"><FONT face="Tahoma"></FONT></td>
											<td width="5" height="24"></td>
										</tr>
										<tr>
											<td height="7" colspan="7"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
							<tr>
								<td><div align="center">
										<table border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td>
													<input class='button' id='nextP' name='nextP' onmouseover="document.all.nextP.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.nextP.className='button'" type="button"
														value='ถัดไป' onClick='doNextP()'></td>
												<td width="4"></td>
												<!--<td>
													<asp:button class="button" id="cancel_but" onmouseover="document.all.cancel_but.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.cancel_but.className='button'" runat="server"
														name="cancel_but" Text="&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;" CausesValidation="False"></asp:button></td>-->
											</tr>
										</table>
									</div>
								</td>
							</tr>
				</tr>
				<tr>
					<td height="20"></td>
				</tr>
			</table>
			</td>
			<td width="15" valign="top"></td>
			<td width="120" valign="top"><img src="../../images/objects/skyscraper_120x600.gif" width="120" height="600"></td>
			</tr>
			<footer:footer_bar id="footer_bar" runat="server" />
			</table>
			<script language="javascript">
				function checkTxt(){
					var a = 65;
					var b = 90;
					var c = 97;
					var d = 122;
					var e = 48;
					var f = 57;
					//alert(window.event.keyCode);
					if(window.event.keyCode<e ||
					   (window.event.keyCode>f && window.event.keyCode<a) ||
					   (window.event.keyCode>b && window.event.keyCode<c) ||
					   window.event.keyCode>d ){
						window.event.keyCode=0
					}
				}
				function checkLength(txt,txtlength,err,errtxt){
					if(txt.value.length>=txtlength){
						err.innerHTML="";
						return true;
					}else{
						err.innerHTML="<font color='red' size=5><b>*</b></font>";
						alert(errtxt);
						return false;
					}
				}
				function confirmPass(firstPass,secPass){
					if(firstPass.value==secPass.value){
						return true;
					}else{
						alert('ยืนยันรหัสผ่านไม่ถูกต้อง');
						return false;
					}
				}
				function doNextP(){
				    var txtsize = 5;
					var usr = document.getElementById("username");
					var errUsr = document.getElementById("errUsr");
					var pass = document.getElementById("pass");
					var errPass = document.getElementById("errPass");
					var confpass = document.getElementById("confpass");
					
					if(checkLength(usr,txtsize,errUsr,"User ต้องมีอย่างน้อย 5 ตัวอักษร") && 
					   checkLength(pass,txtsize,errPass,"Password ต้องมีอย่างน้อย 5 ตัวอักษร"))
					{
						if(confirmPass(pass,confpass)){
							//alert('ผ่าน');
							autoonclick.dealer1_reg1_access_datas.checkUser(usr.value,urlBack);
						}
					}
				}
				function urlBack(response){
				var usr = document.getElementById("username");
				var pass = document.getElementById("pass");
					if(response.value=="not pass"){
						alert('User นี้มีการใช้งานแล้วหรือเป็นคำสงวนไม่สามารถใช้ได้ค่ะ');
					}else{
						autoonclick.dealer1_reg1_access_datas.goNext(usr.value,pass.value,nextP);
					}
				}
				function nextP(response){
					var url="dealer1_reg2_contact_main_datas.aspx";
					document.location.href=url;
				}
			</script>
		</form>
	</body>
</HTML>
