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
Public WS2
Private Sub DrawRange2(ran,side)
	If UCASE(side)="TOP" then edge=8 'xlEdgeTop
	If UCASE(side)="LEFT" then edge=7 'xlEdgeLeft
	If UCASE(side)="RIGHT" then edge=10 'xlEdgeRIGHT
	If UCASE(side)="BOTTOM" then edge=9 'xlEdgeBottom

	If UCASE(Style)="DOUBLE" then 
		WS2.Range(ran).Borders(edge).ColorIndex =-4105 'xlAutomatic
		WS2.Range(ran).Borders(edge).LineStyle =-4119 'xlDouble
	Else
		WS2.Range(ran).Borders(edge).ColorIndex =-4105 'xlAutomatic
		WS2.Range(ran).Borders(edge).LineStyle =1 'xlContinuous
		WS2.Range(ran).Borders(edge).Weight =2 'xlThin
	end if
end sub

Private Sub Statement(sel_branch,frMonth,EndDay,frYear)

'Header

WS.Cells(4,3)="=sum!"  & WS2.Cells(4,3).Address
WS.Cells(4,10)="=sum!"  & WS2.Cells(4,10).Address
WS.Cells(5,10)="=sum!"  & WS2.Cells(5,10).Address
rs.open "SELECT  distinct DL_SHIP_ID,CODE_NAME_7_11,NAME_7_11,AMOUNT,TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'yyyy')) as OPY,TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'mm')) as OPM,TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'dd')) as OPD FROM BRAND_BRANCH,CAL_REVENUECOST WHERE  BRAND_BRANCH.BRAND_BRANCH_ID = " & Trim(sel_branch) & "  AND BRAND_BRANCH.BRAND_BRANCH_ID (+) =CAL_REVENUECOST.BRAND_BRANCH_ID AND (TO_NUMBER(TO_CHAR(DATE_TIME,'mm')) =" & frMonth & ") AND (TO_NUMBER(TO_CHAR(DATE_TIME,'yyyy')) = " & frYear & ") and REVCOST_ID='0610' "	,conn
if Not rs.EOF then	
	WS.Cells(5,1) = "'"   & Trim(rs("CODE_NAME_7_11")) & " : " &  Trim(rs("NAME_7_11"))  & "(" & Trim(rs("DL_SHIP_ID")) & ")"
	if cint("0" & rs("OPY"))<>cint("" & frYear) then
		'Difference Year
		WS.Cells(5,8) = CINT(RS("AMOUNT"))
	else
		if cint("0" & rs("OPM"))<>cint("0" & frMonth) then
			'Different Month
			WS.Cells(5,8) = CINT(RS("AMOUNT"))
		else
			'Same Year Same Month
			'+1 Because 31-1+1=31
			WS.Cells(5,8)= CINT(EndDay)-cint("0" & rs("OPD"))+1
		end if
	end if
else
	WS.Cells(5,8)=WS2.Cells(5,8)
end if


rs.Close

rs.open "SELECT  NVL(CONTRACT_NO,' ') as CONTRACT_NO,CONTRACT_ID FROM CONTRACT WHERE  BRAND_BRANCH_ID = " & Trim(sel_branch) & " ORDER BY CONTRACT_ID DESC " ,conn
if Not rs.EOF then 
	WS.Cells(4,1) = "'เลขที่สัญญา "   & Trim(rs("CONTRACT_NO")) 
else
	WS.Cells(4,1) = "'เลขที่สัญญา " 
end if
rs.close
'******** Detail ****
scol=3

whereClause=" FROM  Cal_RevenueCost "
whereClause=whereClause & " WHERE (BRAND_BRANCH_ID ="&Trim(sel_branch)&") "
whereClause=whereClause & " AND (TO_NUMBER(TO_CHAR(DATE_TIME,'mm')) =" & frMonth & ") "
whereClause=whereClause & " AND (TO_NUMBER(TO_CHAR(DATE_TIME,'yyyy')) = " & frYear & ")"


sql= " SELECT distinct * from ( " 

sql=sql & " SELECT   distinct REVCOST_ID, Amount, VAT_Amt, TAX_Amt  "
sql=sql & whereClause
sql=sql & " and RevCosT_ID in ('0110','0120','0140','0310','0556','0556-01','0710-01','0520') "

sql=sql & " UNION "
sql=sql & " SELECT  '8888' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and RevCosT_ID = '8888'"

sql=sql & " UNION "
sql=sql & " SELECT  '8888-01' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
'sql=sql & " and RevCosT_ID = '8888-01'"
sql=sql & " and (RevCosT_ID = '3021' or RevCosT_ID = '3050')"

sql=sql & " UNION "
sql=sql & " SELECT  '0710' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and RevCosT_ID like '0710%' and RevCosT_ID<>'0710-01' "

sql=sql & " UNION "
sql=sql & " SELECT  '0410-1' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and (RevCosT_ID like '0410%' or RevCosT_ID like '0440%' or revCost_id='0430-03' or revCost_id='0430-04')"
sql=sql & " and RevCosT_ID <> '0410-06' "
sql=sql & " and amount>0 "
sql=sql & " and REVCost_ID in (select distinct REVCost_ID from revenueCost where (RevCosT_ID like '0410%'  or RevCosT_ID like '0440%' or revCost_id='0430-03' or revCost_id='0430-04') and VAT_RATE<>7) "

sql=sql & " UNION "
sql=sql & " SELECT  '0410-2' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and (RevCosT_ID like '0410%' or RevCosT_ID like '0440%' or revCost_id='7777' or revCost_id='0430-03' or revCost_id='0430-04') "
sql=sql & " and RevCosT_ID <> '0410-06' "
sql=sql & " and RevCosT_ID <> '0410-12' "
sql=sql & " and amount>0 "
sql=sql & " and REVCost_ID in (select distinct REVCost_ID from revenueCost where (RevCosT_ID like '0410%' or RevCosT_ID like '0440%' or revCost_id='0430-03' or revCost_id='0430-04' or revcost_id='7777') and VAT_RATE=7) "

sql=sql & " UNION "
sql=sql & " SELECT  '0410-3' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and (RevCosT_ID like '0410%' or RevCosT_ID like '0440%' or revCost_id='7777' or revCost_id='0430-03' or revCost_id='0430-04' ) "
sql=sql & " and RevCosT_ID <> '0410-06' "
sql=sql & " and RevCosT_ID <> '0410-12' "
sql=sql & " and amount<0 "

sql=sql & " UNION "
sql=sql & " SELECT  '0420-0' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%' ) "
sql=sql & " and RevCosT_ID <> '0430-03' "
sql=sql & " and RevCosT_ID <> '0430-04' "
sql=sql & " and amount>0 "
sql=sql & " and REVCost_ID in (select distinct REVCost_ID from revenueCost where (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%') and TAX_RATE=1 and (CPCODE not like '501%'  or CPCODE is null)) "


sql=sql & " UNION "
sql=sql & " SELECT  '0420-1' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%' ) "
sql=sql & " and RevCosT_ID <> '0430-03' "
sql=sql & " and RevCosT_ID <> '0430-04' "
sql=sql & " and amount>0 "
sql=sql & " and REVCost_ID in (select distinct REVCost_ID from revenueCost where (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%') and TAX_RATE=3 and (CPCODE not like '501%'  or CPCODE is null)) "

sql=sql & " UNION "
sql=sql & " SELECT  '0420-11' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%') "
sql=sql & " and RevCosT_ID <> '0430-03' "
sql=sql & " and RevCosT_ID <> '0430-04' "
sql=sql & " and REVCost_ID in (select distinct REVCost_ID from revenueCost where CPCODE like '501%') "

sql=sql & " UNION "
sql=sql & " SELECT  '0420-2' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%') "
sql=sql & " and RevCosT_ID <> '0430-03' "
sql=sql & " and RevCosT_ID <> '0430-04' "
sql=sql & " and amount>0 "
sql=sql & " and REVCost_ID in (select distinct REVCost_ID from revenueCost where (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%') and TAX_RATE=5 and (CPCODE not like '501%'  or CPCODE is null)) "

sql=sql & " UNION "
sql=sql & " SELECT  '0420-3' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%') "
sql=sql & " and RevCosT_ID <> '0430-03' "
sql=sql & " and RevCosT_ID <> '0430-04' "
sql=sql & " and amount>0 "
sql=sql & " and REVCost_ID in (select distinct REVCost_ID from revenueCost where (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%') and TAX_RATE=0 and (CPCODE not like '501%'  or CPCODE is null)) "

sql=sql & " UNION "
sql=sql & " SELECT  '0420-4' as  REVCOST_ID, NVL(SUM(Amount),0) as AMOUNT, NVL(SUM(VAT_Amt),0) as VAT_AMT, NVL(SUM(TAX_Amt),0) as TAX_AMT "
sql=sql & whereClause
sql=sql & " and (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%') "
sql=sql & " and RevCosT_ID <> '0430-03' "
sql=sql & " and RevCosT_ID <> '0430-04' "
sql=sql & " and amount<0 "
sql=sql & " and REVCost_ID in (select distinct REVCost_ID from revenueCost where (RevCosT_ID like '0420%' or  RevCosT_ID like '0430%') and (CPCODE not like '501%'  or CPCODE is null)) "

sql=sql & " ) ORDER BY REVCOST_ID "

rs.open sql,conn

while not (rs.eof or rs.bof)
	select case rs("REVCOST_ID")
		'ยอดขาย
		case "0110"
				srow=7
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'กำไรขั้นต้น
		case "0140"
				srow=8
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'รายได้อื่น
		case "0120"
				srow=9
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ค่าจ้างบริหาร
		case "0310"
				srow=11
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'เงินคืน
		case "0710"
				srow=12
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ปป. ค่าจ้าง
		case "8888"
				srow=13
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'สินไหมทดแทนจ่ายคืน
		case "8888-01"
				srow=14
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'เงินคืน EMS
		case "0710-01"
				srow=18
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'หนี้สิน
		case "0520"
				srow=19
				WS.Cells(srow,scol ) = "0"
				WS2.Cells(srow,scol)=WS2.Cells(srow,scol)
				WS.Cells(srow,scol+6) = "0"
				WS2.Cells(srow,scol+6)=WS2.Cells(srow,scol+6)
		'ค่าสินค้า NONVAT
		case "0410-1"
				srow=24
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ค่าสินค้า VAT
		case "0410-2"
				srow=25
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ลดหนี้ค่าสินค้า
		case "0410-3"
				srow=27
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ปป.ค่าสินค้า
		case "0556"
				srow=26
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ค่าบริการ 1%
		case "0420-0"
				srow=29
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ค่าบริการ 3%
		case "0420-1"
				srow=30
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ค่าใช้จ่ายมาตรฐาน
		case "0420-11"
			if rs("Amount") <> "" then 
				if cdbl(rs("Amount"))>0 then
					srow=30
				else
					srow=34
				end if
				WS.Cells(srow,scol ) =WS.Cells(srow,scol )+ cdbl(rs("Amount"))
				WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
			else
				WS.Cells(srow,scol ) = WS.Cells(srow,scol )
			end if

		'ค่าบริการ 5%
		case "0420-2"
				srow=31
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ค่าบริการ 0%
		case "0420-3"
				srow=32
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

		'ลดหนี้ค่าบริการ
		case "0420-4"
				srow=34
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = WS.Cells(srow,scol ) + formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = WS.Cells(srow,scol )
				end if

		'ปป. ค่าบริการ
		case "0556-01"
				srow=33
				if rs("Amount") <> "" then 
					WS.Cells(srow,scol ) = formatnumber(rs("Amount"),2)
					WS2.Cells(srow,scol)=WS2.Cells(srow,scol) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol ) = "0"
				end if

				if rs("Tax_Amt") <> "" then
					WS.Cells(srow,scol+6) = formatnumber(rs("Tax_Amt"),2)
					WS2.Cells(srow,scol+6)=WS2.Cells(srow,scol+6) +  cdbl(rs("Amount"))
				else
					WS.Cells(srow,scol+6) = "0"
				end if

	end select

	rs.movenext
wend
rs.close

currow=35
'Listing Goods
currow=currow+1
stRow=currow
WS.Cells(currow,1)="(A) รายการสินค้า"
WS.Cells(currow,1).Font.Bold=True

sql= "SELECT distinct REVENUECOST.REVCOST_ID,REVCOST_DESC,AMOUNT "
sql=sql & " from CAL_REVENUECOST,REVENUECOST "
sql=sql & " where CAL_REVENUECOST.REVCOST_ID=REVENUECOST.REVCOST_ID "
sql=sql & " and (BRAND_BRANCH_ID ="&Trim(sel_branch)&") "
sql=sql & "  AND (TO_NUMBER(TO_CHAR(DATE_TIME,'mm')) =" & frMonth & ") "
sql=sql & "  AND (TO_NUMBER(TO_CHAR(DATE_TIME,'yyyy')) = " & frYear & ")"
sql=sql & " and (REVENUECOST.RevCosT_ID like '0410%' or REVENUECOST.RevCosT_ID like '0440%' or REVENUECOST.REVCOST_ID='7777' or REVENUECOST.REVCOST_ID='0430-03' or REVENUECOST.REVCOST_ID='0430-04') "
sql=sql & " and REVENUECOST.RevCosT_ID <> '0410-06' "
sql=sql & " and REVENUECOST.RevCosT_ID <> '0410-12' "
sql=sql & " ORDER BY REVENUECOST.REVCOST_ID "

rs.open sql,conn
while not (rs.eof or rs.bof)
	currow=currow+1
	WS.Cells(currow,1)="'          " & rs("revcost_desc")
	WS.Cells(currow,3)="" & rs("AMOUNT")
	rs.movenext
wend
rs.close
if strow<>currow then ws.cells(strow,3)="=sum(" & ws.cells(strow+1,3).Address & ":" & ws.cells(currow,3).Address & ")"
WS.Cells(strow,3).Font.Bold=True

'Listing Service
currow=currow+1
stRow=currow
WS.Cells(currow,1)="(B) รายการค่าบริการ"
WS.Cells(currow,1).Font.Bold=True

sql= "SELECT distinct * from (select distinct REVENUECOST.REVCOST_ID,REVCOST_DESC,AMOUNT "
sql=sql & " from CAL_REVENUECOST,REVENUECOST "
sql=sql & " where CAL_REVENUECOST.REVCOST_ID=REVENUECOST.REVCOST_ID "
sql=sql & " and (BRAND_BRANCH_ID ="&Trim(sel_branch)&") "
sql=sql & "  AND (TO_NUMBER(TO_CHAR(DATE_TIME,'mm')) =" & frMonth & ") "
sql=sql & "  AND (TO_NUMBER(TO_CHAR(DATE_TIME,'yyyy')) = " & frYear & ")"
sql=sql & " and (REVENUECOST.RevCosT_ID like '0420%'  or REVENUECOST.RevCosT_ID like '0430%') "
sql=sql & " and REVENUECOST.RevCosT_ID <> '0430-03' "
sql=sql & " and REVENUECOST.RevCosT_ID <> '0430-04' "
sql=sql & " and (REVENUECOST.CPCODE not like '501%' or REVENUECOST.CPCODE is null) "
sql=sql & " UNION "
sql=sql & "SELECT distinct '5010' as REVCOST_ID,'ค่าใช้จ่ายเพื่อให้เป็นไปตามมาตรฐานร้าน' as REVCOST_DESC,SUM(AMOUNT) as AMOUNT"
sql=sql & " from CAL_REVENUECOST,REVENUECOST "
sql=sql & " where CAL_REVENUECOST.REVCOST_ID=REVENUECOST.REVCOST_ID "
sql=sql & " and (BRAND_BRANCH_ID ="&Trim(sel_branch)&") "
sql=sql & "  AND (TO_NUMBER(TO_CHAR(DATE_TIME,'mm')) =" & frMonth & ") "
sql=sql & "  AND (TO_NUMBER(TO_CHAR(DATE_TIME,'yyyy')) = " & frYear & ")"
sql=sql & " and (REVENUECOST.CPCODE like '501%') ) x"
sql=sql & " ORDER BY REVCOST_ID "
rs.open sql,conn
while not (rs.eof or rs.bof)
	currow=currow+1
	WS.Cells(currow,1)="'          " & rs("revcost_desc")
	WS.Cells(currow,3)="" & rs("AMOUNT")
	rs.movenext
wend
rs.close
if strow<>currow then ws.cells(strow,3)="=sum(" & ws.cells(strow+1,3).Address & ":" & ws.cells(currow,3).Address & ")"
WS.Cells(strow,3).Font.Bold=True

'ตรวจรับ
currow=currow+1
WS.Cells(currow,1)="กรรมการตรวจรับ"
WS.Cells(currow,1).Font.Bold=True
DrawRange Replace(getCellName(currow,1),"$","",1,-1,1) & ":" & Replace(getCellName(currow,11),"$","",1,-1,1),"TOP"

currow=currow+2
Ws.cells(currow,1)=" …………………………………….."
Ws.cells(currow,1).HorizontalAlignMent=-4108
Ws.cells(currow+1,1)="(นางพัชรา อนามบุตร)"
Ws.cells(currow+1,1).HorizontalAlignMent=-4108
Ws.cells(currow+2,1)="ประธานกรรมการ"
Ws.cells(currow+2,1).HorizontalAlignMent=-4108
Ws.cells(currow+3,1)="………./………./………."
Ws.cells(currow+3,1).HorizontalAlignMent=-4108

Ws.cells(currow,4)=" …………………………………….."
Ws.cells(currow,4).HorizontalAlignMent=-4108
Ws.cells(currow+1,4)="(นางวิภา  อธิบาย)"
Ws.cells(currow+1,4).HorizontalAlignMent=-4108
Ws.cells(currow+2,4)="กรรมการ"
Ws.cells(currow+2,4).HorizontalAlignMent=-4108
Ws.cells(currow+3,4)="………./………./………."
Ws.cells(currow+3,4).HorizontalAlignMent=-4108

Ws.cells(currow,10)=" …………………………………….."
Ws.cells(currow,10).HorizontalAlignMent=-4108
Ws.cells(currow+1,10)="(นางศศพร  พัฒนาภรณ์)"
Ws.cells(currow+1,10).HorizontalAlignMent=-4108
Ws.cells(currow+2,10)=" กรรมการและเลขานุการ"
Ws.cells(currow+2,10).HorizontalAlignMent=-4108
Ws.cells(currow+3,10)="………./………./………."
Ws.cells(currow+3,10).HorizontalAlignMent=-4108

'EBIDA
currow=currow+5

WS.cells(currow,1)=" EBITDA ของ ปตท."
WS.cells(currow+1,1)=" 4% ของ ปตท."
WS.cells(currow+2,1)=" รวม"

WS.cells(currow,3)="=((C10*0.81)-C11)"
WS.cells(currow+1,3)="=C10*0.04"
WS.cells(currow+2,3)="=SUM(" & WS.Cells(currow,3).Address & ":" & WS.Cells(currow+1,3).Address & ")"

WS.cells(currow,5)="=ROUND(" & WS.Cells(currow,3).Address & "*0.07,2)"
WS.cells(currow+1,5)="=ROUND(" & WS.Cells(currow+1,3).Address & "*0.07,2)"
WS.cells(currow+2,5)="=ROUND(" & WS.Cells(currow+2,3).Address & "*0.07,2)"

WS.cells(currow,7)="=ROUND(" & WS.Cells(currow,3).Address & "+" & WS.Cells(currow,5).Address & ",2)"
WS.cells(currow+1,7)="=ROUND(" & WS.Cells(currow+1,3).Address & "+" & WS.Cells(currow+1,5).Address & ",2)"
WS.cells(currow+2,7)="=ROUND(" & WS.Cells(currow+2,3).Address & "+" & WS.Cells(currow+2,5).Address & ",2)"

WS.cells(currow,9)="=ROUND(" & WS.Cells(currow,3).Address & "*0.03,2)"
WS.cells(currow+1,9)="=ROUND(" & WS.Cells(currow+1,3).Address & "*0.03,2)"
WS.cells(currow+2,9)="=ROUND(" & WS.Cells(currow+2,3).Address & "*0.03,2)"

WS.cells(currow,11)="=ROUND(" & WS.Cells(currow,7).Address & "-" & WS.Cells(currow,9).Address & ",2)"
WS.cells(currow+1,11)="=ROUND(" & WS.Cells(currow+1,7).Address & "-" & WS.Cells(currow+1,9).Address & ",2)"
WS.cells(currow+2,11)="=ROUND(" & WS.Cells(currow+2,7).Address & "-" & WS.Cells(currow+2,9).Address & ",2)"

End Sub

Private Sub makereport(supID,supName,selBranch)

	NYear = Year(Date)	'find Current Year from Current Date
	NMonth=Month(Date)	'find Current Month from Current Date
    If NYear < 2500 Then NYear = NYear + 543

'==================Get Criteria==============
	<%if((request.getParameter("sel_year")!=null) && (request.getParameter("sel_month")!=null)){%>
		frMonth=cint("<%=request.getParameter("sel_month")%>")
		frYear=cint("<%=request.getParameter("sel_year")%>")-543
	<%}%>		

	whereClause=""
	if trim(selbranch)<>"0" then whereClause=" and BRAND_BRANCH.BRAND_BRANCH_ID=" & selBranch 

	'Update to count only parameter appliable branch and status is open 08-06-2005
	'Not Close during choice
	whereClause= whereClause & " and (BRAND_BRANCH.CLOSE_DATE is NULL " 
	whereClause= whereClause & " OR             (TO_NUMBER(TO_CHAR(BRAND_BRANCH.CLOSE_DATE,'yyyy')) > " & frYear
	whereClause= whereClause & "                    OR             (TO_NUMBER(TO_CHAR(BRAND_BRANCH.CLOSE_DATE,'yyyy')) = " & frYear & " AND TO_NUMBER(TO_CHAR(BRAND_BRANCH.CLOSE_DATE,'mm')) >=" & frMonth & ") ) ) "

	'Open during choice
	whereClause= whereClause & " AND (TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'yyyy')) < " & frYear
	whereClause= whereClause & "                    OR             (TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'yyyy')) = " & frYear & " AND TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'mm')) <=" & frMonth & ") ) "

	SQL="Select nvl(Count(*),0) from (select distinct brand_branch_id from BRAND_BRANCH where DL_V_ID='" & supID &"' and BRAND_ID=141 and OPERATE_TYPE='2' " & whereClause & " ) x "

	rs.open SQL,conn
	TBranch=rs(0)
	rs.close

	if frYear<2500 then fryear=cint(frYear)+543
	frYear=cint(frYear)-543
	'check EndDay of month
	Feb_Check=cint(frYear)  Mod 4		'ตรวจสอบวันที่ 29 หรือ 28 ของเดือน กพ.	
    If (cint(frMonth)= 1) or (cint(frMonth)= 3) or (cint(frMonth)= 5) or (cint(frMonth)=7) or (cint(frMonth)=8) or (cint(frMonth)=10) or (cint(frMonth)=12) Then																							EndDay = 31
	If (cint(frMonth)= 4) or (cint(frMonth)= 6) or (cint(frMonth) = 9) or (cint(frMonth) = 11) Then EndDay = 30
	If (cint(frMonth)=2) and (cint(Feb_Check)=0) then	EndDay = 29
	If (cint(frMonth)=2) and (cint(Feb_Check)<>0) then	EndDay= 28

'============= Sheet 1 ==============
selectsheet 1
WS.Cells(3,9) = "      /" & CInt(NYear)-2500
WS.Cells(4,9) = "'" & Day(Date) & " " & GetTMonth(Date) & " " & NYear

finalMonth=cint(frMonth)+1
finalYear=cint(frYear)+543

if cint(finalMonth)>12 then
	finalMonth=1
	finalYear=cint(finalYear)+1
end if

Ws.cells(38,6)="'25 " & getTMonth(CDATE("" & finalmonth & "/" & finalmonth & "/2002")) & " " & finalYear
'============= Sheet 2 ==============
'Can Reference within sheet
Set WS2 = WB.Worksheets(2)
WS2.Cells(22,7)="'20 " & getTMonth(CDATE("" & finalmonth & "/" & finalmonth & "/2002")) & " " & finalYear

'============= Sheet 3 (Statement) ==============
if cint(TBranch) > 0 then
	'เลือก sheet ต้นฉบับ
	selectsheet 3
	'วนลูปสร้าง sheet		
	duplicatesheet2 Cint(TBranch)+1,3
end if

'SQL="Select distinct CODE_NAME_7_11,BRAND_BRANCH.BRAND_BRANCH_ID from BRAND_BRANCH where DL_V_ID='" & supID &"' and BRAND_ID=141 and OPERATE_TYPE='2' " & whereClause & " order by CODE_NAME_7_11 "
'New Script using Exact Opendate
'Find is there any open branch before this period
SQL="Select distinct BRAND_BRANCH.OPEN_DATE from BRAND_BRANCH where DL_V_ID='" & supID &"' and BRAND_ID=141 and OPERATE_TYPE='2' " & whereClause
SQL= SQL & " AND TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'yyyymm')) <"  & frYear & frMonth
rs2.open sql,conn
if not (rs2.eof or rs2.bof) then found=1 else found =0
rs2.close


SQL="Select distinct CODE_NAME_7_11,BRAND_BRANCH.BRAND_BRANCH_ID,TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'yyyy')) as OPY,TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'mm')) as OPM,TO_NUMBER(TO_CHAR(BRAND_BRANCH.OPEN_DATE,'dd')) as OPD from BRAND_BRANCH where DL_V_ID='" & supID &"' and BRAND_ID=141 and OPERATE_TYPE='2' " & whereClause & " order by CODE_NAME_7_11 "
rs2.open sql,conn

if Not (rs2.EOF or rs2.bof) then w=4
Set WS2 = WB.Worksheets(3)
'Header
WS2.Cells(4,3)="'"  & SUPID & " : " & SUPNAME
WS2.Cells(4,10)="'"  & GETTMonth(CDate("" & frMonth & "/" & frMonth &"/2002")) & " " & cint(frYear)+543
WS2.Cells(5,1)= "จำนวนรวม  " & TBRanch & " สาขา"
if cint("0" & rs2("OPY"))<>cint("" & frYear) then
	'Difference Year
	WS2.Cells(5,8)= CInt(EndDay)
else
	if cint("0" & rs2("OPM"))<>cint("0" & frMonth) then
		'Different Month
		WS2.Cells(5,8)= CInt(EndDay)
	else
		'Same Year Same Month
		'+1 Because 31-1+1=31
		WS2.Cells(5,8)= CInt(EndDay)-cint("0" & rs2("OPD"))+1
	end if
end if

'Recovery if found some branch open before this period
if found=1 then 	WS2.Cells(5,8)= CInt(EndDay)

WS2.Cells(5,10)="'"  & EndDay & " " & GETTMonth(CDate("" & frMonth & "/" & frMonth &"/2002")) & " " & cint(frYear)+543
WS2.Cells(7,1)="=""ยอดขายสินค้า(ไม่รวมรายได้อื่นๆ) ("" & TEXT(ROUND(C7/H5/" & TBranch & ",0),""#,##0"") & "" บาทต่อสาขาต่อวัน)"""

'ตรวจรับ
WS2.Cells(36,1)="กรรมการตรวจรับ"
WS2.Cells(36,1).Font.Bold=True
DrawRange2 Replace(getCellName(35,1),"$","",1,-1,1) & ":" & Replace(getCellName(35,11),"$","",1,-1,1),"TOP"

Ws2.cells(38,1)=" …………………………………….."
Ws2.cells(38,1).HorizontalAlignMent=-4108
Ws2.cells(39,1)="(นางพัชรา อนามบุตร)"
Ws2.cells(39,1).HorizontalAlignMent=-4108
Ws2.cells(40,1)="ประธานกรรมการ"
Ws2.cells(40,1).HorizontalAlignMent=-4108
Ws2.cells(41,1)="………./………./………."
Ws2.cells(41,1).HorizontalAlignMent=-4108

Ws2.cells(38,4)=" …………………………………….."
Ws2.cells(38,4).HorizontalAlignMent=-4108
Ws2.cells(39,4)="(นางวิภา  อธิบาย)"
Ws2.cells(39,4).HorizontalAlignMent=-4108
Ws2.cells(40,4)="กรรมการ"
Ws2.cells(40,4).HorizontalAlignMent=-4108
Ws2.cells(41,4)="………./………./………."
Ws2.cells(41,4).HorizontalAlignMent=-4108

Ws2.cells(38,10)=" …………………………………….."
Ws2.cells(38,10).HorizontalAlignMent=-4108
Ws2.cells(39,10)="(นางศศพร  พัฒนาภรณ์)"
Ws2.cells(39,10).HorizontalAlignMent=-4108
Ws2.cells(40,10)=" กรรมการและเลขานุการ"
Ws2.cells(40,10).HorizontalAlignMent=-4108
Ws2.cells(41,10)="………./………./………."
Ws2.cells(41,10).HorizontalAlignMent=-4108

'EBIDA
WS2.cells(55,1)=" EBITDA ของ ปตท."
WS2.cells(56,1)=" 4% ของ ปตท."
WS2.cells(57,1)=" รวม"

WS2.cells(55,3)="=((C10*0.81)-C11)"
WS2.cells(56,3)="=C10*0.04"
WS2.cells(57,3)="=SUM(" & WS2.Cells(54,3).Address & ":" & WS2.Cells(55,3).Address & ")"

WS2.cells(55,5)="=ROUND(" & WS2.Cells(54,3).Address & "*0.07,2)"
WS2.cells(56,5)="=ROUND(" & WS2.Cells(55,3).Address & "*0.07,2)"
WS2.cells(57,5)="=ROUND(" & WS2.Cells(56,3).Address & "*0.07,2)"

WS2.cells(55,7)="=ROUND(" & WS2.Cells(54,3).Address & "+" & WS2.Cells(54,5).Address & ",2)"
WS2.cells(56,7)="=ROUND(" & WS2.Cells(55,3).Address & "+" & WS2.Cells(55,5).Address & ",2)"
WS2.cells(57,7)="=ROUND(" & WS2.Cells(56,3).Address & "+" & WS2.Cells(56,5).Address & ",2)"

WS2.cells(55,9)="=ROUND(" & WS2.Cells(54,3).Address & "*0.03,2)"
WS2.cells(56,9)="=ROUND(" & WS2.Cells(55,3).Address & "*0.03,2)"
WS2.cells(57,9)="=ROUND(" & WS2.Cells(56,3).Address & "*0.03,2)"

WS2.cells(55,11)="=ROUND(" & WS2.Cells(54,7).Address & "-" & WS2.Cells(54,9).Address & ",2)"
WS2.cells(56,11)="=ROUND(" & WS2.Cells(55,7).Address & "-" & WS2.Cells(55,9).Address & ",2)"
WS2.cells(57,11)="=ROUND(" & WS2.Cells(56,7).Address & "-" & WS2.Cells(56,9).Address & ",2)"

While Not (rs2.EOF or rs2.bof)
	selectsheet w
	if "" & Trim(rs2("CODE_NAME_7_11")) ="" then 
		ws.Name="UNKNOWN"
	else
		ws.Name=Trim(rs2("CODE_NAME_7_11"))
	end if
	BBId = "" & Trim(rs2("BRAND_BRANCH_ID"))
	Statement BBId,frMonth,EndDay,frYear		'Call Sub
	rs2.movenext
	w = w+1
Wend
rs2.close
End Sub
</script>
</head>
<CENTER>กำลังประมวลผล</CENTER>
<script language="VBScript">
	supp=trim("<%=request.getParameter("sel_supplier")%>")
	sel_branch=trim("<%=request.getParameter("sel_branch")%>")

	<%if((request.getParameter("sel_year")!=null) && (request.getParameter("sel_month")!=null)){%>
		frMonth=<%=request.getParameter("sel_month")%>
		frYear=<%=request.getParameter("sel_year")%>
	<%}%>		
	if frYear<2500 then fryear=frYear+543
	frYear=frYear-543

	Set conn = CreateObject("ADODB.Connection")
    Set rs = CreateObject("ADODB.Recordset")
	Set rs1 = CreateObject("ADODB.Recordset")
	Set rs2 = CreateObject("ADODB.Recordset")
	Set rs_supl = CreateObject("ADODB.Recordset")
   	conn.Open "Provider=MSDAORA;Password=" & PASSWORD & ";User ID=" & USERNAME & ";Data Source=" & tns

	if trim(supp)<>"0" then	whereClause=" and DL_V_ID='" & supp & "'"

	rs_supl.open "select distinct DL_V_ID,SUPPLIER_NAME from brand_branch,cal_revenueCost,supplier where cal_revenueCost.brand_branch_id=brand_branch.brand_branch_id and OPERATE_TYPE='2' and brand_id=141 and (TO_NUMBER(TO_CHAR(DATE_TIME,'mm')) =" & frMonth & ") AND (TO_NUMBER(TO_CHAR(DATE_TIME,'yyyy')) = " & frYear & ") and DL_V_ID=SUPPLIER.SUPPLIER_ID" & whereClause,conn
	
	while not (rs_supl.bof or rs_supl.eof)
	    openexcelfile SharePath & "<%=(String)session.getValue("uID")%>rep0200_" & rs_supl(0),FilePath & "rep0200",1
		selectsheet 1
		makereport rs_supl(0),rs_supl(1),sel_branch
		saveexcelfile
		rs_supl.movenext
	wend
	MsgBox "COMPLETED"
	window.close
</script>
<%@ include file="cwd.inc" %>