<%@ Page CodeBehind="dealer_business_web_inventory.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.dealer_business_web_inventory" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
  <HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
<meta http-equiv=Content-Type content="text/html; charset=iso-8859-1">

<LINK href="../../../css/style.css" type=text/css rel=stylesheet >
<style type=text/css>BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
	A:active { TEXT-DECORATION: none }
	A:link { TEXT-DECORATION: none }
	A:visited { TEXT-DECORATION: none }
	A:hover { TEXT-DECORATION: none }
	</style>
</HEAD>
<body>
<form id=form1 name=form1 runat="server">
<INPUT id=want_comp type=hidden size=70 name=want_comp runat="server"> 
<table cellSpacing=0 cellPadding=0 width=693 align=center border=0>
  <tr>
    <td>
      <table cellSpacing=0 cellPadding=0 width=693 border=0>
        <tr>
          <td width=119><a href="../../startpage/startpage.aspx"><IMG  border="0" height=38 src="../../../images/main_table/ao_logo_business.jpg" width=119 ></a></td>
          <td width=50></td>
          <td class=Font_sm_blue_LH_14px vAlign=bottom width=524 
          >
            <div align=right><asp:label id=email runat="server"></asp:label><asp:hyperlink id=www runat="server" ForeColor="#0000C0" Font-Underline="True"></asp:hyperlink></div></td></tr></table></td></tr>
  <tr>
    <td height=5><FONT face=Tahoma 
      ></FONT></td></tr>
  <tr>
    <td class=H2_white background=../../../images/header/m_h_dh.gif height=30 
    ><asp:label id=compName runat="server" Font-Underline="True" CssClass="H2_white"></asp:label></td></tr>
  <tr>
    <td><IMG height=1 src="../../../images/lines/w_dh_h.gif" width=693 ></td></tr>
  <tr>
    <td>
      <table cellSpacing=0 cellPadding=0 width=693 align=center 
      background=../../../images/table/dh_h.gif border=0>
        <tr>
          <td colSpan=2 height=4></td></tr>
        <tr>
          <td vAlign=top width=521>
            <table class=Font_black_LH_17px cellSpacing=0 cellPadding=0 
            width=521 border=0>
              <tr>
                <td vAlign=top width=5></td>
                <td vAlign=top width=66>
                  <div align=right><strong 
                  >&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3627;&#3621;&#3633;&#3585;:</strong></div></td>
                <td width=11></td>
                <td class=Font_blue width=433><asp:label id=introMainBuz runat="server"></asp:label></td>
                <td width=6></td></tr>
              <tr>
                <td colSpan=5><IMG height=11 src="../../../images/dividers/dh_h.gif" width=521 ></td></tr>
              <tr>
                <td vAlign=top width=5></td>
                <td vAlign=top width=66>
                  <div align=right><strong 
                  >&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3648;&#3626;&#3619;&#3636;&#3617;:</strong></div></td>
                <td width=11></td>
                <td width=433><asp:label id=moreBuz runat="server"></asp:label></td>
                <td width=6></td></tr>
              <tr>
                <td colSpan=5><IMG height=11 src="../../../images/dividers/dh_h.gif" width=521 ></td></tr>
              <tr>
                <td vAlign=top width=5></td>
                <td vAlign=top width=66>
                  <div align=right><strong 
                  >&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;:</strong></div></td>
                <td width=11></td>
                <td width=433><asp:label id=contact runat="server"></asp:label></td>
                <td width=6></td></tr></table></td>
          <td width=172>
            <div align=center><asp:label id=image1 runat="server" CssClass="Font_black_LH_17px"></asp:label></div></td></tr>
        <tr>
          <td colSpan=2 height=4 
  ></td></tr></table></td></tr>
			<!--End head-->
  <tr>
    <td height=1><IMG height=1 src="../../../images/lines/w_dh_h.gif" width=693 ></td></tr>
  <tr>
    <td>
      <table class=H1_white cellSpacing=0 cellPadding=0 width=693 align=center 
      border=0>
        <tr>
          <td width=5 height=21><IMG height=21 src="../../../images/header/h_b_L5.gif" width=5 ></td>
          <td background=../../../images/header/h_b_1.gif height=21 
          >
            <div align=center><asp:Label id="stpage" runat="server"></asp:Label>&#3627;&#3609;&#3657;&#3634;&#3649;&#3619;&#3585;</A></div></td>
          <td width=11 height=21><IMG height=21 src="../../../images/header/h_b_SP11.gif" width=11 ></td>
          <td background=../../../images/header/h_b_1.gif height=21 
          >
            <div align=center><A class=A_BU_bold_orange href="dealer_business_web_inventory.aspx" >&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</A></div></td>
          <td width=11 height=21><IMG height=21 src="../../../images/header/h_b_SP11.gif" width=11 ></td>
          <td background=../../../images/header/h_b_1.gif height=21 
          >
            <div align=center><A class=A_BU_bold_white href="#" >&#3650;&#3590;&#3625;&#3603;&#3634;&#3614;&#3636;&#3648;&#3624;&#3625;</A></div></td>
          <td width=11 height=21><IMG height=21 src="../../../images/header/h_b_SP11.gif" width=11 ></td>
          <td background=../../../images/header/h_b_1.gif height=21 
          >
            <div align=center><A class=A_BU_bold_white href="#" >&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</A></div></td>
          <td width=11 height=21><IMG height=21 src="../../../images/header/h_b_SP11.gif" width=11 ></td>
          <td background=../../../images/header/h_b_1.gif height=21 
          >
            <div align=center><A class=A_BU_bold_white href="dealer_business_web_contact.aspx" >&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;&#3648;&#3619;&#3634;</A></div></td>
          <td width=11 height=21><IMG height=21 src="../../../images/header/h_b_SP11.gif" width=11 ></td>
          <td background=../../../images/header/h_b_1.gif height=21 
          >
            <div align=center><asp:HyperLink class="A_BU_bold_white" id="de_map" runat="server">&#3649;&#3612;&#3609;&#3607;&#3637;&#3656;</asp:HyperLink></div></td>
          <td width=5 height=21><IMG height=21 src="../../../images/header/h_b_R5.gif" width=5 ></td></tr></table></td></tr>
  <tr>
    <td height=25></td></tr>
  <tr>
    <td>
      <table class=Font_blue cellSpacing=0 cellPadding=0 border=0 
      >
        <tr>
          <td class=Font_brown>&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>
          <td width=20>
            <div align=center>|</div></td>
          <td><A class=A_blue_underline href="dealer_business_web_inventory_bike.aspx" >&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</A></td>
          <td width=20>
            <div align=center>|</div></td>
          <td><A class=A_blue_underline href="dealer_business_web_inventory_truck.aspx" >&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</A></td>
          <td width=20>
            <div align=center>|</div></td>
          <td><A class=A_blue_underline href="dealer_business_web_inventory_part.aspx" >&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</A></td></tr></table></td></tr>
  <tr>
    <td height=15></td></tr>
  <tr>
    <td>
      <table cellSpacing=0 cellPadding=0 width=693 border=0>
        <tr>
          <td class=H1_white width=5 
          background=../../../images/header/h_o_L5.gif></td>
          <td class=H1_white width=225 
          background=../../../images/header/h_o_1.gif height=21 
          >
            <div align=center>&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;&#3586;&#3629;&#3591;&#3648;&#3619;&#3634;</div></td>
          <td class=H1_white width=5 
          background=../../../images/header/h_o_R5.gif></td>
          <td width=1 height=21></td>
          <td width=5><IMG height=21 src="../../../images/header/h_g_L5.gif" width=5 ></td>
          <td width=447 background=../../../images/header/h_g_1.gif 
          ></td>
          <td width=5><IMG height=21 src="../../../images/header/h_g_R5.gif" width=5 ></td></tr></table></td></tr>
  <tr>
    <td><IMG src="../../../images/lines/w.gif" ></td></tr>
  <tr>
    <td>
      <table class=Font_black_LH_17px cellSpacing=0 cellPadding=0 
      background=../../../images/table/g_693.gif border=0 
        >
        <tr>
          <td colSpan=5 height=5></td></tr>
        <tr>
          <td width=5 rowSpan=2></td>
          <td width=334 height=17>&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3621;&#3591;&#3652;&#3623;&#3657;&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609;7 
            &#3623;&#3633;&#3609; &#3649;&#3626;&#3604;&#3591;&#3604;&#3657;&#3623;&#3618;&#3626;&#3633;&#3597;&#3621;&#3633;&#3585;&#3625;&#3603;&#3660;&#3619;&#3641;&#3611; <IMG height=12 src="../../../images/objects/star.gif" width=13 ></td>
          <td width=15 rowSpan=2></td>
          <td width=334 rowSpan=2>
            <table height=30 cellSpacing=0 cellPadding=0 width=301 align=right 
            background=../../../images/table/sort_t_b.gif border=0 
            >
              <tr>
                <td noWrap height=21>
                  <div align=center>
                  <table class=H1_white cellSpacing=0 cellPadding=0 border=0 
                  >
                    <tr>
                      <td>&#3648;&#3619;&#3637;&#3618;&#3591;&#3621;&#3635;&#3604;&#3633;&#3610;&#3650;&#3604;&#3618;&nbsp; <asp:dropdownlist id=Order_By runat="server" CssClass="Font_black">
																							<asp:ListItem Value="0">&#3619;&#3634;&#3588;&#3634;</asp:ListItem>
																							<asp:ListItem Value="1">&#3611;&#3637;</asp:ListItem>
																							<asp:ListItem Value="2">&#3595;&#3637;&#3595;&#3637;/cc</asp:ListItem>
																							<asp:ListItem Value="3">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</asp:ListItem>
																							<asp:ListItem Value="4">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</asp:ListItem>
																							<asp:ListItem Value="5">&#3629;&#3634;&#3618;&#3640;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:ListItem>
																						</asp:dropdownlist></td>
                      <td width=4></td>
                      <td><asp:button class=button id=change_orderby onmouseover="document.all.change_orderby.className='buttonover'" style="CURSOR: hand" onmouseout="document.all.change_orderby.className='button'" runat="server" CausesValidation="False" name="change_orderby" Text="&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;"></asp:button></td></tr></table></div></td></tr></table></td>
          <td width=5 rowSpan=2></td></tr>
        <tr>
          <td width=334 height=17 
            >&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3617;&#3637;&#3619;&#3641;&#3611;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3617;&#3634;&#3585;&#3585;&#3623;&#3656;&#3634; 1 &#3619;&#3641;&#3611; 
            &#3649;&#3626;&#3604;&#3591;&#3604;&#3657;&#3623;&#3618;&#3626;&#3633;&#3597;&#3621;&#3633;&#3585;&#3625;&#3603;&#3660;&#3619;&#3641;&#3611; <IMG height=9 src="../../../images/objects/moreimages.gif" width=12 ></td></tr>
        <tr>
          <td colSpan=5 height=5></td></tr>
        <tr>
          <td colSpan=5><IMG height=2 src="../../../images/lines/dtl_693.gif" width=693 ></td></tr></table></td></tr>
			
 <!-- start -->
  <tr>
    <td height=15></td></tr>
  <tr>
    <td>
      <table cellSpacing=0 cellPadding=0 width=693 border=0>
        <tr>
          <td width=80><input class=button id=comp1 onmouseover="document.all.comp1.className='buttonover'" style="CURSOR: hand" onclick='compare(document.getElementById("want_comp").value);' onmouseout="document.all.comp1.className='button'" type=button value=&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;> 
          </td>
          <td width=4></td>
          <td width=80><input class=button id=addAllCook onmouseover="document.all.addAllCook.className='buttonover'" style="CURSOR: hand" onclick=saveAllCook(); onmouseout="document.all.addAllCook.className='button'" type=button value=&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;> 
          </td>
          <td width=50></td>
          <td width=479>
            <div align=right>
            <table>
              <TR>
                <td width="40%"></td>
                <td width="60%">
                  <div align=right><asp:label id=Up_Pages runat="server"></asp:label></div></td></TR></table></div></td></tr></table></td></tr>
  <tr>
    <td height=5></td></tr>
  <tr>
    <td>
      <table cellSpacing=0 cellPadding=0 width=693 border=0><asp:label id=carResult runat="server"></asp:label></table></td></tr>
  <tr>
    <td><IMG height=5 src="../../../images/lines/l_b_693.gif" width=693 ></td></tr>
  <tr>
    <td height=5></td></tr>
  <tr>
    <td>
      <table cellSpacing=0 cellPadding=0 width=693 border=0>
        <tr>
          <td width=80><input class=button id=comp2 onmouseover="document.all.comp2.className='buttonover'" style="CURSOR: hand" onclick='compare(document.getElementById("want_comp").value);' onmouseout="document.all.comp2.className='button'" type=button value=&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;> 
          </td>
          <td width=4></td>
          <td width=80><input class=button id=addAllCook2 onmouseover="document.all.addAllCook2.className='buttonover'" style="CURSOR: hand" onclick=saveAllCook(); onmouseout="document.all.addAllCook2.className='button'" type=button value=&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;> 
          </td>
          <td width=50></td>
          <td width=479>
            <div align=right>
            <table>
              <TR>
                <td width="40%"></td>
                <td width="60%">
                  <div align=right><asp:label id=Down_Pages runat="server"></asp:label></div></td></TR></table></div></td></tr></table></td></tr>
  <tr>
    <td height=15></td></tr>
          <!-- end -->
  <tr>
    <td>
      <table cellSpacing=0 cellPadding=0 width="100%" border=0 
      >
        <tr>
          <td><IMG height=5 src="../../../images/lines/l_g_693.gif" width=693 ></td></tr>
        <tr>
          <td height=5></td></tr>
        <tr>
          <td class=Font_sm_blue>
            <div align=center>| <A class=A_blue_underline href="../../startpage/startpage.aspx" target=_blank >Powered by 
            AUTO-ONCLICK</A> 
|</div></td></tr></table></td></tr></table>
<script src="../../../j_script/cookie.js" type="text/javascript"></script>

<script language=javascript>
		function getCheckBox(TF,carid,curpage){		
			var tmptxt;
			if(TF){
					document.all['want_comp'].value += ':' + carid;
			}else{
				document.all['want_comp'].value = '';
				for(i=1;i<=<%=session("totalCar")%>;i++){
					if(document.all['carCheck' + i].checked){
						document.all['want_comp'].value += ':' + document.all['carCheck' + i].value;
					}
				}
				//document.all['want_comp'].value = tmptxt + document.all['want_comp'].value;
			}	
			//alert(document.all['want_comp'].value);
		}
		function makeCheckBox(){
		//alert(document.all['want_comp'].value);
			if(document.all['want_comp'].value != ''){
				if(document.all['want_comp'].value.indexOf(':') != -1){
				
				}else{
					for(i=1;i<=<%=session("totalCar")%>;i++){
						if(document.all['carCheck' + i].value == document.all['want_comp'].value){
							document.all['carCheck' + i].checked = true;
						}
					}
				}
			}
		}
		function picPopUp(carid){
			var winWidth = 360;
			var winHeight = 660;
			var url = '../pic_popup/show_pics.aspx?carid='+carid+'&cat=1';
			prolong_win = window.open(url, 'Photos', 'width=' + winWidth + ',height=' + winHeight + ',toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no')
		}
		function changePage(x,y,z)
		{
			alert(x);
			alert(y);
			alert(z);
			document.all['checkedItem'].value = z;
			document.form2.action='dealer_business_web_inventory.aspx?cur_Page=' + x + '&searchid = ' + y;
			//mycars[x] = z;
			document.form2.submit();
			
		}
		function addCar(carid) {
					var x = getCookie('saveCar');
					setCookie('saveCar', x+'car:'+carid+':,', getExpDate(60, 0, 0),'/');
				}
		function incSaveNum() {
			var x = getCookie('saveCarNum');
			if(x==''){
				setCookie('saveCarNum', 1, getExpDate(60, 0, 0),'/');
			}else{
				if(x==20){
					alert('äÁèÊÒÁÒÃ¶ºÑ¹·Ö¡»ÃÐ¡ÒÈà¡Ô¹ 20 »ÃÐ¡ÒÈä´é¤èÐ');
				}else{
					setCookie('saveCarNum', ++x, getExpDate(60, 0, 0),'/');
				}
			}
		}
		function noDup(carid) {
			var oStringObject = new String(getCookie('saveCar'));
			if(oStringObject.indexOf('car:'+carid+':')!=-1){
				alert('¤Ø³ä´é·Ó¡ÒÃºÑ¹·Ö¡»ÃÐ¡ÒÈäÇéáÅéÇ');
				return false;
			}else{
				return true;
			}
					
		}
		function getCarNum(){
			var x = getCookie('saveCarNum');
			var ans;
				if(x==''){
					ans = 0;
				}else{
					ans = x;
				}
			return ans;
		}
		function saveAdv(carid){
			if(noDup(carid)){
				if(getCarNum()<20){
					addCar(carid);
					incSaveNum();
					alert('ºÑ¹·Ö¡»ÃÐ¡ÒÈàÃÕÂºÃéÍÂ');
				}else{
					alert('äÁèÊÒÁÒÃ¶ºÑ¹·Ö¡ä´éà¡Ô¹ 20 »ÃÐ¡ÒÈ');
				}
			}
		}
		function noDup2(carid) {
			var oStringObject = new String(getCookie('saveCar'));
			if(oStringObject.indexOf('car:'+carid+':')!=-1){
				//alert('¤Ø³ä´é·Ó¡ÒÃºÑ¹·Ö¡»ÃÐ¡ÒÈäÇéáÅéÇ');
				return false;
			}else{
				return true;
			}
					
		}
		function saveAdv2(carid){
			if(noDup2(carid)){
				if(getCarNum()<20){
					addCar(carid);
					incSaveNum();
					//alert('ºÑ¹·Ö¡»ÃÐ¡ÒÈàÃÕÂºÃéÍÂ');
				}else{
					alert('äÁèÊÒÁÒÃ¶ºÑ¹·Ö¡ä´éà¡Ô¹ 20 »ÃÐ¡ÒÈ');
				}
			}
		}
		function saveAllCook(){
		 var checkT = false;
			for(j=1;j<=<%=session("totalCar")%>;j++){
				if(document.all['carCheck' + j].checked){
					checkT = true;
				}
			}
			if(checkT){
				var tmpStr;
				var carID;
				tmpStr = document.all['want_comp'].value;
				tmpStr = tmpStr.substr(1,tmpStr.length);
				carID = tmpStr.split(':');
				for(i=0;i<=carID.length-1;i++){
					saveAdv2(carID[i]);
				}
				//deleteCookie('saveCarMsg','/');
				alert('ºÑ¹·Ö¡»ÃÐ¡ÒÈàÃÕÂºÃéÍÂ');
			}
		}
		
		function compare(comp){
			if(comp==''){
				alert('è¤Ø³ÂÑ§äÁèä´éàÅ×Í¡»ÃÐ¡ÒÈ');
			}else{
			  autoonclick.dealer_business_web_inventory.goComparePage(comp,UrlBack);
			}
			
		}
		function UrlBack(res){
		//alert(res.value);
			//var win=window.open(res.value,'Compare');
			popup(res.value,'Compare');
		}
		function popup(mylink, windowname)
		{
			if (! window.focus)return true;
			var href;
			if (typeof(mylink) == 'string')
				href=mylink;
			else
				href=mylink.href;
			window.open(href, windowname);
			return false;
		}
		
		</script></form>
		
	</body>
</HTML>