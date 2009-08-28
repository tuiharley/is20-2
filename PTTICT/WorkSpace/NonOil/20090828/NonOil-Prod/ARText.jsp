<%@ page contentType="text/html;charset=WINDOWS-874" %> 
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*" %>
<%@ include file="pwd.inc" %>
<%@ include file="ThaiEncode.inc" %>

<script language="VBScript">
sub ARPROC()
flagWork=MsgBox ("คุณต้องการจะสร้างไฟล์อินเตอร์เฟซหรือไม่",4)

postday="<%=(String)request.getParameter("postday")%>"
postmonth="<%=(String)request.getParameter("postmonth")%>"
postyear="<%=(String)request.getParameter("postyear")%>"
if(cint(postyear)>2500) then postyear=cint(postyear)-543

'OtherCase
sql="SELECT	distinct 'xxxxx' as TRANS_NO, a.PRODUCT_CODE as PRODUCT_CODE,  LTRIM(RTRIM(d.PRODUCT_DESC)) as PRODUCT_DESC, INCOME_PERIOD,BRANCH_NAME,BRAND_NAME,"
sql=sql & "	a.INCOME_DEVIDEND as AMOUNT, "
sql=sql & "	TO_CHAR(b.CP_C_ID) as TO_ID,  Rtrim(Ltrim(f.CUSTOMER_NAME)) as CUSTOMER_NAME, "
sql=sql & "	TO_CHAR(b.CP_SHIP_ID) as SHIP_ID, h.AFLAG as AFLAG, "
sql=sql & "	b.PTT_RESPONSED_BY as OPE "
sql=sql &  "   ,e.contract_no,e.term as term_code,d.vat_rate  as vat_rate, ' ' as POST_DATE,' ' as DOC_DATE,' ' AS CPCODE,UNIT_COUNT,0 as CPVAT "
sql=sql &  "   ,TO_DATE(INCOME_PERIOD,'mm/yyyy') as M_PERIOD "
sql=sql & " from monthly_revenue a, "
sql=sql & "	brand_branch b, brand c "
sql=sql &  "   ,product d,revenue_condition e,customer f,branch g,customer_2 h "
sql=sql & "where a.brand_branch_id = b.brand_branch_id "
sql=sql & " and LTRIM(RTRIM(b.ENGINEERING_STATUS))<'29' "
sql=sql & " and c.brand_id = b.brand_id "
sql=sql & " and b.branch_id = g.branch_id "
sql=sql & " and a.INCOME_DEVIDEND>0 "
sql=sql & " and b.CP_C_ID =f.customer_id "

sql=sql & " and b.CUSTOMER_ID =f.customer_id "
sql=sql & " and b.CUSTOMER_ID =h.customer_id "

sql=sql & " and a.upLoad_FLAG=0 " 
sql=sql & " and b.CP_C_ID is not null " 
sql=sql &  "and e.brand_branch_id=a.brand_branch_id  "
sql=sql &  "and e.brand_branch_id=b.brand_branch_id  "
sql=sql &  "and e.product_code=a.product_code "
sql=sql &  "and e.product_code=d.product_code "

'ADAPT FOR LEVERAGE CONTRACT_NO
sql=sql &  " and (a.INCOME_AMOUNT IS NULL "
sql=sql &  " OR ((a.INCOME_AMOUNT>=e.MIN_REVENUE) AND ((a.INCOME_AMOUNT<=e.MAX_REVENUE) OR E.MAX_REVENUE=0))) "

<%if(uGroup.compareTo("2")==0){%>
sql=sql &  "and brand_group='2'  "
<%}%>

<%if(uGroup.compareTo("1")==0){%>

sql=sql & "and brand_group='1' "

<%}%>


sql=sql &  "  and (e.start_year<TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4)) "
sql=sql &  "           or (e.start_year=TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))  "
sql=sql &  "                and e.start_month<=TO_NUMBER(SUBSTR(INCOME_PERIOD,1,INSTR(INCOME_PERIOD,'/')-1)) "
sql=sql &  "                )"
sql=sql &  "        ) "
sql=sql &  "  and (e.end_year>TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4)) "
sql=sql &  "            or (e.end_year=TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4)) "
sql=sql &  "                   and e.end_month>=TO_NUMBER(SUBSTR(INCOME_PERIOD,1,INSTR(INCOME_PERIOD,'/')-1)) "
sql=sql &  "                  )"
sql=sql &  "        )"

'New Case to filter only this month 17-10-2006
sql=sql & " and (TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))<" & year(now)
sql=sql &  "           or (TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))="& year(now)
sql=sql &  "                and TO_NUMBER(SUBSTR(INCOME_PERIOD,1,INSTR(INCOME_PERIOD,'/')-1))<=" & month(now)
sql=sql &  "                )"
sql=sql &  "        ) "

'CPCase
sql2="SELECT	distinct TRANS_NO,RECEIPT_DESC.PRODUCT_CODE as PRODUCT_CODE,LTRIM(RTRIM(PRODUCT.PRODUCT_DESC)) as PRODUCT_DESC,TO_CHAR(DOC_DATE,'mm/yyyy') as INCOME_PERIOD,NAME_7_11 as BRANCH_NAME,'7-11' AS BRAND_NAME,(AMOUNT) as AMOUNT,TO_ID,"
sql3="SELECT	distinct TRANS_NO,RECEIPT_DESC.PRODUCT_CODE as PRODUCT_CODE,LTRIM(RTRIM(PRODUCT.PRODUCT_DESC)) as PRODUCT_DESC,TO_CHAR(DOC_DATE,'mm/yyyy') as INCOME_PERIOD,NAME_7_11 as BRANCH_NAME,'7-11' AS BRAND_NAME,(AMOUNT) as AMOUNT,TO_ID,"

sql2=sql2 & "	rtrim(ltrim(CUSTOMER_NAME)) as CUSTOMER_NAME,SHIP_ID, AFLAG, brand_branch.PTT_RESPONSED_BY as OPE,' ' as contract_no,term as term_code, 0 as vat_rate, nvl(TO_CHAR(POST_DATE,'DDMMYYYY') ,'"
sql3=sql3 & "	ltrim(rtrim(CUSTOMER_NAME)) as CUSTOMER_NAME,SHIP_ID, AFLAG, brand_branch.DEALER_RESPONSED as OPE,NVL(contract.contract_no,' ') as contract_no,term as term_code, 0 as vat_rate, nvl(TO_CHAR(POST_DATE,'DDMMYYYY') ,'"
tempC=month(now)-1
if tempC=1 or tempC=3 or tempC=5 or tempC=7 or tempC=8 or tempC=10 or tempC=12 then dayC="31"
if tempC=4 or tempC=6 or tempC=9 or tempC=11 then dayC="30"
if tempC=2 then
	if year(now) mod 4 =0 then
		dayC="29"
	else
		dayC="28"
	end if
end if

if Month(now)<>1 then 
	sql2=sql2 & dayC & Right("0" & Month(NOW) -1,2) & Year(NOW) & "'"
	sql3=sql3 & dayC & Right("0" & Month(NOW) -1,2) & Year(NOW) & "'"
else
	sql2=sql2 & dayC & Right("12",2) & Year(NOW) -1 & "'"
	sql3=sql3 & dayC & Right("12",2) & Year(NOW) -1 & "'"
end if
sql2=sql2 & ") as POST_DATE,nvl(TO_CHAR(DOC_DATE,'DDMMYYYY') ,'" 
sql3=sql3 & ") as POST_DATE,nvl(TO_CHAR(DOC_DATE,'DDMMYYYY') ,'" 
if Month(now)<>1 then 
	sql2=sql2 & dayC & Right("0" & Month(NOW) -1,2) & Year(NOW) & "'"
	sql3=sql3 & dayC & Right("0" & Month(NOW) -1,2) & Year(NOW) & "'"
else
	sql2=sql2 & dayC & Right("12",2) & Year(NOW) -1 & "'"
	sql3=sql3 & dayC & Right("12",2) & Year(NOW) -1 & "'"
end if
sql2=sql2 & ") as DOC_DATE,CODE_NAME_7_11 AS CPCODE, 1 as UNIT_COUNT,PRODUCT.VAT_RATE as CPVAT "
sql2=sql2 &  "   ,TO_DATE(TO_CHAR(DOC_DATE,'mm/yyyy'),'mm/yyyy') as M_PERIOD "
sql2=sql2 & " FROM RECEIPT_DESC,BRAND_BRANCH,contract,PRODUCT,CUSTOMER,CUSTOMER_2 "
sql2=sql2 & " WHERE UPLOAD_FLAG=0 "
sql2=sql2 & " and RECEIPT_DESC.BRAND_BRANCH_ID=BRAND_BRANCH.BRAND_BRANCH_ID "
sql2=sql2 & " and contract.brand_branch_id (+) =brand_branch.brand_branch_id  "

sql2=sql2 & " and amount>0 "

sql2=sql2 & " and receipt_desc.product_code =product.product_code "

sql2=sql2 & " and receipt_desc.TO_ID =customer.customer_id "
sql2=sql2 & " and receipt_desc.TO_ID =customer_2.customer_id "

sql2=sql2 & " and LTRIM(RTRIM(brand_branch.ENGINEERING_STATUS))<'29' "
sql2=sql2 & " and INDICATOR = 'PTTINV' "

sql3=sql3 & ") as DOC_DATE,CODE_NAME_7_11 AS CPCODE, 1 as UNIT_COUNT,PRODUCT.VAT_RATE as CPVAT "
sql3=sql3 &  "   ,TO_DATE(TO_CHAR(DOC_DATE,'mm/yyyy'),'mm/yyyy') as M_PERIOD "
sql3=sql3 & " FROM RECEIPT_DESC,BRAND_BRANCH,contract,PRODUCT,CUSTOMER,CUSTOMER_2 "
sql3=sql3 & " WHERE UPLOAD_FLAG=0 "
sql3=sql3 & " and RECEIPT_DESC.BRAND_BRANCH_ID=BRAND_BRANCH.BRAND_BRANCH_ID "
sql3=sql3 & " and contract.brand_branch_id (+) =brand_branch.brand_branch_id  "

sql3=sql3 & " and amount>0 "

sql3=sql3 & " and LTRIM(RTRIM(brand_branch.ENGINEERING_STATUS))<'29' "
sql3=sql3 & " and receipt_desc.product_code =product.product_code "

sql3=sql3 & " and receipt_desc.TO_ID =customer.customer_id "
sql3=sql3 & " and receipt_desc.TO_ID =customer_2.customer_id "

sql3=sql3 & " and INDICATOR = 'PTTINV' "

if Month(now)<>1 then 
	sql2=sql2 & " and TO_CHAR(DOC_DATE,'mm') = '" & Right("0" & Month(NOW) -1,2) & "'"
	sql2=sql2 & " and TO_CHAR(DOC_DATE,'yyyy') = '" & Year(NOW) & "'"
	sql3=sql3 & " and TO_CHAR(DOC_DATE,'mm') = '" & Right("0" & Month(NOW) -1,2) & "'"
	sql3=sql3 & " and TO_CHAR(DOC_DATE,'yyyy') = '" & Year(NOW) & "'"

else
	sql2=sql2 & " and TO_CHAR(DOC_DATE,'mm') = '" & Right("12",2) & "'"
	sql2=sql2 & " and TO_CHAR(DOC_DATE,'yyyy') = '" & Year(NOW) -1 & "'"
	sql3=sql3 & " and TO_CHAR(DOC_DATE,'mm') = '" & Right("12",2) & "'"
	sql3=sql3 & " and TO_CHAR(DOC_DATE,'yyyy') = '" & Year(NOW) -1 & "'"
end if

sql2=sql2 & " and TO_ID='10006594' "
sql3=sql3 & " and TO_ID<>'10006594' "

sql2=sql2 & " UNION " & sql3

<%if(uGroup.compareTo("2")!=0){%>
sql="SELECT * FROM (" & sql2 & " UNION " & sql & ")z  ORDER BY TRANS_NO ASC,TO_ID ASC,SHIP_ID ASC,VAT_RATE ASC,TERM_CODE ASC,CONTRACT_NO DESC,M_PERIOD ASC "
<%}%>

<%if(uGroup.compareTo("2")==0){%>
sql="SELECT * FROM (" & sql & ")z  ORDER BY TRANS_NO ASC,TO_ID ASC,SHIP_ID ASC,VAT_RATE ASC,TERM_CODE ASC,CONTRACT_NO DESC,M_PERIOD ASC "
<%}%>

if flagwork=6 then
	PathName="\\hq-erp-s01\Oil_Interface\non-oil\SD\New\"
else
	PathName="C:\"
end if

TABChar=Chr(9)
'USED AT OFFICE
'USERNAME="sbm"
'PASSWORD="sbm"
'SERVERNAME="192.168.0.2"
'USED AT PTT
USERNAME="nonoil711"
PASSWORD="london711"
sid="nonoil-prd"

portNo="1521"
'sid="sbm"
tns=sid

Set fs = CreateObject("Scripting.FileSystemObject")

<%if(uGroup.compareTo("2")!=0){%>
	fileName=PathName & "N1" & RIGHT(Year(NOW),2) & RIGHT("0" & MONTH(NOW) ,2) & RIGHT("0" & DAY(NOW) ,2) 
<%}%>
<%if(uGroup.compareTo("2")==0){%>
	fileName=PathName & "N2" & RIGHT(Year(NOW),2) & RIGHT("0" & MONTH(NOW) ,2) & RIGHT("0" & DAY(NOW) ,2)
<%}%>

Set Data2 = fs.CreateTextFile(PathName & "ARTEXTLOG" & Year(NOW) & RIGHT("0" & MONTH(NOW) ,2) & RIGHT("0" & DAY(NOW) ,2) & ".txt")
Data2.writeLine("START : " & now)

Set conn = CreateObject("ADODB.Connection")
conn.Open "Provider=MSDAORA;Password=" & PASSWORD & ";User ID=" & USERNAME & ";Data Source=" & tns
Data2.writeLine("CONNECTION COMPLETED")
Set rs = CreateObject("ADODB.Recordset")
Set rsh = CreateObject("ADODB.Recordset")
Set rs2 = CreateObject("ADODB.Recordset")

'while fs.FileExists(fileName & counterFlag & ".txt") 
'	counterFlag=Right("00" & CInt(counterFlag)+1,2)
'wend

'Avoid Temp Close Branch.
sqlN="update monthly_revenue set INCOME_DEVIDEND=0 where INCOME_TRANS_ID in ("
sqlN =sqlN & " SELECT distinct income_TRANS_id from monthly_revenue a,brand_branch b "
sqlN=sqlN & "where a.brand_branch_id = b.brand_branch_id "
sqlN=sqlN & " and a.upLoad_FLAG=0 " 
sqlN=sqlN & " and LTRIM(RTRIM(b.ENGINEERING_STATUS))='29' "
sqlN=sqlN & " and (TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))<" & year(now)
sqlN=sqlN &  "           or (TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))="& year(now)
sqlN=sqlN &  "                and TO_NUMBER(SUBSTR(INCOME_PERIOD,1,INSTR(INCOME_PERIOD,'/')-1))<=" & month(now)
sqlN=sqlN &  "                )"
sqlN=sqlN &  "        ) "
sqlN=sqlN &  ") "
conn.execute sqlN
Data2.writeLine("Renovation Closed Updated.")
'Avoid Close Branch.
sqlN="delete monthly_revenue where INCOME_TRANS_ID in ("
sqlN =sqlN & " SELECT distinct income_TRANS_id from monthly_revenue a,brand_branch b "
sqlN=sqlN & "where a.brand_branch_id = b.brand_branch_id "
sqlN=sqlN & " and a.upLoad_FLAG=0 " 
sqlN=sqlN & " and LTRIM(RTRIM(b.ENGINEERING_STATUS))='30' ) "
conn.execute sqlN
Data2.writeLine("Permanent Closed Updated.")

'Change to lookup in DB
counterFlag="01"
foundFlag=0
rsh.open "SELECT NVL(lookupvalue,'00') FROM lookup where keyword='" & filename & "'",conn
if not (rsh.eof or rsh.bof) then 	
	counterFlag=Right("00" & CInt(rsh(0))+1,2)
	foundFlag=1
end if
rsh.close

if foundFlag=1 then
	conn.execute "update lookup set lookupvalue='" & counterFlag & "' where keyword='" & filename  & "'"
else
<%if(uGroup.compareTo("2")!=0){%>
	conn.execute "delete lookup where keyword like '" & PathName & "N1%'"
<%}%>
<%if(uGroup.compareTo("2")==0){%>
	conn.execute "delete lookup where keyword like '" & PathName & "N2%'"
<%}%>
	conn.execute "insert into  lookup values ('" & filename  & "','" & counterFlag & "')"
end if

Set Data = fs.CreateTextFile(fileName & counterFlag & "_1.txt")
Set Datax = fs.CreateTextFile(fileName & counterFlag & "_2.txt")
MsgBox "START AR SAP ON FILE " & fileName & counterFlag & ".txt"

refTRANS_NO=""
refTO_ID=""
refSHIP_ID=""
refPLANT_ID=""
refContract=""
refTerm=""
refVat=-1

'get LAST RECEIPT
<%if(uGroup.compareTo("2")!=0){%>
	refTrans_no="" & Right(Year(Now),2) & Right("0" & Month(Now),2) & "1000000"
<%}%>
<%if(uGroup.compareTo("2")==0){%>
	refTrans_no="" & Right(Year(Now),2) & Right("0" & Month(Now),2) & "2000000"
<%}%>


<%if(uGroup.compareTo("2")==0){%>
rsh.open "SELECT NVL(lookupvalue,'" & Right(Year(Now),2) & Right("0" & Month(Now),2) & "2000000" & "') as TRANS_NO FROM lookup where keyword='LAST_RECEIPT_NONOIL' and lookupvalue like '" & Right(Year(Now),2) & Right("0" & Month(Now),2) & "%'",conn
if not (rsh.eof or rsh.bof) then 
	refTRANS_NO="" & rsh(0)
end if
rsh.close
<%}%>

'BEGIN TRANSACTION
conn.BeginTrans
Data2.writeLine("SQL is " & sql)
rs.open SQL,conn

'Log HEADER
Data2.writeLine("NO" & chr(9) & "TRANS_NO" & chr(9) & "SOLD-TO" & chr(9) & "SHIP-TO" & chr(9) & "CUSTOMER NAME" & chr(9) & "AMOUNT" & chr(9) & "DOCUMENT DATE" & chr(9) & "SALES"  & chr(9) & "BRANCH NAME" & chr(9) & "POSTING DATE" & CHR(9) & "CPCODE")
Data2.writeLine("==" & chr(9) & "========" & chr(9) & "=======" & chr(9) & "=======" & chr(9) & "=============" & chr(9) & "======"  & chr(9) & "=============" & chr(9) & "=====" & chr(9) & "===========" & chr(9) & "============" & CHR(9) & "======")

if (rs.eof or rs.bof) then 
	Data2.writeLine("NO DATA FOUND")
'New update to lookup ref_trans from database for cstore only in case first record is from nonoil part
<%if(uGroup.compareTo("1")==0){%>
else
	'Prepare first last_receipt
	rsh.open "SELECT * FROM lookup where keyword='LAST_RECEIPT_CSTORE' ",conn
	if (rsh.eof or rsh.bof) then conn.execute "INSERT INTO lookup(keyword,lookupvalue) VALUES ('LAST_RECEIPT_CSTORE','')"
	rsh.close

	if rs("TRANS_NO")="xxxxx" then
		rsh.open "SELECT NVL(lookupvalue,'" & Right(Year(Now),2) & Right("0" & Month(Now),2) & "1000000" & "') as TRANS_NO FROM lookup where keyword='LAST_RECEIPT_CSTORE' and lookupvalue like '" & Right(Year(Now),2) & Right("0" & Month(Now),2) & "%'",conn
		if not (rsh.eof or rsh.bof) then 
			refTRANS_NO="" & rsh(0)
		end if
		rsh.close
	end if
<%}%>
end if

i=0
while not (rs.eof or rs.bof)
	'Get value to parameter
	'Header
	TRANS_NO="" & rs("TRANS_NO")
	TO_ID="" & rs("TO_ID")
	SHIP_ID="" & rs("SHIP_ID")	
	cust_name="" & rs("CUSTOMER_NAME")
	PLANT_ID="5015"
	termCode="" & rs("Term_Code")
	ContractNo="" & rs("contract_no")
	VAT_RATE="" & rs("vat_rate")
	post_date="" & rs ("post_date")
	unitC="" & rs ("unit_count")

	if (unitC="") or (unitC="0")  then unitC="1"

	if ((month(now)-1)=1) or ((month(now)-1)=3) or ((month(now)-1)=5) or ((month(now)-1)=7) or ((month(now)-1)=8) or ((month(now)-1)=10) then
		post_date="31" & (Right("0" & Month(now)-1,2) ) & Right(YEAR(NOW),4)
	end if
	if ((month(now)-1)=4) or ((month(now)-1)=6) or ((month(now)-1)=9) or ((month(now)-1)=11) then
		post_date="30" & (Right("0" & Month(now)-1,2) ) & Right(YEAR(NOW),4)
	end if
	if ((month(now)-1)=2) then
		if ((year(now) mod 4 )= 0) then
			post_date="29" & (Right("0" & Month(now)-1,2) ) & Right(YEAR(NOW),4)
		else
			post_date="28" & (Right("0" & Month(now)-1,2) ) & Right(YEAR(NOW),4)
		end if
	end if
	if ((month(now)-1)=0) then post_date="3112" & Right(YEAR(NOW)-1,4)
	
	'CP TERM EFFECT ONLY CP
	<%if(uGroup.compareTo("2")!=0){%>
	if TO_ID="10006594" then
		termCode=""
	end if
	<%}%>

'SEND 

	'POST DATE SEND LAST MONTH EXCEPT TERM YA12 -- SEND CURRENT MONTH
	if termCode="YA12" then 
			post_date="01" & (Right("0" & Month(now),2) ) & Right(YEAR(NOW),4)
	end if
	doc_date=post_date

	'Post Date correction on 27-07-2008
	post_date=Right("00" & postday,2) & Right("00" & postmonth,2) & Right("0000" & postyear,4)

	IF refTRANS_NO<>TRANS_NO THEN
		'Other Case
		if TRANS_NO="xxxxx" then 
			if (refContract<>ContractNo or refTerm<>termCode or TO_ID<>refTO_ID or SHIP_ID<>refShip_ID or PLANT_ID<>refPlant_ID or refVat<>VAT_RATE) then
			<%if(uGroup.compareTo("2")!=0){%>
				TRANS_NO="" & Right(YEAR(NOW),2) & (Right("0" & Month(now),2) )& RIGHT("1000000" & CLNG(Right(refTrans_NO,7))+1,7)
			<%}%>
			<%if(uGroup.compareTo("2")==0){%>
				TRANS_NO="" & Right(YEAR(NOW),2) & (Right("0" & Month(now),2) )& RIGHT("2000000" & CLNG(Right(refTrans_NO,7))+1,7)
			<%}%>

				'Sampling for RemarkH
				remarkH=" "
				IF rs("TRANS_NO")="xxxxx" THEN	
					sql="SELECT	INCOME_PERIOD,TO_CHAR(b.CP_C_ID) as TO_ID,TO_CHAR(b.CP_SHIP_ID) as SHIP_ID, "
					sql=sql & "	e.term as term_code,d.vat_rate  as vat_rate "
					sql=sql & " from monthly_revenue a, "
					sql=sql & "	brand_branch b, revenue_condition e,product d "
					sql=sql & "where a.brand_branch_id = b.brand_branch_id "
					sql=sql & " and LTRIM(RTRIM(b.ENGINEERING_STATUS))<'29' "
					sql=sql & " and a.INCOME_DEVIDEND>0 "

					sql=sql & " and a.upLoad_FLAG=0 " 
					sql=sql & " and b.CP_C_ID is not null " 
					sql=sql &  "and e.brand_branch_id=a.brand_branch_id  "
					sql=sql &  "and e.brand_branch_id=b.brand_branch_id  "
					sql=sql &  "and e.product_code=a.product_code "
					sql=sql &  "and e.product_code=d.product_code "

					'ADAPT FOR LEVERAGE CONTRACT_NO
					sql=sql &  " and (a.INCOME_AMOUNT IS NULL "
					sql=sql &  " OR ((a.INCOME_AMOUNT>=e.MIN_REVENUE) AND ((a.INCOME_AMOUNT<=e.MAX_REVENUE) OR E.MAX_REVENUE=0))) "
					sql=sql &  "  and (e.start_year<TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4)) "
					sql=sql &  "           or (e.start_year=TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))  "
					sql=sql &  "                and e.start_month<=TO_NUMBER(SUBSTR(INCOME_PERIOD,1,INSTR(INCOME_PERIOD,'/')-1)) "
					sql=sql &  "                )"
					sql=sql &  "        ) "
					sql=sql &  "  and (e.end_year>TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4)) "
					sql=sql &  "            or (e.end_year=TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4)) "
					sql=sql &  "                   and e.end_month>=TO_NUMBER(SUBSTR(INCOME_PERIOD,1,INSTR(INCOME_PERIOD,'/')-1)) "
					sql=sql &  "                  )"
					sql=sql &  "        )"

					'New Case to filter only this month 17-10-2006
					sql=sql & " and (TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))<" & year(now)
					sql=sql &  "           or (TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))="& year(now)
					sql=sql &  "                and TO_NUMBER(SUBSTR(INCOME_PERIOD,1,INSTR(INCOME_PERIOD,'/')-1))<=" & month(now)
					sql=sql &  "                )"
					sql=sql &  "        ) "

					rs2.open "SELECT DISTINCT INCOME_PERIOD from ( " & sql  & " ) x where TO_ID='" & rs("TO_ID") & "' and SHIP_ID='" & rs("SHIP_ID") & "' and term_code='" & rs("term_code") & "' and vat_rate='" & rs("vat_Rate") & "' ",conn

					while not (rs2.eof or rs2.bof)
						if trim(remarkH)="" then remarkH="" & rs2("INCOME_PERIOD") else remarkH=remarkH & "," & rs2("INCOME_PERIOD")
						rs2.movenext
					Wend
					rs2.close
				end if
			else
				TRANS_NO=refTrans_no
				remarkH=" "
			end if
		end if
	end if

	IF refTRANS_NO<>TRANS_NO THEN
		i=i+1
		refTrans_no=Trans_no
		refTO_ID=TO_ID
		refSHIP_ID=SHIP_ID
		refPLANT_ID=PLANT_ID
		refTerm=termCode
		refContract=contractNo
		refVat=VAT_RATE

		'Write file
		'Header
		if "" & rs("AFLAG")<>"1" then
			Data.writeLine("1" & chr(9) & "1" & chr(9)  & TRANS_NO & chr(9)  & TO_ID & chr(9)  & SHIP_ID & chr(9) & rs("OPE") & chr(9) & PLANT_ID & chr(9) & termCode & chr(9) & contractno & chr(9) & doc_date & chr(9) & post_date & chr(9) & remarkH )
		else
			Datax.writeLine("1" & chr(9) & "1" & chr(9)  & TRANS_NO & chr(9)  & TO_ID & chr(9)  & SHIP_ID & chr(9) & rs("OPE") & chr(9) & PLANT_ID & chr(9) & termCode & chr(9) & contractno & chr(9) & doc_date & chr(9) & post_date & chr(9) & remarkH & chr(9) & VAT_RATE)
		end if
		'Log
		Data2.writeLine("" & i & chr(9) & TRANS_NO & chr(9) & TO_ID & chr(9) & SHIP_ID & chr(9) & cust_name & " (" & rs("BRAND_NAME") & ")" & chr(9) & " " & chr(9) & doc_date & chr(9) & rs("OPE") & chr(9) & rs("BRANCH_NAME") & chr(9) & post_date & chr(9) & rs("CPCODE"))
'		Data.writeLine("1" & chr(9) & "1" & chr(9)  & TRANS_NO & chr(9)  & TO_ID & chr(9)  & SHIP_ID & chr(9) & rs("OPE") & chr(9) & PLANT_ID & chr(9) & termCode & chr(9) & contractno & chr(9) & doc_date & chr(9) & post_date)
		pCount=1
	End if
	
	'Detail
	if contractNo=refContract then
		PRODUCT_CODE="" & rs("PRODUCT_CODE")

		prod_desc="" & rs("PRODUCT_DESC")
		Amount="" & rs("Amount")
		INCP="" & rs("INCOME_PERIOD")

		'write file
		'Detail
		if "" & rs("AFLAG")<>"1" then
			Data.writeLine("2" & chr(9) & PRODUCT_CODE & chr(9)  & unitC & chr(9)  & chr(9)  & "ZM10" & chr(9) & (CDBL(AMOUNT)/CDBL(UnitC)) & chr(9)  & chr(9) & chr(9) & chr(9) & chr(9))
		else
			Datax.writeLine("2" & chr(9) & PRODUCT_CODE & chr(9)  & unitC & chr(9)  & chr(9)  & "ZM10" & chr(9) & (CDBL(AMOUNT)/CDBL(UnitC)) & chr(9)  & chr(9) & chr(9) & chr(9) & chr(9))
		end if
		'Log
		Data2.writeLine("" & chr(9) & "" & pCount & chr(9) & "" & PRODUCT_CODE & chr(9) & " "  & chr(9) & "" & prod_desc & " (" & INCP & ") " & chr(9) & "" & amount & chr(9) & chr(9) & rs("OPE") )
		pCount=pCount+1

	end if
	rs.movenext
wend
rs.close

if flagwork=6 then
	'SAVE LAST TRANS_NO
	if (TRANS_NO<>"") and (<%if(uGroup.compareTo("1")!=0){%>TRUE<%}else{%>FALSE<%}%>) then
		sql="UPDATE lookup SET lookupvalue='" & TRANS_NO & "' "
		sql=sql & " WHERE keyword='LAST_RECEIPT_NONOIL'"
		Data2.writeLine("UPDATE LAST NONOIL TRANS_NO is " & TRANS_NO)
		conn.execute sql
	end if

	if (TRANS_NO<>"") and (<%if(uGroup.compareTo("2")!=0){%>TRUE<%}else{%>FALSE<%}%>) then
		sql="UPDATE lookup SET lookupvalue='" & TRANS_NO & "' "
		sql=sql & " WHERE keyword='LAST_RECEIPT_CSTORE'"
		Data2.writeLine("UPDATE LAST CSTORE TRANS_NO is " & TRANS_NO)
		conn.execute sql
	end if

<%if(uGroup.compareTo("1")==0){%>
	'Set flag
	sql="UPDATE RECEIPT_DESC SET UPLOAD_FLAG=1 "
	sql=sql & " WHERE INDICATOR = 'PTTINV' "
'	sql=sql & " and TO_CHAR(DOC_DATE,'mm') = '" & Right("0" & Month(NOW) -1,2) & "'"
'	sql=sql & " and TO_CHAR(DOC_DATE,'yyyy') = '" & Year(NOW) & "'"
	Data2.writeLine("UPDATE RECEIPT_DESC UPLOAD FLAG")
	conn.execute sql
<%}%>

	sql="UPDATE MONTHLY_REVENUE SET UPLOAD_FLAG=1 WHERE 1=1 "
'	sql=sql & " WHERE Income_Period='"  & Right("0" & Month(now)-1 ,2) & "/" & Year(now) & "'"
	
	<%if(uGroup.compareTo("1")==0){%>
	sql=sql &  "and brand_branch_ID in (select distinct brand_branch_id  from brand_branch,brand where brand_branch.brand_id=brand.brand_id and brand_group='1' ) "
	<%}%>
	<%if(uGroup.compareTo("2")==0){%>
	sql=sql &  "and brand_branch_ID in (select distinct brand_branch_id  from brand_branch,brand where brand_branch.brand_id=brand.brand_id and brand_group='2' ) "
	<%}%>
	'New Case to filter only this month 17-10-2006
	sql=sql & " and (TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))<" & year(now)
	sql=sql &  "           or (TO_NUMBER(SUBSTR(INCOME_PERIOD,INSTR(INCOME_PERIOD,'/')+1,4))="& year(now)
	sql=sql &  "                and TO_NUMBER(SUBSTR(INCOME_PERIOD,1,INSTR(INCOME_PERIOD,'/')-1))<=" & month(now)
	sql=sql &  "                )"
	sql=sql &  "        ) "

	Data2.writeLine("UPDATE MONTHLY_REVENUE UPLOAD FLAG")
	conn.execute sql
	conn.commitTrans
end if

Data2.writeLine("COMMIT : " & Now & chr(9) & "TOTAL : " & i & " record(s)")
MsgBox "COMPLETED AR SAP ON " & i & " record(s)"
End Sub

Call ARProc
</SCRIPT>
<%@ include file="cwd.inc" %>
