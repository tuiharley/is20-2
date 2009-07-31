
<%@ Page CodeBehind="Gas_pipeline.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Gas_pipeline" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
<script language="javascript" src="../script/js.js"></script>
<% Session("CURRENT_HEADER_MENU") = "INFORMATION"
			Dim PIPELINE
			PIPELINE=Request.Item ("PIPELINE")
			if PIPELINE="" then PIPELINE=1
			%>
</head>

<body onLoad="MM_preloadImages('../images/zoom2.jpg')">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><!--#include file="../Includes/header.aspx" --></td>
      </tr>
	  <tr>
	          <td height="140" background="../images/menu/banner4.jpg">&nbsp;</td>
        </tr>
	        <tr>
        <td><!--#include file="../Includes/menu.aspx" --></td>
      </tr>
	  <tr><td height="2"></td></tr>
      <tr>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-image:url(../images/bg_sidemenu2.jpg); background-repeat:repeat-y">
          <tr>
            <td width="219" valign="top"><!--#include file="../Includes/m_info2.aspx" --></td>
            <td valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td>&nbsp;</td>
              </tr>
              
              <tr>
                <td><img src="../images/title_info2.jpg" width="539" height="38"></td>
              </tr>
              <tr>
                <td>&nbsp;<% select case PIPELINE
			   case 1: %></td>
              </tr>
              <tr>
                <td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>ระบบท่อส่งก๊าซธรรมชาติ</u></strong></td>
              </tr>
              <tr>
                <td class="T_gray13">&nbsp;</td>
              </tr>
              <tr>
                <td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;หลังจากค้นพบก๊าซธรรมชาติที่สามารถใช้ประโยชน์ในเชิงพาณิชย์ จากแหล่งก๊าซธรรมชาติเอราวัณเป็นแหล่งแรก ปตท. ได้ดำเนินการวางท่อส่งก๊าซธรรมชาติในทะเลจากแหล่งผลิตมาขึ้นฝั่งที่บ้านหนองแฟบ ตำบลมาตาพุด อำเภอเมือง จังหวัดระยอง โดยเริ่มนำก๊าซธรรมชาติมาใช้ตั้งแต่ปี พ.ศ.2524 และเพื่อสนองความต้องการใช้ก๊าซธรรมชาติที่เพิ่มขึ้นอย่างต่อเนื่อง <span class="T_blue13">&quot; กลุ่มธุรกิจก๊าซธรรมชาติ&nbsp;&quot;</span> ได้จัดสร้างระบบท่อส่งก๊าซธรรมชาติ เพื่อรองรับการขยายตัวดังกล่าว</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td class="T_gray13">&nbsp;</td>
              </tr>
              <tr>
                <td class="T_org13"><strong>&nbsp;&nbsp;&nbsp;&#8226;&nbsp;&nbsp;<u>ระบบท่อส่งก๊าซธรรมชาติ มี 3 ส่วนหลักในปัจจุบัน</u></strong></td>
              </tr>
              <tr>
                <td class="T_gray13">&nbsp;</td>
              </tr>
              <tr>
                <td align="center"><img src="../images/information/1.3.2.jpg" width="454" height="218"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td class="T_org13"><strong>&nbsp;&nbsp;&nbsp;&#8226;&nbsp;&nbsp;<u>การดำเนินงานระบบท่อส่งก๊าซธรรมชาติ</u></strong></td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right" class="T_gray13"><table width="97%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td colspan="2" class="T_blue13"><strong><u>ศูนย์ปฏิบัติการชลบุรี</u></strong></td>
                  </tr>
                  <tr>
                    <td height="6" colspan="2"></td>
                  </tr>
                  <tr>
                    <td colspan="2" class="T_blue13">&nbsp;เป็นศูนย์หลักในการดำเนินงานระบบท่อส่งก๊าซธรรมชาติ  และมีการแบ่งเขตความรับผิดชอบ ดังนี้</td>
                    </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="20" align="center" valign="top" class="T_green13">•</td>
                    <td class="T_gray13"><span class="T_green13"><strong>ส่วนปฏิบัติการระบบท่อในทะเลและสถานีชายฝั่ง</strong></span> รับผิดชอบระบบท่อส่งก๊าซฯ ในทะเล ครอบคลุมพื้นที่จังหวัดปัตตานี สงขลา นครศรีธรรมราช สุราษฎร์ธานี ชุมพร ประจวบคีรีขันธ์ และระยอง</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">•</td>
                    <td class="T_gray13"><span class="T_green13"><strong>ส่วนปฏิบัติการระบบท่อเขต  1</strong></span>   รับผิดชอบระบบท่อส่งก๊าซฯ    ครอบคลุมพื้นที่จังหวัดระยอง  ชลบุรี  ฉะเชิงเทรา  สมุทรปราการ  และกรุงเทพมหานคร</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">•</td>
                    <td class="T_gray13"><span class="T_green13"><strong>ส่วนปฏิบัติการระบบท่อเขต  2</strong></span>  รับผิดชอบระบบท่อส่งก๊าซฯ   ครอบคลุมพื้นที่จังหวัดกรุงเทพมหานคร  ปทุมธานี   พระนครศรีอยุธยา  และสระบุรี</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">•</td>
                    <td class="T_gray13"><span class="T_green13"><strong>ส่วนปฏิบัติการระบบท่อเขต 3  </strong></span>รับผิดชอบระบบท่อส่งก๊าซฯ   ครอบคลุมพื้นที่จังหวัดระยอง  และชลบุรี</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">•</td>
                    <td class="T_gray13"><span class="T_green13"><strong>ส่วนปฏิบัติการระบบท่อเขต 4 </strong></span>รับผิดชอบงานระบบท่อส่งก๊าซฯ   ครอบคลุมพื้นที่จังหวัดขอนแก่น</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">•</td>
                    <td class="T_gray13"><span class="T_green13"><strong>ส่วนปฏิบัติการระบบท่อเขต 5 </strong></span>รับผิดชอบงานระบบท่อส่งก๊าซฯ  ครอบคลุมพื้นที่ตั้งแต่ชายแดนไทย-สหภาพพม่า   ที่บ้านอีต่อง  อำเภอทองผาภูมิ  จังหวัดกาญจนบุรี  ถึงโรงไฟฟ้าราชบุรี   จังหวัดราชบุรี</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">•</td>
                    <td class="T_gray13"><span class="T_green13"><strong>ส่วนปฏิบัติการระบบท่อเขต 6 </strong></span>รับผิดชอบงานระบบท่อส่งก๊าซฯ   ครอบคลุมพื้นที่จังหวัดกรุงเทพมหานคร  นนทบุรี  สมุทรปราการ  ปทุมธานี  และนครปฐม</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td class="T_org13"><strong>&nbsp;&nbsp;&nbsp;&#8226;&nbsp;&nbsp;<u>หน้าที่หลักของส่วนปฏิบัติการระบบท่อ</u></strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right"><table width="97%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td colspan="2" class="T_blue13"><strong><u>ส่วนปฏิบัติการระบบท่อทุกเขตมีหน้าที่หลัก  ดังนี้</u></strong></td>
                  </tr>
                  
                  <tr>
                    <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="20" align="center" valign="top" class="T_gray13">•</td>
                    <td class="T_gray13">ควบคุม และวางแผนการปฏิบัติการ</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">&nbsp;</td>
                    <td class="T_green13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">•</td>
                    <td class="T_gray13">สนับสนุนงานวิศวกรรมของระบบท่อส่งก๊าซฯ</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">&nbsp;</td>
                    <td class="T_green13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">•</td>
                    <td class="T_gray13">บำรุงรักษาระบบท่อส่งก๊าซธรรมชาติ</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">&nbsp;</td>
                    <td class="T_green13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">•</td>
                    <td class="T_gray13">ดูแลควบคุมความปลอดภัย และสิ่งแวดล้อมระบบท่อ</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">&nbsp;</td>
                    <td class="T_green13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">•</td>
                    <td class="T_gray13">ดูแลสถานีควบคุมความดันและวัดปริมาตรก๊าซต่าง ๆ</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">&nbsp;</td>
                    <td class="T_green13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_gray13">•</td>
                    <td class="T_gray13">ป้องกันและระงับเหตุฉุกเฉินของระบบท่อ  โดยใช้ระบบควบคุมอัตโนมัติ  <span class="T_blue13">(Supervisory  Control  and  Data  Acquisition  System  หรือระบบ  SCADA)</span>  ผ่านระบบสื่อสาร  เช่น  ระบบไมโครเวฟ  เคเบิ้ลใยแก้วนำแสง  ระบบดาวเทียม</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">&nbsp;</td>
                    <td class="T_green13">&nbsp;</td>
                  </tr>

                </table></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;<% case 2: %></td>
              </tr>
              <tr>
                <td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>ระบบท่อในปัจจุบัน-อนาคต</u></strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="center"><table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
                    <td background="../images/f_pic_c2.jpg"></td>
                    <td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
                  </tr>
                  <tr>
                    <td background="../images/f_pic_c4.jpg">&nbsp;</td>
                    <td align="center" valign="top" bgcolor="#FFFFFF"><table width="150" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
                        <tr>
                          <td align="center"><img src="../images/information/map_pipeline.jpg" width="430" height="644"></td>
                        </tr>
                        <tr>
                          <td align="right"><a href="../images/information/map.jpg" target="_blank" onMouseOver="MM_swapImage('zoom','','../images/zoom2.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="../images/zoom1.jpg" name="zoom" width="73" height="19" border="0"></a></td>
                        </tr>
                    </table></td>
                    <td background="../images/f_pic_c5.jpg">&nbsp;</td>
                  </tr>
                  <tr>
                    <td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
                    <td background="../images/f_pic_c7.jpg"></td>
                    <td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
                  </tr>
                </table>                  </td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;
                    <% case 3: %></td>
              </tr>
              <tr>
                <td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>ระบบควบคุมการส่งก๊าซธรรมชาติ</u></strong></td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td class="T_org13"><strong>&nbsp;&nbsp;&nbsp;&#8226;&nbsp;ระบบควบคุมการส่งก๊าซธรรมชาติ   ประกอบด้วยส่วนที่สำคัญคือ</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td align="right"><table width="96%" border="0" cellspacing="0" cellpadding="0">
                  
                  <tr>
                    <td width="20" align="center" valign="top" class="T_green13">•</td>
                    <td class="T_gray13">	<span class="T_green13"><strong>สถานีควบคุมก๊าซ (Block Valve Station)</strong></span>  <br>
                      สถานีควบคุมก๊าซแต่ละแห่งมีระบบควบคุมอุปกรณ์การส่งก๊าซที่สามารถสั่งการโดยระบบควบคุมอัตโนมัติ <span class="T_blue13">(ระบบ SCADA)</span> ที่ศูนย์ปฏิบัติการชลบุรี และส่วนปฏิบัติการระบบท่อเขตต่าง ๆ โดยศูนย์ปฏิบัติการชลบุรีเป็นศูนย์ควบคุมหลัก มีพนักงานควบคุมการทำงานของระบบท่อส่งก๊าซฯ ตลอด 24 ชั่วโมง</td>
                  </tr>
                  <tr>
                    <td class="T_gray13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">•</td>
                    <td class="T_gray13"><span class="T_green13"><strong>ระบบสื่อสาร</strong></span> <br>
                      ระบบและอุปกรณ์สื่อสารใช้เทคโนโลยีชั้นสูงมีความทันสมัยเพื่อให้ระบบทั้งหมดมีความมั่นคงสูงสุด ทั้งนี้ ระบบสื่อสารประกอบด้วย </td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">&nbsp;</td>
                    <td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="20" align="center" valign="top" class="T_gray13">•</td>
                        <td class="T_gray13">	ระบบไมโครเวฟ <span class="T_blue13">(microwave)</span> เป็นระบบสื่อสารที่ใช้เป็นระบบหลักของศูนย์ปฏิบัติการชลบุรี และส่วนปฏิบัติการระบบท่อเขต 2 และ 3</td>
                      </tr>
                      <tr>
                        <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                        <td class="T_gray13">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center" valign="top" class="T_gray13">•</td>
                        <td class="T_gray13">ระบบใยแก้วนำแสง <span class="T_blue13">(optic fiber cable)</span> วางฝังมากับแนวท่อส่งก๊าซฯ ปัจจุบันเป็นระบบสื่อสารหลักเฉพาะระบบท่อในภาคตะวันตก และอยู่ระหว่างการขยายระบบนี้ให้ครอบคลุมระบบท่อส่งก๊าซฯ ทั้งหมด</td>
                      </tr>
                      <tr>
                        <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                        <td class="T_gray13">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center" valign="top" class="T_gray13">•</td>
                        <td class="T_gray13">ระบบสื่อสารผ่านดาวเทียม <span class="T_blue13">(satellite telecommunication)</span> เป็นระบบที่ใช้ในกรณีระบบหลักไม่สามารถใช้งานได้</td>
                      </tr>
                      <tr>
                        <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                        <td class="T_gray13">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center" valign="top" class="T_gray13">•</td>
                        <td class="T_gray13">ระบบวิทยุ <span class="T_blue13">UHF (Ultra High Frequency) และ VHF (Very High Frequency)</span> ครองคลุมพื้นที่ตลอดแนวท่อส่งก๊าซฯ</td>
                      </tr>
                      <tr>
                        <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                        <td class="T_gray13">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="center" valign="top" class="T_gray13">•</td>
                        <td class="T_gray13">ระบบโทรศัพท์ภายในของ ปตท. และระบบภายนอกขององค์การโทรศัพท์แห่งประเทศไทย</td>
                      </tr>
                      <tr>
                        <td align="center" valign="top" class="T_gray13">&nbsp;</td>
                        <td class="T_gray13">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" class="T_green13">&nbsp;</td>
                    <td class="T_gray13">&nbsp;</td>
                  </tr>
                  
                </table></td>
              </tr>
              <tr>
                <td>&nbsp;<%end select %></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              
              
            </table></td>
          </tr>
          
        </table></td>
      </tr>
      
      <tr>
        <td><!--#include file="../Includes/footer.aspx" --></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
