<%@ Page CodeBehind="forgotten_password.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.forgotten_password" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html;charset=window-874" />
		<link href="../scripts+pics/style/style.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="../scripts+pics/style/jquery.js"></script>
		<script type="text/javascript" src="../scripts+pics/style/cmxform.js"></script>
		<script type="text/javascript" src="../scripts+pics/style/footer.js"></script>
	</head>

	<body>
	<form id="form1" name="form1" runat="server">
		<div id="all">
			<div id="content">
				<div id="head">
					<!--Head--><img id="logo_head" src="../scripts+pics/images/head_logo.jpg" alt="" height="99" width="202" /><img id="banner_head" src="../scripts+pics/images/full-banner-468-60.gif" alt="" height="60" width="468" /></div>
				<div id="log_in">
					<!--HoriNavi-->
					<div id="hn">
						<ul>
							<li class="sl"><img src="../scripts+pics/images/hn_left.gif" alt="" height="21" width="155" /></li>
							<li><a class="offer" href="#">ลงประกาศ</a></li>
							<li class="s"><img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1" /></li>
							<li><a class="search" href="#">ค้นหา</a></li>
							<li class="s"><img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1" /></li>
							<li><a class="so" href="#">โฆษณาพิเศษ</a></li>
							<li class="s"><img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1" /></li>
							<li><a class="dealer" href="#">ผู้ประกอบการ</a></li>
							<li class="s"><img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1" /></li>
							<li><a class="magazine" href="#">แมกกะซีน</a></li>
							<li class="s"><img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1" /></li>
							<li><a class="about" href="#">เกี่ยวกับเรา</a></li>
							<li><a class="login" href="#">Login</a></li>
						</ul>
					</div>
				</div>
				<!--VerticalNavi-->
				<div id="vn">
					<ul>
						<li class="s"><img src="../scripts+pics/images/vn_top_155x22.GIF" alt="" height="22" width="155" /></li>
						<li><a class="search_car" href="#">ค้นหารถยนต์</a></li>
						<li><a class="search_moto" href="#">ค้นหารถจักรยานยนต์</a></li>
						<li><a class="search_truck" href="#">ค้นหารถบรรทุก</a></li>
						<li><a class="search_part big" href="#">ค้นหาชิ้นส่วน/ อะไหล่/ ประดับยนต์</a></li>
						<li class="s"><img src="../scripts+pics/images/vn_dividing_140x22.gif" alt="" height="22" width="140" /></li>
						<li><a class="search_business" href="#">ค้นหาผู้ประกอบการ</a></li>
						<li><a class="search_job" href="#">ค้นหางาน</a></li>
						<li class="s"><img src="../scripts+pics/images/vn_dividing_140x22.gif" alt="" height="22" width="140" /></li>
						<li><a class="search_request" href="#">ฝากค้นหากับเรา</a></li>
						<li><a class="parking" href="#">รายการบันทึกประกาศ</a></li>
						<li class="s"><img src="../scripts+pics/images/vn_dividing_140x22.gif" alt="" height="22" width="140" /></li>
						<li><a class="startpage" href="#">หน้าแรก</a></li>
						<li><a class="info_1" href="#">ติดต่อเรา</a></li>
						<li><a class="info_2" href="#">โฆษณาออนไลน์</a></li>
						<li><a class="info_3" href="#">แผนผังเว็บไซต์</a></li>
						<li><a class="info_4" href="#">ช่วยเหลือ</a></li>
						<li class="sb"><img src="../scripts+pics/images/vn_bottom_140x40.gif" alt="" height="40" width="140" /></li>
					</ul>
				</div>
				<div id="v_banner_box">
					<!--Banner right side Skyscraper 120x600--><img src="../scripts+pics/images/skyscraper_120x600.gif" alt="" height="600" width="120" /></div>
				<div id="inner_box">
					<!--PageContent-->
					<div id="forgotten_password">
						<h1>ลืมรหัสผ่าน (Password)!</h1>
						<div>
							<h2>หากลืมรหัสผ่าน(Password) กรุณาระบุอีเมล์ของคุณทีั่ได้ให้ไว้กับเรา แล้วเราจะจัดส่งไปให้</h2>
							<form class="cmxform" action="#">
								<fieldset>
									<ol>
										<li><label style="display: -moz-inline-box;" for="#"><span>E-mail</span> </label> <input type="text" id="email" name="email" /></li>
									</ol>
								</fieldset>
								
								<p><a class="b80" href="javascript:doSendMail();">ส่ง</a></p>
							</form>
						</div>
					</div>
					<img class="ds_line" src="../scripts+pics/images/l_o_693.gif" alt="" /></div>
			</div>
			<div id="footer">
				<ul>
					<li class="s"><img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1" /></li>
					<li><a href="#">Terms &amp; Condition</a></li>
					<li class="s"><img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1" /></li>
					<li><a href="#">Imprint</a></li>
					<li class="s"><img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1" /></li>
					<li><a href="#">Online-Marketing</a></li>
					<li class="s"><img src="../scripts+pics/images/hn_s.gif" alt="" height="21" width="1" /></li>
				</ul>
			</div>
		</div>
		<script language="javascript">
		function doSendMail(){
		var email = document.getElementById("email");
		
			if(email.value!= ""){
				autoonclick.forgotten_password.sendPwd(email.value,resBack);
			}else{
				alert("กรุณาระบุ Email");
			}
		}
		function resBack(response){
			alert(response.value);
		}
		</script>
		</form>
	</body>

</html>