<%@ Page CodeBehind="package3_list_vehicle_term_new.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.package3_list_vehicle_term_new" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK …explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=tis-620">
		<LINK href="../../../css/style.css" type="text/css" rel="stylesheet">
			<STYLE type="text/css">BODY { BACKGROUND-IMAGE: none; MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
	A:active { TEXT-DECORATION: none }
	A:link { TEXT-DECORATION: none }
	A:visited { TEXT-DECORATION: none }
	A:hover { TEXT-DECORATION: none }
	</STYLE>
			<SCRIPT language="JavaScript" type="text/JavaScript">

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
			</SCRIPT>
	</HEAD>
	<body onload="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="693" border="0">
				<tr>
					<td width="15"></td>
					<td width="693">
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><img src="../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="package2_list.aspx" class="A_black_NOunderline">รายการแพคเกจ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">รายการโฆษณาพิเศษ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">รายการตำแหน่งงาน</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
										</tr>
									</table>
								</td>
							</tr>
							<!--<tr>
								<td>
									<table class="Font_grey" cellSpacing="0" cellPadding="0" align="right" border="0">
										<tr>
											<td height="16"><IMG height="16" src="../../../images/icons/small/prolong_pack_01.gif" width="20"
													align="textTop"><u>ต่ออายุแพคเกจนี้</u></td>
											<td width="10"></td>
											<td><IMG height="16" src="../../../images/icons/small/change_pack_01.gif" width="20" align="textTop"><u>เปลี่ยนแพคเกจนี้</u></td>
										</tr>
									</table>
								</td>
							</tr>-->
							<asp:Label id="prolong" runat="server"></asp:Label>
							<tr>
								<td height="5">
								</td>
							</tr>
						</table>
					</td>
					<td></td>
					<td vAlign="top"></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<div id="showAll">
						</div>
					<td vAlign="top" width="15"></td>
					<td vAlign="top" width="120">
				</tr>
			</table>
			<script language="javascript">
					var result = "";
					var catType = 1;
					var carStatus = "1,2";
					var modeldb="";
					//var pageSize=20;
					

					changeMainPic(catType);
					
					function changeMainPic(cat){
						manage.package3_list_vehicle_term_new.showTerm(catType,UrlBack);	
					}					
					function UrlBack(res){
						var divObj = document.getElementById("showAll");
						var str = res.value.split("!TUI!");
						
						if(str[1]=="have"){
							divObj.innerHTML = str[0];
							manage.showBrands.showBrands(catType,showBrands);
							manage.showBrands.showType(catType,showType);
							manage.showBrands.showStatus(carStatus,showStatus);
							manage.showBrands.showYear(showYear);
							manage.showBrands.showPrice1(catType,showPrice1);
							manage.showBrands.showPrice2(catType,showPrice2);
						}else{
							divObj.innerHTML = str[0];
						}
						
						
					}
					
					
					function setModel(brand){
						//autoonclick.showBrands.showModels(brand,1,showModel);
						manage.showBrands.showModels(brand,catType,showModel);
					}
					function showModel(res){
						var modelChooser = document.getElementById("model");
						modelChooser.options.length = 1;
						var x = res.value;
						modeldb = x.split("!");
						/*modeldb["model"]=	[{value:"30", text:"Ankara"},
											{value:"21", text:"Bangkok"},
											{value:"49", text:"Beijing"},
											{value:"76", text:"New Delhi"},
											{value:"14", text:"Tokyo"}];*/
											//alert(res.value);
						var db="";
						for (var i = 0; i < modeldb.length; i++) {
							db = modeldb[i].split(":");
							modelChooser.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showBrands(res){
						var brandChooser = document.getElementById("brand");
						brandChooser.options.length = 1;
						var x = res.value;
						branddb = x.split("!");
						
						var db="";
						for (var i = 0; i < branddb.length; i++) {
							db = branddb[i].split(":");
							brandChooser.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showStatus(res){
						var statusChooser = document.getElementById("status");
						statusChooser.options.length = 1;
						var x = res.value;
						//alert(x);
						statusdb = x.split("!");
						
						var db="";
						for (var i = 0; i < statusdb.length; i++) {
							db = statusdb[i].split(":");
							statusChooser.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showType(res){
						var typeChooser = document.getElementById("carType");
						typeChooser.options.length = 1;
						var x = res.value;
						//alert(x);
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typeChooser.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showYear(res){
						var typeYearSt = document.getElementById("yearst");
						var typeYearEnd = document.getElementById("yearend");
						typeYearSt.options.length = 1;
						typeYearEnd.options.length = 1;
						var x = res.value;
						//alert(x);
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typeYearSt.options[i + 1] = new Option(db[1], db[0]);
							typeYearEnd.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showPrice1(res){
						var typePriceSt = document.getElementById("pricest");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showPrice2(res){
						var typePriceSt = document.getElementById("priceend");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					
					function editRemark(carid,remark){
						manage.package3_list_vehicle_term_new.saveRemark(carid,remark,urlBack);
					}
					function urlBack(response){
						if(response.value=="ok"){
							alert('บันทึกเรียบร้อย');
						}else{
							alert('กรุณาระบุข้อความ');
						}
						
					}
					function showCar(detailid){
						manage.package3_list_vehicle_term_new.setDetailShow(detailid,delAdv);
					}
					function delAdv(response){
					var typePriceSt = document.getElementById("delCar"+response.value);
						if(typePriceSt.innerHTML=="เปิด"){
							typePriceSt.innerHTML="ปิด";
						}else{
							typePriceSt.innerHTML="เปิด";
						}
					}
					function deleteDetail(){
						var checkB = document.form1.elements["noticeDe"];
						var maxCheckB = checkB.length;
						if(maxCheckB==null){
								if(checkB.checked){
									manage.package3_list_vehicle_term_new.setDetailDelete(checkB.value);	
								}
						}else{
							for(var i=0;i<maxCheckB;i++){
								if(checkB[i].checked){
								  manage.package3_list_vehicle_term_new.setDetailDelete(checkB[i].value);
								//alert(checkB[i].value);
								}
							}
							//showNewList("ok");
						}
						doSearch();
					}
					function showNewList(response){
						if(response=="ok"){
							manage.package3_list_vehicle_term_new.showC(newList);
							manage.package3_list_vehicle_term_new.showB1(newButton1);
							manage.package3_list_vehicle_term_new.showB2(newButton2);
						}
					}
					function newList(response){
						var show = document.getElementById("listcar");
						show.innerHTML=response.value;
					}
					function newButton1(response){
						var show1 = document.getElementById("showButton1");
						show1.innerHTML=response.value;
					}
					function newButton2(response){
						var show2 = document.getElementById("showButton2");
						show2.innerHTML=response.value;
					}
					// ------------------  Do Search -----------------------------------------
					function doSearch(){
						var brand = document.getElementById("brand");
						var status = document.getElementById("status");
						var model = document.getElementById("model");
						var yearst = document.getElementById("yearst");
						var yearend = document.getElementById("yearend");
						var carType = document.getElementById("carType");
						var pricest = document.getElementById("pricest");
						var priceend = document.getElementById("priceend");
						var orderBy = document.getElementById("orderBy");
						//alert(orderBy.value);
						manage.package3_list_vehicle_term_new.showSelectedC(brand.value,status.value,model.value,yearst.value,yearend.value,carType.value,pricest.value,priceend.value,orderBy.value,showSearchList);
						manage.package3_list_vehicle_term_new.selectedNum(1,newNum1);
					}
					function showSearchList(response){
						//alert(response.value);
						var show = document.getElementById("listcar");
						show.innerHTML=response.value;
					}
					function newNum1(response){
						var show1 = document.getElementById("numList1");
						var show2 = document.getElementById("numList2");
						show1.innerHTML=response.value;
						show2.innerHTML=response.value;
					}
					function goPage(pageno){
						manage.package3_list_vehicle_term_new.showSelectedPage(pageno,showSearchList);
						manage.package3_list_vehicle_term_new.selectedNum(pageno,newNum1);
					}
			</script>
		</form>
	</body>
</HTML>
