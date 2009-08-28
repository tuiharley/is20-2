<%@page contentType="text/html;charset=WINDOWS-874" %> 
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
<%@ include file="module.inc" %>
<%
DecimalFormat df= new DecimalFormat("###,##0.00");
String sql;
Date date=new Date();
int month=date.getMonth();
int year=date.getYear()+2443;
if (month==0) {
	month=12;
	year--;
}

%>
<HTML>
<HEAD>
<TITLE>บันทึกรายจ่ายอื่น ๆ</TITLE> <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset="> 
<LINK REL="stylesheet" HREF="style.css" TYPE="text/css"> <LINK REL="stylesheet" HREF="css/fixfont.css" TYPE="text/css">
</HEAD>

<BODY BGCOLOR="#FFFFFF" TEXT="#000000" LEFTMARGIN="0" TOPMARGIN="0" MARGINWIDTH="0" MARGINHEIGHT="0">
  <CENTER class="head_text">บันทึกรายได้-รายจ่ายอื่น ๆ</CENTER>
  <table border="0" cellspacing="1" cellpadding="0" width="100%">
	   <tr bgcolor="#0099CC"> 
                <td class="thaism" width="100" height="20"> 
                  <div align="center"><font color="#000000"><b>รอบบัญชี</b></font></div>
                </td>
                <td class="thaism" width="200" height="20"> 
                  <div align="center"><font color="#000000"><b>สาขา</b></font></div>
                </td>
				<td class="thaism" width="200" height="20"> 
                  <div align="center"><font color="#000000"><b>รายได้/ค่าใช้จ่าย</b></font></div>
                </td>
                <td class="thaism" width="100" height="20"> 
                  <div align="center"><font color="#000000"><b>จำนวนเงิน</b></font></div>
                </td>
                <td class="thaism" width="100" height="20"> 
                  <div align="center"><font color="#000000"><b>ภาษีมูลค่าเพิ่ม</b></font></div>
                </td>
                <td class="thaism" width="100" height="20"> 
                  <div align="center"><font color="#000000"><b>ภาษีหัก ณ ที่จ่าย</b></font></div>
                </td>
              </tr>
              <%
			  sql="select distinct TO_CHAR(date_time,'dd mon yyyy') as date_time,code_name_7_11,name_7_11,REVCOST_DESC,NVL(AMount,0) as amount,nvl(vat_amt,0) as vat_amt,nvl(tax_amt,0) as tax_amt from cal_revenueCost a,revenuecost b,Brand_Branch c where a.brand_branch_id=c.brand_branch_id and b.revcost_id=a.revcost_id and (a.revcost_id like '8888%' or a.revcost_id like '0430%' or a.revCost_id like '0556%') and date_time>=to_date('" + month + "/1/" + (year-543) +"','mm/dd/yyyy') order by date_time desc,code_name_7_11,revCost_desc asc";
					rs=sqlExec.executeQuery(sql);
					if(rs!=null){
						while (rs.next()) { %>
              <tr bgcolor="#FFFFFF"> 
                <td class="thaism" width="100" height="20"><font color="#0066CC"><%=rs.getString("DATE_TIME")%></font></td>
                <td class="thaism" width="200" height="20"><font color="#0066CC"><%=rs.getString("code_name_7_11")%> : <%=rs.getString("NAME_7_11")%></font></td>
                <td class="thaism" width="200" height="20"><font color="#0066CC"><%=rs.getString("revcost_desc")%></font></td>
                <td class="thaism" width="100" height="20" align="right"><font color="#0066CC"><%=rs.getDouble("amount")%></font></td>
                <td class="thaism" width="100" height="20" align="right"><font color="#0066CC"><%=rs.getDouble("vat_amt")%></font></td>
                <td class="thaism" width="100" height="20" align="right"><font color="#0066CC"><%=rs.getDouble("tax_amt")%></font></td>
              </tr>						
              <%		}
					}%>
            </table>
    

<TABLE WIDTH="779" BORDER="0" CELLSPACING="0" CELLPADDING="0">
	<TR>
		<TD ALIGN="CENTER">
			<TABLE WIDTH="100%" BORDER="0" CELLSPACING="0" CELLPADDING="3" ALIGN="center"> 
				<TR> 
					<TD HEIGHT="12">&nbsp; </TD>
				</TR>
				<TR>
					<TD>
						<form method="POST" name="frm1" action="screen3up.jsp">
						<TABLE WIDTH="100%" BORDER="0" CELLSPACING="0" CELLPADDING="0" ALIGN="center" BGCOLOR="#FFFFFF">
							<TR>
								<TD CLASS="thaism" HEIGHT="7" WIDTH="18">&nbsp;</TD>
								<TD CLASS="thaism" HEIGHT="7" WIDTH="74">&nbsp;</TD>
								<TD CLASS="thaism" HEIGHT="7" WIDTH="10">&nbsp;</TD>
								<TD CLASS="thaism" HEIGHT="7" WIDTH="189">&nbsp;</TD>
							</TR> 
							<TR>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="18">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="74">สาขา</TD>
								<TD CLASS="thaism" HEIGHT="25" WIDTH="10">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="189" ALIGN="LEFT">
									<SELECT NAME="bbID">
										<option>กรุณาเลือกสาขา</option>
									<%
									sql="select distinct brand_branch_id,code_name_7_11,name_7_11 from Brand_Branch where brand_id=141 and CLOSE_DATE is null order by code_name_7_11";
									rs=sqlExec.executeQuery(sql);
									if(rs!=null){
										while(rs.next()){%>
										<option value="<%=rs.getInt("brand_branch_id")%>"><%=rs.getString("code_name_7_11")%>: <%=rs.getString("name_7_11")%></option>
										<%
										}
									}%>
									</SELECT>
								</TD>
							</TR>
							<TR>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="18">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="74">รอบบัญชี</TD>
								<TD CLASS="thaism" HEIGHT="25" WIDTH="10" ALIGN="CENTER">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="400" ALIGN="LEFT">
									<SELECT NAME="dayA">
									<%for(int d=1; d<=31; d++){%>
										<option value="<%=d%>"<%if(d==1){%> selected <%}%>><%=d%></option>
									<%}%>
									</SELECT>/
									<SELECT NAME="monthA">
									  <%	for(int m=1;m<=12;m++) {%>
										<option value="<%=m%>"<%if(m==month){%> selected <%}%>><%=jTHMonth(m)%></option>
									<%}%>
									</SELECT>/
									<SELECT NAME="yearA">
									<%for(int y=2530; y<=2560; y++){%>
										<option value="<%=y%>"<%if(y==year){%> selected <%}%>><%=y%></option>
									<%}%>
									</SELECT>
								</TD>
							</TR>
							<TR>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="18">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="74">รายจ่าย</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="10">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="189" ALIGN="LEFT">
									<SELECT NAME="costID">
										<option>กรุณาเลือกรายได้-รายจ่าย</option>
									<%
									sql="select distinct revcost_id,revcost_desc from RevenueCost where (revCost_ID like '0430%' or revCost_id like '0556%' or revCost_ID like '8888%') order by revCost_desc";
									rs=sqlExec.executeQuery(sql);
									if(rs!=null){
										while(rs.next()){%>
										<option value="<%=rs.getString("revcost_id")%>"><%=rs.getString("revcost_desc")%></option>
										<%
										}
									}%>
									</SELECT>
								</TD>
							</TR>
							<TR>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="18">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="74">จำนวนเงิน (ก่อน VAT)</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="10">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="189">
									<INPUT TYPE="text" NAME="amount" SIZE="15"> บาท
								</TD>
							</TR>
							<TR>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="18">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="74">จำนวน VAT</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="10">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="189">
									<INPUT TYPE="text" NAME="Vamount" SIZE="15"> บาท
								</TD>
							</TR>
							<TR>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="18">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="74">จำนวนภาษีหัก ณ ที่จ่าย</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="10">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="25" WIDTH="189">
									<INPUT TYPE="text" NAME="Tamount" SIZE="15"> บาท
								</TD>
							</TR>
							<TR>
								<TD CLASS="thaism-1" HEIGHT="20" WIDTH="18">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="20" WIDTH="74">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="20" WIDTH="10">&nbsp;</TD>
								<TD CLASS="thaism-1" HEIGHT="20" WIDTH="189">&nbsp;</TD>
							</TR>
							<script language="VBScript">
								Set conn = CreateObject("ADODB.Connection")
								conn.Open "Provider=MSDAORA;Password=" & PASSWORD & ";User ID=" & USERNAME & ";Data Source=" & tns
								Set rs = CreateObject("ADODB.Recordset")

								sub calc()
									sql="select distinct vat_rate,tax_rate from RevenueCost where revCost_id='" & document.frm1.costID.value & "' "
									if rs.State<>0 then rs.close
									rs.open sql,conn			
									if not (rs.eof or rs.bof) then
										document.frm1.Vamount.value=document.frm1.amount.value*1*Cint(rs("VAT_RATE")) /100
										document.frm1.Tamount.value=document.frm1.amount.value*1*Cint(rs("TAX_RATE")) /100
									end if
									rs.close						
								end sub
							</script>
							<TR>
								<TD CLASS="thaism-1" HEIGHT="20" COLSPAN="4" ALIGN="CENTER">
									<INPUT TYPE="button" NAME="x" VALUE=" CALCULATE " onClick="calc();">
									<INPUT TYPE="submit" NAME="Submit" VALUE="    OK    "> 
									<INPUT TYPE="reset" NAME="Submit2" VALUE=" Cancel ">
								</TD>
							</TR>
							<TR>
								<TD CLASS="thaism-1" HEIGHT="20" COLSPAN="4" ALIGN="CENTER">&nbsp;</TD>
							</TR> 
						</TABLE>
						</form>
					</TD>
				</TR>
			</TABLE>
		</TD>
	</TR>
</TABLE> 
</BODY>
</HTML>
<%@ include file="cwd.inc" %>