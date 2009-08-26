<%@ Page CodeBehind="index_start.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.index_start" %>
<%@Register TagPrefix="starttop" TagName="starttop" Src="../menu/start_top.ascx"%>
<%@Register TagPrefix="startleft" TagName="startleft" Src="../menu/start_left.ascx"%>
<%@Register TagPrefix="startfooter" TagName="startfooter" Src="../menu/start_footer.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html;charset=window-874">
		<LINK href="../scripts+pics/style/style.css" type="text/css" rel="stylesheet">
			<script src="../scripts+pics/style/jquery.js" type="text/javascript"></script>
			<script src="../scripts+pics/style/cmxform.js" type="text/javascript"></script>
			<script src="../scripts+pics/style/footer.js" type="text/javascript"></script>
	</HEAD>
	<body>
		<div id="all">
			<div id="content">
				<div id="head">
					<!--Head--><IMG id="logo_head" height="99" alt="" src="../scripts+pics/images/head_logo.jpg" width="202"><IMG id="banner_head" height="60" alt="" src="../scripts+pics/images/full-banner-468-60.gif"
						width="468"></div>
				<starttop:starttop id="starttop" runat="server"></starttop:starttop>
				<startleft:startleft id="startleft" runat="server"></startleft:startleft>
				<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
				<div id="inner_box">
					<!--PageContent-->
					<h1 class="intro"><!--Inroduction Headline--> - 
						ทั้งบุคคลทั่วไปและผู้ประกอบการสามารถลงประกาศขายรถและอะไหล่/ประดับยนต์ได้ ที่นี่ 
						-</h1>
					<div id="randomShow">
						<table class="index_ads" cellSpacing="0">
							<!--Example Ads-->
							<caption>
								ฐานข้อมูลขนาดใหญ่ของรถ อะไหล่/ประดับยนต์ และโฆษณาพิเศษเกี่ยวกับยานยนต์ บน 
								AUTO-ONCLICK</caption>
							<thead>
								<tr>
									<th>
										<A href="/public_area/index/car_start.aspx">"รถยนต์"</A></th>
									<td><A href="/public_area/index/car_start.aspx">"รถจักรยานยนต์"</A></td>
									<td><A href="/public_area/index/car_start.aspx">"รถบรรทุก"</A></td>
									<td><A href="/public_area/index/car_start.aspx">"อะไหล่/ประดับยนต์"</A></td>
									<td><A href="/public_area/index/car_start.aspx">"ผู้ประกอบการ"</A></td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
										<p><A href="#">Toyota Camry,
												<span>ใหม่</span>, ฿ 1,200,000</A></p>
									</th>
									<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
										<p><A href="#">Harley Davidson Big Star, ปี 2000, ฿ 1,200,000</A></p>
									</td>
									<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
										<p><A href="#">Make Model,
												<span>new</span>-year, price</A></p>
									</td>
									<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
										<p><A href="#">Product Name,
												<span>new</span>-used, price</A></p>
									</td>
									<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
										<p><A href="#">Company Name, Province</A></p>
									</td>
								</tr>
							</tbody>
							<tbody>
								<tfoot>
									<tr>
										<th>
											<span>
												<A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
											<p><A href="#">Toyota Camry,
													<span>ใหม่</span>, ฿ 1,200,000</A></p>
										</th>
										<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
											<p><A href="#">Harley Davidson Big Star, ปี 2000, ฿ 1,200,000</A></p>
										</td>
										<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
											<p><A href="#">Make Model,
													<span>new</span>-year, price</A></p>
										</td>
										<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
											<p><A href="#">Product Name,
													<span>new</span>-used, price</A></p>
										</td>
										<td><span><A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
											<p><A href="#">Company Name, Province</A></p>
										</td>
									</tr>
								</tfoot>
							</tbody></table>
					</div>
					<div id="qs">
						<!--Vehicle Quick Search-->
						<h1>ค้นหารถ โดย Quick-Search บน AUTO-ONCLICK</h1>
						<div>
							<form class="cmxform" id="form1" name="form1" action="#" runat="server">
								<fieldset>
									<ol>
										<li>
											<label for="#">
												<span>
													<strong>หมวดหมู่</strong></span>
											</label><select class="full" id="cat" onchange="showBrands(this.value);" name="cat">
												<option value="0" selected>โปรดเลือก</option>
												<option value="1">รถยนต์</option>
												<option value="2">รถจักรยานยนต์</option>
												<option value="3">รถบรรทุก</option>
											</select>
											<asp:label id="err" runat="server" ForeColor="Red" Font-Bold="True"></asp:label></li>
										<li>
											<label for="#">
												<span>
													<strong>ยี่ห้อ</strong></span>
											</label><select class="full" id="brands" onchange="showModels(this.value,document.form1.cat.value);"
												name="brands">
												<option value="0" selected>ทุกยี่ห้อ</option>
											</select>
										</li>
										<li>
											<label for="#">
												<span>
													<strong>รุ่น</strong></span>
											</label><select class="full" id="model" name="model">
												<option value="0" selected>ทุกรุ่น</option>
											</select>
										</li>
										<li>
											<label for="#">
												<span>ประเภทรถ</span>
											</label><select class="full" id="carType" name="carType">
												<option value="0" selected>-</option>
											</select>
										</li>
										<li>
											<label for="#">
												<span>ปี</span>
											</label><select class="half" id="yearst" name="yearst">
												<option value="0" selected>จากทุกปี</option>
											</select>
											<select class="half" id="yearend" name="yearend">
												<option value="0" selected>ถึงทุกปี</option>
											</select>
										</li>
										<li>
											<label for="#">
												<span>ซีซี/cc</span>
											</label><select class="half" id="ccst" name="ccst">
												<option value="0" selected>จากทุกขนาด</option>
											</select>
											<select class="half" id="ccend" name="ccend">
												<option value="0" selected>ถึงทุกขนาด</option>
											</select>
										</li>
										<li>
											<label for="#">
												<span>ราคา</span>
											</label><select class="half" id="pricest" name="pricest">
												<option value="0" selected>จากทุกราคา</option>
											</select>
											<select class="half" id="priceend" name="priceend">
												<option value="0" selected>ถึงทุกราคา</option>
											</select>
										</li>
										<li>
											<label for="#">
												<span>จังหวัด</span>
											</label><select class="full" id="province" onchange="showDistrict(this.value);" name="province">
												<option value="0" selected>ทุกจังหวัด</option>
											</select>
										</li>
										<li>
											<label for="#">
												<span>เขต/อำเภอ</span>
											</label><select class="full" id="district" name="district">
												<option value="0" selected>ทุกเขต/ อำเภอ</option>
											</select>
										</li>
									</ol>
								</fieldset>
								<p><asp:linkbutton id="doSearch" runat="server" CssClass="b80">ค้นหา</asp:linkbutton><IMG alt="" src="../scripts+pics/images/PointerRight_orange.gif"><A class="advance" href="#">ค้นหาอย่างละเอียด</A></p>
							</form>
							<p><asp:label id="halfBanner" runat="server"></asp:label></p>
						</div>
					</div>
					<div id="u_know">
						<!--Did u alredy know?-->
						<h1>คุณรู้หรือไม่ว่า...?</h1>
						<ul>
							<li class="start">
								<p><strong>การเปรียบเทียบข้อมูลรถของ AUTO-ONCLICK</strong></p>
								<p><strong>ค้นหา เปรียบเทียบข้อมูล แล้ว ตัดสินใจ</strong> - การเปรียบเทียบข้อมูลของ 
									AUTO-ONCLICK จะช่วยให้คุณ พบรถหรือประกาศที่ถูกใจได้โดยรวดเร็ว!</p>
								<p><IMG height="65" alt="" src="../scripts+pics/images/compare_cars.jpg" width="300"></p>
								<p>คุณพบรถที่ถูกใจแล้วใช่หรือไม่?<br>
									และมีรายการประกาศอื่นๆ อีกด้วยหรือไม่?<br>
									เก็บรถคันโปรดของคุณใน บันทึกรายการประกาศ!</p>
								รวบรวมประกาศที่น่าสนใจเป็นพิเศษ แล้วเปรียบเทียบดู การเปรียบเทียบประกาศของ 
								AUTO-ONCLICK ทำให้คุณได้ เห็นทั้งหมดนั้นในหน้าเดียว เพื่อช่วยในการตัดสินใจ 
								ที่รวดเร็วยิ่งขึ้น!
							</li>
						</ul>
					</div>
					<div id="news">
						<!--Magazine-->
						<h1>AUTO-ONCLICK แมกกะซีน: Tips, News, Comparison Tests and Community</h1>
						<ul>
							<!--Magazine: Categories-->
							<li class="left">
								<ul>
									<li>
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45.gif"></A></span>
										<p><A href="#">Road &amp; Comparision Tests: Battle for 1st place</A></p>
									</li>
									<li>
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45.gif"></A></span>
										<p><A href="#">Future Cars: What?s comming next?</A></p>
									</li>
									<li>
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45.gif"></A></span>
										<p><A href="#">Tips &amp; Advice: Selling, Buying, Financing, Economy, Safty</A></p>
									</li>
									<li>
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45.gif"></A></span>
										<p><A href="#">Webboard: Conversation, Questions, Answers, Community</A></p>
									</li>
									<li class="last">
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45.gif"></A></span>
										<p><A href="#">Hot-Hotter-Hottest: Pics and Wallpapers</A></p>
									</li>
								</ul>
								<!--Magazine: Headlines--></li>
							<li class="right">
								<ul>
									<li>
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
										<p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
											xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
											xxxxxxxxxxxxxxxxxxxxxxx <A href="#">read more...</A></p>
									</li>
									<li>
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
										<p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
											xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
											xxxxxxxxxxxxxxxxxxxxxxx <A href="#">read more...</A></p>
									</li>
									<li>
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
										<p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
											xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
											xxxxxxxxxxxxxxxxxxxxxxx <A href="#">read more...</A></p>
									</li>
									<li class="last">
										<span>
											<A href="#"><IMG alt="" src="../scripts+pics/images/pic_80x60.gif"></A></span>
										<p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
											xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
											xxxxxxxxxxxxxxxxxxxxxxx <A href="#">read more...</A></p>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<div id="sponsor_ads">
						<!--Sponsor Links-->
						<h1>ผู้สนับสนุน</h1>
						<ul>
							<div id="sponsor">
								<li>
									<div><asp:Label id="banner1" runat="server"></asp:Label></div>
									<asp:Label id="banner1_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner1_txt" runat="server"></asp:Label></p>
								</li>
								<li>
									<div><asp:Label id="banner2" runat="server"></asp:Label></div>
									<asp:Label id="banner2_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner2_txt" runat="server"></asp:Label></p>
								</li>
								<li>
									<div><asp:Label id="banner3" runat="server"></asp:Label></div>
									<asp:Label id="banner3_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner3_txt" runat="server"></asp:Label></p>
								</li>
								<li>
									<div><asp:Label id="banner4" runat="server"></asp:Label></div>
									<asp:Label id="banner4_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner4_txt" runat="server"></asp:Label></p>
								</li>
								<li>
									<div><asp:Label id="banner5" runat="server"></asp:Label></div>
									<asp:Label id="banner5_headline" runat="server"></asp:Label>
									<p><asp:Label id="banner5_txt" runat="server"></asp:Label></p>
								</li>
							</div>
							<li class="banner">
								<span>
									<asp:Label id="ads1" runat="server"></asp:Label>
								</span>
								<span>
									<asp:Label id="ads2" runat="server"></asp:Label>
								</span>
								<span>
									<asp:Label id="ads3" runat="server"></asp:Label>
								</span>
								<span>
									<asp:Label id="ads4" runat="server"></asp:Label>
								</span>
								<span>
									<asp:Label id="ads5" runat="server"></asp:Label>
								</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<startfooter:startfooter id="startfooter" runat="server"></startfooter:startfooter>
		</div>
		<script language="javascript">
		
		startRandom();
		
		//startSponsor();
		function startSponsor(){
			autoonclick.index_start.showRamDom(txtBack);
		}
		function txtBack(response){
			var show1 = document.getElementById("sponsor");
			show1.innerHTML = response.value;
		}
		//Sponsor
		
		
		
		//startRandom();
		function startRandom(){
			autoonclick.index_start.showRamDom(txtRandom);
		}
		function txtRandom(response){
			var show1 = document.getElementById("randomShow");
			show1.innerHTML = response.value;
			//show1.innerHTML ="";
		}
		//Random
		
		
		
		/* Start Condition Interactive */
		function showBrands(cat){
				autoonclick.showBrands.showBrands(cat,listBrands);
				
				var modelChooser = document.getElementById("model");
				modelChooser.options.length = 1;
				
				autoonclick.showBrands.showType(cat,showType);
				autoonclick.showBrands.showYear(showYear);
				autoonclick.showBrands.showPrice1(cat,showPrice1);
				autoonclick.showBrands.showPrice2(cat,showPrice2);
				autoonclick.showBrands.showCC1(cat,showCC1);
				autoonclick.showBrands.showCC2(cat,showCC2);
				autoonclick.showBrands.showProvinces(listProvince);
				
		}
		
		
		/* listBrands */
		function listBrands(res){
			var brandChooser = document.getElementById("brands");
			brandChooser.options.length = 1;
			var x = res.value;
			branddb = x.split("!");
						
			var db="";
			for (var i = 0; i < branddb.length; i++) {
					db = branddb[i].split(":");
					brandChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
		/* showType */
		function showType(res){
			var typeChooser = document.getElementById("carType");
			typeChooser.options.length = 1;
			var x = res.value;
			typedb = x.split("!");
						
			var db="";
			for (var i = 0; i < typedb.length; i++) {
				db = typedb[i].split(":");
				typeChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
		/* showYear */
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
					
		/* showPrice1 */
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
					
		/* showPrice2 */			
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
					
		/* showCC1 */			
		function showCC1(res){
						var typePriceSt = document.getElementById("ccst");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					
		/* showCC2 */			
		function showCC2(res){
						var typePriceSt = document.getElementById("ccend");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
		/* listProvince */			
		function listProvince(res){
			var brandChooser = document.getElementById("province");
			brandChooser.options.length = 1;
			var x = res.value;
			branddb = x.split("!");
						
			var db="";
			for (var i = 0; i < branddb.length; i++) {
					db = branddb[i].split(":");
					brandChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
		/* showModels */
		function showModels(brand,cat){
				autoonclick.showBrands.showModels(brand,cat,listModels);
		}
		
		/* listModels */
		function listModels(res){
			var modelChooser = document.getElementById("model");
			modelChooser.options.length = 1;
			var x = res.value;
			modeldb = x.split("!");
			var db="";
			for (var i = 0; i < modeldb.length; i++) {
				db = modeldb[i].split(":");
				modelChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
		/* showDistrict */
		function showDistrict(prov){
				autoonclick.showBrands.showDistricts(prov,listDistricts);
		}
		
		/* listDistricts */
		function listDistricts(res){
			var brandChooser = document.getElementById("district");
			brandChooser.options.length = 1;
			var x = res.value;
			branddb = x.split("!");
						
			var db="";
			for (var i = 0; i < branddb.length; i++) {
					db = branddb[i].split(":");
					brandChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		</script>
	</body>
</HTML>
