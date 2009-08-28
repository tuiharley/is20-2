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
<HEAD>
<meta http-equiv="Content-Language" content="TH">
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<title>ระบบงานบริหารธุรกิจเสริม : บริษัท ปตท. จำกัด (มหาชน) </title>
<%@ include file="module.inc" %>
<%@ include file="convertStrForSQL.inc" %>
<script language="VBScript">
Public Sub makereport()
'==================Get Criteria==============
	whereClause="where 1=1 "

	'SHEET 1
	document.write "Start Sheet1...<BR>"
	selectsheet 1

	document.write "Get Parameter...<BR>"
	<%if(request.getParameter("sel_brandGroup")!=null){%>
		brandGroup=cint("0" & "<%=request.getParameter("sel_brandGroup")%>")
		if brandGroup<>0 then 
			whereClause=whereClause & " and BRAND_GROUP_ID=" & brandGroup
			rs.open "SELECT BRAND_GROUP_NAME from BRAND_GROUP where BRAND_GROUP_ID=" & brandGroup,conn
			if not (rs.eof or rs.bof) then 
				ws.cells(2,3)="'" & rs(0)
			else
				ws.cells(2,3)="'ไม่ทราบชื่อ"
			end if
			rs.close
		else
			ws.cells(2,3)="'ทุกกลุ่มร้าน"
		end if
	<%}%>

	<%if(request.getParameter("sel_brand")!=null){%>
		brand=cint("0" & "<%=request.getParameter("sel_brand")%>")
		if brand<>0 then 
			whereClause=whereClause & " and BRAND_BRANCH.BRAND_ID=" & brand
			rs.open "SELECT BRAND_NAME from BRAND where BRAND_ID=" & brand,conn
			if not (rs.eof or rs.bof) then	
				ws.cells(2,6)="'" & rs(0)
			else
				ws.cells(2,6)="'ไม่ทราบชื่อร้าน"
			end if
			rs.close
		else
			ws.cells(2,6)="'ทุกร้าน"
		end if
	<%}%>

	<%if(request.getParameter("sel_branchType")!=null){%>
		branchType=trim(cstr("<%=request.getParameter("sel_branchType")%>"))
		if branchType<>"" then 
			whereClause=whereClause & " and BRANCH_TYPE='" & branchType & "' "
			ws.cells(1,6)="'" & branchType
		else
			ws.cells(1,6)="'ทุกประเภทสถานี"
		end if
	<%}%>

	<%if(request.getParameter("sel_province")!=null){%>
		province=trim(cstr("<%=request.getParameter("sel_province")%>"))
		if province<>"" then 
			whereClause=whereClause & " and BRANCH_PROVINCE='" & province & "' "
			ws.cells(1,9)="'" & province
		else
			ws.cells(1,9)="'ทุกจังหวัด"
		end if
	<%}%>

	<%if(request.getParameter("sel_branch")!=null){%>
		branch=trim(cstr("<%=request.getParameter("sel_branch")%>"))
		if branch<>"" then 
			whereClause=whereClause & " and BRANCH_ID='" & branch & "' "
			rs.open "SELECT BRANCH_NAME from BRANCH where BRAND_BRANCH.BRANCH_ID=" & branCH,conn
			if not (rs.eof or rs.bof) then	
				ws.cells(1,12)="'" & rs(0)
			else
				ws.cells(1,12)="'ไม่ทราบชื่อสถานี"
			end if
			rs.close
		else
			ws.cells(1,12)="'ทุกสถานี"
		end if
	<%}%>

	<%if(request.getParameter("checkRep")!=null){%>
			checkRep=cint("0" & "<%=request.getParameter("checkRep")%>")
			if checkRep=0 then
				checkMonth=0
			else
				checkRep=1
				checkMonth=cint("0" & "<%=request.getParameter("xmonth")%>")
			end if
	<%}else{%>
			checkRep=1
			checkMonth=0
	<%}%>

	if checkRep=1 then 
		ws.cells(2,9)="'เฉพาะเงื่อนไขที่ยังมีผลบังคับใช้"
		if checkMonth>0 then 
			ws.cells(2,9)=ws.cells(2,9) & " และจะหมดอายุใน " & checkMonth & " เดือน"
			whereClause=whereClause & " and TO_DATE(END_MONTH || '/' || END_YEAR,'mm/yyyy')<=Add_months(TO_DATE('" & Month(now) & "/" & Year(now) & "','mm/yyyy'),"& checkMonth &") "
		end if
		whereClause=whereClause & " and TO_DATE(END_MONTH || '/' || END_YEAR,'mm/yyyy')>=TO_DATE('" & Month(now) & "/" & Year(now) & "','mm/yyyy') "
	else
		ws.cells(2,9)="'ทุกเงื่อนไขที่มีการบันทึก"
	end if

	document.write "SQL Compose...<BR>"
	sql="select distinct BRANCH_NAME,BRANCH_PROVINCE,BRANCH_TYPE,BRAND_NAME,CUSTOMER_NAME,"
	sql= sql & " Product_DESC as PRODUCT_NAME,Max_Revenue,Min_Revenue, "
	sql= sql & " Start_Month,Start_Year, End_Month,End_Year, "
	sql= sql & " Calculate_Type, Rate_Multiply, Fixed_Received_Amount,REMARK, CONTRACT_NO,"
	sql= sql & " Cust_Invest_Type,Ptt_Invest_Type,Ptt_Invest_Amount "
	sql =sql & " from BRAND_BRANCH,BRAND,BRANCH,CUSTOMER,PRODUCT,REVENUE_CONDITION "
	sql =sql & whereClause
	sql=sql & " and BRAND_BRANCH.BRAND_ID=BRAND.BRAND_ID "
	sql=sql & " and BRAND_BRANCH.BRANCH_ID=BRANCH.BRANCH_ID "
	sql=sql & " and BRAND_BRANCH.BRAND_BRANCH_ID=REVENUE_CONDITION.BRAND_BRANCH_ID "
	sql=sql & " and BRAND_BRANCH.CP_C_ID=CUSTOMER.CUSTOMER_ID "
	sql=sql & " and REVENUE_CONDITION.PRODUCT_CODE=PRODUCT.PRODUCT_CODE "
	sql=sql & " ORDER BY BRANCH_PROVINCE,BRANCH_TYPE,BRANCH_NAME,BRAND_NAME,CUSTOMER_NAME,"
	sql=sql & " START_YEAR,START_MONTH,END_YEAR,END_MONTH,CONTRACT_NO,Product_DESC,Min_Revenue,Max_Revenue "

	tmpBranch=""
	currowBranch=4
	tmpBrand=""
	currowBrand=4
	tmpContract=""
	currowContract=4
	currow=4

	tmpProduct=""
	tmpCalType=""

	document.write sql & "<BR>"
	rs.open sql,conn
	while not (rs.eof or rs.bof)
		if tmpBranch<>rs("Branch_Name") then
			'Draw end line
			DrawRange Replace(WS.Cells(currow,1).Address,"$","",1,-1,1) & ":" & Replace(WS.Cells(currow,13).Address,"$","",1,-1,1),"BOTTOM"

			currowBranch=currow+1

			ws.cells(currowBranch,1)="'" & rs("BRANCH_NAME")
			tmpBranch=rs("BRANCH_NAME")
			
			tmpBrand=""

			ws.cells(currowBranch,2)="'" & rs("BRANCH_PROVINCE")
			ws.cells(currowBranch,3)="'" & rs("BRANCH_TYPE")
		end if

		if tmpBrand<>rs("Brand_Name") then
			'Draw end line
			DrawRange Replace(WS.Cells(currow,4).Address,"$","",1,-1,1) & ":" & Replace(WS.Cells(currow,13).Address,"$","",1,-1,1),"BOTTOM"

			currowBrand=currow+1

			ws.cells(currowBrand,4)="'" & rs("BRAND_NAME")
			ws.cells(currowBrand,5)="'" & rs("CUSTOMER_NAME")
			tmpBrand=rs("BRAND_NAME")

			tmpContractNo=""

			ws.cells(currowBrand,10)="'" & rs("PTT_INVEST_TYPE")
			ws.cells(currowBrand,11)="'" & rs("CUST_INVEST_TYPE")
			ws.cells(currowBrand,12)=cdbl("0" & rs("PTT_INVEST_AMOUNT"))
			ws.cells(currowBrand,13)=cdbl(0)
		end if

		if tmpContract<>rs("Contract_No") then
			'Draw end line
			DrawRange Replace(WS.Cells(currow,6).Address,"$","",1,-1,1) & ":" & Replace(WS.Cells(currow,9).Address,"$","",1,-1,1),"BOTTOM"

			currowContract=currow+1

			ws.cells(currowContract,7)="'" & rs("CONTRACT_NO")
			tmpContractNo=rs("CONTRACT_NO")

			tmpProduct=""
			tmpCalType=""

			ws.cells(currowContract,8)="'" & GETTSMONTH(DateSerial(2000,cint("0" & rs("START_MONTH")),1)) & " " & (cint("0" & rs("START_YEAR"))+543)
			ws.cells(currowContract,9)="'" & GETTSMONTH(DateSerial(2000,cint("0" & rs("END_MONTH")),1)) & " " & (cint("0" & rs("END_YEAR"))+543)

		end if
		
		'Detail of contract
		currow=currow+1

		if (trim(rs("remark"))<>"") and  (trim(rs("remark")<>"null")) then
			ws.cells(currow,6)="'- หมายเหตุพิเศษ " & trim(rs("remark"))
			currow=currow+1
		end if

		if (tmpProduct<>rs("Product_Name")) or (tmpCalType<>rs("CALCULATE_TYPE")) then
			desc="" & rs("Product_Name")
			desc=desc & " คำนวณโดยวิธี "

			if rs("CALCULATE_TYPE")="F" then	desc=desc & " อัตราคงที่ " & cdbl("0" & rs("Fixed_Received_Amount")) & " บาท "
			if rs("CALCULATE_TYPE")="S" then	desc=desc & " เปอร์เซนต์จากยอดขายส่วนเพิ่ม "
			if rs("CALCULATE_TYPE")="P" then	desc=desc & " เปอร์เซนต์จากยอดขายทั้งหมด "
			if rs("CALCULATE_TYPE")="EW" then desc=desc & " ค่าสาธารณูปโภคหน่วยละ  " & cdbl("0" & rs("rate_multiply"))
			if rs("CALCULATE_TYPE")="FS" then	desc=desc & " อัตราคงที่+เปอร์เซนตจาก์ยอดขายส่วนเพิ่ม "
			if rs("CALCULATE_TYPE")="FP" then	desc=desc & " อัตราคงที่+เปอร์เซนต์จากยอดขายทั้งหมด "
			ws.cells(currow,6)="'" & desc
			currow=currow+1
		end if

		if (rs("CALCULATE_TYPE")<>"EW") and (rs("CALCULATE_TYPE")<>"F") then
			if rs("CALCULATE_TYPE")="FP" or rs("CALCULATE_TYPE")="P" then desc="- ยอดขายสุทธิตั้งแต่ "
			if rs("CALCULATE_TYPE")="FS" or rs("CALCULATE_TYPE")="S" then desc="- ยอดขายในช่วง "

			desc=desc & cdbl("0" & rs("min_revenue"))

			if cdbl("0" & rs("max_revenue"))<>0 then
				desc=desc & "-" & cdbl("0" & rs("max_revenue")) & " บาท/เดือน"
			else
				desc=desc  & " บาท/เดือนขึ้นไป"
			end if

			if cdbl("0" & rs("Fixed_Received_Amount"))<>0 then 
				desc=desc & " ค่าใช้จ่ายคงที่ " & cdbl("0" & rs("Fixed_Received_Amount")) & " บาท "
				if cdbl("0" & rs("RATE_MULTIPLY"))<>0 then desc=desc & "และ"
			end if
			
			if cdbl("0" & rs("RATE_MULTIPLY"))<>0 then 
				desc=desc & cdbl("0" & rs("RATE_MULTIPLY")) & "% ของยอดขาย"
				if rs("CALCULATE_TYPE")="FS" or rs("CALCULATE_TYPE")="S" then desc=desc & "ในขั้นรายได้นี้ "
				if rs("CALCULATE_TYPE")="FP" or rs("CALCULATE_TYPE")="P" then desc=desc & "สุทธิในแต่ละเดือน "
			end if
			ws.cells(currow,6)="'" & desc
		end if

		rs.movenext
	wend
	rs.close

	if currow=4 then
		currow=currow+1
		ws.cells(currow,1)="'ไม่พบข้อมูล"
	end if

	'Draw end line
	DrawRange Replace(WS.Cells(currow,1).Address,"$","",1,-1,1) & ":" & Replace(WS.Cells(currow,13).Address,"$","",1,-1,1),"BOTTOM"
	DrawRange Replace(WS.Cells(4,1).Address,"$","",1,-1,1) & ":" & Replace(WS.Cells(currow,1).Address,"$","",1,-1,1),"LEFT"
	for i=1 to 13
		DrawRange Replace(WS.Cells(4,i).Address,"$","",1,-1,1) & ":" & Replace(WS.Cells(currow,i).Address,"$","",1,-1,1),"RIGHT"
	next

	document.write "End Sheet 1...<BR>"
	'END SHEET 1
End Sub
</script>
</head>
<CENTER>กำลังประมวลผล</CENTER>
<script language="VBScript">
	Set conn = CreateObject("ADODB.Connection")
    Set rs = CreateObject("ADODB.Recordset")
	Set rs1 = CreateObject("ADODB.Recordset")
	Set rs2 = CreateObject("ADODB.Recordset")
	document.write "Database Connection...<BR>"
   	conn.Open "Provider=MSDAORA;Password=" & PASSWORD & ";User ID=" & USERNAME & ";Data Source=" & tns
	document.write "Complete...<BR>"
	document.write "Create file...<BR>"
    openexcelfile SharePath & "<%=(String)session.getValue("uID")%>CONTRACT_REPORT",FilePath & "CONTRACT_REPORT",1
	document.write "Complete...<BR>"
	document.write "Start report...<BR>"
	makereport
	document.write "Complete...<BR>"
	document.write "Save file...<BR>"
	saveexcelfile
	document.write "Complete...<BR>"
	MsgBox "COMPLETED"
	history.back()
</script>
<%@ include file="cwd.inc" %>