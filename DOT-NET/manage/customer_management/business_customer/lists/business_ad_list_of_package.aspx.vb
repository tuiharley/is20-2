Imports System.Globalization
Imports System.Threading
Public Class business_ad_list_of_package
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents personData As System.Web.UI.WebControls.HyperLink
    Protected WithEvents webLink As System.Web.UI.WebControls.HyperLink
    Protected WithEvents PackList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents soList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents jobList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents custTel As System.Web.UI.WebControls.Label
    Protected WithEvents AdsDetail As System.Web.UI.WebControls.Label
    Protected WithEvents AdsNo As System.Web.UI.WebControls.Label
    Protected WithEvents AdsHead As System.Web.UI.WebControls.Label
    Protected WithEvents ProlongPck As System.Web.UI.WebControls.HyperLink
    Protected WithEvents ChgPack As System.Web.UI.WebControls.HyperLink
    Protected WithEvents Hed2 As System.Web.UI.WebControls.Label
    Protected WithEvents Hed1 As System.Web.UI.WebControls.Label
    Protected WithEvents delBtn As System.Web.UI.WebControls.Label
    Protected WithEvents submitBtn As System.Web.UI.WebControls.Label
    Protected WithEvents ConPt As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim cust_id As Integer = Request.QueryString("cust_id")
        Dim noticeid As Integer = Request.QueryString("noticeid")
        Dim myNotice As noticeS

        'cust_id = 28
        Session("pagename") = "business_ad_list_of_package.aspx"
        myNotice = NoticeDB.getNoticesInfoD(noticeid)


        showInfo(cust_id)
        showDetail(cust_id, noticeid, myNotice.category)
        AjaxPro.Utility.RegisterTypeForAjax(GetType(business_ad_list_of_package))
    End Sub
    Private Sub showInfo(ByVal cust_id As Integer)
        Dim myCust As A_Customer
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        myCust = CustomerDB.getA_customer(cust_id)
        custName.Text = myCust.name & "(" & myCust.username & ")"
        ConPt.Text = myCust.contactName
        custEmail.Text = myCust.email
        custTel.Text = myCust.phone1
        If myCust.phone2 <> "" Then
            custTel.Text = custTel.Text & "/" & myCust.phone2
        End If

        PackList.NavigateUrl = "business_package_list.aspx?cust_id=" & cust_id
        personData.NavigateUrl = "../personal_datas/business_personal_data.aspx?custid=" & cust_id
        personData.Target = "_blank"

        webLink.NavigateUrl = userURL & myCust.username & "/index.html"
        webLink.Target = "_blank"
    End Sub
    Private Sub showDetail(ByVal cust_id As Integer, ByVal noticeid As Integer, ByVal cat As Integer)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        Dim myTxt As String
        Dim myQDetail As New Queue
        Dim myDetail As noticeDetail
        Dim myCar As Car
        Dim myBike As Bike
        Dim myTruck As TruckSt
        Dim myPart As Part
        Dim InsDate As DateTime
        Dim i As Integer = 1
        Dim myCol As String

        Dim BrdNam As String
        Dim YearOrd As String
        Dim carPrice As String
        Dim OnOff As String
        Dim DtlPage As String
        Dim ChgSta As String

        Dim curPos As Integer

        curPos = 1





        myQDetail = NoticeDetailDB.getNoticeDetails(noticeid)
        For Each myDetail In myQDetail
            If myDetail.Detail_delete <> 1 Then

                Select Case cat
                    Case 1
                        myCar = CarDB.getCar(myDetail.DataId)
                        InsDate = myCar.Post.ToString("dd-MM-yyyy")
                        BrdNam = BrandDB.getBrandName(myCar.Brand) & "/ " & ModelDB.getModelName(myCar.Model)
                        If myCar.SubModel <> "" Then
                            BrdNam = BrdNam & "/" & myCar.SubModel
                        End If
                        If myCar.Year_Ord = 0 Then
                            YearOrd = "-"
                        Else
                            YearOrd = myCar.Year_Ord
                        End If
                        If myCar.Price = 0 Then
                            carPrice = "-"
                        Else
                            carPrice = myCar.Price.ToString("#,###.##")
                        End If

                        Hed1.Text = "Make/Model/Version"
                        Hed2.Text = "Year"
                        DtlPage = "business_vehicle_detail.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid & "&detailid=" & myDetail.id & "&carid=" & myDetail.DataId & "&curPos=" & curPos
                    Case 2
                        myBike = BikeDB.getBike(myDetail.DataId)
                        InsDate = myBike.Post.ToString("dd-MM-yyyy")
                        BrdNam = BrandDB.getBrandName(myBike.Brand) & "/ " & ModelDB.getModelName(myBike.Model)
                        If myBike.SubModel <> "" Then
                            BrdNam = BrdNam & "/" & myBike.SubModel
                        End If
                        If myBike.Year_Ord = 0 Then
                            YearOrd = "-"
                        Else
                            YearOrd = myBike.Year_Ord
                        End If
                        If myBike.Price = 0 Then
                            carPrice = "-"
                        Else
                            carPrice = myBike.Price.ToString("#,###.##")
                        End If
                        Hed1.Text = "Make/Model/Version"
                        Hed2.Text = "Year"
                        DtlPage = "business_moto_detail.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid & "&detailid=" & myDetail.id & "&carid=" & myDetail.DataId & "&curPos=1"
                    Case 3
                        myTruck = TruckDB.getTruck(myDetail.DataId)
                        InsDate = myTruck.Post.ToString("dd-MM-yyyy")
                        BrdNam = BrandDB.getBrandName(myTruck.Brand) & "/ " & myTruck.Model
                        If myTruck.SubModel <> "" Then
                            BrdNam = BrdNam & "/" & myTruck.SubModel
                        End If
                        If myTruck.Year_Ord = 0 Then
                            YearOrd = "-"
                        Else
                            YearOrd = myTruck.Year_Ord
                        End If
                        If myTruck.Price = 0 Then
                            carPrice = "-"
                        Else
                            carPrice = myTruck.Price.ToString("#,###.##")
                        End If
                        Hed1.Text = "Make/Model/Version"
                        Hed2.Text = "Year"
                        DtlPage = "business_truck_detail.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid & "&detailid=" & myDetail.id & "&carid=" & myDetail.DataId & "&curPos=1"
                    Case 4
                        myPart = PartsDB.getPart(myDetail.DataId)
                        InsDate = myPart.Post.ToString("dd-MM-yyyy")
                        BrdNam = PartsTypeDB.getPartTypeName(myPart.Type, myPart.Category)
                        YearOrd = myPart.Brand & "/" & myPart.Model
                        If myPart.Code <> "" Then
                            YearOrd = YearOrd & "/" & myPart.Code
                        End If
                        If myPart.Price = 0 Then
                            carPrice = "-"
                        Else
                            carPrice = myPart.Price.ToString("#,###.##")
                        End If
                        Hed1.Text = "Product Category"
                        Hed2.Text = "Make/Model/Version"
                        DtlPage = "business_part_detail.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid & "&detailid=" & myDetail.id & "&carid=" & myDetail.DataId & "&curPos=1"
                End Select
                If i Mod 2 = 0 Then
                    myCol = "f4f4f4"
                Else
                    myCol = "e6e6e6"
                End If
                myTxt = myTxt & "<tr bgcolor='#" & myCol & "' >"
                myTxt = myTxt & "<td><input name='chkB' id='chkB' type='checkbox' class='standard_font' value='" & myDetail.id & "'></td>"
                myTxt = myTxt & "<td><div align='center'><span class='grey_stand_font'>NDD" & myDetail.id & "</span></div>"
                myTxt = myTxt & "</td>"
                myTxt = myTxt & "<td><div align='center'><span class='grey_stand_font'>" & InsDate & "</span></div>"
                myTxt = myTxt & "</td>"
                myTxt = myTxt & "<td><span class='grey_stand_font'>" & BrdNam & "</span></td>"
                myTxt = myTxt & "<td><div align='center'><span class='grey_stand_font'>" & YearOrd & "</span></div>"
                myTxt = myTxt & "</td>"
                myTxt = myTxt & "<td><span class='grey_stand_font'>" & carPrice & "</span></td>"
                myTxt = myTxt & "<td><div align='center'><span class='Stil6'><a href='../ad_details/" & DtlPage & "' target='_parent'><img src='../../../pics/icons/ad_list_16x16.gif' width='16' height='16' border='0'></a></span></div>"
                myTxt = myTxt & "</td>"
                If myDetail.Detail_show = 1 Then
                    OnOff = "ON"
                Else
                    OnOff = "OFF"
                End If
                ChgSta = "form_internal_status_changing_of_ad.aspx?page=adList&showNotice=" & OnOff & "&cust_id=" & cust_id & "&noticeid=" & noticeid & "&detailid=" & myDetail.id & "&carid=" & myDetail.DataId & "&curPos=" & curPos
                myTxt = myTxt & "<td><div align='center'><a href='../ad_details/" & ChgSta & "'><span class='grey_stand_font'>" & OnOff & "</span></a></div>"
                myTxt = myTxt & "</td>"
                myTxt = myTxt & "</tr>"
            End If
            i = i + 1
        Next


        AdsDetail.Text = myTxt
        If i = 1 Then
            myTxt = "disabled"
        Else
            myTxt = ""
        End If
        delBtn.Text = "<input onClick='delAd();' value='Delete' name='del' id='del' type='button' class='standard_font' " & myTxt & ">"

        Dim totalPic As Integer
        Dim myNotice As noticeS
        Dim status As Array
        Dim startD As String
        Dim stopD As String

        myNotice = NoticeDB.getNoticesInfoD(noticeid)
        totalPic = PackageDB.getPckStop(myNotice.pacakgeId)

        status = NoticeTypeDB.getStatusName(myNotice.status).Split(":")

        AdsHead.Text = "<font class=" & status.GetValue(1) & "16>" & NoticeDB.getNoticeCode(myNotice.id) & "</font>/" & PackageDB.getPackageName(myNotice.pacakgeId) & "/" & PackageDB.getPackageWeek(myNotice.pacakgeId) & "m" & "/"
        AdsHead.Text = AdsHead.Text & "<font class=" & status.GetValue(1) & "16>" & status.GetValue(0) & "</font>"

        If status.GetValue(0) = "ONLINE" Then
            If myNotice.startDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateTH") Then
                startD = "-"
            ElseIf myNotice.stopDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateTH") Then
                stopD = "-"
            Else
                startD = myNotice.startDate.ToString("dd/MM/yyyy")
                stopD = myNotice.stopDate.ToString("dd/MM/yyyy")
            End If

            AdsHead.Text = AdsHead.Text & "(" & startD & " - " & stopD & ")"
        End If

        If i >= totalPic Then
            myTxt = "disabled"
        Else
            myTxt = ""
        End If
        submitBtn.Text = "<input name='addPack' type='button' class='standard_font' onClick='goAdd(" & noticeid & "," & cust_id & "," & cat & ");' value='Add New Object' " & myTxt & ">"

    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function deleteAds(ByVal selectCase As Integer, ByVal noticeid As String) As String
        Dim myAns As String = "YES"

        If noticeid <> "" Then
            If selectCase = 1 Then
                Dim myNotice As Integer = noticeid
                NoticeDetailDB.setDetailDelete(myNotice, 1)
            Else
                Dim myTxt As String
                myTxt = Right(noticeid, noticeid.Length - 1)
                NoticeDetailDB.setDetailDelete(myTxt, 1)
            End If
        Else
            myAns = "NO"
        End If


        Return myAns
    End Function
End Class
