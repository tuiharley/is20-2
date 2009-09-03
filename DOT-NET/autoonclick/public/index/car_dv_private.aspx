<%@ Page CodeBehind="car_dv_private.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.car_dv_private" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html;charset=window-874">
		<link href="../scripts+pics/style/style.css" type="text/css" rel="stylesheet">
			<script type="text/javascript" src="../scripts+pics/style/jquery.js"></script>
			<script type="text/javascript" src="../scripts+pics/style/cmxform.js"></script>
			<script type="text/javascript" src="../scripts+pics/style/footer.js"></script>
	</HEAD>
	<body>
		<form id="form1" name="form1" runat="server">
			<div id="all">
				<div id="content">
					<div id="head">
						<!--Head--><img id="logo_head" src="../scripts+pics/images/head_logo.jpg" alt="" height="99" width="202"><img id="banner_head" src="../scripts+pics/images/full-banner-468-60.gif" alt="" height="60"
							width="468"></div>
					<div id="search">
						<!--HoriNavi-->
						<div id="hn">
							<ul>
								<li class="sl">
									<img src="../scripts+pics/images/hn_left.gif" alt="" height="21" width="155"></li>
								<li>
									<a class="offer" href="#">ลงประกาศ</a></li>
								<li class="s">
									<img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1"></li>
								<li>
									<a class="search" href="#">ค้นหา</a></li>
								<li class="s">
									<img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1"></li>
								<li>
									<a class="so" href="#">โฆษณาพิเศษ</a></li>
								<li class="s">
									<img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1"></li>
								<li>
									<a class="dealer" href="#">ผู้ประกอบการ</a></li>
								<li class="s">
									<img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1"></li>
								<li>
									<a class="magazine" href="#">แมกกะซีน</a></li>
								<li class="s">
									<img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1"></li>
								<li>
									<a class="about" href="#">เกี่ยวกับเรา</a></li>
								<li>
									<a class="login" href="#">Login</a></li>
							</ul>
						</div>
					</div>
					<div id="search_car">
						<!--VerticalNavi-->
						<div id="vn">
							<ul>
								<li class="s">
									<img src="../scripts+pics/images/vn_top_155x22.GIF" alt="" height="22" width="155"></li>
								<li>
									<a class="search_car" href="#">ค้นหารถยนต์</a></li>
								<li>
									<a class="search_moto" href="#">ค้นหารถจักรยานยนต์</a></li>
								<li>
									<a class="search_truck" href="#">ค้นหารถบรรทุก</a></li>
								<li>
									<a class="search_part big" href="#">ค้นหาชิ้นส่วน/ อะไหล่/ ประดับยนต์</a></li>
								<li class="s">
									<img src="../scripts+pics/images/vn_dividing_140x22.gif" alt="" height="22" width="140"></li>
								<li>
									<a class="search_business" href="#">ค้นหาผู้ประกอบการ</a></li>
								<li>
									<a class="search_job" href="#">ค้นหางาน</a></li>
								<li class="s">
									<img src="../scripts+pics/images/vn_dividing_140x22.gif" alt="" height="22" width="140"></li>
								<li>
									<a class="search_request" href="#">ฝากค้นหากับเรา</a></li>
								<li>
									<a class="parking" href="#">รายการบันทึกประกาศ</a></li>
								<li class="s">
									<img src="../scripts+pics/images/vn_dividing_140x22.gif" alt="" height="22" width="140"></li>
								<li>
									<a class="startpage" href="#">หน้าแรก</a></li>
								<li>
									<a class="info_1" href="#">ติดต่อเรา</a></li>
								<li>
									<a class="info_2" href="#">โฆษณาออนไลน์</a></li>
								<li>
									<a class="info_3" href="#">แผนผังเว็บไซต์</a></li>
								<li>
									<a class="info_4" href="#">ช่วยเหลือ</a></li>
								<li class="sb">
									<img src="../scripts+pics/images/vn_bottom_140x40.gif" alt="" height="40" width="140"></li>
							</ul>
						</div>
					</div>
					<div id="v_banner_box">
						<!--Banner right side Skyscraper 120x600--><img src="../scripts+pics/images/skyscraper_120x600.gif" alt="" height="600" width="120"></div>
					<div id="inner_box">
						<!--PageContent-->
						<div id="sn_t">
							<ul>
								<li class="l">
								</li>
								<li>
									<a class="nv1" href="#">กลับไปหน้าแสดงผล</a></li>
								<li class="c">
								</li>
								<li>
									<a class="nv2" href="#">ค้นหาซ้ำ</a></li>
								<li class="c">
								</li>
								<li>
									<a class="nv3" href="#">ฝากค้นหากับเรา</a></li>
								<li class="c">
								</li>
								<li>
									<a class="nv4" href="#">รายการบันทึกประกาศ</a></li>
								<li class="r">
								</li>
							</ul>
						</div>
						<div class="dv_t">
							<a href="#">&lt;&lt;</a>
							<p>ประกาศ 1 จาก 20</p>
							<a href="#">&gt;&gt;</a></div>
						<div id="dv">
							<div>
								<h1><asp:label id="carBrand" runat="server"></asp:label></h1>
								<h2><asp:label id="head_year" runat="server"></asp:label></h2>
								<h3>฿
									<asp:label id="head_price" runat="server"></asp:label></h3>
								<p><IMG alt="" src="../scripts+pics/images/park.gif"><asp:HyperLink ID="savePak" runat="server"></asp:HyperLink>
									<IMG alt="" src="../scripts+pics/images/mailto.gif"><asp:HyperLink ID="sendFr" runat="server"></asp:HyperLink>
									<IMG alt="" src="../scripts+pics/images/print.gif"><asp:HyperLink ID="printThis" runat="server"></asp:HyperLink>
									<IMG alt="" src="../scripts+pics/images/complaint.gif"><asp:HyperLink ID="warnDel" runat="server"></asp:HyperLink></p>
								<ul>
									<li class="l">
										<table cellspacing="0">
											<caption>
												รายละเอียด</caption>
											<tr>
												<th>
													<span>ประเภทรถ</span></th>
												<td><asp:label id="category" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>ราคา</span></th>
												<td><asp:label id="Price" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>สภาพรถ</span></th>
												<td><asp:label id="status" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>ปี</span></th>
												<td><asp:label id="yearcar" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>เลขไมล์</span></th>
												<td><asp:label id="miles" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>ประเภทเครื่องยนต์</span></th>
												<td><asp:label id="enginetype" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>กำลังเครื่องยนต์</span></th>
												<td><asp:label id="power" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>สี</span></th>
												<td><asp:label id="colors" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>ระบบเกียร์</span></th>
												<td><asp:label id="gear" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>จำนวนเกียร์</span></th>
												<td><asp:label id="numgear" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>จำนวนสูบ</span></th>
												<td><asp:label id="numpump" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>ขนาดเครื่องยนต์</span></th>
												<td><asp:label id="cc" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>จำนวนประตู</span></th>
												<td><asp:label id="numdoor" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>จำนวนที่นั่ง</span></th>
												<td><asp:label id="numseat" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>อัตราสิ้นเปลืองน้ำมัน</span></th>
												<td><asp:label id="fuelconsume" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>ความจุถังน้ำมัน</span></th>
												<td><asp:label id="fueltank" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>ตรวจสภาพรถครั้งล่าสุด</span></th>
												<td><asp:label id="lastcheck" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>รถมีอุบัติเหตุ(ยังไม่ซ่อม)</span></th>
												<td><asp:label id="accident" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>รถมีประกัน</span></th>
												<td><asp:label id="insurrunce" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th class="last">
													<span>เลขตัวรถ</span></th>
												<td class="last"><asp:label id="carid" runat="server"></asp:label></td>
											</tr>
										</table>
										<ul>
											<h4>อุปกรณ์เสริม</h4>
											<li>
												<asp:label id="accessory" runat="server"></asp:label></li>
										</ul>
										<ul>
											<h4>ข้อมูลเพิ่มเติม</h4>
											<li class="bb_0">
												<asp:label id="description" runat="server"></asp:label></li>
										</ul>
									</li>
									<li class="r">
										<div>
											<img src="../scripts+pics/images/pic_318x239.gif" alt=""></div>
										<ul>
											<li>
												<a href="#"><img src="../scripts+pics/images/pic_60x45_2.gif" alt=""></a></li>
											<li>
												<a href="#"><img src="../scripts+pics/images/pic_60x45_2.gif" alt=""></a></li>
											<li>
												<a href="#"><img src="../scripts+pics/images/pic_60x45_2.gif" alt=""></a></li>
											<li>
												<a href="#"><img src="../scripts+pics/images/pic_60x45_2.gif" alt=""></a></li>
											<li>
												<a href="#"><img src="../scripts+pics/images/pic_60x45_2.gif" alt=""></a></li>
										</ul>
										<table cellspacing="0">
											<caption>
												ข้อมูลติดต่อ</caption>
											<tr>
												<th>
													<span>ที่ตั้ง</span></th>
												<td><asp:label id="Addr" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th>
													<span>โทรศัพท์</span></th>
												<td><asp:label id="Tel" runat="server"></asp:label></td>
											</tr>
											<tr>
												<th class="last">
													<span>โทรสาร</span></th>
												<td class="last"><asp:label id="fax" runat="server"></asp:label></td>
											</tr>
										</table>
										<table class="email" cellspacing="0">
											<caption>
												ติดต่อสอบถาม</caption>
											<tr>
												<th>
													<span>ชื่อ</span></th>
												<td><asp:textbox id="name" tabIndex="1" runat="server" Width="95%" MaxLength="50"></asp:textbox></td>
											</tr>
											<tr>
												<th>
													<span>E-mail</span></th>
												<td><asp:textbox id="email" onblur='doValidateEmail(this.value,this.name);' tabIndex="3" runat="server"
														Width="95%" MaxLength="50"></asp:textbox></td>
											</tr>
											<tr>
												<th>
													<span>โทรศัพท์</span></th>
												<td><asp:textbox id="phone1" tabIndex="4" runat="server" Width="95%" MaxLength="50"></asp:textbox></td>
											</tr>
											<tr>
												<th class="last">
													<span>คำถาม/ข้อเสนอแนะ</span>&nbsp;</th>
												<td><asp:textbox id="question" tabIndex="7" runat="server" Width="95%" MaxLength="1000" TextMode="MultiLine"
														Rows="5"></asp:textbox></TEXTAREA><A class="b60" href="javascript:check_form();">ส่ง 
														E-mail</A></td>
											</tr>
										</table>
									</li>
								</ul>
								<img class="bb_line" src="../scripts+pics/images/bb_dv2.gif" alt=""></div>
						</div>
						<img class="dv_line" src="../scripts+pics/images/l_o_693.gif" alt="">
						<div id="sn_b">
							<ul>
								<li class="l">
								</li>
								<li>
									<a class="nv1" href="#">กลับไปหน้าแสดงผล</a></li>
								<li class="c">
								</li>
								<li>
									<a class="nv2" href="#">ค้นหาซ้ำ</a></li>
								<li class="c">
								</li>
								<li>
									<a class="nv3" href="#">ฝากค้นหากับเรา</a></li>
								<li class="c">
								</li>
								<li>
									<a class="nv4" href="#">รายการบันทึกประกาศ</a></li>
								<li class="r">
								</li>
							</ul>
						</div>
						<div class="dv_b">
							<a href="#">&lt;&lt;</a>
							<p>ประกาศ 1 จาก 20</p>
							<a href="#">&gt;&gt;</a></div>
					</div>
				</div>
				<div id="footer">
					<ul>
						<li class="s">
							<img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1"></li>
						<li>
							<a href="#">Terms &amp; Condition</a></li>
						<li class="s">
							<img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1"></li>
						<li>
							<a href="#">Imprint</a></li>
						<li class="s">
							<img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1"></li>
						<li>
							<a href="#">Online-Marketing</a></li>
						<li class="s">
							<img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1"></li>
					</ul>
				</div>
			</div>
			<script src="../../j_script/cookie.js" type="text/javascript"></script>
			<script src="../../j_script/checkEmail.js"></script>
			<script language="javascript">
			// ----------  START  CHECK EMAIL FORM ---------
		function check_form(){ 
		
		var name = document.getElementById("name");
		var eml = document.getElementById("email");
		var phone1 = document.getElementById("phone1");
		var question = document.getElementById("question");
		
		
				if(!check_email(eml.value)){
					alert("Email ไม่ถูกต้อง");
					document.form1.email.focus(); 
					if(document.all || document.getElementByID){
						eml.style.background = "#ffff99";
					}
					//return (false);
				}else{
					sendMail(name.value,eml.value,phone1.value,question.value);
				}
			}
		function sendMail(name,email,phone1,question){
			autoonclick.car_dv_private.sendQuestion(name,email,phone1,question,mailBack);
		}
		function mailBack(res){
			var x 
			alert(res.value);
			
		}
		
		
		
		
		//  Cookies Things !! -----   START  COOKIES PART ----------
			function saveAdv(carid){
				if(noDup(carid)){
					if(getCarNum()<20){
						addCar(carid);
						incSaveNum();
						alert('บันทึกประกาศเรียบร้อย');
					}else{
						alert('ไม่สามารถบันทึกได้เกิน 20 ประกาศ');
					}
					
				}
			}
			//   ---------------    NODUP ------------------
			function noDup(carid) {
				var oStringObject = new String(getCookie('saveCar'));
				if(oStringObject.indexOf('car:'+carid+':')!=-1){
					alert('คุณได้ทำการบันทึกประกาศไว้แล้ว');
					return false;
				}else{
					return true;
				}
						
			}
			//   ---------------    GETCAR NUM ------------------
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
			//   ---------------    ADD  CAR ------------------
			function addCar(carid) {
					var x = getCookie('saveCar');
					setCookie('saveCar', x+'car:'+carid+':,', getExpDate(60, 0, 0),'/');
				}
				
			//   ---------------    INC SAVE NUM ------------------	
		    function incSaveNum() {
				var x = getCookie('saveCarNum');
				if(x==''){
					setCookie('saveCarNum', 1, getExpDate(60, 0, 0),'/');
				}else{
					if(x==20){
						alert('ไม่สามารถบันทึกประกาศเกิน 20 ประกาศได้ค่ะ');
					}else{
						setCookie('saveCarNum', ++x, getExpDate(60, 0, 0),'/');
					}
				}
			}
			</script>
		</form>
	</body>
</HTML>
