<%@ page contentType="text/html;charset=WINDOWS-874" %> 
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*" %>
<%@ include file="pwd.inc" %>
<%@ include file="jTHMonth.inc" %>
<%@ include file="ThaiEncode.inc" %>
<%@ include file="newWin.inc" %>
<html>
<head>
<meta http-equiv="Content-Language" content="TH">
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<title>ระบบงานบริหารธุรกิจเสริม : บริษัท ปตท. จำกัด (มหาชน) </title>
<style type="text/css">
<!--
body {  margin: 0px  0px; padding: 0px  0px}
a:link { color: #005CA2; text-decoration: none}
a:visited { color: #005CA2; text-decoration: none}
a:active { color: #0099FF; text-decoration: none}
a:hover { color: #0099FF; text-decoration: none}
-->
</style>

<link rel="stylesheet" href="css/fixfont.css" type="text/css">
</head>

<body bgcolor="#FFFFFF" onLoad="goforit()">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
  <tr> 
    <td height="71">
	      <%@ include file="header.inc" %></td>
  </tr>
  <tr> 
  <script>
  function checkData(x)
  {
	  document.frm1.postday.value=document.frm.postday.value;
	  document.frm1.postmonth.value=document.frm.postmonth.value;
	  document.frm1.postyear.value=document.frm.postyear.value;
	  	if(x==3)
	  {
		if(confirm("คุณได้ทำการตรวจสอบจนแน่ใจแล้วว่า ข้อมูลเหล่านี้ไม่ถูกต้อง\nและต้องการที่จะยกเลิกการนำเข้าข้อมูลจากฐานข้อมูล"))
		{				
			document.frm1.action="711ImportP3.jsp";
			newWin();
			document.frm1.submit();
			return;
		}
	  }

	if(document.frm.src11.value=="")
	  {
		alert("ไม่ได้ระบุชื่อไฟล์ข้อมูลหลัก (rtr6449)");
		return;
	  }
	 else
	  {
		document.frm1.src1.value=document.frm.src11.value;
	  }
	if(document.frm.src22.value=="")
	  {
		alert("ไม่ได้ระบุชื่อไฟล์ Statement (rtr6436)");
		return;
	  }
	 else
	  {
		document.frm1.src2.value=document.frm.src22.value;
	  }
  	if(document.frm.src33.value=="")
	  {
		alert("ไม่ได้ระบุชื่อไฟล์ Statement (rtr6469)");
		return;
	  }
	 else
	  {
		document.frm1.src3.value=document.frm.src33.value;
	  }

	if(x==1)
		{
			document.frm1.action="711ImportP1.jsp";
			newWin();
			document.frm1.submit();
		}
	if(x==2)
	  {
		if(confirm("คุณได้ทำการตรวจสอบจนแน่ใจแล้วว่า ข้อมูลเหล่านี้ถูกต้อง\nและต้องการที่จะนำเข้าข้อมูลเหล่านี้ลงสู่ฐานข้อมูล"))
		{				
			document.frm1.action="711ImportP2.jsp";
			newWin();
			document.frm1.submit();
		}
	  }
  }
  </script>
    <!-- Detail -->
    <td valign="top"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> 
            <table width="400" border="0" cellspacing="0" cellpadding="0" align="center" height="167">
              <tr> 
                <td class="head_text" height="24"> 
                  <div align="center">การนำเข้าข้อมูล</div>
                </td>
              </tr>
				  <form method="POST" name="frm">
              <tr> 
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr> 
                <td>&nbsp;</td>
              </tr>
              <tr> 
                <td> 
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tr> 
                      <td width="19" height="3"><img src="Pictures/c1.gif" width="28" height="25"></td>
                      <td background="Pictures/l2.gif" width="401" height="3">&nbsp;</td>
                      <td width="30" height="3"><img src="Pictures/c2.gif" width="29" height="25"></td>
                    </tr>
                    <tr> 
                      <td width="19" background="Pictures/l1.gif">&nbsp;</td>
                      <td width="401" bgcolor="99CCFF"> 
                        <table width="100%" border="0" cellspacing="0" cellpadding="3">
                          <tr> 
                            <td width="30%"> 
                              <div align="right" class="fixfont_ver_s2"><font color="#0066CC"><b class="thaism">ไฟล์ข้อมูลหลัก (rtr6449)
                                :&nbsp;</b></font></div>
                            </td>
                            <td width="70%"> 
							<input type="file" name="src11">
							</td>
                          </tr>
                          <tr>
                            <td width="30%"> 
                              <div align="right" class="fixfont_ver_s2"><font color="#0066CC"><b class="thaism">ไฟล์ Statement (rtr6436)
                                :&nbsp;</b></font></div>
                            </td>
                            <td width="70%"> 
							<input type="file" name="src22">
                            </td>
                          </tr>
                          <tr>
                            <td width="30%"> 
                              <div align="right" class="fixfont_ver_s2"><font color="#0066CC"><b class="thaism">ไฟล์เลขที่เอกสาร (rtg6469)
                                :&nbsp;</b></font></div>
                            </td>
                            <td width="70%"> 
							<input type="file" name="src33">
                            </td>
                          </tr>
                          <tr>
                            <td width="30%"> 
                              <div align="right" class="fixfont_ver_s2"><font color="#0066CC"><b class="thaism">AR POST DATE
                                :&nbsp;</b></font></div>
                            </td>
                            <td width="70%"> 
<%
									Date date;
									date=new Date();
									int conDay,conMonth,conYear;
									conDay=0;conMonth=0;conYear=0;

									conYear=date.getYear()+2443;
									conDay=date.getDate();
									conMonth=date.getMonth()+1; //getMonth method returns an integer between 0 and 11. also must to add by 1
									
									if(conMonth==1) {
										conMonth=12;
										conYear--;
									}else{
										conMonth--;
									}

									if ((conMonth==1) || (conMonth==3) || (conMonth==5) || (conMonth==7) || (conMonth==8) || (conMonth==10) || (conMonth==12) ) conDay=31;
									if ((conMonth==4) || (conMonth==6) || (conMonth==9) || (conMonth==11)) conDay=30;
									if (conMonth==2) {
										if(((conYear-543)%4)==0){
											conDay=29;
										}else{
											conDay=28;
										}
									}
%>
							<select name="postday">
								<%for(int x=1;x<=31;x++){%>
										<option value="<%=x%>" <%if(x==conDay){%>selected<%}%>><%=x%></option>
								<%}%>
							</select>/
							<select name="postmonth">
								<%for(int x=1;x<=12;x++){%>
										<option value="<%=x%>" <%if(x==conMonth){%>selected<%}%>><%=x%></option>
								<%}%>
							</select>/
							<select name="postyear">
								<%for(int x=2540;x<=2560;x++){%>
										<option value="<%=x%>" <%if(x==conYear){%>selected<%}%>><%=x%></option>
								<%}%>
							</select>
                            </td>
                          </tr>
						  <tr> 
                            <td colspan="2" align="right"> 
							  <input type="button" name="Submit34" value="ตรวจสอบ" class="button" onClick="checkData(1);">
							  <input type="button" name="Submit33" value=" นำเข้า " class="button" onClick="checkData(2);">
							  <input type="button" name="Submit35" value=" ยกเลิกนำเข้า " class="button" onClick="checkData(3);">
                              <input type="reset" name="Submit22" value=" Cancel" class="button">
                            </td>
                          </tr>
						  </form>
						  <form method="POST" name="frm1" TARGET="newwin"><input type="hidden" name="src1" value=""><input type="hidden" name="src2" value=""><input type="hidden" name="src3" value=""><input type="hidden" name="postday" value=""><input type="hidden" name="postmonth" value=""><input type="hidden" name="postyear" value=""></form>
                        </table>
                      </td>
                      <td width="30" background="Pictures/l3.gif">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="19"><img src="Pictures/c3.gif" width="28" height="27"></td>
                      <td width="401" background="Pictures/l4.gif">&nbsp;</td>
                      <td width="30"><img src="Pictures/c4.gif" width="29" height="27"></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
    <!-- End Detail -->
  </tr>
  <tr> 
    <td height="17">
	      <%@ include file="footer.inc" %></td>
  </tr>
</table>
  </body>
</html>
<%@ include file="cwd.inc" %>