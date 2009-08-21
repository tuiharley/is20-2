Imports System.IO
Public Class offer5_conclusion_puadmin
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents p_price As System.Web.UI.WebControls.Label
    Protected WithEvents p_period As System.Web.UI.WebControls.Label
    Protected WithEvents p_name As System.Web.UI.WebControls.Label
    Protected WithEvents p_type As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents noticeCode As System.Web.UI.WebControls.Label

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
        Dim noticeRefer As Array
        Dim invoiceno As Integer
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


       
            If Not IsPostBack Then

                If Session("cat") = 5 Then
                    setHeadPackage(4)
                Else
                    setHeadPackage(Session("cat"))
                End If


                Select Case Session("cat")
                    Case 1
                        noticeRefer = saveCarDatabase()
                    Case 2
                        noticeRefer = saveBikeDatabase()
                    Case 3
                        noticeRefer = saveTruckDatabase()
                    Case 4, 5
                        noticeRefer = savePartDatabase()

                End Select

                invoiceno = InvoiceDB.insertInvoice(noticeRefer(1), noticeRefer(2), Session("package_id"), PackageDB.getPackageWeek(Session("package_id")), PackageDB.getPackagePrice(Session("package_id")), 1, Now())
                'saveCustomer(Session("cust_id"))
                setNoticeCode(0, invoiceno)

            End If
    End Sub
    Private Sub setHeadPackage(ByVal package_id As Integer)
        Dim txt As String
        Dim cat As Integer

        p_price.Text = PackageDB.getPackagePrice(package_id)
        p_period.Text = PackageDB.getPackageWeek(package_id)
        cat = PackageDB.getCategory(package_id)
        Select Case cat
            Case 1
                txt = "C/"
            Case 2
                txt = "M/"
            Case 3
                txt = "T/"
            Case 4
                txt = "P/"
        End Select
        p_name.Text = txt & PackageDB.getPackageWeek(package_id) & "m"
        p_type.Text = CategoryDB.getCategoryName(PackageDB.getCategory(package_id))
    End Sub
    Private Function saveCarDatabase() As Array

        '-----------------Add Car----------------------------
        Dim carid As Integer = CarDB.addNewCar(Session("sBrands"), Session("sModel"), Session("status"), checkFistYear(Session("firstmm"), Session("firstyyyy")), checkFistYear2(Session("firstyyyy")), Session("submodel"), Session("cartype"), Session("carid"), Session("enginetype"), Session("cc"), Session("color"), Session("metalic"), Session("power"), Session("pow"), Session("gear"), Session("nummi"), Session("mi"), Session("numdoor"), Session("numgear"), Session("numseat"), Session("numpump"), Session("fuelconsume"), Session("fueltank"), checkLastYear(Session("lastmm"), Session("lastyyyy")), Session("insur"), Session("price"), Session("acc"), Session("v_access"), Session("description"), getFileName(Session("img1")), getFileName(Session("img2")), getFileName(Session("img3")), getFileName(Session("img4")), getFileName(Session("img5")))

        'Response.Write(carid)
        '-----------------Add Notice -------------------------
        Dim notice(2) As Integer
        Dim noticeid As Integer
        Dim noticeDetail As Integer

        noticeid = NoticeDB.addNewNotice(Session("cat"), Session("package_id"), 0, Session("cust_id"), 0, 1, getStopDate(Session("package_id")))
        noticeDetail = NoticeDetailDB.addNewNoticeDetail(noticeid, carid)
        notice(1) = noticeid
        notice(2) = noticeDetail

        '----------------Upload Files------------------------
        Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

        Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
        Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
        objdir.CreateSubdirectory(usrName & "\" & noticeid & "\" & noticeDetail)

        Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & noticeid & "\" & noticeDetail
        Dim tempFile As String

        If getFileName(Session("img1")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img1"), temppath)
        End If
        If getFileName(Session("img2")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img2"), temppath)
        End If
        If getFileName(Session("img3")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img3"), temppath)
        End If
        If getFileName(Session("img4")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img4"), temppath)
        End If
        If getFileName(Session("img5")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img5"), temppath)
        End If

        Return notice
    End Function
    Private Function saveBikeDatabase() As Array

        '-----------------Add Bike----------------------------
        Dim carid As Integer = BikeDB.addNewBike(Session("sBrands"), Session("sModel"), Session("status"), checkLastYear(Session("firstmm"), Session("firstyyyy")), checkFistYear2(Session("firstyyyy")), Session("submodel"), Session("cartype"), Session("carid"), Session("enginetype"), Session("cc"), Session("color"), Session("metalic"), Session("power"), Session("pow"), Session("gear"), Session("nummi"), Session("mi"), Session("drive"), Session("numgear"), Session("numpump"), checkLastYear(Session("lastmm"), Session("lastyyyy")), Session("insur"), Session("price"), Session("acc"), Session("v_access"), Session("description"), getFileName(Session("img1")), getFileName(Session("img2")), getFileName(Session("img3")))

        'Response.Write(Session("sBrands") & "-" & Session("sModel") & "-" & Session("status") & "-" & checkFistYear(Session("firstmm"), Session("firstyyyy")) & "-" & Session("submodel") & "-" & Session("cartype") & "-" & Session("carid") & "-" & Session("enginetype") & "-" & Session("cc") & "-" & Session("color") & "-" & Session("metalic") & "-" & Session("power") & "-" & Session("pow") & "-" & Session("gear") & "-" & Session("nummi") & "-" & Session("mi") & "-" & Session("numdoor") & "-" & Session("numgear") & "-" & Session("numseat") & "-" & Session("numpump") & "-" & Session("fuelconsume") & "-" & Session("fueltank") & "-" & checkLastYear(Session("lastmm"), Session("lastyyyy")) & "-" & Session("insur") & "-" & Session("price") & "-" & Session("acc") & "-" & Session("accessory") & "-" & Session("description") & "-" & getFileName(Session("img1")) & "-" & getFileName(Session("img2")) & "-" & getFileName(Session("img3")) & "-" & getFileName(Session("img4")) & "-" & getFileName(Session("img5")))
        '-----------------Add Notice -------------------------
        Dim notice(2) As Integer
        Dim noticeid As Integer
        Dim noticeDetail As Integer

        noticeid = NoticeDB.addNewNotice(Session("cat"), Session("package_id"), 0, Session("cust_id"), 0, 1, getStopDate(Session("package_id")))
        noticeDetail = NoticeDetailDB.addNewNoticeDetail(noticeid, carid)
        notice(1) = noticeid
        notice(2) = noticeDetail
        '----------------Upload Files------------------------
        Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

        Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
        Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
        objdir.CreateSubdirectory(usrName & "\" & noticeid & "\" & noticeDetail)

        Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & noticeid & "\" & noticeDetail
        Dim tempFile As String

        If getFileName(Session("img1")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img1"), temppath)
        End If
        If getFileName(Session("img2")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img2"), temppath)
        End If
        If getFileName(Session("img3")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img3"), temppath)
        End If

        Return notice
    End Function
    Private Function saveTruckDatabase() As Array

        '-----------------Add Bike----------------------------
        Dim carid As Integer = TruckDB.addNewTruck(Session("sBrands"), Session("sModel"), Session("status"), checkFistYear(Session("firstmm"), Session("firstyyyy")), checkFistYear2(Session("firstyyyy")), Session("submodel"), Session("cartype"), Session("carid"), Session("enginetype"), Session("cc"), Session("color"), Session("metalic"), Session("power"), Session("pow"), Session("gear"), Session("nummi"), Session("mi"), Session("numdoor"), Session("numgear"), Session("numseat"), Session("numpump"), Session("Prao"), Session("praoDrive"), Session("loadTruck"), Session("weightTruck"), Session("fuelconsume"), Session("fueltank"), checkLastYear(Session("lastmm"), Session("lastyyyy")), Session("insur"), Session("price"), Session("acc"), Session("v_access"), Session("description"), getFileName(Session("img1")), getFileName(Session("img2")), getFileName(Session("img3")), getFileName(Session("img4")), getFileName(Session("img5")))

        'Response.Write(Session("sBrands") & "-" & Session("sModel") & "-" & Session("status") & "-" & checkFistYear(Session("firstmm"), Session("firstyyyy")) & "-" & Session("submodel") & "-" & Session("cartype") & "-" & Session("carid") & "-" & Session("enginetype") & "-" & Session("cc") & "-" & Session("color") & "-" & Session("metalic") & "-" & Session("power") & "-" & Session("pow") & "-" & Session("gear") & "-" & Session("nummi") & "-" & Session("mi") & "-" & Session("numdoor") & "-" & Session("numgear") & "-" & Session("numseat") & "-" & Session("numpump") & "-" & Session("fuelconsume") & "-" & Session("fueltank") & "-" & checkLastYear(Session("lastmm"), Session("lastyyyy")) & "-" & Session("insur") & "-" & Session("price") & "-" & Session("acc") & "-" & Session("accessory") & "-" & Session("description") & "-" & getFileName(Session("img1")) & "-" & getFileName(Session("img2")) & "-" & getFileName(Session("img3")) & "-" & getFileName(Session("img4")) & "-" & getFileName(Session("img5")))
        '-----------------Add Notice -------------------------
        Dim notice(2) As Integer
        Dim noticeid As Integer
        Dim noticeDetail As Integer

        noticeid = NoticeDB.addNewNotice(Session("cat"), Session("package_id"), 0, Session("cust_id"), 0, 1, getStopDate(Session("package_id")))
        noticeDetail = NoticeDetailDB.addNewNoticeDetail(noticeid, carid)
        notice(1) = noticeid
        notice(2) = noticeDetail
        '----------------Upload Files------------------------
        Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

        Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
        Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
        objdir.CreateSubdirectory(usrName & "\" & noticeid & "\" & noticeDetail)

        Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & noticeid & "\" & noticeDetail
        Dim tempFile As String

        If getFileName(Session("img1")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img1"), temppath)
        End If
        If getFileName(Session("img2")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img2"), temppath)
        End If
        If getFileName(Session("img3")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img3"), temppath)
        End If
        If getFileName(Session("img4")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img4"), temppath)
        End If
        If getFileName(Session("img5")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img5"), temppath)
        End If

        Return notice
    End Function
    Private Function savePartDatabase() As Array

        '-----------------Add Bike----------------------------
        Dim carid As Integer = PartsDB.addNewPart(Session("sBrands"), Session("sModel"), Session("other"), Session("brand"), Session("model"), Session("partid"), Session("status"), Session("partyear"), checkFistYear2(Session("partyear")), Session("color"), Session("colorcode"), Session("nummi"), Session("mi"), Session("insur"), Session("acc"), Session("price"), Session("description"), getFileName(Session("img1")))

        'Response.Write(Session("sBrands") & "-" & Session("sModel") & "-" & Session("status") & "-" & checkFistYear(Session("firstmm"), Session("firstyyyy")) & "-" & Session("submodel") & "-" & Session("cartype") & "-" & Session("carid") & "-" & Session("enginetype") & "-" & Session("cc") & "-" & Session("color") & "-" & Session("metalic") & "-" & Session("power") & "-" & Session("pow") & "-" & Session("gear") & "-" & Session("nummi") & "-" & Session("mi") & "-" & Session("numdoor") & "-" & Session("numgear") & "-" & Session("numseat") & "-" & Session("numpump") & "-" & Session("fuelconsume") & "-" & Session("fueltank") & "-" & checkLastYear(Session("lastmm"), Session("lastyyyy")) & "-" & Session("insur") & "-" & Session("price") & "-" & Session("acc") & "-" & Session("accessory") & "-" & Session("description") & "-" & getFileName(Session("img1")) & "-" & getFileName(Session("img2")) & "-" & getFileName(Session("img3")) & "-" & getFileName(Session("img4")) & "-" & getFileName(Session("img5")))
        '-----------------Add Notice -------------------------
        Dim notice(2) As Integer
        Dim noticeid As Integer
        Dim noticeDetail As Integer

        noticeid = NoticeDB.addNewNotice(Session("cat"), Session("package_id"), 0, Session("cust_id"), 0, 1, getStopDate(Session("package_id")))
        noticeDetail = NoticeDetailDB.addNewNoticeDetail(noticeid, carid)
        notice(1) = noticeid
        notice(2) = noticeDetail
        '----------------Upload Files------------------------
        Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

        Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
        Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
        objdir.CreateSubdirectory(usrName & "\" & noticeid & "\" & noticeDetail)

        Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & noticeid & "\" & noticeDetail
        Dim tempFile As String

        If getFileName(Session("img1")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img1"), temppath)
        End If

        Return notice
    End Function

    Private Sub saveCustomer(ByVal custid As Integer)
        CustomerDB.updateCustomer(custid, Session("title"), Session("name"), Session("surname"), Session("email"), Session("phone1"), Session("phone2"), Session("fax"), Session("addr"), Session("per_district"), Session("per_province"), Session("questionare"), Session("advertise"), Session("accept"))
    End Sub
    Private Sub setNoticeCode(ByVal dealer As Integer, ByVal invoiceid As Integer)
        noticeCode.Text = DealerDB.getDealerABV(dealer) & invoiceid
    End Sub

    Private Function getFileName(ByVal Fileupload As Object) As String
        If Fileupload.PostedFile.ContentLength = 0 Or Fileupload.PostedFile.ContentLength >= 150010 Then
            Return ""
        Else
            Dim FileFullName As String = Fileupload.PostedFile.FileName
            Dim FileName As String = Path.GetFileName(FileFullName)
            'Return "'" & FileName & "'"
            Return FileName
        End If
    End Function
    Private Function getStopDate(ByVal package_id As Integer) As String
        Dim temp_date As Date
        Dim ans As String

        'temp_date = DateAdd(DateInterval.WeekOfYear, PackageDB.getPackageWeek(package_id), Now())
        'ans = "CONVERT(DATETIME,'" & temp_date.Year & "-" & temp_date.Month & "-" & temp_date.Day & " " & temp_date.Hour & ":" & temp_date.Minute & ":" & temp_date.Second & "',102)"
        ans = " dateadd(month," & PackageDB.getPackageWeek(package_id) & " ,getdate()) "

        Return ans
    End Function
    Private Function checkFistYear(ByVal v_fmm As String, ByVal v_fyyyy As String) As String
        Dim v_first As String = v_fmm & "/" & v_fyyyy
        If v_first = "/" Or v_first = "mm/yyyy" Then
            v_first = ""
        End If
        Return v_first
    End Function
    Private Function checkFistYear2(ByVal v_fyyyy As String) As Integer
        Dim v_first As String = v_fyyyy
        If v_first = "" Or v_first = "yyyy" Then
            v_first = 0
        End If
        Return v_first
    End Function


    Private Function checkLastYear(ByVal v_lmm As String, ByVal v_lyyyy As String) As String
        Dim v_last As String = v_lmm & "/" & v_lyyyy
        If v_last = "mm/yyyy" Then
            v_last = ""
        End If
        Return v_last
    End Function
    Private Sub clearSession()
        Session.Add("sBrands", "")
        Session.Add("brandIndex", "")
        Session.Add("sModel", "")
        Session.Add("modelIndex", "")
    End Sub
    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        'Response.Redirect("startpage_example1.aspx")
        Dim cust_id As Integer = Session("cust_id")
        clearSession()

        Response.Redirect("private_ad_list.aspx?cust_id=" & cust_id)
    End Sub
End Class
