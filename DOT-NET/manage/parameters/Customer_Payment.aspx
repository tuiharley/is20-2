<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Customer_Payment.aspx.vb" Inherits="manage.payment"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Package</title>
		<meta content="True" name="vs_snapToGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table width="100%" border="0">
				<tr>
					<td><menu:header_manage id="header_manage" runat="server"></menu:header_manage></td>
				</tr>
			</table>
			<table width="50%" border="0">
				<tr>
					<td style="HEIGHT: 16px">เลือกเงื่อนไข</td>
					<td style="HEIGHT: 16px">เดือน
						<div id="month"></div>
					</td>
					<td style="HEIGHT: 16px">ปี
						<div id="year"></div>
					</td>
					<td style="HEIGHT: 16px">
						<input type="button" id="dSearch" name="dSearch" onclick='doSearch(document.Form1.month.value,document.Form1.year.value);'
							value='Show'>
					</td>
					<td style="HEIGHT: 16px">&nbsp;</td>
				</tr>
			</table>
			<table>
				<tr>
					<td>
						<div id="Label1"></div>
					</td>
				</tr>
			</table>
		</form>
		<div id="tipDiv" style="Z-INDEX: 100; VISIBILITY: hidden; POSITION: absolute"></div>
		<FONT face="Tahoma"></FONT><FONT face="Tahoma"></FONT><FONT face="Tahoma"></FONT>
		<FONT face="Tahoma"></FONT><FONT face="Tahoma"></FONT><FONT face="Tahoma"></FONT>
		<script language="javascript">
var dom = (document.getElementById) ? true : false;
var ns5 = ((navigator.userAgent.indexOf("Gecko")>-1) && dom) ? true: false;
var ie5 = ((navigator.userAgent.indexOf("MSIE")>-1) && dom) ? true : false;
var ns4 = (document.layers && !dom) ? true : false;
var ie4 = (document.all && !dom) ? true : false;
var nodyn = (!ns5 && !ns4 && !ie4 && !ie5) ? true : false;

// resize fix for ns4
var origWidth, origHeight;
if (ns4) {
	origWidth = window.innerWidth; origHeight = window.innerHeight;
	window.onresize = function() { if (window.innerWidth != origWidth || window.innerHeight != origHeight) history.go(0); }
}

// avoid error of passing event object in older browsers
if (nodyn) { event = "nope" }

///////////////////////  CUSTOMIZE HERE   ////////////////////
// settings for tooltip 
// Do you want tip to move when mouse moves over link?
var tipFollowMouse= true;	
// Be sure to set tipWidth wide enough for widest image
var tipWidth= 300;
var offX= 20;	// how far from mouse to show tip
var offY= 12; 
var tipFontFamily= "Tahoma,MS Sans Serif";
var tipFontSize= "14px";
// set default text color and background color for tooltip here
// individual tooltips can have their own (set in messages arrays)
// but don't have to
var tipFontColor= "#000000";
var tipBgColor= "#DDECFF"; 
var tipBorderColor= "#000080";
var tipBorderWidth= 3;
var tipBorderStyle= "ridge";
var tipPadding= 4;

// tooltip content goes here (image, description, optional bgColor, optional textcolor)
var messages = new Array();
// multi-dimensional arrays containing: 
// image and text for tooltip
// optional: bgColor and color to be sent to tooltip
messages[0] = new Array('','test',"#FFFFFF");
messages[1] = new Array('','test2',"#FFFFFF");
////////////////////  END OF CUSTOMIZATION AREA  ///////////////////
// preload images that are to appear in tooltip
// from arrays above
if (document.images) {
	var theImgs = new Array();
	for (var i=0; i<messages.length; i++) {
  	theImgs[i] = new Image();
		theImgs[i].src = messages[i][0];
  }
}

// to layout image and text, 2-row table, image centered in top cell
// these go in var tip in doTooltip function
// startStr goes before image, midStr goes between image and text
//var startStr = '<table width="' + tipWidth + '"><tr><td align="center" width="100%"><img src="';
//var midStr = '" border="0"></td></tr><tr><td valign="top">';
//var endStr = '</td></tr></table>';

var startStr = '<table width="' + tipWidth + '"><tr><td width="40%" align="right">Name/Company: </td><td width="60%">';
var midStr = '</td></tr><tr><td align="right">UserName: </td><td>';
var midStr2 = '</td></tr><tr><td align="right">Contact Person: </td><td>';
var midStr3 = '</td></tr><tr><td align="right">Telephone: </td><td>';

var startStr2 = '<table width="' + tipWidth + '"><tr><td width="40%" align="right">รหัสอ้างอิง: </td><td width="60%">';
var midStr20 = '</td></tr><tr><td align="right">Package Name: </td><td>';
var midStr26 = '</td></tr><tr><td align="right">Package Start: </td><td>';
var midStr22 = '</td></tr><tr><td align="right">Term: </td><td>';
var midStr23 = '</td></tr><tr><td align="right">Price: </td><td>';
var midStr24 = '</td></tr><tr><td align="right">Paid Date: </td><td>';
var midStr25 = '</td></tr><tr><td align="right">แบบ: </td><td>';

var startStr3 = '<table width="' + tipWidth + '"><tr><td width="40%" align="right">ธนาคารที่ชำระ: </td><td width="60%">';
var midStr30 = '</td></tr><tr><td align="right">ยอดเงินที่ชำระ: </td><td>';
var midStr36 = '</td></tr><tr><td align="right">หมายเหตุ: </td><td>';

var endStr = '</td></tr></table>';


////////////////////////////////////////////////////////////
//  initTip	- initialization for tooltip.
//		Global variables for tooltip. 
//		Set styles for all but ns4. 
//		Set up mousemove capture if tipFollowMouse set true.
////////////////////////////////////////////////////////////
var tooltip, tipcss;

function initTip() {
	if (nodyn) return;
	tooltip = (ns4)? document.tipDiv.document: (ie4)? document.all['tipDiv']: (ie5||ns5)? document.getElementById('tipDiv'): null;
	tipcss = (ns4)? document.tipDiv: tooltip.style;
	if (ie4||ie5||ns5) {	// ns4 would lose all this on rewrites
		tipcss.width = tipWidth+"px";
		tipcss.fontFamily = tipFontFamily;
		tipcss.fontSize = tipFontSize;
		tipcss.color = tipFontColor;
		tipcss.backgroundColor = tipBgColor;
		tipcss.borderColor = tipBorderColor;
		tipcss.borderWidth = tipBorderWidth+"px";
		tipcss.padding = tipPadding+"px";
		tipcss.borderStyle = tipBorderStyle;
	}
	if (tooltip&&tipFollowMouse) {
		if (ns4) document.captureEvents(Event.MOUSEMOVE);
		document.onmousemove = trackMouse;
	}
}

window.onload = initTip;

/////////////////////////////////////////////////
//  doTooltip function
//			Assembles content for tooltip and writes 
//			it to tipDiv
/////////////////////////////////////////////////

var t1,t2;	// for setTimeouts
var tipOn = false;	// check if over tooltip link

function doTooltip(evt,num,t,cname,uname,contact,phone,paid_date,sta,pstart) {
	if (!tooltip) return;
	if (t1) clearTimeout(t1);	if (t2) clearTimeout(t2);
	tipOn = true;
	// set colors if included in messages array
	if (messages[num][2])	var curBgColor = messages[num][2];
	else curBgColor = tipBgColor;
	if (messages[num][3])	var curFontColor = messages[num][3];
	else curFontColor = tipFontColor;
	//alert(t);
	if ((ns4)&&(t==1)) {
		var tip = '<table bgcolor="' + tipBorderColor + '" width="' + tipWidth + '" cellspacing="0" cellpadding="' + tipBorderWidth + '" border="0"><tr><td><table bgcolor="' + curBgColor + '" width="100%" cellspacing="0" cellpadding="' + tipPadding + '" border="0"><tr><td>'+ startStr + cname + midStr + uname + midStr2 + contact + midStr3 + phone + '</td>' + endStr + '</td></tr></table></td></tr></table>';
		tooltip.write(tip);
		tooltip.close();
	} else if ((ns4)&&(t==2)){
		var tip = '<table bgcolor="' + tipBorderColor + '" width="' + tipWidth + '" cellspacing="0" cellpadding="' + tipBorderWidth + '" border="0"><tr><td><table bgcolor="' + curBgColor + '" width="100%" cellspacing="0" cellpadding="' + tipPadding + '" border="0"><tr><td>'+ startStr2 + cname + midStr2 + uname + midStr26 + pstart + midStr22 + contact + ' Month' + midStr23 + phone + midStr24 + paid_date + midStr25 + sta + '</td>' + endStr + '</td></tr></table></td></tr></table>';
		tooltip.write(tip);
		tooltip.close();
	} else if ((ie4||ie5||ns5)&&(t==1)) {
		var tip = startStr + cname + midStr + uname + midStr2 + contact + midStr3 + phone + '</td>' + endStr;
		tipcss.backgroundColor = curBgColor;
	 	tooltip.innerHTML = tip;
	} else if ((ie4||ie5||ns5)&&(t==2)) {
		var tip = startStr2 + cname + midStr20 + uname + midStr26 + pstart + midStr22 + contact + ' Month' + midStr23 + phone + midStr24 + paid_date + midStr25 + sta + '</td>' + endStr;
		tipcss.backgroundColor = curBgColor;
	 	tooltip.innerHTML = tip;
	} else if ((ie4||ie5||ns5)&&(t==3)) {
		var tip = startStr3 + cname + midStr30 + uname + midStr36 + contact + '</td>' + endStr;
		//alert(tip);
		tipcss.backgroundColor = curBgColor;
	 	tooltip.innerHTML = tip;
	}
	if (!tipFollowMouse) positionTip(evt);
	else t1=setTimeout("tipcss.visibility='visible'",100);
}

var mouseX, mouseY;
function trackMouse(evt) {
	mouseX = (ns4||ns5)? evt.pageX: window.event.clientX + document.body.scrollLeft;
	mouseY = (ns4||ns5)? evt.pageY: window.event.clientY + document.body.scrollTop;
	if (tipOn) positionTip(evt);
}

/////////////////////////////////////////////////////////////
//  positionTip function
//		If tipFollowMouse set false, so trackMouse function
//		not being used, get position of mouseover event.
//		Calculations use mouseover event position, 
//		offset amounts and tooltip width to position
//		tooltip within window.
/////////////////////////////////////////////////////////////
function positionTip(evt) {
	if (!tipFollowMouse) {
		mouseX = (ns4||ns5)? evt.pageX: window.event.clientX + document.body.scrollLeft;
		mouseY = (ns4||ns5)? evt.pageY: window.event.clientY + document.body.scrollTop;
	}
	// tooltip width and height
	var tpWd = (ns4)? tooltip.width: (ie4||ie5)? tooltip.clientWidth: tooltip.offsetWidth;
	var tpHt = (ns4)? tooltip.height: (ie4||ie5)? tooltip.clientHeight: tooltip.offsetHeight;
	// document area in view (subtract scrollbar width for ns)
	var winWd = (ns4||ns5)? window.innerWidth-20+window.pageXOffset: document.body.clientWidth+document.body.scrollLeft;
	var winHt = (ns4||ns5)? window.innerHeight-20+window.pageYOffset: document.body.clientHeight+document.body.scrollTop;
	// check mouse position against tip and window dimensions
	// and position the tooltip 
	if ((mouseX+offX+tpWd)>winWd) 
		tipcss.left = (ns4)? mouseX-(tpWd+offX): mouseX-(tpWd+offX)+"px";
	else tipcss.left = (ns4)? mouseX+offX: mouseX+offX+"px";
	if ((mouseY+offY+tpHt)>winHt) 
		tipcss.top = (ns4)? winHt-(tpHt+offY): winHt-(tpHt+offY)+"px";
	else tipcss.top = (ns4)? mouseY+offY: mouseY+offY+"px";
	if (!tipFollowMouse) t1=setTimeout("tipcss.visibility='visible'",100);
}

function hideTip() {
	if (!tooltip) return;
	t2=setTimeout("tipcss.visibility='hidden'",100);
	tipOn = false;
}

function doUConfirm(pay_id,flag_proc){
	var confirmed;
	
		confirmed = window.confirm("Are you sure to change status?");
		if (confirmed){	
			window.alert(pay_id);
			window.location="change_status.aspx?payid="+pay_id+"&flag_p="+flag_proc;
		} 
}

// -----------------  Condition for showing the datas ---------------------------------
showCon();
function showCon(){
		manage.payment.showMonth(showM);
		manage.payment.showYear(showY);
}
function showM(response){
		var show = document.getElementById("month");
		show.innerHTML=response.value;
}
function showY(response){
		var show = document.getElementById("year");
		show.innerHTML=response.value;
}
// -----------------  Search according to the condition  ---------------------------------
function doSearch(month,year){
		//alert(year);
		manage.payment.getList(month,year,CustomerList);
}
function CustomerList(response){
		var show = document.getElementById("Label1");
		show.innerHTML=response.value;
}
// -----------------  Confirm the payment  ---------------------------------
function doConfirm(invoiceid,tmppayid,doconfirm){
//alert(invoiceid +'|'+tmppayid+'|'+doconfirm);
		manage.payment.checkConfirm(invoiceid,tmppayid,doconfirm,showConfirm);
}
function showConfirm(response){
		/*var show = document.getElementById("Tpay"+response.value);
		if(show.innerHTML=="Confirm"){
			show.innerHTML="Unconfirm";
		}else{
			show.innerHTML="Confirm";
		}*/
		//alert(document.Form1.year.value);
		doSearch(document.Form1.month.value,document.Form1.year.value);
}
		</script>
	</body>
</HTML>
