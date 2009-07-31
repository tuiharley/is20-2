
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
<script language="javascript" src="../script/js.js"></script>
<% Session("CURRENT_HEADER_MENU") = "INFORMATION"
			Dim UTILIZATION
			UTILIZATION=Request.Item ("UTILIZATION")
			if UTILIZATION="" then UTILIZATION=1
			%>
</head>

<body>
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
            <td width="219" valign="top"><!--#include file="../Includes/m_info3.aspx" --></td>
            <td valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td>&nbsp;</td>
              </tr>
              
              <tr>
                <td><img src="../images/title_info3.jpg" width="539" height="38"></td>
              </tr>
              <tr>
                <td>&nbsp;<% select case UTILIZATION
			   case 1: %></td>
              </tr>
              <tr>
                <td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Natural Gas Combustion </u></strong></td>
              </tr>
              
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td class="T_gray13">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;<% case 2: %></td>
              </tr>
              <tr>
                <td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Burner / Boiler </u></strong></td>
              </tr>
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
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;<% case 3: %></td>
              </tr>
              <tr>
                <td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Co-generation</u></strong></td>
              </tr>
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
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;
                    <% case 4: %></td>
              </tr>
              <tr>
                <td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Absorption</u></strong></td>
              </tr>
              
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
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;
                    <% case 5: %></td>
              </tr>
              <tr>
                <td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>ก๊าซธรรมชาติสำหรับรถยนต์</u></strong></td>
              </tr>
              
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
                <td>&nbsp;</td>
              </tr>
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
                <td>&nbsp;<%end select %></td>
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
