Imports CrystalDecisions.Shared
Imports System.Globalization
Imports System.Threading
Imports System.Data
Imports System.Data.OleDb

Public Class Form1
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
    Friend WithEvents CrystalReportViewer1 As CrystalDecisions.Windows.Forms.CrystalReportViewer
    Friend WithEvents btnExit As System.Windows.Forms.Button
    Friend WithEvents custName As System.Windows.Forms.ComboBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents datePick As System.Windows.Forms.DateTimePicker
    Friend WithEvents btnSave As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents amountPaid As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents amountTxt As System.Windows.Forms.Label
    Friend WithEvents bank1 As System.Windows.Forms.RadioButton
    Friend WithEvents bank2 As System.Windows.Forms.RadioButton
    Friend WithEvents pic1 As System.Windows.Forms.PictureBox
    Friend WithEvents pic2 As System.Windows.Forms.PictureBox
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents bank3 As System.Windows.Forms.RadioButton
    Friend WithEvents btnNew As System.Windows.Forms.Button
    Friend WithEvents btnAdd As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(Form1))
        Me.CrystalReportViewer1 = New CrystalDecisions.Windows.Forms.CrystalReportViewer
        Me.btnSave = New System.Windows.Forms.Button
        Me.btnExit = New System.Windows.Forms.Button
        Me.custName = New System.Windows.Forms.ComboBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.datePick = New System.Windows.Forms.DateTimePicker
        Me.Label2 = New System.Windows.Forms.Label
        Me.amountPaid = New System.Windows.Forms.TextBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.amountTxt = New System.Windows.Forms.Label
        Me.bank1 = New System.Windows.Forms.RadioButton
        Me.bank2 = New System.Windows.Forms.RadioButton
        Me.bank3 = New System.Windows.Forms.RadioButton
        Me.pic1 = New System.Windows.Forms.PictureBox
        Me.pic2 = New System.Windows.Forms.PictureBox
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.btnNew = New System.Windows.Forms.Button
        Me.btnAdd = New System.Windows.Forms.Button
        Me.SuspendLayout()
        '
        'CrystalReportViewer1
        '
        Me.CrystalReportViewer1.ActiveViewIndex = -1
        Me.CrystalReportViewer1.Location = New System.Drawing.Point(16, 192)
        Me.CrystalReportViewer1.Name = "CrystalReportViewer1"
        Me.CrystalReportViewer1.ReportSource = Nothing
        Me.CrystalReportViewer1.ShowExportButton = False
        Me.CrystalReportViewer1.ShowGotoPageButton = False
        Me.CrystalReportViewer1.ShowGroupTreeButton = False
        Me.CrystalReportViewer1.ShowPageNavigateButtons = False
        Me.CrystalReportViewer1.ShowTextSearchButton = False
        Me.CrystalReportViewer1.ShowZoomButton = False
        Me.CrystalReportViewer1.Size = New System.Drawing.Size(952, 360)
        Me.CrystalReportViewer1.TabIndex = 0
        '
        'btnSave
        '
        Me.btnSave.Location = New System.Drawing.Point(88, 144)
        Me.btnSave.Name = "btnSave"
        Me.btnSave.TabIndex = 1
        Me.btnSave.Text = "บันทึก"
        '
        'btnExit
        '
        Me.btnExit.Location = New System.Drawing.Point(264, 144)
        Me.btnExit.Name = "btnExit"
        Me.btnExit.TabIndex = 2
        Me.btnExit.Text = "ออก"
        '
        'custName
        '
        Me.custName.Location = New System.Drawing.Point(160, 32)
        Me.custName.Name = "custName"
        Me.custName.Size = New System.Drawing.Size(272, 21)
        Me.custName.TabIndex = 3
        '
        'Label1
        '
        Me.Label1.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(222, Byte))
        Me.Label1.Location = New System.Drawing.Point(88, 32)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(56, 23)
        Me.Label1.TabIndex = 4
        Me.Label1.Text = "ชื่อลูกค้า"
        '
        'datePick
        '
        Me.datePick.Location = New System.Drawing.Point(160, 64)
        Me.datePick.Name = "datePick"
        Me.datePick.TabIndex = 5
        '
        'Label2
        '
        Me.Label2.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(222, Byte))
        Me.Label2.Location = New System.Drawing.Point(80, 64)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(72, 23)
        Me.Label2.TabIndex = 6
        Me.Label2.Text = "วันที่สั่งจ่าย"
        '
        'amountPaid
        '
        Me.amountPaid.Location = New System.Drawing.Point(160, 96)
        Me.amountPaid.Name = "amountPaid"
        Me.amountPaid.TabIndex = 7
        Me.amountPaid.Text = ""
        '
        'Label3
        '
        Me.Label3.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(222, Byte))
        Me.Label3.Location = New System.Drawing.Point(80, 96)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(72, 23)
        Me.Label3.TabIndex = 8
        Me.Label3.Text = "จำนวนเงิน"
        '
        'amountTxt
        '
        Me.amountTxt.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(222, Byte))
        Me.amountTxt.Location = New System.Drawing.Point(280, 96)
        Me.amountTxt.Name = "amountTxt"
        Me.amountTxt.Size = New System.Drawing.Size(288, 48)
        Me.amountTxt.TabIndex = 9
        '
        'bank1
        '
        Me.bank1.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(177, Byte))
        Me.bank1.Location = New System.Drawing.Point(592, 24)
        Me.bank1.Name = "bank1"
        Me.bank1.Size = New System.Drawing.Size(72, 24)
        Me.bank1.TabIndex = 10
        Me.bank1.Text = "กรุงศรี"
        '
        'bank2
        '
        Me.bank2.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(222, Byte))
        Me.bank2.Location = New System.Drawing.Point(592, 88)
        Me.bank2.Name = "bank2"
        Me.bank2.Size = New System.Drawing.Size(72, 24)
        Me.bank2.TabIndex = 11
        Me.bank2.Text = "กรุงเทพ"
        '
        'bank3
        '
        Me.bank3.Font = New System.Drawing.Font("Tahoma", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(222, Byte))
        Me.bank3.Location = New System.Drawing.Point(592, 152)
        Me.bank3.Name = "bank3"
        Me.bank3.Size = New System.Drawing.Size(64, 24)
        Me.bank3.TabIndex = 12
        Me.bank3.Text = "กสิกร"
        '
        'pic1
        '
        Me.pic1.Image = CType(resources.GetObject("pic1.Image"), System.Drawing.Image)
        Me.pic1.Location = New System.Drawing.Point(688, 8)
        Me.pic1.Name = "pic1"
        Me.pic1.Size = New System.Drawing.Size(216, 50)
        Me.pic1.TabIndex = 13
        Me.pic1.TabStop = False
        '
        'pic2
        '
        Me.pic2.Image = CType(resources.GetObject("pic2.Image"), System.Drawing.Image)
        Me.pic2.Location = New System.Drawing.Point(688, 64)
        Me.pic2.Name = "pic2"
        Me.pic2.Size = New System.Drawing.Size(256, 72)
        Me.pic2.TabIndex = 14
        Me.pic2.TabStop = False
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(688, 136)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(88, 64)
        Me.PictureBox1.TabIndex = 15
        Me.PictureBox1.TabStop = False
        '
        'btnNew
        '
        Me.btnNew.Location = New System.Drawing.Point(176, 144)
        Me.btnNew.Name = "btnNew"
        Me.btnNew.TabIndex = 16
        Me.btnNew.Text = "เริ่มใหม่"
        '
        'btnAdd
        '
        Me.btnAdd.Location = New System.Drawing.Point(440, 32)
        Me.btnAdd.Name = "btnAdd"
        Me.btnAdd.Size = New System.Drawing.Size(56, 23)
        Me.btnAdd.TabIndex = 17
        Me.btnAdd.Text = "เพิ่ม"
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.BackColor = System.Drawing.Color.RosyBrown
        Me.ClientSize = New System.Drawing.Size(992, 566)
        Me.Controls.Add(Me.btnAdd)
        Me.Controls.Add(Me.btnNew)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.pic2)
        Me.Controls.Add(Me.pic1)
        Me.Controls.Add(Me.bank3)
        Me.Controls.Add(Me.bank2)
        Me.Controls.Add(Me.bank1)
        Me.Controls.Add(Me.amountTxt)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.amountPaid)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.datePick)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.custName)
        Me.Controls.Add(Me.btnExit)
        Me.Controls.Add(Me.btnSave)
        Me.Controls.Add(Me.CrystalReportViewer1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private chkNo As Integer
    
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        btnSave.Enabled = True
        btnNew.Enabled = False
        showRadio(False)

        custList()
    End Sub
    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myCheck As Check


        'btnSave.Text = "พิมพ์"
        If amountPaid.Text = "" Then
            Exit Sub
        End If


        myCheck.Cust_Name = custName.Text
        myCheck.Pay_date = datePick.Value.ToString("MM/dd/yyyy")
        myCheck.Amount = amountPaid.Text
        myCheck.Amount_Txt = amountTxt.Text
        chkNo = CheckTrans.addCheck(myCheck)
        'showReport(chkNo)

        btnSave.Enabled = False
        btnNew.Enabled = True
        showRadio(True)
        'MsgBox(datePick.Value.ToString("dd/MM/yyyy"))
    End Sub
    Private Sub btnExit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnExit.Click
        Application.Exit()
    End Sub
    Private Sub btnNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNew.Click
        btnSave.Enabled = True
        btnNew.Enabled = False
        showRadio(False)

        custName.SelectedIndex = 0
        datePick.Value = Today
        amountPaid.Text = ""
        amountTxt.Text = ""
    End Sub
    Private Sub amountPaid_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles amountPaid.TextChanged
        If amountPaid.Text = "" Then
            amountTxt.Text = ""
        Else
            amountTxt.Text = cnvNum2Baht(amountPaid.Text)
        End If
    End Sub

    Private Sub showReport(ByVal checkNo As Integer)
        Dim filePath As String
        Dim objReportDocument As New CrystalDecisions.CrystalReports.Engine.ReportDocument

        If bank1.Checked Then
            filePath = Application.StartupPath + "\Ayudhya.rpt"
        ElseIf bank2.Checked Then
            filePath = Application.StartupPath + "\Bangkok.rpt"
        ElseIf bank3.Checked Then
            filePath = Application.StartupPath + "\KBank.rpt"
        End If


        objReportDocument.Load(filePath)
        objReportDocument.RecordSelectionFormula = "{Check_Trans.Check_No} = " & checkNo

        'Bind the report to the viewer

        CrystalReportViewer1.ReportSource = objReportDocument
    End Sub
    Private Sub bank1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bank1.CheckedChanged
        If bank1.Checked Then
            showReport(chkNo)
        End If
    End Sub
    Private Sub bank2_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bank2.CheckedChanged
        If bank2.Checked Then
            showReport(chkNo)
        End If
    End Sub
    Private Sub bank3_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bank3.CheckedChanged
        If bank3.Checked Then
            showReport(chkNo)
        End If
    End Sub


    Private Sub showRadio(ByVal show As Boolean)
        bank1.Enabled = show
        bank2.Enabled = show
        bank3.Enabled = show
    End Sub
    Private Sub custList()
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(DBConnect.getStrDBConnect())

        Sql = "SELECT Cust_ID, Cust_Name FROM Customer "
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        DRow.Item("Cust_ID") = 0
        DRow.Item("Cust_Name") = "โปรดระบุ"
        ds.Tables("status").Rows.InsertAt(DRow, 0)
        custName.DataSource = ds.Tables("status")
        custName.ValueMember = "Cust_Name"
        custName.DisplayMember = "Cust_Name"

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub



    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click

    End Sub
End Class
