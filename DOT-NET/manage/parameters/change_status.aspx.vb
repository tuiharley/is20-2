Imports System.Data
Imports System.Data.OleDb
Public Class change_status
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
        Dim pay_id As Integer
        Dim flag_process As Integer

        pay_id = Request.QueryString("payid")
        flag_process = Request.QueryString("flag_p")

        If flag_process = 0 Then
            doConfirm(pay_id)
        Else
            doUnconfirm(pay_id)
        End If

        Response.Redirect("Customer_Payment.aspx")
    End Sub
    Private Sub doConfirm(ByVal paymentid As Integer)
        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()

        Dim mycommand As OleDbCommand

        Dim sql As String
        '                                    STEP 1                                          '
        sql = "UPDATE TmpPayment SET TmpPayment_FlagProcess = 1 WHERE TmpPayment_Id =" & paymentid
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        '                                    STEP 2                                          '
        sql = "UPDATE Invoice SET Paid_Check = 1, Paid_Check_DateRC = GETDATE() WHERE (invoice_id = (SELECT TmpPayment_InvoiceRefer FROM TmpPayment WHERE (TmpPayment_Id = " & paymentid & ")))"
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        '                                    STEP 3                                          '
        sql = "UPDATE Notice SET Notice_Payment = 1, Notice_Status = 2 WHERE (Notice_Id = (SELECT Notice_Id FROM Invoice WHERE (Invoice_ID = (SELECT TmpPayment_InvoiceRefer FROM TmpPayment WHERE (TmpPayment_Id = " & paymentid & ")))))"
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()




    End Sub
    Private Sub doUnconfirm(ByVal paymentid As Integer)

    End Sub

End Class
