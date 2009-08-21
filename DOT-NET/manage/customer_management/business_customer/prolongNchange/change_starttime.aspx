<%@ Page CodeBehind="change_starttime.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.change_starttime" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK …explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=tis-620">
		<link href="../../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css">
BODY { MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
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
function get_radio_value()
	{
	var rad_val= -1;
		if(document.form1.DateST.length=='undefined'){
			if(document.form1.DateST.checked){
				rad_val = document.form1.DateST.value;
			}
		}else{
			for (var i=0; i < document.form1.DateST.length; i++)
			{
			
			if (document.form1.DateST[i].checked)
				{
				rad_val = document.form1.DateST[i].value;
				}
			}
		}
		
	return rad_val;
}
function goNext(){
		var newPack;
		newPack = get_radio_value();
		
		if(newPack!=-1){
			manage.change_starttime.setStartDate(newPack,urlBack);	
		}
		
	}
	function urlBack(response){
	var url="change_conclusion.aspx";
		if(response.value==1){
			document.location.href=url;
		}
	}
//-->
			</script>
	</HEAD>
	<body onLoad="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="983" border="0">
				<tr>
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><span class="Font_orange">เลือกรายการ</span></td>
											<td width="20"></td>
											<td><img src="../../../images/objects/so_ar_o_w.gif" width="19" height="9"><span class="Font_orange">วันที่เริมต้น</span></td>
											<td width="20"></td>
											<td><span class="Font_grey">สรุปผล</span></td>
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
											<td width="663">เปลี่ยนแพคเกจ: เลือกวันที่ที่ต้องการเริ่มใช้แพคเกจนี้
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/g_693.gif"
										class="Font_black_LH_17px">
										<tr>
											<td height="5" colspan="3"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="683">กรุณาเลือกวันที่ที่คุณต้องการเริ่มใช้แพคเกจใหม่นี้<br>
												หากคุณต้องการเริ่มใช้แพคเกจใหม่ในทันทีขณะที่แพคเกจเดิมยังไม่หมดอายุ 
												ระยะเวลาที่เหลือจากแพคเกจเดิมจะถูกนำมาหักลบเพื่อคำนวณค่าบริการ 
												ฉะนั้นคุณจะไม่เสียค่าบริการส่วนที่เหลือนั้นไปฟรีๆ!</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="5" colspan="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><table width="693" height="235" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/ch_pack_t2.gif"
										class="Font_black">
										<tr class="Font_white">
											<td width="133" height="21"><div align="center">เลือกรายการ</div>
											</td>
											<td width="11" height="21"></td>
											<td width="549" height="21"><asp:Label id="topic" runat="server"></asp:Label>
											</td>
										</tr>
										<tr class="Font_white">
											<td height="1" colspan="3"><FONT face="Tahoma"></FONT></td>
										</tr>
										<asp:Label id="oldDate" runat="server"></asp:Label>
										<asp:Label id="txtDate" runat="server"></asp:Label>
										<tr>
											<td height="5" colspan="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<table border="0" align="left" cellpadding="0" cellspacing="0">
										<tr>
											<td><asp:button class="button" id="back_but" onmouseover="document.all.back_but.className='buttonover'"
													style="CURSOR: hand" onmouseout="document.all.back_but.className='button'" runat="server"
													CausesValidation="False" Text="ย้อนกลับ" name="back_but"></asp:button></td>
											<td width="4"><FONT face="Tahoma"></FONT></td>
											<td><FONT face="Tahoma"><INPUT class="button" id="next" onmouseover="document.all.next.className='buttonover'"
														style="CURSOR: hand" onclick="goNext();" onmouseout="document.all.next.className='button'" type="button"
														name="next" value="ต่อไป"></FONT></td>
											<td width="4"><FONT face="Tahoma"></FONT></td>
											<td><asp:button class="button" id="cancel_but" onmouseover="document.all.cancel_but.className='buttonover'"
													style="CURSOR: hand" onmouseout="document.all.cancel_but.className='button'" runat="server"
													CausesValidation="False" Text="ยกเลิก" name="cancel_but"></asp:button></td>
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
				</tr>
			</table>
		</form>
	</body>
</HTML>
