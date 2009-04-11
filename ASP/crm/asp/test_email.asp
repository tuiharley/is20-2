<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
%>
<HTML>
<HEAD>
	<meta http-equiv=Expires content=0>
	<meta http-equiv=Content-Type content="text/html; charset=Windows-874">
</HEAD>
<BODY>
<%
	Dim emailto , body 
	Dim myMail , Sql , Rs2
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

			Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID='5450' "
					Rs2.Open Sql,Session("Conn1"),1,3
											if Rs2("EMAIL") <> ""  then 

							emailto = Rs2("EMAIL")
							body = body & "เรียนคุณ" & Rs2("NAME_THAI") & "  " & Rs2("SURNAME_THAI") & " "
							Rs2.Close							
						Set myMail=Server.CreateObject("CDO.Message")
								myMail.Subject="Sending email with CDO"
								myMail.From="mymail@mydomain.com"
								myMail.To="trimitc@ttt.co.th"
								myMail.TextBody=body
								myMail.Send

							response.Write("OK")
							end if 
%>
<script language=javascript>
	alert('บันทึกข้อมูลเรียบร้อย');
</script>
</BODY>
</HTML>
