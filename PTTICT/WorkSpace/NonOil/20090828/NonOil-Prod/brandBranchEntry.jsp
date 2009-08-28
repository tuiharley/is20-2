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
<%@ include file="module.inc" %>
<% 
ResultSet brandBranch=null;
ResultSet dbq=null;
ResultSet dbq2=null;

Date date;
date=new Date();

int brandID, dBrandID, cBrandID, brandBranchID, oDay, oMonth, oYear, cDay, cMonth, cYear, sDay, sMonth, sYear, cODay, cOMonth, cOYear, cCDay, cCMonth, cCYear, mType, bOwner , sbOwner, elMeterOwn, waMeterOwn,xbbID;
String whereClause, brandName, branchID, custID, dCustID, custName, responseBy, engineeringStatus, custInvestType, pttInvestType,elMeterNo, teMeterNo, waMeterNo, openDate, openDay, openMonth, openYear, closeDate, closeDay, closeMonth, closeYear, statusDate, statusDay, statusMonth, statusYear, cpODate, cpODay, cpOMonth, cpOYear, cpCDate, cpCDay, cpCMonth, cpCYear, cBrandName, branchName, sql, sCustIDm,  cName711,Name711,  mName, mPhone, mFax, fcAreaname , ConName, OperType, Operator,SupID,sSupID,DLCID,DLVID,DLSID,CPCID,CPVID,CPSID,DLR,term;
double areaUsage, targetProfit, pttInvestAmount, consCost,SPPAY;
String temp="";
whereClause=""; sql="";
brandID=0; dBrandID=0; cBrandID=0; branchID=""; cBrandName=""; branchName="";
brandBranchID=0; 
brandName="";
custID=""; dCustID="";sCustIDm="";
custName="";
areaUsage=0;
responseBy="";
consCost=0;
SPPAY=0;
targetProfit=0;
engineeringStatus="";
custInvestType="";
pttInvestType="";
pttInvestAmount=0;
elMeterNo="";
teMeterNo="";
waMeterNo="";
CPCID="";CPVID="";CPSID="";
DLCID="";DLVID="";DLSID="";DLR="";
term="";

oDay=0;oMonth=0;oYear=0;
cDay=oDay;cMonth=oMonth;cYear=oYear;
sDay=oDay;sMonth=oMonth;sYear=oYear;
cODay=oDay;cOMonth=oMonth;cOYear=oYear;
cCDay=oDay;cCMonth=oMonth;cCYear=oYear;

openDate=""; openDay=""; openMonth=""; openYear="";
closeDate=""; closeDay=""; closeMonth=""; closeYear=""; 

statusDate=""; statusDay=""; statusMonth=""; statusYear="";
cpODate=""; cpODay=""; cpOMonth=""; cpOYear="";
cpCDate=""; cpCDay=""; cpCMonth=""; cpCYear="";

SupID="";
mType=0; bOwner=0; 
elMeterOwn=0; waMeterOwn=0; cName711=""; Name711=""; OperType=""; 
Operator=""; mName=""; mPhone=""; mFax=""; fcAreaname=""; 
whereClause="";

if (request.getParameter("brandID") != null)
{
	cBrandID=Integer.parseInt(request.getParameter("brandID"));
	whereClause=whereClause+" And (BRAND_BRANCH.BRAND_ID=" + cBrandID+ ")";	
	sql= " select brand_name from Brand where (BRAND_ID ="+ cBrandID + ")";
	dbq=sqlExec.executeQuery(sql);
	if (dbq!=null) {
		if(dbq.next())  {	
			cBrandName=dbq.getString("BRAND_NAME"); 
		}
	}
}
if(request.getParameter("branchID") != null)
{
	branchID=request.getParameter("branchID"); 
	whereClause=whereClause+" And (BRAND_BRANCH.BRANCH_ID='" + branchID+ "')";
	sql= " select branch_name from branch where (BRANCH_ID ='"+ branchID+"')";
	dbq=sqlExec.executeQuery(sql);
	if (dbq!=null) {
		if(dbq.next())  {	
			branchName=dbq.getString("BRANCH_NAME"); 
		}
	}
}
xbbID=0;
String mainClause="";
mainClause="SELECT distinct BRAND_BRANCH.BRAND_BRANCH_ID,"; 
mainClause=mainClause+"BRAND_BRANCH.BRANCH_ID, BRAND_BRANCH.CUSTOMER_ID, ";
mainClause=mainClause+"TO_CHAR(BRAND_BRANCH.OPEN_DATE,'yyyy-mm-dd') as OPEN_DATE, TO_CHAR(BRAND_BRANCH.CLOSE_DATE,'yyyy-mm-dd') as CLOSE_DATE, BRAND_BRANCH.TARGET_PROFIT, ";
mainClause=mainClause+"BRAND_BRANCH.CUST_INVEST_TYPE, BRAND_BRANCH.PTT_INVEST_TYPE, ";
mainClause=mainClause+"BRAND_BRANCH.PTT_INVEST_AMOUNT, BRAND_BRANCH.CONS_COST, ";
mainClause=mainClause+"BRAND_BRANCH.PTT_RESPONSED_BY, BRAND_BRANCH.AREA_USAGE, ";
mainClause=mainClause+"BRAND_BRANCH.ENGINEERING_STATUS, BRAND_BRANCH.EL_METER_NO, ";
mainClause=mainClause+"BRAND_BRANCH.WA_METER_NO, BRAND_BRANCH.TE_METER_NO, ";
mainClause=mainClause+"TO_CHAR(NVL(BRAND_BRANCH.STATUS_DATE,BRAND_BRANCH.OPEN_DATE),'yyyy-mm-dd') as STATUS_DATE, TO_CHAR(NVL(BRAND_BRANCH.CP_OPENDATE,BRAND_BRANCH.OPEN_DATE),'yyyy-mm-dd') as CP_OPENDATE, TO_CHAR(NVL(BRAND_BRANCH.CP_CLOSEDATE,BRAND_BRANCH.CLOSE_DATE),'yyyy-mm-dd') as CP_CLOSEDATE, BRAND_BRANCH.CODE_NAME_7_11,BRAND_BRANCH.NAME_7_11, BRAND_BRANCH.OPERATE_TYPE, BRAND_BRANCH.OPERATOR, BRAND_BRANCH.MANAGE_TYPE, BRAND_BRANCH.BUILDING_OWNER, BRAND_BRANCH.SUPPLIER_ID, BRAND_BRANCH.MANAGER_NAME, "; 
mainClause=mainClause+"BRAND_BRANCH.MANAGER_PHONE, BRAND_BRANCH.MANAGER_FAX, BRAND_BRANCH.FC_AREA_NAME, BRAND_BRANCH.FC_TYPE,BRAND_BRANCH.EL_METER_OWNER, BRAND_BRANCH.WA_METER_OWNER, BRAND_BRANCH.LAST_USER, BRAND_BRANCH.LAST_UPDATE, BRAND.BRAND_ID, ";
mainClause=mainClause+"BRAND.BRAND_NAME,BRANCH.BRANCH_NAME,BRANCH.BRANCH_OWNER,"; 
mainClause=mainClause+"BRAND_BRANCH.CP_C_ID,BRAND_BRANCH.CP_V_ID,BRAND_BRANCH.CP_SHIP_ID,";
mainClause=mainClause+"BRAND_BRANCH.DL_V_ID,BRAND_BRANCH.DL_C_ID,BRAND_BRANCH.DL_SHIP_ID,BRAND_BRANCH.TERM,BRAND_BRANCH.DEALER_RESPONSED,BRAND_BRANCH.SPECIAL_PAYMENT "; 
mainClause=mainClause+"FROM BRAND_BRANCH,BRAND,BRANCH where BRAND_BRANCH.BRAND_ID = BRAND.BRAND_ID";
mainClause=mainClause+" and BRAND_BRANCH.BRANCH_ID = BRANCH.BRANCH_ID ";

//CSTORE
//if (uGroup.compareTo("1")==0) mainClause=mainClause+" and SALES_GR='581' ";
//NONOIL
//if (uGroup.compareTo("2")==0) mainClause=mainClause+" and SALES_GR='582' ";


if (request.getParameter("brandBranchID") != null)
{	
	brandBranchID=Integer.parseInt(request.getParameter("brandBranchID"));
	if (brandBranchID>0)whereClause=whereClause+" And (BRAND_BRANCH_ID=" + brandBranchID+ ")";
}

	brandBranch=sqlExec.executeQuery(mainClause+whereClause);
	if (brandBranch!=null)
    {
		if(brandBranch.next()) 
		{	
			dCustID="";
			dCustID=brandBranch.getString("CUSTOMER_ID");

			xbbID=brandBranch.getInt("BRAND_BRANCH_ID");
			brandBranchID=xbbID;

			sCustIDm=dCustID;
			openDate=brandBranch.getString("OPEN_DATE");
//			if (openDate != null) openDate=openDate.substring(0,openDate.indexOf(' ')).trim();				
			closeDate=brandBranch.getString("CLOSE_DATE");	
//			if (closeDate != null) closeDate=closeDate.substring(0,closeDate.indexOf(' ')).trim();			

			statusDate=brandBranch.getString("STATUS_DATE");
			cpODate=brandBranch.getString("CP_OPENDATE");
			cpCDate=brandBranch.getString("CP_CLOSEDATE");

			targetProfit=brandBranch.getDouble("TARGET_PROFIT");
			custInvestType="";
			custInvestType=brandBranch.getString("CUST_INVEST_TYPE");
			pttInvestType="";
			pttInvestType=brandBranch.getString("PTT_INVEST_TYPE");
			pttInvestAmount=brandBranch.getDouble("PTT_INVEST_AMOUNT");
			consCost=brandBranch.getDouble("CONS_COST");
			SPPAY=brandBranch.getDouble("SPECIAL_PAYMENT");
			responseBy="";
			responseBy=brandBranch.getString("PTT_RESPONSED_BY");
			areaUsage=brandBranch.getDouble("AREA_USAGE");
			engineeringStatus="";
			engineeringStatus=brandBranch.getString("ENGINEERING_STATUS");
			elMeterNo="";
			elMeterNo=brandBranch.getString("EL_METER_NO");			
			waMeterNo="";
			waMeterNo=brandBranch.getString("WA_METER_NO");
			teMeterNo="";
			teMeterNo=brandBranch.getString("TE_METER_NO"); 
			dBrandID=brandBranch.getInt("BRAND_ID");
			cBrandName=brandBranch.getString("BRAND_NAME"); 
			branchName=brandBranch.getString("BRANCH_NAME"); 
					//----------------------------- new add  ---------------------------------------					
			elMeterOwn=brandBranch.getInt("EL_METER_OWNER");	
			waMeterOwn=brandBranch.getInt("Wa_Meter_Owner");	
			cName711="";
			cName711=brandBranch.getString("Code_Name_7_11");	
			Name711="";
			Name711=brandBranch.getString("Name_7_11");	
			OperType="";
			OperType=brandBranch.getString("Operate_Type");			
			Operator=brandBranch.getString("Operator");				
			mName="";
			mName=brandBranch.getString("Manager_Name");	
			mPhone="";
			mPhone=brandBranch.getString("Manager_Phone");	
			mFax="";
			mFax=brandBranch.getString("Manager_Fax");	
			fcAreaname="";
			fcAreaname=brandBranch.getString("FC_Area_Name");	
			mType=brandBranch.getInt("Manage_Type");
			bOwner=brandBranch.getInt("Building_Owner");
			SupID="";
			SupID=brandBranch.getString("Supplier_ID");

			DLVID="";
			DLCID="";
			DLSID="";
			DLR="";

			CPVID="";
			CPCID="";
			CPSID="";		

			DLVID=brandBranch.getString("DL_V_ID");
			DLCID=brandBranch.getString("DL_C_ID");
			DLSID=brandBranch.getString("DL_SHIP_ID");
			DLR=brandBranch.getString("DEALER_RESPONSED");
			
			CPVID=brandBranch.getString("CP_V_ID");
			CPCID=brandBranch.getString("CP_C_ID");
			CPSID=brandBranch.getString("CP_SHIP_ID");

			term="";
			term=brandBranch.getString("TERM");
		}	
		else {
			dCustID=null;
			openDate=null;	
			closeDate=null;

			statusDate=null;
			cpODate=null;
			cpCDate=null;

			targetProfit=0;
			custInvestType=null;
			pttInvestType=null;
			pttInvestAmount=0;
			consCost=0;
			SPPAY=0;
			responseBy=null;
			areaUsage=0;
			engineeringStatus=null;
			elMeterNo=null;
			waMeterNo=null;
			teMeterNo=null; 
			dBrandID=0;
			elMeterOwn=0; 
			waMeterOwn=0; 
			cName711=null; 
			OperType=null; 
			Operator=null; 
			mName=null; 
			mPhone=null; 
			mFax=null; 
			fcAreaname=null;
			mType=0;
			bOwner=0;
			SupID=null; 

			DLVID=null;
			DLCID=null;
			DLSID=null;
			DLR=null;
			
			CPVID=null;
			CPCID=null;
			CPSID=null;		

			term=null;
		}
	}
	else {
		dCustID=null;
		openDate=null;	
		closeDate=null;

		statusDate=null;
		cpODate=null;
		cpCDate=null;
		
		targetProfit=0;
		custInvestType=null;
		pttInvestType=null;
		pttInvestAmount=0;
		consCost=0;
		SPPAY=0;
		responseBy=null;
		areaUsage=0;
		engineeringStatus=null;
		elMeterNo=null;
		waMeterNo=null;
		teMeterNo=null; 
		dBrandID=0;
		elMeterOwn=0; 
		waMeterOwn=0; 
		cName711=null; 
		OperType=null; 
		Operator=null; 
		mName=null; 
		mPhone=null; 
		mFax=null; 
		fcAreaname=null;
		mType=0;
		bOwner=0;
		SupID=null; 

		DLVID=null;
		DLCID=null;
		DLSID=null;
		DLR=null;
			
		CPVID=null;
		CPCID=null;
		CPSID=null;
		
		term=null;
	}
	if ((openDate != null) && (openDate.compareTo("")!=0) && (request.getParameter("brandBranchID") != null)) {
		openYear=openDate.substring(0,openDate.indexOf('-'));
		oYear=Integer.parseInt(openYear);
		openMonth=openDate.substring(openDate.indexOf('-'),openDate.lastIndexOf('-'));
		openMonth=openMonth.substring(1);
		oMonth=Integer.parseInt(openMonth);
		openDay=openDate.substring(openDate.lastIndexOf('-'),openDate.length());
		openDay=openDay.substring(1);
		oDay=Integer.parseInt(openDay);
		if (oYear < 2400)  oYear=oYear+543; }
	if ((closeDate != null) && (closeDate.compareTo("")!=0) && (request.getParameter("brandBranchID") != null)) {
		closeYear=closeDate.substring(0,closeDate.indexOf('-'));
		cYear=Integer.parseInt(closeYear);
		closeMonth=closeDate.substring(closeDate.indexOf('-'),closeDate.lastIndexOf('-'));
		closeMonth=closeMonth.substring(1);
		cMonth=Integer.parseInt(closeMonth);
		closeDay=closeDate.substring(closeDate.lastIndexOf('-'),closeDate.length());
		closeDay=closeDay.substring(1);
		cDay=Integer.parseInt(closeDay);
		if (cYear < 2400)  cYear=cYear+543; } 

	if ((statusDate != null) && (statusDate.compareTo("")!=0) && (request.getParameter("brandBranchID") != null)) {
		statusYear=statusDate.substring(0,statusDate.indexOf('-'));
		sYear=Integer.parseInt(statusYear);
		statusMonth=statusDate.substring(statusDate.indexOf('-'),statusDate.lastIndexOf('-'));
		statusMonth=statusMonth.substring(1);
		sMonth=Integer.parseInt(statusMonth);
		statusDay=statusDate.substring(statusDate.lastIndexOf('-'),statusDate.length());
		statusDay=statusDay.substring(1);
		sDay=Integer.parseInt(statusDay);
		if (sYear < 2400)  sYear=sYear+543; }
	if ((cpODate != null) && (cpODate.compareTo("")!=0) && (request.getParameter("brandBranchID") != null)) {
		cpOYear=cpODate.substring(0,cpODate.indexOf('-'));
		cOYear=Integer.parseInt(cpOYear);
		cpOMonth=cpODate.substring(cpODate.indexOf('-'),cpODate.lastIndexOf('-'));
		cpOMonth=cpOMonth.substring(1);
		cOMonth=Integer.parseInt(cpOMonth);
		cpODay=cpODate.substring(cpODate.lastIndexOf('-'),cpODate.length());
		cpODay=cpODay.substring(1);
		cODay=Integer.parseInt(cpODay);
		if (cOYear < 2400)  cOYear=cOYear+543; }
	if ((cpCDate != null) && (cpCDate.compareTo("")!=0) && (request.getParameter("brandBranchID") != null)) {
		cpCYear=cpCDate.substring(0,cpCDate.indexOf('-'));
		cCYear=Integer.parseInt(cpCYear);
		cpCMonth=cpCDate.substring(cpCDate.indexOf('-'),cpCDate.lastIndexOf('-'));
		cpCMonth=cpCMonth.substring(1);
		cCMonth=Integer.parseInt(cpCMonth);
		cpCDay=cpCDate.substring(cpCDate.lastIndexOf('-'),cpCDate.length());
		cpCDay=cpCDay.substring(1);
		cCDay=Integer.parseInt(cpCDay);
		if (cCYear < 2400)  cCYear=cCYear+543; }
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
<script language="JavaScript">
function checkNo() {
	if (isNaN(window.document.form1.openYear.value)) {
		alert("โปรดกรอกเฉพาะตัวเลข");
		window.document.form1.openYear.value="";
	}
	if (isNaN(window.document.form1.closeYear.value)) {
		alert("โปรดกรอกเฉพาะตัวเลข");
		window.document.form1.closeYear.value="";
	}
	if (isNaN(window.document.form1.areaUsage.value)) {
		alert("โปรดกรอกเฉพาะตัวเลข");
		window.document.form1.areaUsage.value="";
	}
	if (isNaN(window.document.form1.consCost.value)) {
		alert("โปรดกรอกเฉพาะตัวเลข");
		window.document.form1.consCost.value="";
	}
	if (isNaN(window.document.form1.SPPAY.value)) {
		alert("โปรดกรอกเฉพาะตัวเลข");
		window.document.form1.SPPAY.value="";
	}
	if (isNaN(window.document.form1.targetProfit.value)) {
		alert("โปรดกรอกเฉพาะตัวเลข");
		window.document.form1.targetProfit.value="";
	}
	if (isNaN(window.document.form1.pttInvestAmount.value)) {
		alert("โปรดกรอกเฉพาะตัวเลข");
		window.document.form1.pttInvestAmount.value="";
	}
}
function f_mType(value,opertype,B1,B2,B3){	
	if (((opertype == 1) && (value != 1)) || ((opertype == 2) && (value == 1))){
		alert("กรุณาเลือกประเภทการดำเนินการและประเภทการบริหารให้สอดคล้องกัน");
		window.location="BrandBranchEntry.jsp?brandBranchID="+B1+"&branchID="+B2+"&cBrandID="+B3;
}
}
</script>

<script language="JavaScript"> 
function historyback(){
	history.back();
  }
 </script>
<script language="VBScript">
if ("<%=responseBy%>"<>"<%=CheckingID%>") and ("<%=DLR%>"<>"<%=CheckingID%>") and ("admin"<>"<%=CheckingID%>") and ("cstore"<>"<%=CheckingID%>") and ("nonoil"<>"<%=CheckingID%>")  then historyback
</script>

<body bgcolor="#FFFFFF">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
  <tr> 
   
  </tr>
  <tr> 
    <!-- Detail -->
    <td valign="top"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> 
            <table width="100%" border="0" cellspacing="0" cellpadding="2" align="center">
              <tr> 
                <td colspan="4"> 
                  <div align="center" class="head_text">การบันทึกธุรกิจเสริมเข้าสู่สถานีบริการน้ำมัน</div>
                </td>
              </tr>
              <tr> 
                <%if(brandID!=0) {%>
                <td class="thaism" width="254"><b>ชื่อธุรกิจเสริม : </b></td>
                <td class="thaism" width="265"><%=cBrandName%></td>
                <%}
			else{%>
                <td colspan=2></td>
                <%}%>
                <td class="thaism" width="209"><b>ชื่อสถานีบริการ : </b></td>
                <td class="thaism" width="247"><%=branchName%></td>
              </tr><form name="form1" method="POST" action="brandBranchUpdate.jsp?branchID=<%=branchID%>&brandBranchID=<%=brandBranchID%>&brandID=<%=cBrandID%>">
              <input type="hidden" name="dirty" value="0">
              <tr> 
                <td width="254" class="thaism">&nbsp;</td>
                <td width="265" class="thaism">&nbsp;</td>
                <td width="209" class="thaism">&nbsp;</td>
                <td width="247" class="thaism">&nbsp;</td>
              </tr>
              <tr> 
                <td> </td>
              </tr>
            </taBLE>
            <table width="860">
              <tr> 
                <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>ธุรกิจเสริม :&nbsp;</b></font></div>
                </td>
                <td width="227" class="thaism"> 
                  <%if(brandBranchID==0){ %>
                  <select name="cBrandID"  onChange="document.form1.dirty.value=1;">
                    <%	whereClause="SELECT * FROM (SELECT distinct BRAND_ID, BRAND_NAME FROM BRAND ";
						
						if (uGroup.compareTo("1")==0) whereClause=whereClause + " where BRAND_GROUP='1' ";
						if (uGroup.compareTo("2")==0) whereClause=whereClause + " where BRAND_GROUP='2' ";

							whereClause=whereClause+ " order by BRAND_NAME) x";
						dbq2=sqlExec.executeQuery(whereClause);
						if (dbq2!=null) {
							while (dbq2.next()) {
								brandID=dbq2.getInt("BRAND_ID");
								brandName="";
								brandName=dbq2.getString("BRAND_NAME");
					%>
                    <option value="<%=brandID%>" <%if(brandID==dBrandID) {%>selected<%}%>><%=brandName%></option>
                    <%		}	
					}%>
                  </select>
                  <%}
					else{%>
                  <%=cBrandName%> 
                  <input type="hidden" name="cBrandID" value="<%=dBrandID%>">
                  <%}%>
                </td>
				<%if(brandBranchID==0){%>
				<td colspan=2>
				<table>
				<tr>
					<td width="120" class="thaism"> 
					<div align="right"><font color="#0066CC"><b>รหัสลูกค้า :&nbsp;</b></font></div>
					</td>
					<td width="300" class="thaism"> 
	  					<script language="JavaScript">
							function searchCID()
							{
								for(x=0;x<document.form1.maxPOS.value-1;x++) {
									if (document.form1.custID.options[x].value==document.form1.cc.value) document.form1.custID.selectedIndex=x;
								}
								document.form1.CPCID.value=document.form1.cc.value;
							}
					</script>
					  <input type="text" name="cc" maxlength="10" size="11" onBlur="searchCID();"> 
				</tr>
				<tr>
					<td width="120" class="thaism"> 
					<div align="right"><font color="#0066CC"><b>ชื่อลูกค้า :&nbsp;</b></font></div>
					</td>
					<td width="300" class="thaism"> 
			          <select name="custID"  onChange="document.form1.dirty.value=1;document.form1.cc.value=document.form1.custID.value;					document.form1.CPCID.value=document.form1.cc.value;">
				        <option value="PTT">ปตท. ดำเนินการ</option>
					    <%
						int maxPOS=1;
						whereClause="SELECT distinct CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMER ";
						//CSTORE
						//if (uGroup.compareTo("1")==0) whereClause=whereClause+" where SALES_GR='581' ";
						//NONOIL
						//if (uGroup.compareTo("2")==0) whereClause=whereClause+" where (SALES_GR='582' or SALES_GR='583')  ";

						dbq2=sqlExec.executeQuery(whereClause+"  order by Customer_NAME");
						if (dbq2!=null) {
							while (dbq2.next()) {
								custID="";
								custID=dbq2.getString("CUSTOMER_ID");						
								custName="";
								custName=dbq2.getString("CUSTOMER_NAME");
								maxPOS++;
						%>
			            <option value="<%=custID%>"<%if(custID==dCustID){%>selected <%}%>><%=custName%></option>
				        <% }	
						}%>
	                  </select>
						<input type="hidden" name="maxPOS" value="<%=maxPOS%>">
					</tr>
					</table>
					</td>
			        <%}
					else {%>
				<td width="120" class="thaism"> 
					<div align="right"><font color="#0066CC"><b>ชื่อลูกค้า :&nbsp;</b></font></div>
				</td>
				<td width="300" class="thaism"> 
                  <input type="hidden" name="custID" value="<%=dCustID%>">
                  <%	whereClause="SELECT distinct CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMER  where CUSTOMER_ID='"+ sCustIDm +"'" ;
						dbq2=sqlExec.executeQuery(whereClause);
						if (dbq2!=null) {
							if (dbq2.next()) {
								custName="";
								custName=dbq2.getString("CUSTOMER_NAME");%>
                  <%=custName%> 
                  <%}else{%>
                  ปตท. ดำเนินการเอง 
                  <%}}%>
                  <%}%>
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>วันที่เปิดดำเนินการ 
                    :&nbsp;</b></font></div>
                </td>
                <td class="thaism" width="227"> 
                  <select name="openDate"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%	for (int d=1; d <=31 ; d++) {	  %>
                    <option value="<%=d%>"<%if (oDay==d) {%> selected <%}%>><%=d%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="openMonth"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%	for (int m=1; m <=12 ; m++) {  %>
                    <option value="<%=m%>"<%if (oMonth==m) {%> selected <%}%>><%=jTHMonth(m)%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="openYear" onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%
					int tYear=0;
				   	for(tYear=1992;tYear<2023;tYear++){%>
                    <option value="<%=tYear%>" <%if(tYear+543==oYear){%>selected<%}%>><%=tYear+543%></option>
                    <%}%>
                  </select>
				  </td>
                  &nbsp; 
                <TD class="thaism" align="right" width="120"><font color="#0066CC"><b>วันที่ปิดดำเนินการ 
                  :</b></font></TD>
                &nbsp; 
                <tD class="thaism" width="284"> 
                  <select name="closeDate"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%  for (int cD=1; cD <=31 ; cD++) {	 %>
                    <option value="<%=cD%>"<%if (cDay==cD) {%> selected <%}%>><%=cD%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="closeMonth"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%	for (int cM=1; cM <=12 ; cM++) {	  %>
                    <option value="<%=cM%>"<%if (cMonth==cM) {%> selected <%}%>><%=jTHMonth(cM)%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="closeYear" onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%
				   	for(tYear=1992;tYear<2023;tYear++){%>
                    <option value="<%=tYear%>" <%			if(tYear+543==cYear){%>selected<%}%>><%=tYear+543%></option>
                    <%}%>
                  </select>
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>พื้นที่ใช้งาน :&nbsp;</b></font></div>
                </td>
                <td width="227" class="thaism"> 
                  <input type="text" name="areaUsage" size="10" maxlength="8" <%if(areaUsage!=0){%>value="<%=areaUsage%>"<%}else{ %>value=""<%}%> onBlur="checkNo();"  onChange="document.form1.dirty.value=1;">
                  <font color="#0066CC"><b>ตารางเมตร</b></font> </td>
                <td width="120" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>ผู้รับผิดชอบของปตท. 
                    :&nbsp;</b></font></div>
                </td>
                <td class="thaism" width="284">
					<%
						temp="";
						whereClause="SELECT distinct R_ID FROM SALES_REP  where C_ID='"+ CPCID + "' and S_ID='" + CPSID + "' ";
						
						//CSTORE
						//if (uGroup.compareTo("1")==0) whereClause=whereClause + " and SALES_GR='581' ";
						//NONOIL
						//if (uGroup.compareTo("2")==0) whereClause=whereClause + " and (SALES_GR='582' or SALES_GR='583') ";

						dbq2=sqlExec.executeQuery(whereClause);
						if (dbq2!=null) {
							if (dbq2.next()) {
								temp="";
								temp=dbq2.getString("R_ID");
							}
						}
					%>
<%	if(uGroup.compareTo("0")==0) {%>
					<input type="text" name="responseBy" size="30" maxlength="50" 
					<%if(responseBy==null){%>value="<%=temp%>"<%}else{ %>value="<%=responseBy%>"<%}%> onChange="document.form1.dirty.value=1;">
<%}else{%>
					<input type="text" name="responseBy" size="30" maxlength="50" 
					<%if(responseBy==null){%>value="<%=temp%>"<%}else{ %>value="<%=responseBy%>"<%}%> onChange="document.form1.dirty.value=1;">
<%}%>
					<%if((temp!=null)  && (responseBy!=null)){
							if((temp.compareTo(responseBy))!=0){
					%>
						<script>
							document.form1.dirty.value=1;
						</script>
					<%}
					}%>
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>ค่าใช้จ่ายในการก่อสร้าง 
                    :&nbsp;</b></font></div>
                </td>
                <td class="thaism" width="227"> 
                  <input type="text" name="consCost" size="14" maxlength="12" <%if(consCost!=0){%>value="<%=consCost%>"<%}else{ %>value=""<%}%> onBlur="checkNo();"  onChange="document.form1.dirty.value=1;">
                  <font color="#0066CC"><b> บาท</b></font> </td>
                <td width="120" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>กำไรเป้าหมาย :&nbsp;</b></font></div>
                </td>
                <td class="thaism" width="284"> 
                  <input type="text" name="targetProfit" size="14" maxlength="12"<%if(targetProfit!=0){%>value="<%=targetProfit%>"<%}else{ %>value=""<%}%> onBlur="checkNo();"  onChange="document.form1.dirty.value=1;">
                  <font color="#0066CC"><b>บาท</b></font> </td>
              </tr>
              <tr> 
                <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>กิจกรรมที่กำลังดำเนินการ 
                    :&nbsp;</b></font></div>
                </td>
                <td width="227" class="thaism"> 
                  <%@ include file="activityType.inc" %>
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>ลักษณะการลงทุนของคู่ค้า 
                    :&nbsp;</b></font></div>
                </td>
                <td class="thaism" colspan="3"> 
                  <input type="text" name="custInvestType" size="30" maxlength="50" <%if(custInvestType!=null){%>value="<%=custInvestType%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>ลักษณะการลงทุนของ 
                    ปตท. :&nbsp;</b></font></div>
                </td>
                <td class="thaism" width="227"> 
                  <input type="text" name="pttInvestType" size="30" maxlength="50" <%if(pttInvestType!=null){%>value="<%=pttInvestType%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
                <td width="120" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>เงินลงทุนของ ปตท. 
                    :&nbsp;</b></font></div>
                </td>
                <td class="thaism" width="284"> 
                  <input type="text" name="pttInvestAmount" size="14" maxlength="12" <%if(pttInvestAmount!=0){%>value="<%=pttInvestAmount%>"<%}else{ %>value=""<%}%> onBlur="checkNo();"  onChange="document.form1.dirty.value=1;">
                  <font color="#0066CC"><b>บาท</b></font></td>
              </tr>
              <tr> 
                <td width="165" class="thaism" > 
                  <div align="right"><font color="#0066CC"><b>เลขที่มิเตอร์ไฟฟ้า 
                    :&nbsp;</b></font></div>
                </td>
                <td width="227" class="thaism" > 
                  <input type="text" name="elMeterNo" size="25" maxlength="10" <%if(elMeterNo!=null){%>value="<%=elMeterNo%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
                <td width="120" class="thaism" > 
                  <div align="right"><font color="#0066CC"><b>เลขที่มิเตอร์น้ำประปา 
                    :&nbsp;</b></font></div>
                </td>
                <td width="284" class="thaism" > 
                  <input type="text" name="waMeterNo" size="25" maxlength="10" <%if(waMeterNo!=null){%>value="<%=waMeterNo%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>เลขที่มิเตอร์โทรศัพท์ 
                    :&nbsp;</b></font></div>
                </td>
                <td width="227" class="thaism"> 
                  <input type="text" name="teMeterNo" size="25" maxlength="10" <%if(teMeterNo!=null){%>value="<%=teMeterNo%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
                <td width="120" class="thaism">&nbsp;</td>
                <td width="284" class="thaism">&nbsp;</td>
              </tr>
			  <tr>
			  <td colspan="4"><b>ข้อมูลรหัสร้านค้า ส่วน Brand Owner</b></td>
			  </tr>
              <tr> 
                <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">รหัส Ship to Brand Owner
                    :&nbsp;</font></b></div>
                </td>
				<script language="VBScript">
						Set conn = CreateObject("ADODB.Connection")
						conn.Open "Provider=MSDAORA;Password=" & PASSWORD & ";User ID=" & USERNAME & ";Data Source=" & tns
						Set rs = CreateObject("ADODB.Recordset")

					sub CQuery()
						sql= "SELECT distinct C_ID,R_ID,CP_NAME FROM SALES_REP WHERE S_ID='" & document.form1.CPSID.value & "' "
						if rs.State<>0 then rs.close
						rs.open sql,conn
						document.form1.CPCID.value= ""
						document.form1.custID.value=""
						document.form1.responseBy.value=""

							<%if(brandBranchID==0){%>
								document.form1.cc.value="" 
							<%}%>
			             <%if (cBrandID==141) {%>
						document.form1.Name711.value=""
						<%}%>

						if not (rs.eof or rs.bof) then
							document.form1.CPCID.value="" & rs("C_ID")
							document.form1.custID.value="" & rs("C_ID")
							<%if(brandBranchID==0){%>
								document.form1.cc.value="" & rs("C_ID")
							<%}%>
							document.form1.responseBy.value="" & rs("R_ID")

			              <%if (cBrandID==141) {%>
							document.form1.Name711.value="" & rs("CP_NAME")
						  <%}%>
						end if
						rs.close
						
						'Found in SF Record, not PE. Need to get Sale Represent from default
						if (document.form1.responseBy.value="") and (document.form1.CPCID.value<>"") then
sql= "SELECT distinct C_ID,R_ID,CP_NAME FROM SALES_REP WHERE S_ID='" & document.form1.CPCID.value & "' "

							if rs.State<>0 then rs.close
							rs.open sql,conn

							if not (rs.eof or rs.bof) then
								document.form1.responseBy.value="" & rs("R_ID")
							end if
							rs.close
						end if
					end sub
				</script>
                <td width="227" class="td-3-i" height="20">
                  <input type="text" name="CPSID" <%if(CPSID!=null){%>value="<%=CPSID%>"<%}else{ %>value=""<%}%>  onBlur="document.form1.dirty.value=1;CQuery();">
                </td>
                <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">รหัสลูกค้า Brand Owner
                    :&nbsp;</font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">
                  <input type="text" name="CPCID" <%if(CPCID!=null){%>value="<%=CPCID%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
              </tr>
              <%if (cBrandID==141) {%>
              <tr> 
                <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">รหัสผู้ขาย Brand Owner
                    :&nbsp;</font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">
				  <select name="CPVID" onChange="document.form1.dirty.value=1;">
				  <option value=""></option>
				<%
					if(CPVID==null) CPVID="";
					whereClause="SELECT distinct SUPPLIER_ID,SUPPLIER_NAME FROM SUPPLIER ORDER BY SUPPLIER_NAME";
					dbq2=sqlExec.executeQuery(whereClause);
					temp="";
					if (dbq2!=null) {
						while (dbq2.next()) {
							temp="";
							temp=dbq2.getString("SUPPLIER_ID");
					%>
						<option value="<%=temp%>" <%if(temp.compareTo("" + CPVID)==0){%>selected<%}%>><%=temp + " " + dbq2.getString("SUPPLIER_NAME")%></option>
					<%
						}
					}
				%>
				</select>
                </td>
                <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">
                    &nbsp;</font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">&nbsp;</td>
              </tr>
              <tr> 
                <td class="thaism" colspan="4"><b>ข้อมูลเพิ่มเติมเฉพาะส่วนร้านค้า 
                  7-11</b></td>
              </tr>
              <tr> 
                <td width="165" class="thaism" height="20" align="right"><b><font color="#0066CC">รหัสร้านเซเว่นอีเลฟเว่น 
                  :&nbsp;</font></b></td>
                <td width="227" class="td-3-i" height="20"> 
                  <input type="text" name="code7-11" <%if(cName711!=null){%>value="<%=cName711%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
                <td width="120" class="thaism" height="20" align="right"><b><font color="#0066CC">ชื่อร้านเซเว่นอีเลฟเว่น 
                  :</font></b></td>
                <td width="284" class="td-3-i" height="20">
					<%
						 temp="";
						whereClause="SELECT distinct CP_NAME FROM SALES_REP  where C_ID='"+ CPCID + "' and S_ID='" + CPSID + "' ";
						//CSTORE
						//if (uGroup.compareTo("1")==0) whereClause=whereClause+" and SALES_GR='581' ";
						//NONOIL
						//if (uGroup.compareTo("2")==0) whereClause=whereClause+" and (SALES_GR='582' or SALES_GR='583') ";

						dbq2=sqlExec.executeQuery(whereClause);
						if (dbq2!=null) {
							if (dbq2.next()) {
								temp="";
								temp=dbq2.getString("CP_NAME");
							}
						}
					%>
					<input type="text" name="Name711" size="30" maxlength="50" 						<%if(temp!=null){%>value="<%=temp%>"<%}else{ %>value=""<%}%>>
					<%if((temp!=null) && (Name711!=null)){
							if ((temp.compareTo(Name711))!=0){%>
						<script>
							document.form1.dirty.value=1;
						</script>
					<%}
					}%>
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism" height="20" align="right"><b><font color="#0066CC">เจ้าของอาคาร 
                  :</font></b></td>
                <td width="227" class="td-3-i" height="20"> 
                  <select name="buildOwn"  onChange="document.form1.dirty.value=1;">
                       <option value="1" <%if(bOwner==1){%>selected<%}%>>Dealer</option>
                    <option value="2" <%if(bOwner==2){%>selected<%}%>>ปตท.</option>
                  </select>
                </td>
                <td width="120" class="thaism" height="20" align="right"><b><font color="#0066CC">&nbsp;เจ้าของมิเตอร์ไฟฟ้า : 
                  </font></b></td>
                <td width="284" class="td-3-i" height="20"> 
                  <select name="elOwn"  onChange="document.form1.dirty.value=1;">
                       <option value="1" <%if(elMeterOwn==1){%>selected<%}%>>ปตท.</option>
                    <option value="2" <%if(elMeterOwn==2){%>selected<%}%>>Dealer</option>
                    <option value="3" <%if(elMeterOwn==3){%>selected<%}%>>CP</option>
                    <option value="4" <%if(elMeterOwn==4){%>selected<%}%>>พ่วง</option>
                  </select>
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism" height="20" align="right"><b><font color="#0066CC"> 
                  ประเภทการดำเนินการร้านค้า :</font></b></td>
                <td width="227" class="td-3-i" height="20"> 
                  <select name="operType"  onChange="document.form1.dirty.value=1;">
                    <option value="1" <%if((OperType!=null) && (OperType.equals("1"))){%>selected<%}%>>เช่า</option>
                    <option value="2" <%if((OperType!=null) && (OperType.equals("2"))){%>selected<%}%>>ปตท. FC</option>
					<option value="3" <%if((OperType!=null) && (OperType.equals("3"))){%>selected<%}%>>Dealer FC</option>
                  </select>
                </td>
                <td width="120" class="thaism" height="20" align="right"><b><font color="#0066CC">เจ้าของมิเตอร์น้ำประปา 
                  :&nbsp;</font></b></td>
                <td width="284" class="td-3-i" height="20">
                  <select name="waOwn"  onChange="document.form1.dirty.value=1;">
                       <option value="1" <%if(waMeterOwn==1){%>selected<%}%>>ปตท.</option>
                    <option value="2" <%if(waMeterOwn==2){%>selected<%}%>>Dealer</option>
                    <option value="3" <%if(waMeterOwn==3){%>selected<%}%>>CP</option>
                    <option value="4" <%if(waMeterOwn==4){%>selected<%}%>>พ่วง</option>
                  </select>
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism" height="20" align="right"><b><font color="#0066CC">ประเภทการบริหารร้านค้า 
                  :&nbsp;</font></b></td>
                <td width="227" class="td-3-i" height="20"> 
                  <select name="managetype"  onChange="document.form1.dirty.value=1;">				  
                       <option value="1" <%if(mType==1){%>selected<%}%>>CP</option>
                    <option value="2" <%if(mType==2){%>selected<%}%>>บริษัท</option>
                    <option value="3" <%if(mType==3){%>selected<%}%>>Dealer</option>
                  </select>
                </td>
                <td width="120" class="thaism" height="20" align="right"><b><font color="#0066CC">ชื่อเขตเฟรนไชน์ของร้านค้า 
                  :</font></b></td>
                <td width="284" class="td-3-i" height="20">
                  <input type="text" name="fcName" <%if(fcAreaname!=null){%>value="<%=fcAreaname%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism" height="20" align="right"><b><font color="#0066CC">ชื่อผู้บริหารร้านค้า 
                  :</font></b></td>
                <td width="227" class="td-3-i" height="20" colspan="3"> 
                  <select name="SupID"  onChange="document.form1.dirty.value=1;">
                  <option value="0" <%if(SupID=="0"){%>selected<%}%> ></option>
                    <%	whereClause="SELECT Distinct Supplier_ID,Supplier_Name FROM Supplier order by Supplier_Name";
						dbq2=sqlExec.executeQuery(whereClause);
						sSupID="";
						ConName="";						
						if (dbq2!=null) {
							while (dbq2.next()) {
									sSupID="";
									ConName="";						
									sSupID=dbq2.getString("Supplier_ID");								
									ConName=dbq2.getString("Supplier_Name");
					%>
                    <option value="<%=sSupID%>"  <%if((sSupID.compareTo("" + SupID))==0) {%>selected <%}%> ><%=ConName%></option>
                    <%		}	
					}%>
                  </select>
                </td>
              </tr>
<!--              <tr> 
                <td width="165" class="thaism" height="20" align="right"><b><font color="#0066CC">ชื่อผู้จัดการร้านค้า 
                  :</font></b></td>
                <td width="227" class="td-3-i" height="20"> 
                  <input type="text" name="mName" <%if(mName!=null){%>value="<%=mName%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
                <td width="120" class="thaism" height="20">&nbsp;</td>
                <td width="284" class="td-3-i" height="20">&nbsp;</td>
              </tr>
              <tr>
                <td width="165" class="thaism" height="20" align="right"><b><font color="#0066CC">เบอร์โทรศัพท์ผู้จัดการร้านค้า</font></b> 
                  : </td>
                <td width="227" class="td-3-i" height="20">
                  <input type="text" name="mPhone"  <%if(mPhone!=null){%>value="<%=mPhone%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
                <td width="120" class="thaism" height="20">&nbsp;</td>
                <td width="284" class="td-3-i" height="20">&nbsp;</td>
              </tr>
              <tr> 
         
              </tr>-->
			  <input type="hidden" name="mName" <%if(mName!=null){%>value="<%=mName%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
              <input type="hidden" name="mPhone"  <%if(mPhone!=null){%>value="<%=mPhone%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
			  <tr>
			  <td colspan="4"><b>ข้อมูลรหัสร้านค้า ส่วน Dealer</b></td>
			  </tr>
              <tr> 
                <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">รหัส Ship to Dealer
                    :&nbsp;</font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">
				<script language="VBScript">
					sub DQuery()
						sql= "SELECT distinct C_ID,R_ID,CP_NAME FROM SALES_REP WHERE S_ID='" & document.form1.DLSID.value & "' " 
						if rs.State<>0 then rs.close
						rs.open sql,conn
						document.form1.DLCID.value="" 
						document.form1.DLR.value="" 
						document.form1.DLR.value=""
<%	if(uGroup.compareTo("0")!=0) {%>
							document.getElementById("sales2").innerHTML=""
<%}%>

						if not (rs.eof or rs.bof) then
							document.form1.DLCID.value="" & rs("C_ID")
							document.form1.DLR.value="" & rs("R_ID")
<%	if(uGroup.compareTo("0")!=0) {%>
							document.getElementById("sales2").innerHTML="" &  rs("R_ID")
<%}%>

						end if
						rs.close

						'Found in SF Record, not PE. Need to get Sale Represent from default
						if (document.form1.DLR.value="") and (document.form1.DLCID.value<>"") then
							sql= "SELECT C_ID,R_ID,CP_NAME FROM SALES_REP WHERE S_ID='" & document.form1.DLCID.value & "' "
							if rs.State<>0 then rs.close
							rs.open sql,conn
							if not (rs.eof or rs.bof) then
								document.form1.DLR.value="" & rs("R_ID")
							end if
							rs.close
						end if
					end sub
				  </script>
                  <input type="text" name="DLSID" <%if(DLSID!=null){%>value="<%=DLSID%>"<%}else{ %>value=""<%}%>  onBlur="document.form1.dirty.value=1;DQuery();">
                </td>
                <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">รหัสลูกค้า Dealer
                    :&nbsp;</font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">
                  <input type="text" name="DLCID" <%if(DLCID!=null){%>value="<%=DLCID%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
              </tr>
              <tr> 
                <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">รหัสผู้ขาย Dealer
                    :&nbsp;</font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">
				  <select name="DLVID" onChange="document.form1.dirty.value=1;">
	  				  <option value=""></option>
				<%
					if(DLVID==null) DLVID="";
					whereClause="SELECT distinct SUPPLIER_ID,SUPPLIER_NAME FROM SUPPLIER ORDER BY SUPPLIER_NAME";
					dbq2=sqlExec.executeQuery(whereClause);
					temp="";
					if (dbq2!=null) {
						while (dbq2.next()) {
							temp="";
							temp=dbq2.getString("SUPPLIER_ID");
					%>
						<option value="<%=temp%>" <%if(temp.compareTo("" + DLVID)==0){%>selected<%}%>><%=temp + " " + dbq2.getString("SUPPLIER_NAME")%></option>
					<%
						}
					}
				%>
				</select>
                </td>
                <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">
                    ผู้รับผิดชอบส่วน Dealer : </font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">
					<%
						  temp="";
						whereClause="SELECT distinct R_ID FROM SALES_REP  where C_ID='"+ DLCID + "' and S_ID='" + DLSID + "' ";
						//CSTORE
						//if (uGroup.compareTo("1")==0) whereClause=whereClause+" and SALES_GR='581' ";
						//NONOIL
						//if (uGroup.compareTo("2")==0) whereClause=whereClause+" and (SALES_GR='582' or SALES_GR='583') ";
						dbq2=sqlExec.executeQuery(whereClause);
						if (dbq2!=null) {
							if (dbq2.next()) {
								temp="";
								temp=dbq2.getString("R_ID");
							}
						}
					%>
<%	if(uGroup.compareTo("0")==0) {%>
					<input type="text" name="DLR" size="30" maxlength="50" 	<%if(DLR==null){%>value="<%=temp%>"<%}else{ %>value="<%=DLR%>"  <%}%> onChange="document.form1.dirty.value=1;">
<%}else{%>
					<input type="hidden" name="DLR" size="30" maxlength="50" 	<%if(DLR==null){%>value="<%=temp%>"<%}else{ %>value="<%=DLR%>"  <%}%> onChange="document.form1.dirty.value=1;">
					<div id="sales2" class="thaism"><%if(DLR==null){%><%=temp%><%}else{ %><%=DLR%><%}%></div>
<%}%>
					<%if((temp!=null) && (DLR!=null)){
							if ((temp.compareTo(DLR))!=0){%>
						<script>
							document.form1.dirty.value=1;
						</script>
					<%}
					}%>
				</td>
              </tr>
              <tr>
				<td width="120" class="thaism" height="20"> 
                  <div align="right"><b><font color="#0066CC">รหัส Term ของ Dealer</font></b></div>
                </td>
                <td width="284" class="td-3-i" height="20">                  
					<input type="text" name="term" <%if(term!=null){%>value="<%=term%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
				</td>
                <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>วันที่โอนร้านล่าสุด 
                    :&nbsp;</b></font></div>
                </td>
                <td class="thaism" width="227"> 
                  <select name="statusDate"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%	for (int d=1; d <=31 ; d++) {	  %>
                    <option value="<%=d%>"<%if (sDay==d) {%> selected <%}%>><%=d%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="statusMonth"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%	for (int m=1; m <=12 ; m++) {  %>
                    <option value="<%=m%>"<%if (sMonth==m) {%> selected <%}%>><%=jTHMonth(m)%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="statusYear" onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%
					tYear=0;
				   	for(tYear=1992;tYear<2023;tYear++){%>
                    <option value="<%=tYear%>" <%if(tYear+543==sYear){%>selected<%}%>><%=tYear+543%></option>
                    <%}%>
                  </select>
				  </td>
              </tr>
              <tr> 
			     <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">เบี้ยกันดาร
                    :&nbsp;</font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">
		            <input type="text" name="SPPAY" size="14" maxlength="12" <%if(SPPAY!=0){%>value="<%=SPPAY%>"<%}else{ %>value=""<%}%> onBlur="checkNo();"  onChange="document.form1.dirty.value=1;">
                  <font color="#0066CC"><b> บาท</b></font> </td>
                 <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>วันที่ปิดปรับปรุงร้านล่าสุด  
                    :&nbsp;</b></font></div>
                </td>
                <td class="thaism" width="227"> 
                  <select name="cpCDate"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%	for (int d=1; d <=31 ; d++) {	  %>
                    <option value="<%=d%>"<%if (cCDay==d) {%> selected <%}%>><%=d%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="cpCMonth"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%	for (int m=1; m <=12 ; m++) {  %>
                    <option value="<%=m%>"<%if (cCMonth==m) {%> selected <%}%>><%=jTHMonth(m)%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="cpCYear" onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%
					tYear=0;
				   	for(tYear=1992;tYear<2023;tYear++){%>
                    <option value="<%=tYear%>" <%if(tYear+543==cCYear){%>selected<%}%>><%=tYear+543%></option>
                    <%}%>
                  </select>
				  </td>
              </tr>
			  <tr>
			  <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">หมายเหตุ 
                    :&nbsp;</font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">
                  <input type="text" name="mFax" <%if(mFax!=null){%>value="<%=mFax%>"<%}else{ %>value=""<%}%>  onChange="document.form1.dirty.value=1;">
                </td>
			  <td width="165" class="thaism"> 
                  <div align="right"><font color="#0066CC"><b>วันที่เปิดหลังปรับปรุงร้านล่าสุด 
                    :&nbsp;</b></font></div>
                </td>
                <td class="thaism" width="227"> 
                  <select name="cpODate"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%	for (int d=1; d <=31 ; d++) {	  %>
                    <option value="<%=d%>"<%if (cODay==d) {%> selected <%}%>><%=d%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="cpOMonth"  onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%	for (int m=1; m <=12 ; m++) {  %>
                    <option value="<%=m%>"<%if (cOMonth==m) {%> selected <%}%>><%=jTHMonth(m)%></option>
                    <%	}  %>
                  </select>
                  <font color="#0066CC"><b class="thaism">/</b></font> 
                  <select name="cpOYear" onChange="document.form1.dirty.value=1;">
                    <option></option>
                    <%
					tYear=0;
				   	for(tYear=1992;tYear<2023;tYear++){%>
                    <option value="<%=tYear%>" <%if(tYear+543==cOYear){%>selected<%}%>><%=tYear+543%></option>
                    <%}%>
                  </select>
				  </td>
			  </tr>
			  <tr> 
                <td width="165" class="thaism" height="20" align="right"> 
                  <div align="right"><b><font color="#0066CC">&nbsp;</font></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">&nbsp; </td>
                <td width="120" class="thaism" height="20"> 
                  <div align="right"><b></b></div>
                </td>
                <td width="284" class="td-3-i" height="20">&nbsp; </td>
              </tr>
              <tr> 
                <td width="165" class="thaism" height="20"> 
                  <div align="right"><b></b></div>
                </td>
                <td width="227" class="td-3-i" height="20">&nbsp; </td>
                <td width="120" class="thaism" height="20"> 
                  <div align="right"><b><font color="#0066CC">&nbsp;</font></b></div>
                </td>
                <td width="284" class="td-3-i" height="20">&nbsp; </td>
              </tr>
              <%
				}
		%>
              <%if (brandBranchID!=0) {%>
              <tr> 
                <td colspan="4" class="thaism"> 
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr> 
                      <td class="thaism"><b>ข้อมูลเงื่อนไขร้านค้าธุรกิจเสริม</b></td>
                    </tr>
                    <tr> 
                      <td width="30%"><img src="the_dot.gif" width="9" height="9"> 
                        <span class="thaism"><A HREF="#" onClick="window.open('contractList.jsp?brandBranchID=<%=xbbID%>&branchID=<%=branchID%>&brandID=<%=cBrandID%>')">สัญญา</A></span></td>
                      <td width="30%"><!--<img src="the_dot.gif" width="9" height="9"> 
						<span class="thaism"><A HREF="#" onClick="window.open('faAssetList.jsp?brandBranchID=<%=xbbID%>&branchID=<%=branchID%>&brandID=<%=cBrandID%>')">รายการทรัพย์สิน</A></span>--></td>
                      <td width="30%"><img src="the_dot.gif" width="9" height="9"> 
                        <span class="thaism"><A HREF="#" onClick="window.open('landEntry.jsp?brandBranchID=<%=xbbID%>&branchID=<%=branchID%>&brandID=<%=cBrandID%>')">การลงทุนที่ดิน</A></span></td>
                    </tr>
                    <tr> 
                      <td width="40%"><img src="the_dot.gif" width="9" height="9"> 
                        <span class="thaism"><A HREF="#" onClick="window.open('expectedList.jsp?brandBranchID=<%=xbbID%>&branchID=<%=branchID%>&brandID=<%=cBrandID%>')">ประมาณการรายได้ค่าใช้จ่าย</A></span></td>
                      <td width="30%"><img src="the_dot.gif" width="9" height="9"> 
                        <span class="thaism"><A HREF="#" onClick="window.open('revConditionList.jsp?brandBranchID=<%=xbbID%>&branchID=<%=branchID%>&brandID=<%=cBrandID%>')">เงื่อนไขรายได้</A></span></td>
                      <td width="30%"><img src="the_dot.gif" width="9" height="9"> 
                        <span class="thaism"><A HREF="#" onClick="window.open('expConditionList.jsp?brandBranchID=<%=xbbID%>&branchID=<%=branchID%>&brandID=<%=cBrandID%>')">เงื่อนไขค่าใช้จ่าย</A></span></td>
                    </tr>
                    <tr> 
                      <td class="thaism"><b>ข้อมูลรายการรายได้ ค่าใช้จ่ายประจำเดือน</b></td>
                    </tr>
                    <tr> 
                      <td width="30%"><img src="the_dot.gif" width="9" height="9"> 
                        <span class="thaism"><A HREF="#" onClick="window.open('monthlyRevenueList.jsp?brandBranchID=<%=xbbID%>&branchID=<%=branchID%>&brandID=<%=cBrandID%>')">บันทึกรายได้</A></span></td>
                      <td width="30%"><img src="the_dot.gif" width="9" height="9"> 
                        <span class="thaism"><A HREF="#" onClick="window.open('monthlyExpenseList.jsp?brandBranchID=<%=xbbID%>&branchID=<%=branchID%>&brandID=<%=cBrandID%>')">บันทึกค่าใช้จ่าย</A></span></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <%}%>
              <tr> 
                <td colspan="4" class="thaism">&nbsp;</td>
              </tr>
              <script>
function confirmation(OpType,ManType,SupID)
{
	if (((OpType == "เช่า") && (ManType != 1)) || ((OpType == "FC") && (ManType == 1))){
			alert("กรุณาเลือกประเภทการดำเนินการและประเภทการบริหารให้สอดคล้องกัน");
			return;
	}else{
			if ((OpType == "FC") && (SupID == "0")){
					alert("กรุณาระบุข้อมูลของผู้บริหารร้าน");
					return;
			}else{
					if(document.form1.dirty.value==1) 
					{
						if(confirm("คุณต้องการที่จะบันทึกการเปลี่ยนแปลงนี้ลงสู่ฐานข้อมูล"))
						{
							document.form1.submit();
						}
					}
						else
					{
						document.form1.submit();
					}
			}
	}	
}
</script>
              <tr> 
                <td colspan="4" class="thaism"> 
                  <div align="center"> 
                    <input type="button" name="Submit" value="   OK   " class="button" onClick="<%if(cBrandID==141){%>confirmation(operType.value,managetype.value,SupID.value);<%}else{if(cBrandID>0){%>confirmation('','','');<%}else{%>document.form1.submit();<%}}%>">
                    <input type="reset" name="Submit2" value=" Cancel " class="button">
                    <input type="button" name="Back" value="Back to List" class="button" onClick="history.back()">
                  </div>
                </td>
              </tr>
              <td width="165"></form> 
              <tr> 
                <td colspan="4" class="thaism">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
    <!-- End Detail -->
  </tr>
</table>
  </body>
</html>
<%@ include file="cwd.inc" %>