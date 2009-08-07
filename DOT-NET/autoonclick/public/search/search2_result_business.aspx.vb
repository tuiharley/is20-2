Imports System.Data.OleDb
Public Class search2_result_business
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Private pageSize As Integer = 20
    Private buzType As Integer = 5

    Dim bAns As Boolean
    Dim sErr As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        'bAns = DealerHP.AppendTextToFile("Load" & vbCrLf, "D:\userData\log2.tui", sErr)
        Session("myDealers") = doSearchDealer(Session("searchSQL"))

        AjaxPro.Utility.RegisterTypeForAjax(GetType(search2_result_business))
    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function showSearch() As String
        Dim sql As String

        sql = Session("SearchCond")

        Return sql
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showPage(ByVal curPage As Integer) As String
        Dim sql As String

        sql = showPageHtml(curPage)

        Return sql
    End Function
    Public Function showPageHtml(ByVal curPage As Integer) As String
        Dim sql As String
        Dim pages As Integer

        sql = "<table border='0' align='right' cellpadding='0' cellspacing='0' class='Page_Number'>"
        sql = sql & "<tr>"
        If curPage - 1 <= 0 Then
            sql = sql & "<td>|&lt;&lt;</td>"
            sql = sql & "<td><img src='../../images/objects/no.gif' width='7' height='1'></td>"
            sql = sql & "<td>&lt;&lt;</td>"
        Else
            sql = sql & "<td onClick='goPage(1);' style=""CURSOR: hand"">|&lt;&lt;</td>"
            sql = sql & "<td><img src='../../images/objects/no.gif' width='7' height='1'></td>"
            sql = sql & "<td onClick='goPage(" & curPage - 1 & ");' style=""CURSOR: hand"">&lt;&lt;</td>"
        End If
        sql = sql & "<td><img src='../../images/objects/no.gif' width='7' height='1'></td>"
        sql = sql & "<td><strong>Page </strong> "

        pages = Math.Ceiling(Session("myDealers").total / pageSize)
        Dim i As Integer
        For i = 1 To pages
            If i = curPage Then
                sql = sql & "                         <strong>" & i & "</strong> "
            Else
                sql = sql & "                         <font class='Font_U_Pages' onClick='goPage(" & i & ");'>" & i & "</font> "
            End If
        Next

        sql = sql & "<strong>of " & pages & "</strong></td>"
        sql = sql & "<td><img src='../../images/objects/no.gif' width='7' height='1'></td>"

        If curPage = pages Then
            sql = sql & "<td>&gt;&gt;</td>"
            sql = sql & "<td><img src='../../images/objects/no.gif' width='7' height='1'></td>"
            sql = sql & "<td>&gt;&gt;|</td>"
        Else
            sql = sql & "<td onClick='goPage(" & curPage + 1 & ");' style=""CURSOR: hand"">&gt;&gt;</td>"
            sql = sql & "<td><img src='../../images/objects/no.gif' width='7' height='1'></td>"
            sql = sql & "<td  onClick='goPage(" & pages & ");' style=""CURSOR: hand"">&gt;&gt;|</td>"
        End If


        sql = sql & "</tr>"
        sql = sql & "</table>"

        Return sql
    End Function
    Public Function showMainPic(ByVal picUrl As String) As String
        Dim tmp As String, tmp2 As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim x As Integer

        

        'If picUrl = "http://www.auto-onclick.com/images/objects/no_image_60x45.gif" Then
        '    picUrl = "http://www.auto-onclick.com/images/objects/no_image_250x188.gif"

        If picUrl = "" Then
            picUrl = ConfigurationSettings.AppSettings("picURL") & "images/objects/no_image_80x60.gif"
        End If

        If picUrl.IndexOf("userData") <> -1 Then
            tmp2 = Right(picUrl, picUrl.Length - picUrl.IndexOf("userData"))
            tmp2 = "/" & tmp2

        Else
            tmp2 = Right(picUrl, picUrl.Length - picUrl.IndexOf("images"))
            tmp2 = "../" & tmp2

        End If

        'bAns = DealerHP.AppendTextToFile(tmp2 & vbCrLf, "D:\userData\log2.tui", sErr)

        a = New Bitmap(Server.MapPath(tmp2))
        autoonclick.resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
        tmp = "<img border='0' style=""CURSOR: hand"" src='" & picUrl & "' width='" & imageWidth & "' height='60' >"




        Return tmp
    End Function


    <AjaxPro.AjaxMethod()> _
    Public Function showList(ByVal curPage As Integer) As String
        Dim sql As String
        Dim custIds As String
        Dim myCustids As searchedDealer
        Dim myDealerList As stDealerList
        Dim i As Integer
        Dim endNo As Integer
        Dim x As Integer = 1
        Dim col As String
        Dim en As Integer, st As Integer

        'bAns = DealerHP.AppendTextToFile("showList" & vbCrLf, "D:\userData\log2.tui", sErr)

        For Each myCustids In Session("myDealers").myDealer
            custIds = custIds & "," & myCustids.custid
        Next
        custIds = Right(custIds, Len(custIds) - 1)

        If custIds <> "0" Then

            'bAns = DealerHP.AppendTextToFile("getListDealer1" & vbCrLf, "D:\userData\log2.tui", sErr)
            myDealerList = DealerDB.getListDealer(custIds)

            'bAns = DealerHP.AppendTextToFile("getListDealer2" & vbCrLf, "D:\userData\log2.tui", sErr)

            st = ((curPage - 1) * pageSize) + 1
            If curPage * pageSize >= Session("myDealers").total Then
                en = Session("myDealers").total
            Else
                en = curPage * pageSize
            End If

            For i = 0 To en - st
                If x Mod 2 = 0 Then
                    col = "../../images/table/g_693.gif"
                Else
                    col = "../../images/table/b_693.gif"
                End If
                'If myCustids.custid <> 0 Then
                endNo = (((curPage - 1) * pageSize) + x) * buzType
                sql = sql & showDealer(col, endNo, myDealerList)
                'End If

                x = x + 1
            Next

        Else
            sql = showNoDealer("../../images/table/g_693.gif")
        End If


        Return sql
    End Function
    Private Function showNoDealer(ByVal color As String) As String
        Dim sql As String

        sql = "<table width='693' border='0' cellpadding='0' cellspacing='0' background='" & color & "'> "
        sql = sql & "<tr><div id='notfound'>"
        sql = sql & "<td align='center'>ไม่พบข้อมูล</td>"
        sql = sql & "</div></tr>"
        sql = sql & "</table>"

        Return sql
    End Function


    Private Function showDealer(ByVal color As String, ByVal en As Integer, ByVal myDealer As stDealerList) As String
        Dim sql As String
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")
        Dim st As Integer = (en - buzType)
        Dim myDealerDetail As showDeal

        myDealerDetail = getDealerWords(st, myDealer)

        sql = "<table width='693' border='0' cellpadding='0' cellspacing='0'>"
        sql = sql & "<tr>"
        sql = sql & "<td width='693'><table width='693' border='0' cellpadding='0' cellspacing='0' background='" & color & "'"
        sql = sql & "class='Font_black_LH_15px'>"
        sql = sql & "<tr>"
        sql = sql & "<td height='5' colspan='5'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td width='5' rowspan='3'></td>"
        sql = sql & "<td width='80' rowspan='3' valign='top'><div align='center'><a href='" & userURL & myDealer.myList(st).Customer_UserName & "/index.html' target='_blank'>" & showMainPic(myDealer.myList(st).Customer_Logo) & "</a></div>"
        sql = sql & "</td>"
        sql = sql & "<td width='5' rowspan='3'></td>"
        sql = sql & "<td width='598'><a href='" & userURL & myDealer.myList(st).Customer_UserName & "/index.html' target='_blank' class='A_PC_black_underline'>"
        sql = sql & myDealer.myList(st).Customer_Name
        sql = sql & "</a></td>"
        sql = sql & "<td width='5' rowspan='3'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td width='598' height='5'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td width='598' valign='top'><span class='Font_orange'>ธุรกิจหลัก:</span>"
        sql = sql & myDealerDetail.mainBuz
        sql = sql & "<span class='Font_orange'> ธุรกิจเสริม:</span>"
        sql = sql & myDealerDetail.addBuz
        sql = sql & "<span class='Font_orange'> ที่อยู่:</span>"
        sql = sql & myDealerDetail.address
        sql = sql & "<span class='Font_orange'> โทรศัพท์:</span>"
        sql = sql & myDealerDetail.phone
        'Response.Write(myDealerDetail.phone)
        sql = sql & "<span class='Font_orange'> Fax:</span>"
        sql = sql & myDealerDetail.fax
        sql = sql & "<span class='Font_orange'> เวลาทำการ:</span>"
        sql = sql & myDealerDetail.timeOper
        sql = sql & "</td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td height='5' colspan='5'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td height='1' colspan='5'><img src='../../images/lines/w.gif' width='693' height='1'></td>"
        sql = sql & "</tr>"
        sql = sql & "</table>"
        sql = sql & "</td>"
        sql = sql & "</tr>"
        sql = sql & "</table>"

        Return sql
    End Function
    Private Function getDealerWords(ByVal st As Integer, ByVal x As stDealerList) As showDeal
        Dim myD As showDeal
        'Dim st As Integer = en - buzType
        Dim myDealerList As dealerList
        Dim i As Integer
        Dim buziType As Integer '= InfoQuestionDB.questionTypeRev(mainB.type)

        'For Each myDealerList In x.myList
        For i = st To (st + buzType) - 1
            If x.myList(i).MainBuz = 1 Then
                myD.mainBuz = x.myList(i).BusinessType_Name & " "
                If x.myList(i).q1 = 1 Then
                    myD.mainBuz = myD.mainBuz & getBuzType(1) & ","
                End If
                If x.myList(i).q2 = 1 Then
                    myD.mainBuz = myD.mainBuz & getBuzType(2) & ","
                End If
                If x.myList(i).q3 = 1 Then
                    myD.mainBuz = myD.mainBuz & getBuzType(3) & ","
                End If
                myD.mainBuz = Left(myD.mainBuz, myD.mainBuz.Length - 1)
                buziType = InfoQuestionDB.questionTypeRev(x.myList(i).questionType)
                myD.mainBuz = myD.mainBuz & getMoreDetail(buziType, x.myList(i).custid)
            Else

                If x.myList(i).q1 = 1 Or x.myList(i).q2 = 1 Or x.myList(i).q3 = 1 Then
                    myD.addBuz = myD.addBuz & x.myList(i).BusinessType_Name & " "

                    If x.myList(i).q1 = 1 Then
                        myD.addBuz = myD.addBuz & getBuzType(1) & ","
                    End If
                    If x.myList(i).q2 = 1 Then
                        myD.addBuz = myD.addBuz & getBuzType(2) & ","
                    End If
                    If x.myList(i).q3 = 1 Then
                        myD.addBuz = myD.addBuz & getBuzType(3) & ","
                    End If

                    If myD.addBuz <> "" Then
                        myD.addBuz = Left(myD.addBuz, myD.addBuz.Length - 1)
                    End If
                    buziType = InfoQuestionDB.questionTypeRev(x.myList(i).questionType)
                    myD.addBuz = myD.addBuz & getMoreDetail(buziType, x.myList(i).custid) & "; "

                End If

            End If
            myD.address = x.myList(i).Customer_Address & ", " & x.myList(i).District_Name & ", " & x.myList(i).Province_Name
            myD.phone = x.myList(i).Customer_Phone1
            If x.myList(i).Customer_Phone2 <> "" Then
                myD.phone = myD.phone & ", " & x.myList(i).Customer_Phone2
            End If
            If x.myList(i).Customer_Fax <> "" Then
                myD.fax = x.myList(i).Customer_Fax
            Else
                myD.fax = "-"
            End If

            If x.myList(i).Customer_DateStart <> 0 And x.myList(i).Customer_DateStop <> 0 Then
                myD.timeOper = CustomerDB.getDateOpen(x.myList(i).Customer_DateStart) & " - " & CustomerDB.getDateOpen(x.myList(i).Customer_DateStop)
                If x.myList(i).Customer_TimeStart <> 0 And x.myList(i).Customer_TimeStop <> 0 Then
                    myD.timeOper = myD.timeOper & " : " & CustomerDB.getTimeOpen(x.myList(i).Customer_TimeStart) & " - " & CustomerDB.getTimeOpen(x.myList(i).Customer_TimeStop) & " น."
                End If
            Else
                myD.timeOper = "ไม่ระบุ"
            End If


        Next

        If myD.addBuz = "" Then
            myD.addBuz = " - "
        End If

        Return myD
    End Function
    Private Function getMoreDetail(ByVal qType As Integer, ByVal custid As Integer) As String
        Dim sql As String
        Dim flag As Boolean

        flag = False

        Select Case qType
            Case 1
                Dim myBuz As infoSaleCar = InfoSaleCarDB.getInfoSaleCar(custid)
                If myBuz.Official_Dealer = 1 Then
                    sql = sql & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    sql = sql & " / - " & myBuz.Dealer_Type & ")"
                Else
                    sql = sql & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 2
                Dim myBuz As infoServiceCar = InfoServiceCarDB.getInfoServiceCar(custid)
                If myBuz.Official_Dealer = 1 Then
                    sql = sql & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    sql = sql & " / - " & myBuz.Dealer_Type & ")"
                Else
                    sql = sql & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 3
                Dim myBuz As infoSalePart = InfoSalePartDB.getInfoSalePart(custid)
                If myBuz.Official_Dealer = 1 Then
                    sql = sql & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    sql = sql & " / - " & myBuz.Dealer_Type & ")"
                Else
                    sql = sql & "(" & myBuz.Dealer_Type & ")"
                End If

        End Select

        Return sql
    End Function

    Private Function getBuzType(ByVal ty As Integer) As String
        Dim myResult As String

        Select Case ty
            Case 1
                myResult = "รถยนต์"
            Case 2
                myResult = "รถจักรยานยนต์"
            Case 3
                myResult = "รถบรรทุก"

        End Select

        Return myResult
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showTotal(ByVal curPage As Integer) As String
        Dim sql As String
        Dim en As Integer, st As Integer

        st = ((curPage - 1) * pageSize) + 1
        If curPage * pageSize >= Session("myDealers").total Then
            en = Session("myDealers").total
        Else
            en = curPage * pageSize
        End If
        sql = getTotalP(st, en, Session("myDealers").total)

        Return sql
    End Function
    Private Function getTotalP(ByVal st As Integer, ByVal en As Integer, ByVal total As Integer) As String
        Dim sql As String

        sql = "แสดงผลการค้นหา: <span class='Font_black_bold'>" & st & "-" & en & "</span> "
        sql = sql & "จาก <span class='Font_black_bold'>" & total & "</span> รายการ"

        Return sql
    End Function

    Private Function doSearchDealer(ByVal sql As String) As dealerRow
        Dim myDealers As dealerRow
        'bAns = DealerHP.AppendTextToFile("doSearchDealer" & vbCrLf, "D:\userData\log2.tui", sErr)
        myDealers = DealerDB.getCountDealer(sql)
        Return myDealers
    End Function


End Class
