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
<%
	ResultSet dbq=null;
	Date date;
	String manager,s;	
	int month,year;
	manager="";  s="";
	date = new Date(); 
	month=date.getMonth();
	year=date.getYear()+2443;
	
	//Roll Time back 1 Month
	if(month==0) {
		month=12;
		year=year-1;
	}

	if((request.getParameter("manager")!=null)  && (request.getParameter("manager").trim().compareTo("") !=0))	
		manager=request.getParameter("manager");
%>
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
<script language=javascript>
function fresh(value){
	window.location="REP0200Q.jsp?manager="+value ;
}
function branch(value,supp){	
	if ((supp == 0) && (value != 0)){
		alert("ท่านสามารถเลือกร้านค้าทั้งหมดได้เท่านั้น");
		window.location="REP0200Q.jsp?manager="+supp ;
	}	
}
</script>
<body bgcolor="#FFFFFF" onLoad="goforit()">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
  <tr> 
    <td height="71">
	      <%@ include file="header.inc" %></td>
  </tr>
  <tr> 
    <!-- Detail -->
    <td valign="top"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
		<form method="POST" action="REP0200.jsp" TARGET="newwin" onSubmit="newWin();">
          <td> 		 
            <table width="500" border="0" cellspacing="0" cellpadding="0" align="center" height="167">
              <tr> 
                  <td class="head_text" height="24" align="center"> 
                    แบบเลือก Statement การเงิน
                </td>
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
                      <td width="451" bgcolor="99CCFF"> 
                          <table width="100%" border="0" cellspacing="0" cellpadding="3">
                            <tr> 
                              <td width="30%" align="right"><font color="#0066CC"><b class="thaism">ผู้บริหารร้านค้า 
                                :</b></font></td>
                              <td width="70%"><font color="#0066CC"> 
                                <select name="sel_supplier" class="thaism" onChange="fresh(this.value);">
                                  <option value="0" <%if(manager=="0"){%>selected<%}%>><font color="#0066CC">ทั้งหมด</font></option>
                                 <%
						String sql_supplier, supplierName,supplierId;
						supplierId=""; supplierName="";
						sql_supplier="SELECT  Supplier_ID,Supplier_Name FROM  Supplier where supplier_id in (SELECT DISTINCT DL_V_ID FROM BRAND_BRANCH where brand_ID=141 and OPERATE_TYPE=2 ) order by supplier_name "; 
						dbq=sqlExec.executeQuery(sql_supplier);
						if (dbq!=null) {
							while (dbq.next()) {
								supplierId=dbq.getString("Supplier_ID");
								supplierName=dbq.getString("Supplier_Name");							  
//									if(x!=null) supplierName=new String(x,0,0,x.length);												%>
                                  <option value="<%=supplierId%>" <%if((supplierId.compareTo(manager))==0) {%>selected <%}%> ><font color="#0066CC"><%=supplierName%></font></option>
                                  <%	}
						} //if (dbq.rs!=null) 				%>
                                </select>
                                </font> </td>
                            </tr>
                            <tr> 
                              <td width="30%"> 
                                <div align="right" class="fixfont_ver_s2"><font color="#0066CC"><b class="thaism">ร้านค้า 
                                  :&nbsp;</b></font></div>
                              </td>
                              <td width="70%"><font color="#0066CC"> 
                                <select name="sel_branch" class="thaism" onChange="branch(this.value,sel_supplier.value);">
                                  <option value="0" ><font color="#0066CC">ทั้งหมด</font></option>
                                  <%	
						String whereClause, brandName,branchID;
						int brand_branch_id;												
						whereClause="SELECT  BRAND_BRANCH.BRAND_BRANCH_ID,BRAND_BRANCH.BRANCH_ID, BRAND_BRANCH.NAME_7_11 FROM      BRAND_BRANCH WHERE     (BRAND_BRANCH.BRAND_ID = 141)  and (BRAND_BRANCH.OPERATE_TYPE='2') ";		
						if (manager != "")  { 									
							if (manager.equals("0")) {		
								whereClause =  whereClause;
							}else{
								whereClause =  whereClause + " AND (BRAND_BRANCH.DL_V_ID = '"+ manager +"')";
							}
						}
						dbq=sqlExec.executeQuery(whereClause);
						if (dbq!=null) {
							while (dbq.next()) {
								branchID="";brandName="";
								branchID=dbq.getString("BRANCH_ID");
								brand_branch_id=dbq.getInt("BRAND_BRANCH_ID");
								brandName=dbq.getString("NAME_7_11");
					%>
                                  <option value="<%=brand_branch_id%>"><%=brand_branch_id%> : <%=brandName%></option>
                                  <%	}
						} //if (dbq!=null) 
%>
                                </select>
                                </font> </td>
                            </tr>
                            <tr> 
                              <td width="30%"> 
                                <div align="right" class="fixfont_ver_s2"><font color="#0066CC"><b class="thaism"> 
                                  เดือน / ปี :&nbsp;</b></font></div>
                              </td>
                              <td width="70%"> 
                                <select name="sel_month" class="thaism">
                                  <%
									for(int m=1;m<=12;m++) {
								%>
                                  <option value="<%=m%>"<%if(m==month){%> selected <%}%>><%=jTHMonth(m)%></option>
                                  <%}%>
                                </select>
                                <font class="thaism" color="#0066CC"><b>/</b></font> 
                                <select name="sel_year" class="thaism">
                                  <%	
					for(int y=2545; y<=2560; y++){
				%>
                                  <option value="<%=y%>"<%if(y==year){%> selected <%}%>><%=y%></option>
                                  <%}%>
                                </select>
                              </td>
                            </tr>
                            <tr> 
                              <td width="30%">&nbsp; </td>
                              <td width="70%"> 
                                <input type="submit" name="ok_btn" value="   OK   " class="button">
                                <input type="reset" name="cancel_btn" value=" Cancel" class="button">
                              </td>
                            </tr>
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
		  </form>
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