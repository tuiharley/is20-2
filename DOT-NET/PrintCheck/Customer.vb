Imports System.Data
Imports System.Data.OleDb

Public Class Customer
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'Form overrides dispose to clean up the component list.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    Friend WithEvents CustName As System.Windows.Forms.TextBox
    Friend WithEvents Custs As System.Windows.Forms.ListBox
    Friend WithEvents btnExit As System.Windows.Forms.Button
    Friend WithEvents custId As System.Windows.Forms.Label
    Friend WithEvents btnAdd As System.Windows.Forms.Button
    Friend WithEvents btnEdit As System.Windows.Forms.Button
    Friend WithEvents btnDel As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.CustName = New System.Windows.Forms.TextBox
        Me.btnAdd = New System.Windows.Forms.Button
        Me.btnEdit = New System.Windows.Forms.Button
        Me.Custs = New System.Windows.Forms.ListBox
        Me.btnExit = New System.Windows.Forms.Button
        Me.custId = New System.Windows.Forms.Label
        Me.btnDel = New System.Windows.Forms.Button
        Me.SuspendLayout()
        '
        'CustName
        '
        Me.CustName.Location = New System.Drawing.Point(40, 56)
        Me.CustName.Name = "CustName"
        Me.CustName.Size = New System.Drawing.Size(360, 20)
        Me.CustName.TabIndex = 0
        Me.CustName.Text = ""
        '
        'btnAdd
        '
        Me.btnAdd.Location = New System.Drawing.Point(40, 88)
        Me.btnAdd.Name = "btnAdd"
        Me.btnAdd.Size = New System.Drawing.Size(48, 23)
        Me.btnAdd.TabIndex = 1
        Me.btnAdd.Text = "เพิ่ม"
        '
        'btnEdit
        '
        Me.btnEdit.Location = New System.Drawing.Point(96, 88)
        Me.btnEdit.Name = "btnEdit"
        Me.btnEdit.Size = New System.Drawing.Size(48, 23)
        Me.btnEdit.TabIndex = 2
        Me.btnEdit.Text = "แก้ไข"
        '
        'Custs
        '
        Me.Custs.Location = New System.Drawing.Point(40, 136)
        Me.Custs.Name = "Custs"
        Me.Custs.Size = New System.Drawing.Size(360, 147)
        Me.Custs.TabIndex = 3
        '
        'btnExit
        '
        Me.btnExit.Location = New System.Drawing.Point(328, 88)
        Me.btnExit.Name = "btnExit"
        Me.btnExit.TabIndex = 4
        Me.btnExit.Text = "ปิด"
        '
        'custId
        '
        Me.custId.Location = New System.Drawing.Point(40, 16)
        Me.custId.Name = "custId"
        Me.custId.TabIndex = 5
        '
        'btnDel
        '
        Me.btnDel.Location = New System.Drawing.Point(152, 88)
        Me.btnDel.Name = "btnDel"
        Me.btnDel.Size = New System.Drawing.Size(48, 23)
        Me.btnDel.TabIndex = 6
        Me.btnDel.Text = "ลบ"
        '
        'Customer
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.BackColor = System.Drawing.Color.RosyBrown
        Me.ClientSize = New System.Drawing.Size(440, 302)
        Me.Controls.Add(Me.btnDel)
        Me.Controls.Add(Me.custId)
        Me.Controls.Add(Me.btnExit)
        Me.Controls.Add(Me.Custs)
        Me.Controls.Add(Me.btnEdit)
        Me.Controls.Add(Me.btnAdd)
        Me.Controls.Add(Me.CustName)
        Me.Name = "Customer"
        Me.Text = "Customer"
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub Customer_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        custList()
    End Sub
    Private Sub custList()
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(DBConnect.getStrDBConnect())

        Sql = "SELECT Cust_ID, Cust_Name FROM Customer Order by Cust_ID DESC"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        'DRow.Item("Cust_ID") = 0
        'DRow.Item("Cust_Name") = "โปรดระบุ"
        'ds.Tables("status").Rows.InsertAt(DRow, 0)
        Custs.DataSource = ds.Tables("status")
        Custs.ValueMember = "Cust_ID"
        Custs.DisplayMember = "Cust_Name"

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub

    Private Sub btnExit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnExit.Click
        Me.Close()
    End Sub


    Private Sub Custs_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Custs.Click
        Dim myCust As CustomerST

        custId.Text = Custs.SelectedValue

        myCust = CustomerDB.getCust(Custs.SelectedValue)
        CustName.Text = myCust.Cust_Name

    End Sub

    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim myCust As CustomerST

        myCust.Cust_Name = CustName.Text
        CustomerDB.addCust(myCust)
        custList()

    End Sub

    Private Sub btnEdit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnEdit.Click
        If custId.Text = "" Then
            MessageBox.Show("กรุณาเลือกชื่อลูกค้าก่อน")
            Exit Sub
        End If
        Dim myCust As CustomerST
        myCust.Cust_ID = custId.Text
        myCust.Cust_Name = CustName.Text

        custId.Text = ""
        CustName.Text = ""

        CustomerDB.editCust(myCust)
        custList()
    End Sub

    Private Sub btnDel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDel.Click
        If custId.Text = "" Then
            MessageBox.Show("กรุณาเลือกชื่อลูกค้าก่อน")
            Exit Sub
        End If

        Dim myCust As CustomerST
        myCust.Cust_ID = custId.Text
        CustomerDB.delCust(myCust)

        custId.Text = ""
        CustName.Text = ""

        custList()
    End Sub
End Class
