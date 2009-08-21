
Public Class CustomerAds
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
        AjaxPro.Utility.RegisterTypeForAjax(GetType(CustomerAds))
    End Sub


    <AjaxPro.AjaxMethod()> _
    Public Function listCust(ByVal custname As String, ByVal custsur As String, ByVal custid As String, ByVal custtype As String) As String
        Dim sql As String
        Dim myLcust As Queue = CustomerPaymentDB.LstCust(custname, custsur, custid, custtype)
        Dim aCust As CustomerPaymentDB.CustomerList


        sql = "<table width='100%' border='1'>"
        sql = sql & "<tr>"
        sql = sql & "<td>รหัส</td>"
        sql = sql & "<td>ประเภท</td>"
        sql = sql & "<td>ชื่อ</td>"
        sql = sql & "<td>นามสกุล</td>"
        sql = sql & "<td>Username</td>"
        sql = sql & "<td>Tel</td>"
        sql = sql & "<td>Business</td>"
        sql = sql & "<td>&nbsp;</td>"
        sql = sql & "<td>&nbsp;</td>"
        sql = sql & "<td>&nbsp;</td>"
        sql = sql & "</tr>"

        For Each aCust In myLcust
            sql = sql & "<tr>"
            sql = sql & "<td>&nbsp;" & aCust.Customer_Id & "</td>"
            sql = sql & "<td>&nbsp;" & aCust.Dealer_Type & "</td>"
            sql = sql & "<td>&nbsp;" & aCust.Customer_Name & "</td>"
            sql = sql & "<td>&nbsp;" & aCust.Customer_Surname & "</td>"
            sql = sql & "<td>&nbsp;" & aCust.Customer_Username & "</td>"
            sql = sql & "<td>&nbsp;" & aCust.Customer_Phone1 & "</td>"


            If aCust.Dealer_Type = "Private" Then
                sql = sql & "<td>&nbsp;</td>"
                sql = sql & "<td><a target='_blank' href='../private_admin/startpage_example1.aspx?cust_id=" & aCust.Customer_Id & "'>รายการประกาศ</a></td>"
            Else
                sql = sql & "<td><a target='_blank' href='../Customer/dealer_business_web_start.aspx?cust_id=" & aCust.Customer_Id & "'>...www</a></td>"
                sql = sql & "<td><a target='_blank' href='../business_admin/startpage/startpage_example_with_package.aspx?cust_id=" & aCust.Customer_Id & "'>รายการประกาศ</a></td>"
            End If

            sql = sql & "<td><a href='#'>ส่งข้อความ</a></td>"
            sql = sql & "<td><a target='_blank' href='../Customer/payment2_listD.aspx?custid=" & aCust.Customer_Id & "'>รายการชำระเงิน</a></td>"
            sql = sql & "</tr>"
        Next

        sql = sql & "</table>"


        Return sql
    End Function
End Class
