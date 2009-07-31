<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Public Class TimberStock
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.Label1 = New System.Windows.Forms.Label
        Me.btnStart = New System.Windows.Forms.Button
        Me.btnExit = New System.Windows.Forms.Button
        Me.Label2 = New System.Windows.Forms.Label
        Me.LstT_ID = New System.Windows.Forms.ComboBox
        Me.LstT_Name = New System.Windows.Forms.ComboBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.LstT_Type = New System.Windows.Forms.ComboBox
        Me.btnClear = New System.Windows.Forms.Button
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.Location = New System.Drawing.Point(20, 64)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(40, 20)
        Me.Label1.Text = "ชื่อไม้"
        '
        'btnStart
        '
        Me.btnStart.Location = New System.Drawing.Point(32, 231)
        Me.btnStart.Name = "btnStart"
        Me.btnStart.Size = New System.Drawing.Size(51, 20)
        Me.btnStart.TabIndex = 1
        Me.btnStart.Text = "เริ่มต้น"
        '
        'btnExit
        '
        Me.btnExit.Location = New System.Drawing.Point(146, 231)
        Me.btnExit.Name = "btnExit"
        Me.btnExit.Size = New System.Drawing.Size(44, 20)
        Me.btnExit.TabIndex = 2
        Me.btnExit.Text = "ปิด"
        '
        'Label2
        '
        Me.Label2.Location = New System.Drawing.Point(20, 34)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(40, 20)
        Me.Label2.Text = "รหัสไม้"
        '
        'LstT_ID
        '
        Me.LstT_ID.Location = New System.Drawing.Point(78, 34)
        Me.LstT_ID.Name = "LstT_ID"
        Me.LstT_ID.Size = New System.Drawing.Size(100, 22)
        Me.LstT_ID.TabIndex = 4
        '
        'LstT_Name
        '
        Me.LstT_Name.Location = New System.Drawing.Point(78, 62)
        Me.LstT_Name.Name = "LstT_Name"
        Me.LstT_Name.Size = New System.Drawing.Size(100, 22)
        Me.LstT_Name.TabIndex = 5
        '
        'Label3
        '
        Me.Label3.Location = New System.Drawing.Point(20, 92)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(51, 20)
        Me.Label3.Text = "ชนิดไม้"
        '
        'LstT_Type
        '
        Me.LstT_Type.Location = New System.Drawing.Point(77, 90)
        Me.LstT_Type.Name = "LstT_Type"
        Me.LstT_Type.Size = New System.Drawing.Size(100, 22)
        Me.LstT_Type.TabIndex = 8
        '
        'btnClear
        '
        Me.btnClear.Location = New System.Drawing.Point(89, 231)
        Me.btnClear.Name = "btnClear"
        Me.btnClear.Size = New System.Drawing.Size(51, 20)
        Me.btnClear.TabIndex = 12
        Me.btnClear.Text = "Clear"
        '
        'TimberStock
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(96.0!, 96.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi
        Me.AutoScroll = True
        Me.ClientSize = New System.Drawing.Size(240, 294)
        Me.Controls.Add(Me.btnClear)
        Me.Controls.Add(Me.LstT_Type)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.LstT_Name)
        Me.Controls.Add(Me.LstT_ID)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.btnExit)
        Me.Controls.Add(Me.btnStart)
        Me.Controls.Add(Me.Label1)
        Me.Name = "TimberStock"
        Me.Text = "Timber Stock"
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents btnStart As System.Windows.Forms.Button
    Friend WithEvents btnExit As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents LstT_ID As System.Windows.Forms.ComboBox
    Friend WithEvents LstT_Name As System.Windows.Forms.ComboBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents LstT_Type As System.Windows.Forms.ComboBox
    Friend WithEvents btnClear As System.Windows.Forms.Button

End Class
