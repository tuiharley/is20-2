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
<%
String costID="";
double amount,vrate,trate;
int bbID,dayA,monthA,yearA;

if (request.getParameter("amount").trim().equals("")) amount=0;
else	amount=Double.parseDouble(request.getParameter("amount"));

if (request.getParameter("bbID").trim().equals("")) bbID=0;
else	bbID=Integer.parseInt(request.getParameter("bbID"));

if (request.getParameter("dayA").trim().equals("")) dayA=0;
else	dayA=Integer.parseInt(request.getParameter("dayA"));

if (request.getParameter("monthA").trim().equals("")) monthA=0;
else	monthA=Integer.parseInt(request.getParameter("monthA"));

if (request.getParameter("yearA").trim().equals("")) yearA=0;
else	yearA=Integer.parseInt(request.getParameter("yearA"))-543;

if (request.getParameter("costID").trim().equals("")) costID="";
else	costID=request.getParameter("costID").trim();
if (!(costID.equals(""))){
	String sql="select * from RevenueCost where revcost_ID='" + costID + "'";

	rs=sqlExec.executeQuery(sql);
	trate=0;vrate=0;
	if(rs!=null){
		if(rs.next()){
			vrate=rs.getDouble("VAT_RATE")/100;
			trate=rs.getDouble("TAX_RATE")/100;
		}
	}
	sql="select * from cal_RevenueCost where revcost_ID='" + costID + "' and brand_branch_ID="+bbID;
	sql=sql+" and date_time=TO_DATE('"+monthA+"/"+dayA+"/"+yearA+"','mm/dd/yyyy')";
	rs=sqlExec.executeQuery(sql);
	if(rs!=null)
		if(rs.next()){
			sql="UPDATE cal_RevenueCost SET ";
			sql=sql+"amount="+amount+",";
			sql=sql+"VAT_AMT="+amount*vrate+",";
			sql=sql+"TAX_AMT="+amount*trate;
			sql=sql+" where revcost_ID='" + costID + "' and brand_branch_ID="+bbID;
			sql=sql+" and date_time=TO_DATE('"+monthA+"/"+dayA+"/"+yearA+"','mm/dd/yyyy')";
			int retVal=sqlExec.executeUpdate(sql);
		}
		else{
			sql="INSERT INTO cal_RevenueCost(BRAND_BRANCH_ID,DATE_TIME,REVCOST_ID,AMOUNT,VAT_AMT,TAX_AMT) VALUES(";
			sql=sql+bbID+",TO_DATE('"+monthA+"/"+dayA+"/"+yearA+"','mm/dd/yyyy'),'"+costID+"',"+amount+","+amount*vrate +",";
			if (amount<1000) {
				sql=sql+"0";
			}else{
				sql=sql+amount*trate ;
			}
			sql=sql+")";
			int retVal=sqlExec.executeUpdate(sql);
		}
	}
pageContext.forward("screen3.jsp");   
%>
<%@ include file="cwd.inc" %>
