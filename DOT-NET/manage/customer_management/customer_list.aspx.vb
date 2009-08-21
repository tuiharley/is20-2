Public Class customer_list
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents cstList As System.Web.UI.WebControls.Label
    Protected WithEvents numUp As System.Web.UI.WebControls.Label
    Protected WithEvents numDown As System.Web.UI.WebControls.Label
    Protected WithEvents allprivate As System.Web.UI.WebControls.HyperLink
    Protected WithEvents allbusiness As System.Web.UI.WebControls.HyperLink
    Protected WithEvents allvehicle As System.Web.UI.WebControls.HyperLink
    Protected WithEvents allpart As System.Web.UI.WebControls.HyperLink
    Protected WithEvents allworkshop As System.Web.UI.WebControls.HyperLink
    Protected WithEvents allrental As System.Web.UI.WebControls.HyperLink
    Protected WithEvents allcleaner As System.Web.UI.WebControls.HyperLink
    Protected WithEvents allcust As System.Web.UI.WebControls.HyperLink

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Private Const pageSize As Integer = 20

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim curPage As Integer = Request.QueryString("curPage")
        Dim showType As Integer = Request.QueryString("showType")

        If curPage = 0 Then
            curPage = 1
        End If

        cstList.Text = custLst("", 1, curPage, showType)
        NumCustLst("", 1, curPage)
    End Sub
    Private Sub setLink(ByVal curPage As Integer, ByVal allC As Integer, ByVal allPri As Integer, ByVal allBuz As Integer, ByVal allV As Integer, ByVal allPa As Integer, ByVal allWo As Integer, ByVal allRe As Integer, ByVal allCl As Integer)

        allcust.Text = "ALL(" & allC & ")"
        allcust.NavigateUrl = "customer_list.aspx?showType=0&curPage=" & curPage

        allprivate.Text = "Private(" & allPri & ")"
        allprivate.NavigateUrl = "customer_list.aspx?showType=1&curPage=" & curPage

        allbusiness.Text = "Business(" & allBuz & ")"
        allbusiness.NavigateUrl = "customer_list.aspx?showType=2&curPage=" & curPage


        allvehicle.Text = "Vehicle Dealers(" & allV & ")"
        allpart.Text = "Part/Acc. Dealers(" & allPa & ")"
        allworkshop.Text = "Workshops(" & allWo & ")"
        allrental.Text = "Rentals(" & allRe & ")"
        allcleaner.Text = "Cleaners(" & allCl & ")"

    End Sub
    Public Function custLst(ByVal Cname As String, ByVal selType As Integer, ByVal curPage As Integer, ByVal showType As Integer) As String
        Dim SQL As String
        Dim myQ As Queue
        Dim myCust As A_Customer
        Dim i As Integer = 1
        Dim myInfoQuestion As infoQuestion
        Dim BType As String
        Dim BWord As String
        Dim flag_show As Boolean = False
        Dim pageSt As Integer
        Dim pageEn As Integer

        Select Case showType
            Case 0
                myQ = CustomerDB.getCustomers(Cname, selType)
            Case 1
                myQ = CustomerDB.getCustomers(0, Cname, selType)
            Case 2
                myQ = CustomerDB.getCustomers(1, Cname, selType)

        End Select


        showNum1(curPage, myQ)

        For Each myCust In myQ

            pageSt = ((curPage - 1) * pageSize) + 1
            pageEn = (curPage * pageSize)
            If i >= pageSt And i <= pageEn Then
                flag_show = True
            Else
                flag_show = False
            End If

            If flag_show Then

                If i Mod 2 = 0 Then
                    SQL = SQL & " <tr bgcolor=""#e6e6e6"">"
                Else
                    SQL = SQL & " <tr bgcolor=""#f4f4f4"">"
                End If
                SQL = SQL & " 				<td><div align=""center"">"
                SQL = SQL & " 						<input name=""checkbox"" type=""checkbox"" class=""standard_font"" value=""checkbox"">"
                SQL = SQL & " 					</div>"
                SQL = SQL & " 				</td>"
                SQL = SQL & " 				<td nowrap>" & myCust.username & "</td>"
                SQL = SQL & " 				<td width=""250"">"
                If myCust.type = 0 Then
                    SQL = SQL & myCust.name & " " & myCust.surname
                Else
                    Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

                    'de_home.NavigateUrl = userURL & myinfo.username & "/index.html"
                    'de_home.Target = "_blank"
                    SQL = SQL & "<a class='A_black_underline' href='" & userURL & myCust.username & "/index.html' target=""_blank"">"
                    SQL = SQL & myCust.name & " " & myCust.surname & "</a>"
                End If

                SQL = SQL & "</td>"
                SQL = SQL & " 				<td nowrap>"
                If myCust.type = 0 Then
                    SQL = SQL & " 					<span class=""Stil2"">P</span>"
                Else
                    myInfoQuestion = InfoQuestionDB.getMainQuestion(myCust.id)
                    BType = InfoQuestionDB.questionType2(InfoQuestionDB.questionTypeRev(myInfoQuestion.type))
                    If myInfoQuestion.q1 = 1 Then
                        BWord = "C"
                    End If
                    If myInfoQuestion.q2 = 1 Then
                        If BWord.Length = 0 Then
                            BWord = "M"
                        Else
                            BWord = BWord & "/M"
                        End If
                    End If
                    If myInfoQuestion.q3 = 1 Then
                        If BWord.Length = 0 Then
                            BWord = "T"
                        Else
                            BWord = BWord & "/T"
                        End If
                    End If

                    SQL = SQL & " 					<span class=""Stil10"">B</span>	" & BType & ": " & BWord
                    BWord = ""
                End If

                SQL = SQL & " 				</td>"
                SQL = SQL & " 				<td nowrap bgcolor=""#f4f4f4""><div align=""center"" class='Stil11'>"
                If myCust.type = 0 Then
                    SQL = SQL & "<a href='private_customer/private_personal_data.aspx?custid=" & myCust.id & "' target='_blank'>"
                Else
                    SQL = SQL & "<a href='business_customer/personal_datas/business_personal_data.aspx?custid=" & myCust.id & "' target='_blank'>"
                End If
                SQL = SQL & "<img src=""../pics/icons/customer_16x16.gif"" width=""16"" height=""16"" border=""0""></a></div>"
                SQL = SQL & " 				</td>"
                SQL = SQL & " 				<td nowrap><div align=""center"">" & myCust.postDate.ToString("dd-MM-yyyy") & "</div>"
                SQL = SQL & " 				</td>"
                If myCust.type = 0 Then
                    SQL = SQL & " 				<td width=""74"" nowrap><a href='private_customer/private_sales_history.aspx?cust_id=" & myCust.id & "'"
                Else
                    SQL = SQL & " 				<td width=""74"" nowrap><a href='business_customer/histories/business_sales_history.aspx?cust_id=" & myCust.id & "'"
                End If
                SQL = SQL & " 						target=""_blank"">" & FormatNumber(myCust.amount, , , , TriState.True) & "</a></td>"
                SQL = SQL & " 				<td nowrap bgcolor=""#f4f4f4""><div align=""center"">"
                If myCust.online = 0 And myCust.offline = 0 Then
                    SQL = SQL & "n.a."
                Else
                    If myCust.type = 1 Then
                        SQL = SQL & "<a href='business_customer/lists/business_package_list.aspx?cust_id=" & myCust.id & "' target='_blank'><span class=""Stil5"">" & myCust.online & "</span>/<span class=""Stil6"">" & myCust.offline & "</span></a>"
                    Else
                        SQL = SQL & "<a href='private_customer/private_ad_list.aspx?cust_id=" & myCust.id & "' target='_blank'><span class=""Stil5"">" & myCust.online & "</span>/<span class=""Stil6"">" & myCust.offline & "</span></a>"
                    End If
                End If
                SQL = SQL & "</div></td>"

                ' Remark until Special offer and Job ad can be used
                'SQL = SQL & " 				<td nowrap><a href=""business_customer/lists/business_special_offer_list.htm"" target=""_blank""><span class=""Stil5"">4</span>/<span class=""Stil6"">2</span></a></td>"
                'SQL = SQL & " 				<td nowrap><div align=""center""><a href=""business_customer/lists/business_job_list.htm"" target=""_blank"">3</a></div></td>"

                SQL = SQL & " 				<td nowrap>n.a.</td>"
                SQL = SQL & " 				<td nowrap><div align=""center"">n.a.</div></td>"

                SQL = SQL & " 				<td nowrap><div align=""center"">"
                SQL = SQL & "<a href='message_box/inbox.aspx?fromid=" & myCust.id & "' target='_blank'><img src=""../images/mailPic/email.png"" border='0' alt='Inbox' width=""16"" height=""16""></a> "
                SQL = SQL & "<a href='message_box/send_message.aspx?fromid=" & myCust.id & "' target='_blank'><img src=""../pics/icons/email_16x16.gif"" width=""16"" alt='Email' border='0' height=""16""></a></div>"
                SQL = SQL & " 				</td>"
                SQL = SQL & " 			</tr>"


            End If

            i = i + 1
        Next

        Return SQL
    End Function
    Public Sub NumCustLst(ByVal Cname As String, ByVal selType As Integer, ByVal curPage As Integer)
        Dim myQ As Queue
        Dim myCust As A_Customer
        Dim i As Integer = 1
        Dim myInfoQuestion As infoQuestion

        Dim allC As Integer = 0
        Dim allPri As Integer = 0
        Dim allBuz As Integer = 0
        Dim allV As Integer = 0
        Dim allPa As Integer = 0
        Dim allWo As Integer = 0
        Dim allCl As Integer = 0
        Dim allRe As Integer = 0


        myQ = CustomerDB.getCustomers(Cname, selType)

        allC = myQ.Count
        showNum1(curPage, myQ)

        For Each myCust In myQ


            If myCust.type = 0 Then
                allPri = allPri + 1
            Else
                allBuz = allBuz + 1
            End If

            myInfoQuestion = InfoQuestionDB.getMainQuestion(myCust.id)
            Select Case myInfoQuestion.type
                Case "saleCar"
                    allV = allV + 1
                Case "serviceCar"
                    allWo = allWo + 1
                Case "salePart"
                    allPa = allPa + 1
                Case "carRent"
                    allRe = allRe + 1
                Case "carWash"
                    allCl = allCl + 1
            End Select

        Next


        setLink(curPage, allC, allPri, allBuz, allV, allPa, allWo, allRe, allCl)

    End Sub

    Public Sub showNum1(ByVal curPage As Integer, ByVal listQ As Queue)
        Dim SQL As String
        Dim totalRow As Integer
        Dim totalPage As Integer
        Dim i As Integer

        totalRow = listQ.Count
        totalPage = Math.Ceiling(totalRow / pageSize)


        SQL = " <table border=""0"" align=""right"" cellpadding=""0"" cellspacing=""0"">"
        SQL = SQL & " 						<tr>"
        If curPage = 1 Then
            SQL = SQL & " 							<td nowrap class=""small_standard_font"">|&lt;&lt;</td>"
        Else
            SQL = SQL & " 							<td nowrap class=""small_standard_font"" style=""CURSOR: hand"" onClick='goPage(1);'>|&lt;&lt;</td>"
        End If
        SQL = SQL & " 							<td><img src=""../pics/objects/no.gif"" width=""13"" height=""1""></td>"
        If curPage = 1 Then
            SQL = SQL & " 							<td nowrap class=""small_standard_font"">&lt;&lt;</td>"
        Else
            SQL = SQL & " 							<td nowrap class=""small_standard_font"" style=""CURSOR: hand"" onClick='goPage(" & curPage - 1 & ");'>&lt;&lt;</td>"
        End If
        SQL = SQL & " 							<td><img src=""../pics/objects/no.gif"" width=""13"" height=""1""></td>"
        SQL = SQL & " 							<td nowrap class=""small_standard_font""><strong>Page&nbsp;&nbsp;</strong>"
        For i = 1 To totalPage
            If i = curPage Then
                SQL = SQL & "                         <strong>" & i & "</strong> "
            Else
                SQL = SQL & "                         <font class='Font_U_Pages' style=""CURSOR: hand"" onClick='goPage(" & i & ");'>" & i & "</font> "
            End If
        Next
        SQL = SQL & " 									<strong>of " & totalPage & "</strong></td>"
        SQL = SQL & " 							<td><img src=""../pics/objects/no.gif"" width=""13"" height=""1""></td>"
        If curPage = totalPage Then
            SQL = SQL & " 							<td nowrap class=""small_standard_font"">&gt;&gt;</td>"
        Else
            SQL = SQL & " 							<td nowrap class=""small_standard_font"" style=""CURSOR: hand"" onClick='goPage(" & curPage + 1 & ");'>&gt;&gt;</td>"
        End If
        SQL = SQL & " 							<td><img src=""../pics/objects/no.gif"" width=""13"" height=""1""></td>"
        If curPage = totalPage Then
            SQL = SQL & " 							<td nowrap class=""small_standard_font"">&gt;&gt;|</td>"
        Else
            SQL = SQL & " 							<td nowrap class=""small_standard_font"" style=""CURSOR: hand"" onClick='goPage(" & totalPage & ");'>&gt;&gt;|</td>"
        End If
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"

        numUp.Text = SQL
        numDown.Text = SQL
    End Sub
End Class
