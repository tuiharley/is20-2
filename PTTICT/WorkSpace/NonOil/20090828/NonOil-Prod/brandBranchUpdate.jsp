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
<%@ include file="convertStrForSQL.inc" %>
<% 
int dirty=Integer.parseInt(request.getParameter("dirty"));
String branchID=request.getParameter("branchID");
if(dirty!=0){

ResultSet brandBranch=null;
ResultSet dbq2=null;


int brandBranchID, cBrandID,  sDay, sMonth, sYear, oDay, oMonth, oYear, cDay, cMonth, cYear, cODay, cOMonth, cOYear, cCDay, cCMonth, cCYear, mType, bOwner, SupID, elMeterOwn, waMeterOwn ;
String whereClause, brandName, custID, custName, pttResponsedBy, engineeringStatus, custInvestType, pttInvestType, elMeterNo, teMeterNo, waMeterNo, userName, validStart, validEnd, openDate, closeDate , statusDate, cpODate, cpCDate, DLR,DLCID,DLVID,DLSID,CPCID,CPVID,CPSID,term;
double areaUsage, consCost, targetProfit, pttInvestAmount,SPPAY ;
String cName711,Name711, OperType, Operator, mName, mPhone, mFax, fcAreaname,fcType;
whereClause="";

brandBranchID=Integer.parseInt(request.getParameter("brandBranchID"));
cBrandID=Integer.parseInt(request.getParameter("cBrandID"));

custID=request.getParameter("custID");
if (custID.compareTo("")==0) custID="PTT";
try {
	if((request.getParameter("openDate").trim().equals(""))||
	   (request.getParameter("openMonth").trim().equals(""))||
	   (request.getParameter("openYear").trim().equals("")))
			openDate="";
	else
	{
		oDay=Integer.parseInt(request.getParameter("openDate"));
		oMonth=Integer.parseInt(request.getParameter("openMonth"));
		oYear=Integer.parseInt(request.getParameter("openYear"));
		if(oYear>2400) oYear=oYear-543;
		openDate=""+oMonth+"/"+oDay+"/"+oYear;
	}
} catch (Exception e) {
	openDate="";
}
try {
	if((request.getParameter("closeDate").trim().equals(""))||
	   (request.getParameter("closeMonth").trim().equals(""))||
	   (request.getParameter("closeYear").trim().equals("")))
			closeDate="";
	else
	{
		cDay=Integer.parseInt(request.getParameter("closeDate"));
		cMonth=Integer.parseInt(request.getParameter("closeMonth"));
		cYear=Integer.parseInt(request.getParameter("closeYear"));
		if(cYear>2400) cYear=cYear-543;
		closeDate=""+cMonth+"/"+cDay+"/"+cYear;
	}
} catch (Exception e) {
	closeDate="";
}
try {
	if((request.getParameter("statusDate").trim().equals(""))||
	   (request.getParameter("statusMonth").trim().equals(""))||
	   (request.getParameter("statusYear").trim().equals("")))
			statusDate="";
	else
	{
		sDay=Integer.parseInt(request.getParameter("statusDate"));
		sMonth=Integer.parseInt(request.getParameter("statusMonth"));
		sYear=Integer.parseInt(request.getParameter("statusYear"));
		if(sYear>2400) sYear=sYear-543;
		statusDate=""+sMonth+"/"+sDay+"/"+sYear;
	}
} catch (Exception e) {
	statusDate="";
}
try {
	if((request.getParameter("cpODate").trim().equals(""))||
	   (request.getParameter("cpOMonth").trim().equals(""))||
	   (request.getParameter("cpOYear").trim().equals("")))
			cpODate="";
	else
	{
		cODay=Integer.parseInt(request.getParameter("cpODate"));
		cOMonth=Integer.parseInt(request.getParameter("cpOMonth"));
		cOYear=Integer.parseInt(request.getParameter("cpOYear"));
		if(cOYear>2400) cOYear=cOYear-543;
		cpODate=""+cOMonth+"/"+cODay+"/"+cOYear;
	}
} catch (Exception e) {
	cpODate="";
}
try {
	if((request.getParameter("cpCDate").trim().equals(""))||
	   (request.getParameter("cpCMonth").trim().equals(""))||
	   (request.getParameter("cpCYear").trim().equals("")))
			cpCDate="";
	else
	{
		cCDay=Integer.parseInt(request.getParameter("cpCDate"));
		cCMonth=Integer.parseInt(request.getParameter("cpCMonth"));
		cCYear=Integer.parseInt(request.getParameter("cpCYear"));
		if(cCYear>2400) cCYear=cCYear-543;
		cpCDate=""+cCMonth+"/"+cCDay+"/"+cCYear;
	}
} catch (Exception e) {
	cpCDate="";
}
try {
	if (request.getParameter("targetProfit").trim().equals(""))
		targetProfit=0;
	else
		targetProfit=Double.parseDouble(request.getParameter("targetProfit"));
} catch (Exception e) {
	targetProfit=0;
}
	
custInvestType=request.getParameter("custInvestType");
pttInvestType=request.getParameter("pttInvestType");
try {
	if (request.getParameter("pttInvestAmount").trim().equals(""))
		pttInvestAmount=0;
	else
		pttInvestAmount=Double.parseDouble(request.getParameter("pttInvestAmount"));
} catch (Exception e) {
	pttInvestAmount=0;
}
try {
	if (request.getParameter("consCost").trim().equals(""))
		consCost=0;
	else
		consCost=Double.parseDouble(request.getParameter("consCost"));
} catch (Exception e) {
	consCost=0;
}
try {
	if (request.getParameter("SPPAY").trim().equals(""))
		SPPAY=0;
	else
		SPPAY=Double.parseDouble(request.getParameter("SPPAY"));
} catch (Exception e) {
	SPPAY=0;
}

try {
	if (request.getParameter("areaUsage").trim().equals(""))
		areaUsage=0;
	else
		areaUsage=Double.parseDouble(request.getParameter("areaUsage"));
} catch (Exception e) {
	areaUsage=0;
}
engineeringStatus=request.getParameter("enStatus");
elMeterNo=request.getParameter("elMeterNo");
waMeterNo=request.getParameter("waMeterNo");
teMeterNo=request.getParameter("teMeterNo");
mType=0;
if ((request.getParameter("managetype")!=null) && (request.getParameter("managetype").trim().compareTo("")!=0)) mType=Integer.parseInt(request.getParameter("managetype"));
bOwner=0;
if ((request.getParameter("buildOwn")!=null) && (request.getParameter("buildOwn").trim().compareTo("")!=0))
bOwner=Integer.parseInt(request.getParameter("buildOwn"));
SupID=0;
if ((request.getParameter("SupID")!=null) && (request.getParameter("SupID").trim().compareTo("")!=0)) SupID=Integer.parseInt(request.getParameter("SupID"));
elMeterOwn=0;
if ((request.getParameter("elOwn")!=null) && (request.getParameter("elOwn").trim().compareTo("")!=0)) elMeterOwn=Integer.parseInt(request.getParameter("elOwn"));
waMeterOwn=0;
if ((request.getParameter("waOwn")!=null) && (request.getParameter("waOwn").trim().compareTo("")!=0)) waMeterOwn=Integer.parseInt(request.getParameter("waOwn"));
cName711="";
if ((request.getParameter("code7-11")!=null) && (request.getParameter("code7-11").trim().compareTo("")!=0)) cName711=request.getParameter("code7-11");
OperType="";
if ((request.getParameter("operType")!=null) && (request.getParameter("operType").trim().compareTo("")!=0)) OperType=request.getParameter("operType");
Operator="";
if ((request.getParameter("operator")!=null) && (request.getParameter("operator").trim().compareTo("")!=0)) Operator=request.getParameter("operator");
mName="";
if ((request.getParameter("mName")!=null) && (request.getParameter("mName").trim().compareTo("")!=0)) mName=request.getParameter("mName");
mPhone="";
if ((request.getParameter("mPhone")!=null) && (request.getParameter("mPhone").trim().compareTo("")!=0)) mPhone=request.getParameter("mPhone");
mFax="";
if ((request.getParameter("mFax")!=null) && (request.getParameter("mFax").trim().compareTo("")!=0))
mFax=request.getParameter("mFax");
fcAreaname="";
if ((request.getParameter("fcName")!=null) && (request.getParameter("fcName").trim().compareTo("")!=0)) fcAreaname=request.getParameter("fcName");
fcType="";
if ((request.getParameter("fcType")!=null) && (request.getParameter("fcType").trim().compareTo("")!=0)) fcType=request.getParameter("fcType");

CPCID="";
if ((request.getParameter("CPCID")!=null) && (request.getParameter("CPCID").trim().compareTo("")!=0)) CPCID=request.getParameter("CPCID");
CPVID="";
if ((request.getParameter("CPVID")!=null) && (request.getParameter("CPVID").trim().compareTo("")!=0)) CPVID=request.getParameter("CPVID");
CPSID="";
if ((request.getParameter("CPSID")!=null) && (request.getParameter("CPSID").trim().compareTo("")!=0)) CPSID=request.getParameter("CPSID");

pttResponsedBy="";
if ((request.getParameter("responseBy")!=null) && (request.getParameter("responseBy").trim().compareTo("")!=0)) pttResponsedBy=request.getParameter("responseBy");
//whereClause="SELECT R_ID FROM SALES_REP  where C_ID='"+ CPCID + "' and S_ID='" + CPSID + "' ";
//dbq2=sqlExec.executeQuery(whereClause);
//if (dbq2!=null) {
//	if (dbq2.next()) {
//		pttResponsedBy=dbq2.getString("R_ID");
//	}
//}

Name711="";
if ((request.getParameter("Name711")!=null) && (request.getParameter("Name711").trim().compareTo("")!=0)) Name711=request.getParameter("Name711");
//whereClause="SELECT CP_NAME FROM SALES_REP  where C_ID='"+ CPCID + "' and S_ID='" + CPSID + "' ";
//dbq2=sqlExec.executeQuery(whereClause);
//if (dbq2!=null) {
//	if (dbq2.next()) {
//		Name711=dbq2.getString("CP_NAME");
//	}
//}

DLCID="";
if ((request.getParameter("DLCID")!=null) && (request.getParameter("DLCID").trim().compareTo("")!=0)) DLCID=request.getParameter("DLCID");
DLVID="";
if ((request.getParameter("DLVID")!=null) && (request.getParameter("DLVID").trim().compareTo("")!=0)) DLVID=request.getParameter("DLVID");
DLSID="";
if ((request.getParameter("DLSID")!=null) && (request.getParameter("DLSID").trim().compareTo("")!=0)) DLSID=request.getParameter("DLSID");

DLR="";
if ((request.getParameter("DLR")!=null) && (request.getParameter("DLR").trim().compareTo("")!=0)) DLR=request.getParameter("DLR");
//whereClause="SELECT R_ID FROM SALES_REP  where C_ID='"+ DLCID + "' and S_ID='" + DLSID + "' ";
//dbq2=sqlExec.executeQuery(whereClause);
//if (dbq2!=null) {
//	if (dbq2.next()) {
//		DLR=dbq2.getString("R_ID");
//	}
//}

term="";
if ((request.getParameter("term")!=null) && (request.getParameter("term").trim().compareTo("")!=0)) term=request.getParameter("term");

userName=(String)session.getValue("uID");

if(brandBranchID!=0){
				whereClause="UPDATE Brand_Branch SET ";
				whereClause=whereClause+"BRAND_ID="+cBrandID+",";	
				whereClause=whereClause+"BRANCH_ID='"+convertStrForSQL(branchID)+"',";
				whereClause=whereClause+"CUSTOMER_ID='"+convertStrForSQL(CPCID)+"',";
				String dtime=convertStrForSQL(openDate);
				if (dtime.equals(""))
					whereClause=whereClause+"OPEN_DATE=NULL,";
				else
					whereClause=whereClause+"OPEN_DATE=TO_DATE('"+dtime+"','mm/dd/yyyy'),";
				dtime=convertStrForSQL(closeDate);
				if (dtime.equals("")){
					if(engineeringStatus.equals("30")){
						whereClause=whereClause+"CLOSE_DATE=SYSDATE,";
					}else{
						whereClause=whereClause+"CLOSE_DATE=NULL,";
					}
				}else{
					whereClause=whereClause+"CLOSE_DATE=TO_DATE('"+dtime+"','mm/dd/yyyy'),";
				}

				dtime=convertStrForSQL(statusDate);
				if (dtime.equals(""))
					whereClause=whereClause+"STATUS_DATE=NULL,";
				else
					whereClause=whereClause+"STATUS_DATE=TO_DATE('"+dtime+"','mm/dd/yyyy'),";
				dtime=convertStrForSQL(cpODate);
				if (dtime.equals(""))
					whereClause=whereClause+"CP_OPENDATE=NULL,";
				else
					whereClause=whereClause+"CP_OPENDATE=TO_DATE('"+dtime+"','mm/dd/yyyy'),";
				dtime=convertStrForSQL(cpCDate);
				if (dtime.equals("")){
					if(engineeringStatus.equals("30")){
						whereClause=whereClause+"CP_CLOSEDATE=SYSDATE,";
					}else{
						whereClause=whereClause+"CP_CLOSEDATE=NULL,";
					}
				}else{
					whereClause=whereClause+"CP_CLOSEDATE=TO_DATE('"+dtime+"','mm/dd/yyyy'),";
				}
				whereClause=whereClause+"TARGET_PROFIT="+targetProfit+",";	
				whereClause=whereClause+"CUST_INVEST_TYPE='"+convertStrForSQL(custInvestType)+"',";
				whereClause=whereClause+"PTT_INVEST_TYPE='"+convertStrForSQL(pttInvestType)+"',";
				whereClause=whereClause+"PTT_INVEST_AMOUNT="+pttInvestAmount+",";	
				whereClause=whereClause+"CONS_COST="+consCost+",";	
				whereClause=whereClause+"SPECIAL_PAYMENT="+SPPAY+",";	
				whereClause=whereClause+"PTT_RESPONSED_BY='"+convertStrForSQL(pttResponsedBy)+"',";
				whereClause=whereClause+"AREA_USAGE="+areaUsage+",";	
				whereClause=whereClause+"ENGINEERING_STATUS='"+engineeringStatus+"',";
				whereClause=whereClause+"EL_METER_NO='"+convertStrForSQL(elMeterNo)+"',";
				whereClause=whereClause+"WA_METER_NO='"+convertStrForSQL(waMeterNo)+"',";
				whereClause=whereClause+"TE_METER_NO='"+convertStrForSQL(teMeterNo)+"',";
				whereClause=whereClause+"LAST_USER='"+convertStrForSQL(userName)+"',";
				whereClause=whereClause+"LAST_UPDATE=SYSDATE, ";
				whereClause=whereClause+"Manage_Type="+mType+",";
				whereClause=whereClause+"Building_Owner="+bOwner+",";
				whereClause=whereClause+"Supplier_ID="+SupID+",";
				whereClause=whereClause+"El_Meter_Owner='"+elMeterOwn+"',";
				whereClause=whereClause+"Wa_Meter_Owner='"+waMeterOwn+"',";
				whereClause=whereClause+"Code_Name_7_11='"+convertStrForSQL(cName711)+"',";
				whereClause=whereClause+"Name_7_11='"+convertStrForSQL(Name711)+"',";
				whereClause=whereClause+"Operate_Type='"+convertStrForSQL(OperType)+"',";
				whereClause=whereClause+"Operator='"+convertStrForSQL(Operator)+"',";
				whereClause=whereClause+"Manager_Name='"+convertStrForSQL(mName)+"',";
				whereClause=whereClause+"Manager_Phone='"+convertStrForSQL(mPhone)+"',";
				whereClause=whereClause+"Manager_Fax='"+convertStrForSQL(mFax)+"',";

				whereClause=whereClause+"CP_C_ID='"+convertStrForSQL(CPCID)+"',";
				whereClause=whereClause+"CP_V_ID='"+convertStrForSQL(CPVID)+"',";
				whereClause=whereClause+"CP_SHIP_ID='"+convertStrForSQL(CPSID)+"',";

				whereClause=whereClause+"DEALER_RESPONSED='"+convertStrForSQL(DLR)+"',";
				whereClause=whereClause+"DL_C_ID='"+convertStrForSQL(DLCID)+"',";
				whereClause=whereClause+"DL_V_ID='"+convertStrForSQL(DLVID)+"',";
				whereClause=whereClause+"DL_SHIP_ID='"+convertStrForSQL(DLSID)+"',";

				whereClause=whereClause+"term='"+convertStrForSQL(term)+"',";

				whereClause=whereClause+"Fc_Area_Name='"+convertStrForSQL(fcAreaname)+"', ";
				whereClause=whereClause+"Fc_Type='"+convertStrForSQL(fcType)+"' ";
				whereClause=whereClause+" Where BRAND_BRANCH.BRAND_BRANCH_ID= " + brandBranchID;	
				int retVal=sqlExec.executeUpdate(whereClause);	
	} else {	

	brandBranch=null;
	brandBranch=sqlExec.executeQuery("SELECT MAX(Brand_Branch_ID)+1 as lid from Brand_Branch");
	int lid=0;
	if((brandBranch!=null) && (brandBranch.next())) {lid=Integer.parseInt(brandBranch.getString("lid"));	}

			whereClause="INSERT INTO Brand_Branch (Brand_Branch_ID,Brand_ID,Branch_ID,Customer_ID,";
			whereClause=whereClause+"Open_Date,Close_Date,Target_Profit,Cust_Invest_Type,";
			whereClause=whereClause+"Ptt_Invest_Type,Ptt_Invest_Amount,Cons_Cost,SPECIAL_PAYMENT,Ptt_Responsed_By,";
			whereClause=whereClause+"Area_Usage,Engineering_Status,El_Meter_No,Wa_Meter_No,";
			whereClause=whereClause+"Te_Meter_No,status_date,Last_User,Last_Update,Manage_Type,Building_Owner, Supplier_ID, El_Meter_Owner,";
			whereClause=whereClause+"Wa_Meter_Owner, Code_Name_7_11,Name_7_11,Operate_Type, Operator,";
		whereClause=whereClause+"Manager_Name,Manager_Phone,Manager_Fax,Fc_Area_Name,FC_TYPE,term,CP_C_ID,CP_V_ID,CP_SHIP_ID,DL_C_ID,DL_V_ID,DL_SHIP_ID,DEALER_RESPONSED) ";	
			whereClause=whereClause+" VALUES ("+lid+",";
			whereClause=whereClause+cBrandID+",";	
			whereClause=whereClause+"'"+convertStrForSQL(branchID)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(CPCID)+"',";
			String dtime=openDate;
			if (dtime.equals(""))
				whereClause=whereClause+"NULL,";
			else
				whereClause=whereClause+"TO_DATE('"+dtime+"','mm/dd/yyyy'),";
			dtime=convertStrForSQL(closeDate);
			if (dtime.equals(""))
				whereClause=whereClause+"NULL,";
			else
				whereClause=whereClause+"TO_DATE('"+dtime+"','mm/dd/yyyy'),";
			whereClause=whereClause+targetProfit+",";
			whereClause=whereClause+"'"+convertStrForSQL(custInvestType)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(pttInvestType)+"',";
			whereClause=whereClause+pttInvestAmount+",";
			whereClause=whereClause+consCost+",";
			whereClause=whereClause+SPPAY+",";
			whereClause=whereClause+"'"+convertStrForSQL(pttResponsedBy)+"',";
			whereClause=whereClause+areaUsage+",";	
			whereClause=whereClause+"'"+engineeringStatus+"',";
			whereClause=whereClause+"'"+convertStrForSQL(elMeterNo)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(waMeterNo)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(teMeterNo)+"',";
			whereClause=whereClause+"SYSDATE,";
			whereClause=whereClause+"'"+convertStrForSQL(userName)+"',";
			whereClause=whereClause+"SYSDATE,";
			whereClause=whereClause+mType+",";
			whereClause=whereClause+bOwner+",";
			whereClause=whereClause+SupID+",";
			whereClause=whereClause+"'"+elMeterOwn+"',";
			whereClause=whereClause+"'"+waMeterOwn+"',";
			whereClause=whereClause+"'"+convertStrForSQL(cName711)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(Name711)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(OperType)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(Operator)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(mName)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(mPhone)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(mFax)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(fcAreaname)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(fcType)+"',";

			whereClause=whereClause+"'"+convertStrForSQL(term)+"',";

			whereClause=whereClause+"'"+convertStrForSQL(CPCID)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(CPVID)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(CPSID)+"',";

			whereClause=whereClause+"'"+convertStrForSQL(DLR)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(DLCID)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(DLVID)+"',";
			whereClause=whereClause+"'"+convertStrForSQL(DLSID)+"')";

			int retVal=sqlExec.executeUpdate(whereClause);
}
}
%>
<%@ include file="cwd.inc" %>
<%pageContext.forward("brandBranchList.jsp?branchID="+branchID+"&brandID=0");%>