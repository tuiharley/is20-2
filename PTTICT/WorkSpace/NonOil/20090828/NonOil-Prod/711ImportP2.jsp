<%@ page contentType="text/html;charset=WINDOWS-874" %> 

<%@ page import="java.util.*"%>

<%@ page import="java.text.*" %>

<%@ include file="ThaiEncode.inc" %>

<head>

<meta http-equiv="Content-Language" content="th">

<meta http-equiv="Content-Type" content="text/html; charset=windows-874">

<title>ระบบงานบริหารธุรกิจเสริม : บริษัท ปตท. จำกัด (มหาชน)</title>

</head>

<script language="VBScript">

Public rs,rsh,rst,conn,parameterClause,parameterClause2,sql,tempBB

Public DBBrBUType,DBBrOPType,DBBrManage,DBBrSupplier,DBBrName,DBBrManagerName,DBBrSPPay,DBOPDate

Public dupID,newSlip



'USED AT PTT

USERNAME="nonoil711"

PASSWORD="london711"

SERVERNAME="202.44.0.88"

portNo="1521"

sid="OIL"

FILEPATH="\\hq-web-s02\nonoil7-11\exceltemplate\"

tns="nonoil-prd"



SharePath="c:\temp\"





RCType=""

RCRATE=0

RCRCode=""

VATRATE=0

TAXRATE=0



'****************************************************************************************

function checkBrName(brName)

	rs.open "SELECT BRAND_BRANCH_ID,Building_Owner,Operate_Type,Manage_Type,supplier_ID,Name_7_11,SPECIAL_PAYMENT,TO_NUMBER(TO_CHAR(NVL(BRAND_BRANCH.CP_OPENDATE,BRAND_BRANCH.OPEN_DATE),'yy'))+43 as OPY,TO_NUMBER(TO_CHAR(NVL(BRAND_BRANCH.CP_OPENDATE,BRAND_BRANCH.OPEN_DATE),'mm')) as OPM,TO_NUMBER(TO_CHAR(NVL(BRAND_BRANCH.CP_OPENDATE,BRAND_BRANCH.OPEN_DATE),'dd')) as OPD from BRAND_BRANCH where CODE_NAME_7_11 = '" & brName & "' and CLOSE_DATE is null",conn,3,3

	x=0

	if not (rs.eof or rs.bof) then

		x=rs("BRAND_BRANCH_ID")

		DBBrBUType=rs("Building_Owner") '1=Dearler 2=PTT

		DBBrOPType=rs("Operate_Type") '1=rent or 2=FC or 3=DFC

		DBBrManage=rs("Manage_Type") '1=CP 2=COMPANY 3=Dealer

		DBBrSupplier=rs("supplier_ID") 'Manager Company

		DBBrName=rs("Name_7_11") 'CP Branch Name

		DBBrSPPay=0

		DBOPDate="" & Right("00" & rs("OPD"),2) &"/" & Right("00" & rs("OPM"),2) & "/" & Right("00" & rs("OPY"),2)

		if TRIM("" & rs("SPECIAL_PAYMENT"))<>"" then 

			DBBrSPPay=cdbl(rs("SPECIAL_PAYMENT"))

		else

			DBBrSPPay=0

		end if

	else

		x=0

		DBBrBUType=""

		DBBrOPType=""

		DBBrManage=""

		DBBrSupplier=""

		DBBrName=""

		DBBrSPPay=0

		DBOPDate=""

	end if

	rs.close

	checkBrName=x

end function



function checkRevCostID(revCostDesc)

	rs.open "SELECT * from revenueCost where revCost_id = '" & revCostDesc & "'",conn,3,3

	x=""

	if not (rs.eof or rs.bof) then

		x="" & rs("revCost_ID")

		RCType="" & rs("RCTYPE")

		RCRCode="" & rs("RCRCode")

		tempRC="" & rs("RCRATE")

		if tempRC<>"" then RCRATE=CDBL(tempRC)/100

		tempRC="" & rs("VAT_RATE")

		if tempRC<>"" then VATRATE=CDBL(tempRC)/100

		tempRC="" & rs("TAX_RATE")

		if tempRC<>"" then TAXRATE=CDBL(tempRC)/100

	else

		x="0"

		RCType=""

		RCRCode=""

		RCRate=0

		VATRate=0

		TAXRate=0

	end if

	rs.close

	checkRevCostID="" & x

end function



function checkRevCostCPID(revCostDesc)

	rs.open "SELECT * from revenueCost where CPCODE = '" & revCostDesc & "'",conn,3,3

	x=""

	if not (rs.eof or rs.bof) then

		x="" & rs("revCost_ID")

		RCType="" & rs("RCTYPE")

		RCRCode="" & rs("RCRCode")

		tempRC="" & rs("RCRATE")

		if tempRC<>"" then RCRATE=CDBL(tempRC)/100

		tempRC="" & rs("VAT_RATE")

		if tempRC<>"" then VATRATE=CDBL(tempRC)/100

		tempRC="" & rs("TAX_RATE")

		if tempRC<>"" then TAXRATE=CDBL(tempRC)/100

	else

		x="0"

		RCType=""

		RCRCode=""

		RCRate=0

		VATRate=0

		TAXRate=0

	end if

	rs.close

	checkRevCostCPID="" & x

end function



function strRound(param,flag)

	tempParam="" & param

	tempPoint=InStr(tempParam,".")

	'Integer

	if tempPoint=0 then 

		tparam=Clng(tempparam)

	else

		'Round up

		if (Cint(Mid(tempParam,tempPoint+1,1))>=5) or (cint(flag)=1) then 

			tparam=Clng(Mid(tempParam,1,tempPoint-1))

			tparam=tparam+1

		'Round Down

		else

			tparam=Clng(Mid(tempParam,1,tempPoint-1))

		end if

	end if

	strRound=tparam

end function

'****************************************************************************************

function Ymanage(param,prate,opdate,todate)

'SKIP ROUND UP

'	param=strround(param,1)

	rs.open "select * from ManageCost_Rate  order by MIN_SALE",conn

	x=0

	currentParam=cdbl(param)

	if cdbl(toDate)<>1 then

		while not (rs.eof or rs.bof)

			if (cdbl(param)>cdbl(rs("min_sale"))-1) and (cdbl(currentParam)>0)  then 

				'if (cdbl(param)>=cdbl(rs("max_sale"))) and (not isnull(rs("max_sale")))  and (cdbl(rs("max_sale"))<>0) then

				'UPDATE THE FUNCTION TO ROUND DOWN WHEN LOOKUP THE TABLE

				if (cdbl(param)>=cdbl(rs("max_sale"))) and (not isnull(rs("max_sale")))  and (cdbl(rs("max_sale"))<>0) then

					if cdbl(rs("MIN_SALE"))=0 then

						x=x+((cdbl(rs("MAX_SALE"))-cdbl(rs("MIN_SALE")))*cdbl(rs("WagesManage_Rate"))*cdbl(opdate)*cdbl(prate)/100)

						x=x+cdbl(rs("FIX_RATE"))*(cdbl(opdate)/cdbl(todate))

					else

						x=x+((cdbl(rs("MAX_SALE"))-cdbl(rs("MIN_SALE"))+1)*cdbl(rs("WagesManage_Rate"))*cdbl(opdate)*cdbl(prate)/100)

						x=x+cdbl(rs("FIX_RATE"))*(cdbl(opdate)/cdbl(todate))

					end if

					currentParam=cdbl(param)-cdbl(rs("MAX_Sale"))

				else

					x=x+(cdbl(currentParam)*cdbl(rs("WagesManage_Rate"))*cdbl(opdate)*cdbl(prate)/100)

					x=x+cdbl(rs("FIX_RATE"))*(cdbl(opdate)/cdbl(todate))

					currentParam=0

				end if

			end if

			rs.moveNext

		wend

	else

		'Other Income

		x=cdbl(currentParam)*0.30

	end if

	rs.close

	Ymanage=x

end function



'********************************************************************************************

sub checkExistData(revCostID,brandBranchID,monthP,yearP,refNO)

	conn.execute "DELETE  from Cal_RevenueCost where revCost_ID = '" & revCostID & "' and brand_Branch_ID=" & brandBranchID & " and DATE_TIME=TO_DATE('" & monthP & "/01/" & yearP & "' ,'mm/dd/yyyy') and ref_no='" & refNO & "'"

end sub



'*********************************************************************************************

sub updateData (revCostID,brandBranchID,yearP,monthP,amount,refNo,docDate,nonvatFlag)

	'Amount IS BASE AMOUNT

	'Calculate the VAT and TAX

	'Change to expense



	if revCostID="0410-06" and cdbl(amount)>=0 and cdbl(amount) <2000 then

		revCostID="0410-08"

	end if



	checkRevCostID revCostID

	VAT_RATE=VATRATE

	if trim(nonvatFlag)<>"" then VAT_RATE=0



	TAX_RATE=TAXRATE

	'Not calculate if amount lower than 1000

	If amount <1000 then TAX_RATE=0



	if trim(docDate)<>"" then 

		docD=mid(docDate,1,2)

		docM=mid(docDate,4,2)

		docY="" & (Cint(mid(docDate,7,2))+2500-543)

		docScript=", TO_DATE ('" & docD & docM & docY  & "','ddmmyyyy'),'"

	else

		docScript=", TO_DATE ('" & yearP & "-" & monthP & "-01"   & "','yyyy-mm-dd'),'"

	end if

	checkExistData revCostID,brandBranchID,monthP,yearP,refNo

	SQL= "INSERT INTO cal_RevenueCost(BRAND_BRANCH_ID,DATE_TIME,RevCost_ID, Amount,VAT_Amt,Tax_Amt,Ref_No) "

	SQL=SQL & " VALUES (" &  brandBranchID & docScript & revCostID & "'," & amount & "," & amount * VAT_RATE & "," & amount * TAX_RATE & ",'" & refNo &"')"

	conn.execute SQL

end sub



'*******************************************************************************************

sub importTextFile(Src1,Src2,Src3,postday,postmonth,postyear)

Set fs = CreateObject("Scripting.FileSystemObject")

Set fs2 = CreateObject("Scripting.FileSystemObject")

Set fs3 = CreateObject("Scripting.FileSystemObject")



postyear="" & (Cint(postyear)-543)



monthC=2

yearC=2009

if monthC=1 then 

	yearC=yearC-1

	monthC=12

else

	monthC=monthC-1

end if





'Check data exist

	SQL="SELECT nvl(COUNT(*) ,0) as x from receipt_desc where upload_flag=1 "

	SQL=SQL & " or Doc_date>=TO_DATE('" & monthC & "/01/" & yearC & "','mm/dd/yyyy')"



	rs.open SQL,conn,3,3

	if clng(rs("X"))>0 then

		flagWork=MsgBox ("มีการนำเข้าข้อมูลในรอบบัญชีนี้แล้ว" & chr(13) & "คุณต้องการจะล้างข้อมูลและนำเข้าใหม่หรือไม่",4)

		if flagwork=6 then

			conn.execute "DELETE RECEIPT_DESC where Doc_date>=TO_DATE('" & monthC & "/01/" & yearC & "','mm/dd/yyyy')"

		else

			flagWork=MsgBox ("คุณต้องการจะนำเข้าใหม่หรือไม่",4)

			if flagwork<>6 then

				exit sub

			end if

		end if

	end if

	rs.close



'=================================================================================

MsgBox "PROCESS CP FILES AND MAKE CP PAYMENT"



'Process file

Set Data = fs.OpenTextFile(Src1)

recco=0

While Data.AtEndOfStream <> True

	textline = Data.ReadLine()

	if trim(textline)<>"" then

	 if len(textline)>=2 then

		recco=recco+1

		word = Split(textline, Chr(9), -1, 1)

		brName=Right("00000" & Trim(word(0)),5)

		document.frm1.recco.value="f1" & recco & "-1"

		' Process only not define branch parameter or branch defined

		brDesc=Trim(word(1))

		document.frm1.recco.value="f1" & recco & "-2"

		If Isnumeric(Left(Brdesc,1)) then 

			MsgBox "ข้อมูลในไฟล์ไม่ถูกต้องหรือสลับกัน"

			Exit Sub

		end if

		cycleDate=Trim(word(2))

		document.frm1.recco.value="f1" & recco & "-3"

		openDate=Trim(word(3))

		document.frm1.recco.value="f1" & recco & "-4"

		SaleAvgByDay=Cdbl(Trim(word(4)))

		document.frm1.recco.value="f1" & recco & "-5"

		SaleTax=Cdbl(Trim(word(5)))

		document.frm1.recco.value="f1" & recco & "-6"

		SaleNonTax=Cdbl(Trim(word(6)))

		document.frm1.recco.value="f1" & recco & "-7"

		SaleBeforeVAT=Cdbl(Trim(word(7)))

		document.frm1.recco.value="f1" & recco & "-8"

		SaleCard=Cdbl(Trim(word(8)))

		document.frm1.recco.value="f1" & recco & "-9"

		GrossProfit=Cdbl(Trim(word(9)))

		document.frm1.recco.value="f1" & recco & "-10"

		OtherIncome=Cdbl(Trim(word(10)))

		document.frm1.recco.value="f1" & recco & "-11"

		TotalAmount=Cdbl(Trim(word(11)))

		document.frm1.recco.value="f1" & recco & "-12"

		Royalty4=Cdbl(Trim(word(12)))

		document.frm1.recco.value="f1" & recco & "-13"

		Royalty81=Cdbl(Trim(word(13)))

		document.frm1.recco.value="f1" & recco & "-14"

		RentalAmount=Cdbl(Trim(word(14)))

		document.frm1.recco.value="f1" & recco & "-15"

		ServiceCharge=Cdbl(Trim(word(15)))

		document.frm1.recco.value="f1" & recco & "-16"

		Royalty1=Cdbl(Trim(word(16)))

		document.frm1.recco.value="f1" & recco & "-17"

		Royalty2=Cdbl(Trim(word(17)))

		document.frm1.recco.value="f1" & recco & "-18"





'		SaleCard=Cdbl("0")

'		GrossProfit=Cdbl(Trim(word(8)))

'		document.frm1.recco.value="f1" & recco & "-9"

'		OtherIncome=Cdbl(Trim(word(9)))

'		document.frm1.recco.value="f1" & recco & "-10"

'		TotalAmount=Cdbl(Trim(word(10)))

'		document.frm1.recco.value="f1" & recco & "-11"

'		Royalty4=Cdbl(Trim(word(11)))

'		document.frm1.recco.value="f1" & recco & "-12"

'		Royalty81=Cdbl(Trim(word(12)))

'		document.frm1.recco.value="f1" & recco & "-13"

'		RentalAmount=Cdbl(Trim(word(13)))

'		document.frm1.recco.value="f1" & recco & "-14"

'		ServiceCharge=Cdbl(Trim(word(14)))

'		document.frm1.recco.value="f1" & recco & "-15"

'		Royalty1=Cdbl(Trim(word(15)))

'		document.frm1.recco.value="f1" & recco & "-16"

'		Royalty2=Cdbl(Trim(word(16)))

'		document.frm1.recco.value="f1" & recco & "-17"



'*************************************************************************************



		'Check for existing shop

		brandBranchID=CInt(checkBrName(brName))

		if brandBranchID<>0 then

			word = Split(cycleDate, "/", -1, 1)

			'Check for correct rperiod

			monthP=Cint(Trim(word(1)))

			yearP=Cint(Trim(word(2))) + 2500 - 543



			'Calculate date count

			CYDate=CDATE("" & word(0) & "/" & monthP & "/" & yearP)



			'Open Date Correction 17-01-2006

			if trim(openDate)<>trim(DBOPDate) then openDate=DBOPDate



			word = Split(openDate, "/", -1, 1)

			OPDate=CDATE(""  &word(0) & "/" & word(1) & "/" & word(2) + 2500 - 543)

	

			FIDate=CDATE("1/"  & monthP & "/" & yearP)

			MdateCount=dateDiff("d",FIDate,CYDate)+1

			'Check that the first month or not

			if (datediff("d",OPDate,CYDate)<MDAteCount) then

				'Count date from open date to account date

				dateCount=dateDiff("d",OPDate,CYDate)+1

			else

				'Count date from first date to account date

				dateCount=MdateCount

			end if



			'Convertion Error

			If dateCount >31 then

				CYDate=CDATE("" & monthP & "/" & word(0) & "/" & yearP)

				word = Split(openDate, "/", -1, 1)

				OPDate=CDATE(""  & word(1) & "/" & word(0) & "/" & word(2) + 2500 - 543)

	

				FIDate=CDATE("" & monthP & "/1/"  & yearP)

				MdateCount=dateDiff("d",FIDate,CYDate)+1



				'Check that the first month or not

				if ((datediff("d",OPDate,CYDate)+1)<MDAteCount) then

					'Count date from open date to account date

					dateCount=dateDiff("d",OPDate,CYDate)+1

				else

					'Count date from first date to account date

					dateCount=MdateCount

			end if

		end if

	

		if dateCount=0 then dateCount=1



'***************************************************************************************

		'updateData

		if DBBROPType ="1" then	SaleBrforeVAT=CDBL(SaleBeforeVAt)+CDBL(SaleCard)

		if SaleBeforeVAT>0 then updateData "0110",brandBranchID,yearP,monthP,SaleBeforeVAT," ","",""

		'New Sale Card 0650

		if SaleCard>0 then updateData "0650",brandBranchID,yearP,monthP,SaleCard," ","",""

		if DBBROPType <>"2" then		

			if OtherIncome>0 then updateData "0120",brandBranchID,yearP,monthP,OtherIncome," ","",""

			if GrossProfit>0 then updateData "0140",brandBranchID,yearP,monthP,GrossProfit," ","",""

		end if

		if dateCount>0 then updateData "0610",brandBranchID,yearP,monthP,dateCount," ","",""

		if mdateCount>0 then updateData "0620",brandBranchID,yearP,monthP,MdateCount," ","",""

		if SaleTax>0 then updateData "0530",brandBranchID,yearP,monthP,SaleTax," ","",""

		if SaleNonTax>0 then updateData "0540",brandBranchID,yearP,monthP,SaleNonTax," ","",""



		if DBBROPType ="2" then		

			if Royalty81>0 then updateData "0210-01",brandBranchID,yearP,monthP,Royalty81," ","",""

		end if



		if DBBROPType <>"1" then	

			If Royalty4>0 then updateData "0210-02",brandBranchID,yearP,monthP,Royalty4, " ","",""

		end if



		if DBBROPType="1" then

			if DBBRBUType="2" then

				if RentalAmount>0 then updateData "0220-01",brandBranchID,yearP,monthP,RentalAmount," ","",""

				if ServiceCharge>0 then updateData "0220-02",brandBranchID,yearP,monthP,ServiceCharge," ","",""

			end if

			if Royalty1>0 then updateData "0220-03",brandBranchID,yearP,monthP,Royalty1," ","",""

			if Royalty2>0 then updateData "0220-04",brandBranchID,yearP,monthP,Royalty2," ","",""

		end if



'************************************************************************************

	 end if

	end if

end if

wend

Data.Close

'MsgBox "COMPLETED FILE 1"



'================================================================================

refBrName=""

GrossProfit=0

OtherIncome=0

CSAssort=0



'Process file2

recco=0

Set Data = fs2.OpenTextFile(Src2)

While Data.AtEndOfStream <> True

	textline = Data.ReadLine()

	if trim(textline)<>"" then

	if len(textline)>=2 then

		recco=recco+1



		word = Split(textline, Chr(9), -1, 1)



		brName=Right("00000" & Trim(word(0)),5)

		document.frm1.recco.value="f2" & recco & "-1"

		rperiod=Trim(word(1))

		document.frm1.recco.value="f2" & recco & "-2"

		revCostID=Trim(word(2))

		document.frm1.recco.value="f2" & recco & "-3"

		revCostDesc=Trim(word(3))

		document.frm1.recco.value="f2" & recco & "-4"

		amount=Cdbl(Trim(word(4)))

		document.frm1.recco.value="f2" & recco & "-5"

		VAT=Cdbl(Trim(word(5)))

		document.frm1.recco.value="f2" & recco & "-6"

		TAX=Cdbl(Trim(word(6)))

		document.frm1.recco.value="f2" & recco & "-7"

		xamount=cdbl(Trim(word(7)))

		document.frm1.recco.value="f2" & recco & "-8"



		tempX="" & checkRevCostCPID(revCostID)



		if trim(tempX)<>"0" then

			VAT_RATE=VATRATE

			TAX_RATE=TAXRATE



			if amount<1000 then TAX_RATE=0



			'amount=(100*Amount/(100+((VAT_RATE-TAX_RATE)*100)))



			'Check for existing shop

			brandBranchID=CInt(checkBrName(brName))

			if cint(brandBranchID)<>0 then

				word = Split(rperiod, "/", -1, 1)

				'Check for correct rperiod

				monthP="" & Cint(Trim(word(0)))

				if Cint(Trim(word(0)))<10 then monthP="0" & monthP

				yearP=Cint(Trim(word(1))) + 2500 - 543



				tempRCType=Cint(Trim(RcType))



				'New branch

				if brName<>refBrName then

					if refBrName<>""  then

						brandBranchID=CInt(checkBrName(refbrName))

						if cint(brandBranchID)<>0 then

							'update data

							if OtherIncome>0 then updateData "0120",brandBranchID,yearP,monthP,OtherIncome," ","",""

							if GrossProfit>0 then updateData "0140",brandBranchID,yearP,monthP,GrossProfit," ","",""



							dateCount=0

							'Get Operate Date

							rsh.open "SELECT amount FROM cal_RevenueCost where BRAND_BRANCH_ID=" & brandBranchID & " and DATE_TIME=TO_DATE ('" & yearP & "-" & 	monthP & "-01"   & "','yyyy-mm-dd') and REVCOST_ID='0610'",conn

							if not (Rsh.eof or rsh.bof) then dateCount=rsh(0)

							rsh.close



							mdateCount=0

							'Get Month Date

							rsh.open "SELECT amount FROM cal_RevenueCost where BRAND_BRANCH_ID=" & brandBranchID & " and DATE_TIME=TO_DATE ('" & yearP & "-" & monthP & "-01"   & "','yyyy-mm-dd') and REVCOST_ID='0620'",conn

							if not (Rsh.eof or rsh.bof) then mdateCount=rsh(0)

							rsh.close



							SaleBeforeVat=0

							'Get Sale Before VAT

							rsh.open "SELECT amount FROM cal_RevenueCost where BRAND_BRANCH_ID=" & brandBranchID & " and DATE_TIME=TO_DATE ('" & yearP & "-" & monthP & "-01"   & "','yyyy-mm-dd') and REVCOST_ID='0110'",conn

							if not (Rsh.eof or rsh.bof) then SaleBeforeVat=rsh(0)

							rsh.close

	

							SaleAvgByDay=0

							if cint(dateCount)>0 then SaleAvgByDay=Cdbl(SaleBeforeVat)/cint(dateCount)



							'Manage Cost pay for Management Company

							pfrate=0

							if cdbl(SaleBeforeVAT)<>0 then

								pfrate=cdbl(GrossProfit)/cdbl(SaleBeforeVAT)

							else

								pfrate=0

							end if



							if (Cint(DBBrOPType)=2) then

								manageHire=0

								if cdbl(dateCount)>0 and cdbl(SaleBeforeVat)<>0 then			

									manageHire=cdbl(Ymanage(SaleAvgByDay,pfrate,dateCount,MDateCount))

									manageHire=cdbl(manageHire)+cdbl(Ymanage((cdbl(OtherIncome)),1,dateCount,1))

									manageHire=cdbl(manageHire)+(cdbl(DBBrSPPay)*cdbl(dateCount)/cdbl(MDateCount))

									if cdbl(managehire)<>0 then updateData "0310",brandBranchID,yearP,monthP,manageHire," ","",""

								end if

							end if

						end if

						brandBranchID=CInt(checkBrName(brName))

					end if

					'reinitial

					GrossProfit=0

					OtherIncome=0

					CSAssort=0

					refBrName=brName

				end if		

				'Gross Profit

				if trim(revCostID)="1010" then GrossProfit=cdbl(GrossProfit)+cdbl(amount)

				if (trim(revCostID)<>"1010") and (mid(revCostID,1,1)="1") then OtherIncome=cdbl(OtherIncome)+cdbl(amount)

				if trim(revCostID)="2060" then OtherIncome=cdbl(OtherIncome)+cdbl(amount)

				if (mid(revCostID,1,1)="3") then CSAssort=cdbl(CSAssort)+cdbl(amount)

				'Avoid Repeat ASSET

				if (mid(revCostID,1,1)<>"1") and (tempX<>"0") and (tempX<>"0410-06") then updateData tempX,brandBranchID,yearP,monthP,amount," ","",""

			end if

		end if

	end if

	end if

wend

Data.Close

				'Update Last Record

				if refBrName<>""  then

					brandBranchID=CInt(checkBrName(refbrName))

					if cint(brandBranchID)<>0 then

						'update data

						if OtherIncome>0 then updateData "0120",brandBranchID,yearP,monthP,OtherIncome," ","",""

						if GrossProfit>0 then updateData "0140",brandBranchID,yearP,monthP,GrossProfit," ","",""



						dateCount=0

						'Get Operate Date

						rsh.open "SELECT amount FROM cal_RevenueCost where BRAND_BRANCH_ID=" & brandBranchID & " and DATE_TIME=TO_DATE ('" & yearP & "-" & 	monthP & "-01"   & "','yyyy-mm-dd') and REVCOST_ID='0610'",conn

						if not (Rsh.eof or rsh.bof) then dateCount=rsh(0)

						rsh.close



						mdateCount=0

						'Get Month Date

						rsh.open "SELECT amount FROM cal_RevenueCost where BRAND_BRANCH_ID=" & brandBranchID & " and DATE_TIME=TO_DATE ('" & yearP & "-" & monthP & "-01"   & "','yyyy-mm-dd') and REVCOST_ID='0620'",conn

						if not (Rsh.eof or rsh.bof) then mdateCount=rsh(0)

						rsh.close



						SaleBeforeVat=0

						'Get Sale Before VAT

						rsh.open "SELECT amount FROM cal_RevenueCost where BRAND_BRANCH_ID=" & brandBranchID & " and DATE_TIME=TO_DATE ('" & yearP & "-" & monthP & "-01"   & "','yyyy-mm-dd') and REVCOST_ID='0110'",conn

						if not (Rsh.eof or rsh.bof) then SaleBeforeVat=rsh(0)

						rsh.close

	

						SaleAvgByDay=0

						if cint(dateCount)>0 then SaleAvgByDay=Cdbl(SaleBeforeVat)/cint(dateCount)



						'Manage Cost pay for Management Company

						pfrate=0

						if cdbl(SaleBeforeVAT)<>0 then

							pfrate=cdbl(GrossProfit)/cdbl(SaleBeforeVAT)

						else

							pfrate=0

						end if



						if (Cint(DBBrOPType)=2) then

							manageHire=0

							if cdbl(dateCount)>0 and cdbl(SaleBeforeVat)<>0 then			

								manageHire=cdbl(Ymanage(SaleAvgByDay,pfrate,dateCount,MDateCount))

								manageHire=cdbl(manageHire)+cdbl(Ymanage((cdbl(OtherIncome)),1,dateCount,1))

								manageHire=cdbl(manageHire)+(cdbl(DBBrSPPay)*cdbl(dateCount)/cdbl(MDateCount))

								if cdbl(managehire)<>0 then updateData "0310",brandBranchID,yearP,monthP,manageHire," ","",""

							end if

						end if

					end if

				end if

'MsgBox "COMPLETED FILE 2"



'*************************************************************************************

Set Data3 = fs3.OpenTextFile(Src3)

recco=0

While (Data3.AtEndOfStream <> True)

		textline3 = Data3.ReadLine()

		if trim(textline3)<>"" then

		if len(textline3)>2 then

			recco=recco+1

	

			word3 = Split(textline3, Chr(9), -1, 1)

			size3=UBound(word3)



			brCode3=Right("00000" & Trim(word3(0)),5)

			document.frm1.recco.value="f3" & recco & "-1"

			prodCode3=Trim(word3(1))

			document.frm1.recco.value="f3" & recco & "-2"

			cycleDate3=Trim(word3(2))

			document.frm1.recco.value="f3" & recco & "-3"

			invNo3=Trim(word3(3))

			document.frm1.recco.value="f3" & recco & "-4"

			docType3=Trim(word3(4))

			document.frm1.recco.value="f3" & recco & "-5"

			docDate3=Trim(word3(5))

			document.frm1.recco.value="f3" & recco & "-6"

			salesVat3=CDBl(Trim(word3(6)))

			document.frm1.recco.value="f3" & recco & "-7"

			salesNonVat3=CDBL(Trim(word3(7)))

			document.frm1.recco.value="f3" & recco & "-8"

			Vat3=CDBL(Trim(word3(8)))

			document.frm1.recco.value="f3" & recco & "-9"

			Tax3=CDBL(Trim(word3(9)))

			document.frm1.recco.value="f3" & recco & "-10"

			Net3=CDBL(Trim(word3(10)))

			document.frm1.recco.value="f3" & recco & "-11"

			tempX="" & checkRevCostCPID(prodCode3)





			'Check for existing shop

			brandBranchID=CInt(checkBrName(brCode3))

					

			'Append Reference Dealer INV.No.

			if size3>11 then dealerINVNo=Trim(word(11))



			word = Split(cycleDate3, "/", -1, 1)

			'Check for correct rperiod

			dayTEMP="" & Cint(Trim(word(0)))

			if Cint(Trim(word(0)))<10 then dayTEMP="0" & dayTEMP

			monthTEMP="" & Cint(Trim(word(1)))

			if Cint(Trim(word(1)))<10 then monthTEMP="0" & monthTEMP

			yearTEMP=Cint(Trim(word(2))) 

			cycleDate3=dayTEMP & "/" & monthTEMP & "/" & yearTEMP



			word = Split(docDate3, "/", -1, 1)

			'Check for correct rperiod

			dayTEMP="" & Cint(Trim(word(0)))

			if Cint(Trim(word(0)))<10 then dayTEMP="0" & dayTEMP

			monthTEMP="" & Cint(Trim(word(1)))

			if Cint(Trim(word(1)))<10 then monthTEMP="0" & monthTEMP

			yearTEMP=Cint(Trim(word(2))) 

			docDate3=dayTEMP & "/" & monthTEMP & "/" & yearTEMP



			'CN

			if (Cint(docType3)=53) or (cint(docType3)=52) then 

				salesvat3=cdbl(salesVat3) * (-1)

				salesnonvat3=cdbl(salesnonVat3) * (-1)

			end if

			document.frm1.recco.value="f3" & recco & "BU"

			'May helpful if delete and create method is not work, try update :)

			if cdbl(salesVat3)<>0 then updateData tempX,brandBranchID,yearP,monthP,salesvat3,invNo3,docDate3,""

			if cdbl(salesnonVat3)<>0 then 

				if tempX="0410-01" then 

					updateData "0410-10",brandBranchID,yearP,monthP,salesnonvat3,invNo3,docDate3,"1"

				else

					if tempX="0410-09" then 

						updateData "0410-11",brandBranchID,yearP,monthP,salesnonvat3,invNo3,docDate3,"1"

					else

						updateData tempX,brandBranchID,yearP,monthP,salesnonvat3,invNo3,docDate3,"1"

					end if

				end if

		end if

		document.frm1.recco.value="f3" & recco & "AU"

	end if

	end if

Wend

Data3.Close

'MsgBox "COMPLETED FILE 3"



'=================================================================================

'monthC=month(now)

'yearC=year(now)

monthC=2
yearC=2009


if monthC=1 then 

	yearC=yearC-1

	monthC=12

else

	monthC=monthC-1

end if

select case (monthC)

	case 1,3,5,7,8,10,12

		dayC="31"

	case 4,6,9,11

		dayC="30"

	case 2

		If ((yearP mod 4) = 0) and ((yearP mod 100) <> 0) then

			dayC="29"

		else

			dayC="28"

		end if

end select



'==============================================================================



'MsgBOX "MAKE PTT A/R RECEIPT FOR CP"



'Last Receipt

'newSlip="" & Right(Year(Now),2) & Right("0" & Month(Now),2) & "1100000"
newSlip="" & Right("2009",2) & Right("0" & "2",2) & "1100000"

'SQL= "SELECT NVL(MAX(TRANS_NO),'" & Right(Year(Now),2) & Right("0" & Month(Now),2) & "1000000" & "') as TRANS_NO "
SQL= "SELECT NVL(MAX(TRANS_NO),'" & Right("2009",2) & Right("0" & "2",2) & "1000000" & "') as TRANS_NO "
SQL=SQL & " FROM RECEIPT_DESC where INDICATOR='PTTINV' and UPLOAD_FLAG=1"

rs.open SQL,conn



if not (rs.eof or rs.bof) then 

	newSlip="" & rs(0)

end if

rs.close



	'Start query for AR CP Receipt

	SQL="Select nvl(SUM(Amount),0) as Amount,nvl(SUM(VAT_AMt),0) as Vat_Amt,CP_C_ID,CP_Ship_ID,nvl(BRAND_BRANCH.BRANCH_ID,' ') as BRANCH_ID,"

	SQL=SQL & "rcType,PRODUCT_CODE,nvl(RCRate,0) as RCRate,RCRCode, cal_RevenueCost.Brand_Branch_ID,VAT_RATE,TAX_RATE,PTT_RESPONSED_BY "

	SQL=SQL & " from Brand_Branch,cal_RevenueCost,Branch,revenuecost "

	SQL= SQL & " where Brand_Branch.Brand_Branch_ID=cal_RevenueCost.Brand_Branch_ID"

	SQL= SQL & " and Brand_Branch.Branch_ID=Branch.Branch_ID"

	SQL= SQL & " and revenueCost.revcost_ID=cal_RevenueCost.revCost_ID"

	SQL=SQL & " and rcType <=4"



'	SQL=SQL & " and CP_C_ID is not null "

'	SQL=SQL & " and CP_SHIP_ID is not null "

'	SQL=SQL & " and PTT_RESPONSED_BY is not null "



	SQL=SQL & " and Date_Time>=TO_DATE('" & monthC & "/01/" & yearC & "','mm/dd/yyyy')"

	SQL=SQL & " GROUP by CP_C_ID,CP_Ship_ID,BRAND_BRANCH.BRANCH_ID,rcType,PRODUCT_CODE,RCRate,RCRCode, cal_RevenueCost.Brand_Branch_ID,VAT_RATE,TAX_RATE,PTT_RESPONSED_BY "

	SQL=SQL & " order by rctype,CP_Ship_ID,VAT_RATE,TAX_RATE"



	rsh.open SQL,conn



	'CP Revenue are

	'rcType=1 is Rental

	'rcType=2 is 81 % income 

	'rcType=3 is Other income VAT 0- return to dealer calculate by ratio

	'CANCEL AT 24-02-2004

	'rcType=4 is Other income VAT 7- return to dealer calculate by ratio

	'CANCEL AT 24-02-2004

	'AR Interface must seperate bill by SOLD-TO, and SHIP-TO



	curRCTYPE=" "

	curSHIPTO=" "

	curVAT=" "

	curTAX=" "



	while not (rsh.eof or rsh.bof)

		'Used RCTYPE and SHIPTO in bill seperation process

		if ( ("" & rsh("rcType") )<>("" & curRCTYPE) ) or ( ("" & rsh("VAT_RATE") )<>("" & curVAT) ) or ( ("" & rsh("TAX_RATE") )<>("" & curTAX) ) or ( ("" & rsh("CP_SHIP_ID") )<>("" & curSHIPTO) ) then

			curRCTYPE=rsh("rcType")

			curSHIPTO="" & rsh("CP_SHIP_ID")

			curVAT=rsh("VAT_RATE")

			curTAX=rsh("TAX_RATE")



			'newslip="" & Right(YEAR(NOW),2) & (Right("0" & Month(now),2) )& RIGHT("1000000" & CLNG(Right(newslip,7))+1,7)
      newslip="" & Right("2009",2) & (Right("0" & "2",2) )& RIGHT("1000000" & CLNG(Right(newslip,7))+1,7)
			ino=1

		end if

		if ( ("" & rsh("rcType") )=("" & curRCTYPE) ) and ( ("" & rsh("VAT_RATE") )=("" & curVAT) ) and ( ("" & rsh("TAX_RATE") )=("" & curTAX) ) and ( ("" & rsh("CP_SHIP_ID") )=("" & curSHIPTO) ) then

			if CDBL(rsh("Amount"))>0 then

				'monthC=month(now)
				monthC=2

				'yearC=year(now)
        yearC=2009


				if monthC=1 then 

					yearC=yearC-1

					monthC=12

				else

					monthC=monthC-1

				end if

				PLANT_ID="6003"



				SQL= "INSERT INTO RECEIPT_DESC(UPLOAD_FLAG,INDICATOR,TRANS_NO,REF_NO,ITEM_NO,DOC_DATE,TO_ID,SHIP_ID,Plant_ID,"

				SQL=SQL & "Product_code,Amount,TAX,Tax_Code,Wht_Type,WHT_COde,CP_NAme,Product_DEsc,CPID,BRAND_BRANCH_ID,POST_DATE) "

				SQL=SQL & " VALUES (0,'PTTINV','" & newSlip & "',null,'" & ino & "',TO_DATE('" & monthC & "/01/" & yearC & "','mm/dd/yyyy')"

				SQL= SQL & ",'"  & ("" & rsh("CP_C_ID")) & "','" & ("" & rsh("CP_Ship_ID")) & "','" & PLANT_ID & "','" & ("" & rsh("PRODUCT_CODE")) & "'"

				SQL= SQL & ","  & CDBL(rsh("Amount")) & "," & CDBL(rsh("VAT_AMT")) & ",null,null,null,null,null,null," &  rsh("BRAND_BRANCH_ID") & ",TO_DATE('" & postmonth & "/" & postday & "/" & postyear & "','mm/dd/yyyy'))" 



				if ("" & rsh("rcType") = "1") or ("" & rsh("rcType") = "2") then conn.execute sql

			end if



			ino=ino+1



			'make Dealer Payment PREPARE DATA

			if cdbl(rsh("RCRate")) >0 and Trim(rsh("RCRCode"))<>""then

				amount=cdbl(rsh("amount"))*cdbl(rsh("RCRate"))/100

				if amount>0 then updateData rsh("RCRCode"),rsh("brand_branch_id"),yearC,monthC,amount," ","",""

			end if

		end if

		rsh.movenext

	wend

	rsh.close



'MsgBOX "MAKE PTT A/R RECEIPT FOR DEALER"



	'Start query for AR Dealer Receipt

	SQL="SELECT * FROM ("



	'Other

	SQL=SQL & "Select nvl(SUM(Amount),0) as Amount,nvl(SUM(VAT_AMt),0) as Vat_Amt,DL_C_ID,DL_Ship_ID,nvl(BRANCH_ID,' ') as BRANCH_ID,"

	SQL=SQL & "PRODUCT_CODE,VAT_RATE,TAX_RATE,Brand_Branch_ID,DEALER_RESPONSED"

	SQL=SQL & " from ( "



	SQL= SQL & "Select Amount,VAT_AMt,DL_C_ID,DL_Ship_ID,nvl(BRAND_BRANCH.BRANCH_ID,' ') as BRANCH_ID,"

	SQL=SQL & "PRODUCT_CODE,VAT_RATE,TAX_RATE,cal_RevenueCost.Brand_Branch_ID,DEALER_RESPONSED"

	SQL=SQL & " from Brand_Branch,cal_RevenueCost,Branch,revenuecost "

	SQL= SQL & " where Brand_Branch.Brand_Branch_ID=cal_RevenueCost.Brand_Branch_ID"

	SQL= SQL & " and Brand_Branch.Branch_ID=Branch.Branch_ID"

	SQL= SQL & " and revenueCost.revcost_ID=cal_RevenueCost.revCost_ID"

	SQL= SQL & " and amount>0 "

	SQL= SQL & " and (RevenueCost.CPCODE not like '501%' or RevenueCost.CPCODE is null)"

	SQL=SQL & " and Operate_Type='2' "

	SQL=SQL & " and (rcType =11 or rcType=13 or rcType=14 or rcType=16)"

	SQL=SQL & " and Date_Time>=TO_DATE('" & monthC & "/01/" & yearC & "','mm/dd/yyyy')"

'	SQL=SQL & " and DL_C_ID is not null "

'	SQL=SQL & " and DL_SHIP_ID is not null "

'	SQL=SQL & " and DEALER_RESPONSED is not null "



	SQL=SQL &") x"

	

	SQL=SQL & " GROUP by DL_C_ID,DL_Ship_ID,BRANCH_ID,PRODUCT_CODE,VAT_RATE,TAX_RATE,Brand_Branch_ID,DEALER_RESPONSED "



	SQL=SQL & " UNION "



	'Standard Management

	SQL=SQL & "Select nvl(SUM(Amount),0) as Amount,nvl(SUM(VAT_AMt),0) as Vat_Amt,DL_C_ID,DL_Ship_ID,nvl(BRANCH_ID,' ') as BRANCH_ID,"

	SQL=SQL & "PRODUCT_CODE,VAT_RATE,TAX_RATE,Brand_Branch_ID,DEALER_RESPONSED"

	SQL=SQL & " from ( "



	SQL= SQL & "Select NVL(SUM(Amount),0) as AMOUNT,NVL(SUM(VAT_AMt),0) as VAT_AMT,DL_C_ID,DL_Ship_ID,nvl(BRAND_BRANCH.BRANCH_ID,' ') as BRANCH_ID,"

	SQL=SQL & " '200029' as PRODUCT_CODE,VAT_RATE,TAX_RATE,cal_RevenueCost.Brand_Branch_ID,DEALER_RESPONSED"

	SQL=SQL & " from Brand_Branch,cal_RevenueCost,Branch,revenuecost "

	SQL= SQL & " where Brand_Branch.Brand_Branch_ID=cal_RevenueCost.Brand_Branch_ID"

	SQL= SQL & " and Brand_Branch.Branch_ID=Branch.Branch_ID"

	SQL= SQL & " and revenueCost.revcost_ID=cal_RevenueCost.revCost_ID"

	SQL= SQL & " and RevenueCost.CPCODE like '501%' "

	SQL=SQL & " and Operate_Type='2' "

	SQL=SQL & " and Date_Time>=TO_DATE('" & monthC & "/01/" & yearC & "','mm/dd/yyyy')"

'	SQL=SQL & " and DL_C_ID is not null "

'	SQL=SQL & " and DL_SHIP_ID is not null "

'	SQL=SQL & " and DEALER_RESPONSED is not null "

	SQL=SQL & " GROUP by DL_C_ID,DL_Ship_ID,BRAND_BRANCH.BRANCH_ID,PRODUCT_CODE,VAT_RATE,TAX_RATE,cal_revenuecost.Brand_Branch_ID,DEALER_RESPONSED) y"

	

	SQL=SQL & " GROUP by DL_C_ID,DL_Ship_ID,BRANCH_ID,PRODUCT_CODE,VAT_RATE,TAX_RATE,Brand_Branch_ID,DEALER_RESPONSED "



	SQL=SQL & " ) z order by DL_C_ID,DL_Ship_ID,VAT_RATE,TAX_RATE"

	rsh.open SQL,conn



	'DL Revenue are

	'rcType=11 is Selling Goods

	'rcType=13 is Service

	'rcType=14 is Other income

	'rcType=16 is Dealer Asset Income

	'AR Interface must seperate bill by SOLD-TO, and SHIP-TO



	curVAT=" "

	curTAX=" "

	curSOLD=" "

	curSHIPTO=" "

	while not (rsh.eof or rsh.bof)

		if ( ("" & rsh("VAT_RATE")) <>("" & curVAT) ) or ( ("" & rsh("DL_SHIP_ID"))<>("" & curSHIPTO)) or (("" & rsh("DL_C_ID"))<>("" & curSOLD)) or (("" & rsh("TAX_RATE"))<>("" & curTAX)) then

			'Used VAT, TAX, SOLD-TO and SHIPTO in bill seperation process

			curVAT=rsh("VAT_RATE")

			curTAX=rsh("TAX_RATE")

			curSOLD="" & rsh("DL_C_ID")

			curSHIPTO="" & rsh("DL_SHIP_ID")

			newslip="" & Right("2009",2) & (Right("0" & "2",2) )& RIGHT("1000000" & CLNG(Right(newslip,7))+1,7)

			ino=1

		end if

		if ( ("" & rsh("VAT_RATE")) =("" & curVAT) ) and ( ("" & rsh("DL_SHIP_ID"))=("" & curSHIPTO)) and (("" & rsh("DL_C_ID"))=("" & curSOLD)) and (("" & rsh("TAX_RATE"))=("" & curTAX)) then

			if CDBL(rsh("Amount"))>0 then

				monthC=2

				yearC=2009



				if monthC=1 then 

					yearC=yearC-1

					monthC=12

				else

					monthC=monthC-1

				end if

	

				PLANT_ID="6003"

	

				SQL= "INSERT INTO RECEIPT_DESC(UPLOAD_FLAG,INDICATOR,TRANS_NO,REF_NO,ITEM_NO,DOC_DATE,TO_ID,SHIP_ID,Plant_ID,"

				SQL=SQL & "Product_code,Amount,TAX,Tax_Code,Wht_Type,WHT_COde,CP_NAme,Product_DEsc,CPID,BRAND_BRANCH_ID,POST_DATE) "

				SQL=SQL & " VALUES (0,'PTTINV','" & newSlip & "',null,'" & ino & "',TO_DATE('" & monthC & "/01/" & yearC & "','mm/dd/yyyy')"

				SQL= SQL & ",'"  & ("" & rsh("DL_C_ID")) & "','" & ("" & rsh("DL_Ship_ID")) & "','" & PLANT_ID & "','" & ("" & rsh("PRODUCT_CODE")) & "'"

				SQL= SQL & ","  & CDBL(rsh("Amount")) & "," & CDBL(rsh("VAT_AMT")) & ",null,null,null,null,null,null," & ("" & rsh("BRAND_BRANCH_ID")) & ",TO_DATE('" & postmonth & "/" & postday & "/" & postyear & "','mm/dd/yyyy'))" 

				conn.execute sql

			end if

			ino=ino+1

		end if

		rsh.movenext

	wend

	rsh.close



'Tempory Usage for testing purpose

newslip="0000"





'MsgBOX "MAKE PTT A/P Payment FOR CP"





	'Start query for AP PTT Payment

	SQL="Select nvl(Amount,0) as Amount,nvl(VAT_AMt,0) as Vat_Amt,CP_V_ID,CP_Ship_ID,nvl(BRAND_BRANCH.BRANCH_ID,' ') as BRANCH_ID,"

	SQL=SQL & "CCODE,VAT_RATE,TAX_RATE,TO_CHAR(DATE_TIME,'ddmmyyyy') as DATE_TIME,"

	SQL=SQL & "nvl(REF_NO,' ') as REF_NO,WHTCODE,NAME_7_11,REVCOST_Desc,CODE_NAME_7_11,cal_RevenueCost.Brand_Branch_ID,PTT_RESPONSED_BY "

	SQL=SQL & " from Brand_Branch,cal_RevenueCost,Branch,revenuecost "

	SQL= SQL & " where Brand_Branch.Brand_Branch_ID=cal_RevenueCost.Brand_Branch_ID"

	SQL= SQL & " and Brand_Branch.Branch_ID=Branch.Branch_ID"

	SQL= SQL & " and revenueCost.revcost_ID=cal_RevenueCost.revCost_ID"

	SQL=SQL & " and Operate_Type='2' "

	SQL=SQL & " and nvl(amount,0)<>0 "



'	SQL=SQL & " and CP_V_ID is not null "

'	SQL=SQL & " and CP_SHIP_ID is not null "

'	SQL=SQL & " and PTT_RESPONSED_BY is not null "



'	SQL=SQL & " and (rcType =11 or rcType=13 or rcType=14 or rcType=15 or rcType=16)"

	SQL=SQL & " and (rcType=15 or rcType=16 or rcType=12)"

	SQL=SQL & " and Date_Time>=TO_DATE('" & monthC & "/01/" & yearC & "','mm/dd/yyyy')"

	SQL=SQL & " order by CODE_NAME_7_11,REF_NO,VAT_RATE,TAX_RATE"

	rsh.open SQL,conn



	'CP Payment are

	'rcType=11 is Selling Goods

	'CANCEL AT 24-02-2004

	'rcType=13 is Service

	'CANCEL AT 24-02-2004

	'rcType=14 is Other income

	'CANCEL AT 24-02-2004

	'rcType=15 is Asset

	'rcType=16 is Dealer Asset

	'rcType=12 is Invest

	'ADD AT 01-06-2004

	'AP Interface must seperate bill by SOLD-TO, and SHIP-TO,VAT,TAX,INDICATOR



	curVAT=" "

	curTAX=" "

	curSOLD=" "

	curSHIPTO=" "

	curINDICATOR=" "

	curRefNO=" "



	while not (rsh.eof or rsh.bof)

		if CDBL(rsh("amount"))>0 then 

			INDICATOR= "CPINV "

		else 

			INDICATOR= "CPCN  "

		end if



		if (("" & rsh("VAT_RATE"))<>("" & curVAT)) or (("" & rsh("CP_SHIP_ID"))<>("" & curSHIPTO)) or (("" & rsh("CP_V_ID"))<>("" & curSOLD)) or (("" & rsh("TAX_RATE"))<>("" & curTAX)) or (curINDICATOR<>INDICATOR) or (curRefNO<>("" & rsh("REF_NO")))then

			'Used VAT, TAX, SOLD-TO and SHIPTO in bill seperation process

			curVAT=rsh("VAT_RATE")

			curTAX=rsh("TAX_RATE")

			curSOLD="" & rsh("CP_V_ID")

			curSHIPTO="" & rsh("CP_SHIP_ID")

			curRefNo=rsh("Ref_No")

			newslip="" & RIGHT("0000" & CINT(Right(newslip,4))+1,4)

			ino=1

			curINDICATOR=INDICATOR

		end if

		if (("" & rsh("VAT_RATE"))=("" & curVAT)) and (("" & rsh("CP_SHIP_ID"))=("" & curSHIPTO)) and (("" & rsh("CP_V_ID"))=("" & curSOLD)) and (("" & rsh("TAX_RATE"))=("" & curTAX)) and (curINDICATOR=INDICATOR) and (curRefNO=("" & rsh("REF_NO")))then

				monthC=2

				yearC=2009



				if monthC=1 then 

					yearC=yearC-1

					monthC=12

				else

					monthC=monthC-1

				end if



				if TRIM(("" & rsh("TAX_RATE")))="0" then 

					TAX_CODE="VZ"

				ELSE

					if TRIM(("" & rsh("TAX_RATE")))="7" then 

						TAX_CODE="V7"

					ELSE			

						TAX_CODE="D7"

					end if

				END IF



				if ("" & rsh("Branch_ID"))<"6000" then 

					PLANT_ID="5001"

				else

					PLANT_ID=("" & rsh("Branch_ID"))

				end if



				if TRIM(("" & rsh("WHTCODE")))<>"" then 

					WHT_TYPE="P1"

				ELSE

					WHT_TYPE="  "

				END IF

				if ("" & rsh("Branch_ID"))<"6000" then 

					PLANT_ID="5001"

				else

					PLANT_ID=("" & rsh("Branch_ID"))

				end if

	

				date_time=("" & rsh("DATE_TIME"))

				SQL= "INSERT INTO RECEIPT_DESC(UPLOAD_FLAG,INDICATOR,TRANS_NO,REF_NO,ITEM_NO,DOC_DATE,TO_ID,SHIP_ID,Plant_ID,"

				SQL=SQL & "Product_code,Amount,TAX,Tax_Code,Wht_Type,WHT_COde,CP_NAme,Product_DEsc,CPID,branD_BRANCH_ID) "

				SQL=SQL & " VALUES (0,'" & INDICATOR & "','" & newSlip & "','" 

				if Trim("" & rsh("REF_NO"))="" then 

					SQL=SQL & newslip 

				else

					SQL=SQL & ("" & rsh("REF_NO")) 

				end if

				SQL=SQL &  "','" & ino & "',TO_DATE('" & date_time & "','ddmmyyyy')"

				SQL= SQL & ",'"  & ("" & rsh("CP_V_ID")) & "','" & ("" & rsh("CP_Ship_ID")) & "','" & PLANT_ID & "','" & ("" & rsh("CCODE")) & "'"

				SQL= SQL & ","  & CDBL(rsh("Amount")) & "," & CDBL(rsh("VAT_AMT")) & ",'" &  TAX_CDOE & "','" & WHT_TYPE & "','" & ("" & rsh("WHTCODE")) & "','" & ("" & rsh("name_7_11")) & "','" & ("" & rsh("REVCOST_Desc")) & "','" & ("" & rsh("code_name_7_11")) & "'," & ("" & rsh("BRAND_BRANCH_ID")) &")" 

				conn.execute sql



			ino=ino+1		

		end if

		rsh.movenext

	wend

	rsh.close



'MsgBOX "MAKE PTT A/P Payment FOR Dealer"



	'Start query for AP PTT Payment

	SQL="Select nvl(Amount,0) as Amount,nvl(VAT_AMt,0) as Vat_Amt,DL_V_ID,DL_Ship_ID,nvl(BRAND_BRANCH.BRANCH_ID,' ') as BRANCH_ID,"

	SQL=SQL & "CCODE,VAT_RATE,TAX_RATE,decode(sign(amount),1,1,0,1,-1,0) as signFlag,"

	SQL=SQL & "WHTCODE,NAME_7_11,REVCOST_Desc,CODE_NAME_7_11,cal_RevenueCost.Brand_Branch_ID,DEALER_RESPONSED "

	SQL=SQL & " from Brand_Branch,cal_RevenueCost,Branch,revenuecost "

	SQL= SQL & " where Brand_Branch.Brand_Branch_ID=cal_RevenueCost.Brand_Branch_ID"

	SQL= SQL & " and Brand_Branch.Branch_ID=Branch.Branch_ID"

	SQL= SQL & " and revenueCost.revcost_ID=cal_RevenueCost.revCost_ID"

	SQL=SQL & " and (rcType =5 or rcType=6)"

	SQL=SQL & " and nvl(amount,0)<>0 "



'	SQL=SQL & " and DL_V_ID is not null "

'	SQL=SQL & " and DL_SHIP_ID is not null "

'	SQL=SQL & " and DEALER_RESPONSED is not null "



	SQL=SQL & " and Date_Time>=TO_DATE('" & monthC & "/01/" & yearC & "','mm/dd/yyyy')"

	SQL=SQL & " order by signFlag,DL_V_ID,CODE_NAME_7_11,VAT_RATE,TAX_RATE"



	rsh.open SQL,conn



	'Dealer Payment are

	'rcType=5 is Y Function Management

	'rcType=6 is Other payment for dealer

	'CANCEL 07-03-2004

	'REUSED 22-03-2004

	'AP Interface must seperate bill by SOLD-TO, VAT,TAX,INDICATOR



	curVAT=" "

	curTAX=" "

	curSOLD=" "

	curSHIPTO=" "

	curINDICATOR=" "

	counterI=0

	counterC=0



	monthIndex=Right(("0" & 2-1),2)

	yearIndex=Right(("" & "2009"),2)



	if cint(monthIndex)=0 then

		monthIndex="12"

		yearIndex=Right(("" & 2009-1),2)

	end if

	while not (rsh.eof or rsh.bof)

		if CDBL(rsh("amount"))>0 then 

			INDICATOR= "DLRINV"

		else 

			INDICATOR= "DLRCN "

		end if

	

		if (("" & rsh("VAT_RATE"))<>("" & curVAT)) OR (("" & rsh("DL_SHIP_ID"))<>("" & curSHIPTO)) OR ((""& rsh("DL_V_ID"))<>("" & curSOLD)) OR (("" & rsh("TAX_RATE"))<>("" & curTAX)) OR (curINDICATOR<>INDICATOR) then

			'Used VAT, TAX, SOLD-TO and SHIPTO in bill seperation process

			curVAT=rsh("VAT_RATE")

			curTAX=rsh("TAX_RATE")

			curSOLD="" & rsh("DL_V_ID")

			curSHIPTO="" & rsh("DL_SHIP_ID")

			if CDBL(rsh("Amount"))>0 then

				curRefNO="" & yearIndex & MonthIndex & "I" & Right(("0000000" & (counterI+1)),7)

				counterI=counterI+1

			else

				curRefNO="" & YearIndex & MonthIndex & "C" & Right(("0000000" & (counterC+1)),7)

				counterC=counterC+1

			end if

			newslip="" & RIGHT("0000" & CINT(Right(newslip,4))+1,4)

			ino=1

			curINDICATOR=INDICATOR

		end if

		if (("" & rsh("VAT_RATE"))=("" & curVAT)) and (("" & rsh("DL_SHIP_ID"))=("" & curSHIPTO)) and ((""& rsh("DL_V_ID"))=("" & curSOLD)) and (("" & rsh("TAX_RATE"))=("" & curTAX)) and (curINDICATOR=INDICATOR) then

				monthC=2

				yearC=2009



				if monthC=1 then 

					yearC=yearC-1

					monthC=12

				else

					monthC=monthC-1

				end if



				if (monthC=1) or (monthC=3) or (monthC=5) or (monthC=7) or (monthC=8) or (monthC=10) or (monthC=12) then dayC=31

				if (monthC=4) or (monthC=6) or (monthC=9) or (monthC=11) then dayC=30

				if (monthC=2) then

					if (yearC mod 4=0) then 

						dayC=29

					else

						dayC=28

					end if

				end if



				if TRIM(("" & rsh("TAX_RATE")))="0" then 

					TAX_CODE="VZ"

				ELSE

					TAX_CODE="V7"

				END IF

					

				if ("" & rsh("Branch_ID"))<"6000" then 

					PLANT_ID="5001"

				else

					PLANT_ID=("" & rsh("Branch_ID"))

				end if



				if TRIM(("" & rsh("WHTCODE")))<>"" then 

					WHT_TYPE="P1"

					TAX_CODE="D7"

				ELSE

					WHT_TYPE="  "

				END IF

				if ("" & rsh("Branch_ID"))<"6000" then 

					PLANT_ID="5001"

				else

					PLANT_ID=("" & rsh("Branch_ID"))

				end if

	

				SQL= "INSERT INTO RECEIPT_DESC(UPLOAD_FLAG,INDICATOR,TRANS_NO,REF_NO,ITEM_NO,DOC_DATE,TO_ID,SHIP_ID,Plant_ID,"

				SQL=SQL & "Product_code,Amount,TAX,Tax_Code,Wht_Type,WHT_COde,CP_NAme,Product_DEsc,CPID,branD_BRANCH_ID) "

				SQL=SQL & " VALUES (0,'" & INDICATOR & "','" & newSlip & "','" & ("" & curRefNo) & "','" & ino & "',TO_DATE('" & monthC & "/" & dayC & "/" & yearC & "','mm/dd/yyyy')"

				SQL= SQL & ",'"  & ("" & rsh("DL_V_ID")) & "','" & ("" & rsh("DL_Ship_ID")) & "','" & PLANT_ID & "','" & ("" & rsh("CCODE")) & "'"

				SQL= SQL & ","  & CDBL(rsh("Amount")) & "," & CDBL(rsh("VAT_AMT")) & ",'" &  TAX_CDOE & "','" & WHT_TYPE & "','" & ("" & rsh("WHTCODE")) & "','" & ("" & rsh("NAME_7_11")) & "','" & ("" & rsh("REVCOST_Desc")) & "','" & ("" & rsh("codE_naME_7_11")) & "'," & ("" & rsh("BRAND_BRANCH_ID")) &")" 

				conn.execute sql



			ino=ino+1

		

		end if

		rsh.movenext

	wend

	rsh.close



MsgBox "RECEIPT CREATED"

end sub

</script>

<body>

<CENTER>

กำลังประมวลผล<BR>

<form name="frm1">

	ERR<input type="textbox" name="recco" size="8">

</form>

</CENTER>



</body>

<script language="VBScript">

    Set conn = CreateObject("ADODB.Connection")

    Set rs = CreateObject("ADODB.Recordset")

    Set rsx = CreateObject("ADODB.Recordset")

    Set rsh = CreateObject("ADODB.Recordset")

'USED AT PTT

USERNAME="nonoil711"

PASSWORD="london711"

tns="nonoil-prd"



    conn.Open "Provider=MSDAORA;Password=" & PASSWORD & ";User ID=" & USERNAME & ";Data Source=" & tns



src1="<%=(String)request.getParameter("src1")%>"

src2="<%=(String)request.getParameter("src2")%>"

src3="<%=(String)request.getParameter("src3")%>"

postday="<%=(String)request.getParameter("postday")%>"

postmonth="<%=(String)request.getParameter("postmonth")%>"

postyear="<%=(String)request.getParameter("postyear")%>"



    importTextFile "" & src1,"" & src2,"" & src3,"" & postday,"" & postmonth,"" & postyear

    window.close

</script>

<%@ include file="cwd.inc" %>