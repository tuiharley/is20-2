Imports System.Globalization
Imports System.Threading
Public Class packageADM
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

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        AjaxPro.Utility.RegisterTypeForAjax(GetType(packageADM))
    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function getList() As String
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        Dim sql As String
        Dim myQPackage As New Queue
        Dim myPackage As Package
        Dim txtDate As String, col As String
        Dim i As Integer = 1


        sql = "<table width='100%' border='0'>"
        sql = sql & "<tr bgcolor='#66cccc'>"
        sql = sql & "<td align='center' width='15%'>ประเภท</td>"
        sql = sql & "<td align='center' width='25%'>ชื่อ</td>"
        sql = sql & "<td align='center' width='5%'>จำนวนประกาศ</td>"
        sql = sql & "<td align='center' width='10%'>เริ่มต้น</td>"
        sql = sql & "<td align='center' width='10%'>expire</td>"
        sql = sql & "<td align='center' width='5%'>ระยะเวลา</td>"
        sql = sql & "<td align='center' width='10%'>ประเภท</td>"
        sql = sql & "<td align='center' width='10%'>ราคา</td>"
        sql = sql & "<td align='center' width='10%'>จัดการ</td>"
        sql = sql & "</tr>"

        myQPackage = PackageDB.getPackages()
        For Each myPackage In myQPackage
            If i Mod 2 = 1 Then
                col = "#ff9933"
            Else
                col = "#FFCC00"
            End If
            sql = sql & "<tr bgcolor='" & col & "' align='center'>"
            sql = sql & "<td >" & myPackage.Package_Category_txt & "</td>"
            sql = sql & "<td >" & myPackage.Package_Name & "</td>"
            sql = sql & "<td >" & myPackage.Package_AreaStop & "</td>"
            sql = sql & "<td >" & myPackage.Package_StartDate.ToString("dd/MM/yyyy") & "</td>"
            If myPackage.Package_StopDate.ToString("dd/MM/yyyy") = "01/01/0544" Then
                txtDate = "-"
            Else
                txtDate = myPackage.Package_StopDate.ToString("dd/MM/yyyy")
            End If
            sql = sql & "<td >" & txtDate & "</td>"
            sql = sql & "<td >" & myPackage.Package_Week & "</td>"
            sql = sql & "<td >" & myPackage.Package_Type_txt & "</td>"
            sql = sql & "<td >" & myPackage.Package_Price & "</td>"
            sql = sql & "<td style=""CURSOR: hand"" onClick='doEdit(" & myPackage.Package_Id & ");'><u>แก้ไข</u></td>"
            sql = sql & "</tr>"
            i = i + 1
        Next
        sql = sql & "</table>"

        Return sql
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function editPackage(ByVal packageid As Integer) As String
        ' Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim sql As String
        Dim myPackage As Package = PackageDB.getPackage(packageid)
        Dim packCat As String = ""
        Dim packType As String = ""
        Dim myQCat As New Queue
        Dim myCat As Category

        sql = "<table border='1'>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >รูปแบบของวันที่</td>"
        sql = sql & "<td align='center' ><font color='red'>dd/mm/yyyy (ex. 23/05/2550)</font></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ประเภท</td>"
        sql = sql & "<td align='center' ><select id='cat' name='cat'>"
        sql = sql & "<option value='0'>-เลือกประเภท-</option>"
        myQCat = CategoryDB.getCategories()
        For Each myCat In myQCat
            If myPackage.Package_Category = myCat.Category Then
                packCat = "selected"
            Else
                packCat = ""
            End If
            sql = sql & "<option value='" & myCat.Category & "' " & packCat & ">" & myCat.Category_Name & "</option>"
        Next
        sql = sql & "</select></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ชื่อ</td>"
        sql = sql & "<td align='center' ><input type='text' id='packageName' value='" & myPackage.Package_Name & "'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >จำนวนประกาศ</td>"
        sql = sql & "<td align='center' ><input type='text' id='packageNum' value='" & myPackage.Package_AreaStop & "'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >เริ่มต้น</td>"
        sql = sql & "<td align='center' ><input type='text' id='packageStart' value='" & myPackage.Package_StartDate.ToString("dd/MM/yyyy") & "'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >expire</td>"
        Dim enDate As String = ""
        If myPackage.Package_StopDate.ToString("dd/MM/yyyy") <> ConfigurationSettings.AppSettings("firstDate") Then
            enDate = myPackage.Package_StopDate.ToString("dd/MM/yyyy")
        End If

        sql = sql & "<td align='center' ><input type='text' id='packageStop' value='" & enDate & "'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ระยะเวลา(เดือน)</td>"
        sql = sql & "<td align='center' ><input type='text' id='packageWeek' value='" & myPackage.Package_Week & "'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ประเภท</td>"
        sql = sql & "<td align='center' ><select id='packageType' name='packageType'>"
        sql = sql & "<option value='0'>-เลือกประเภท-</option>"
        If myPackage.Package_Type = 1 Then
            sql = sql & "<option value='1' selected>-บุคคลธรรมดา-</option>"
        Else
            sql = sql & "<option value='1'>-บุคคลธรรมดา-</option>"
        End If
        If myPackage.Package_Type = 2 Then
            sql = sql & "<option value='2' selected>-ผู้ประกอบการ-</option>"
        Else
            sql = sql & "<option value='2'>-ผู้ประกอบการ-</option>"
        End If
        sql = sql & "</select></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ราคา</td>"
        sql = sql & "<td align='center' ><input type='text' id='packagePrice' value='" & myPackage.Package_Price.ToString("####.##") & "'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' ><input type='button' id='editInfo' onclick='Edit(" & myPackage.Package_Id & ",document.Form1.cat.value,"
        sql = sql & "document.Form1.packageName.value,document.Form1.packageNum.value,document.Form1.packageStart.value,"
        sql = sql & "document.Form1.packageStop.value,document.Form1.packageWeek.value,document.Form1.packageType.value,"
        sql = sql & "document.Form1.packagePrice.value);' value='บันทึก'></td>"
        sql = sql & "<td align='center' ></td>"
        sql = sql & "</tr>"
        sql = sql & "</table>"

        Return sql
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function savePackage(ByVal packid As Integer, ByVal cat As Integer, ByVal packageName As String, ByVal packageNum As Integer, ByVal packageStart As String, ByVal packageStop As String, ByVal packageWeek As Integer, ByVal packageType As Integer, ByVal packagePrice As Double) As String
        Dim sql As String
        Dim myPack As Package

        myPack.Package_Id = packid
        myPack.Package_Category = cat
        myPack.Package_Name = packageName
        myPack.Package_AreaStop = packageNum
        myPack.Package_StartDate = packageStart
        If packageStop = "" Then
            myPack.Package_StopDate = ConfigurationSettings.AppSettings("firstDate")
        Else
            myPack.Package_StopDate = packageStop
        End If

        myPack.Package_Week = packageWeek
        myPack.Package_Type = packageType
        myPack.Package_Price = packagePrice
        PackageDB.editPackage(myPack)
        sql = getList()

        Return sql
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function newPackage(ByVal cat As Integer, ByVal packageName As String, ByVal packageNum As Integer, ByVal packageStart As String, ByVal packageStop As String, ByVal packageWeek As Integer, ByVal packageType As Integer, ByVal packagePrice As Double) As String
        Dim sql As String
        Dim myPack As Package

        myPack.Package_Category = cat
        myPack.Package_Name = packageName
        myPack.Package_AreaStop = packageNum
        myPack.Package_StartDate = packageStart
        If packageStop = "" Then
            myPack.Package_StopDate = ConfigurationSettings.AppSettings("firstDate")
        Else
            myPack.Package_StopDate = packageStop
        End If

        myPack.Package_Week = packageWeek
        myPack.Package_Type = packageType
        myPack.Package_Price = packagePrice
        PackageDB.addPackage(myPack)
        sql = getList()

        Return sql
    End Function

    <AjaxPro.AjaxMethod()> _
   Public Function addPackage() As String
        Dim sql As String
        Dim myQCat As New Queue
        Dim myCat As Category

        sql = "<table border='1'>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >รูปแบบของวันที่</td>"
        sql = sql & "<td align='center' ><font color='red'>dd/mm/yyyy (ex. 23/05/2550)</font></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ประเภท</td>"
        sql = sql & "<td align='center' ><select id='cat' name='cat'>"
        sql = sql & "<option value='0'>-เลือกประเภท-</option>"
        myQCat = CategoryDB.getCategories()
        For Each myCat In myQCat
            sql = sql & "<option value='" & myCat.Category & "' >" & myCat.Category_Name & "</option>"
        Next
        sql = sql & "</select></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ชื่อ</td>"
        sql = sql & "<td align='center' ><input type='text' id='packageName' ></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >จำนวนประกาศ</td>"
        sql = sql & "<td align='center' ><input type='text' id='packageNum' ></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >เริ่มต้น</td>"
        sql = sql & "<td align='center' ><input type='text' id='packageStart' ></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >expire</td>"
        sql = sql & "<td align='center' ><input type='text' id='packageStop' ></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ระยะเวลา(เดือน)</td>"
        sql = sql & "<td align='center' ><input type='text' id='packageWeek' ></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ประเภท</td>"
        sql = sql & "<td align='center' ><select id='packageType' name='packageType'>"
        sql = sql & "<option value='0'>-เลือกประเภท-</option>"
        sql = sql & "<option value='1'>-บุคคลธรรมดา-</option>"
        sql = sql & "<option value='2'>-ผู้ประกอบการ-</option>"
        sql = sql & "</select></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' >ราคา</td>"
        sql = sql & "<td align='center' ><input type='text' id='packagePrice' ></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr >"
        sql = sql & "<td align='center' ><input type='button' id='addInfo' onclick='AddNew(document.Form1.cat.value,"
        sql = sql & "document.Form1.packageName.value,document.Form1.packageNum.value,document.Form1.packageStart.value,"
        sql = sql & "document.Form1.packageStop.value,document.Form1.packageWeek.value,document.Form1.packageType.value,"
        sql = sql & "document.Form1.packagePrice.value);' value='บันทึก'></td>"
        sql = sql & "<td align='center' ></td>"
        sql = sql & "</tr>"
        sql = sql & "</table>"

        Return sql
    End Function

End Class
