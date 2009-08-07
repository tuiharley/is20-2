<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Public Class TIMBERLIST
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
        Me.btnClose = New System.Windows.Forms.Button
        Me.txt_TIMBER = New System.Windows.Forms.TextBox
        Me.DataGrid1 = New System.Windows.Forms.DataGrid
        Me.SuspendLayout()
        '
        'btnClose
        '
        Me.btnClose.Location = New System.Drawing.Point(3, 245)
        Me.btnClose.Name = "btnClose"
        Me.btnClose.Size = New System.Drawing.Size(72, 20)
        Me.btnClose.TabIndex = 1
        Me.btnClose.Text = "ปิดหน้า"
        '
        'txt_TIMBER
        '
        Me.txt_TIMBER.Location = New System.Drawing.Point(0, 3)
        Me.txt_TIMBER.Multiline = True
        Me.txt_TIMBER.Name = "txt_TIMBER"
        Me.txt_TIMBER.ReadOnly = True
        Me.txt_TIMBER.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.txt_TIMBER.Size = New System.Drawing.Size(237, 119)
        Me.txt_TIMBER.TabIndex = 2
        '
        'DataGrid1
        '
        Me.DataGrid1.BackgroundColor = System.Drawing.Color.FromArgb(CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.DataGrid1.Location = New System.Drawing.Point(3, 128)
        Me.DataGrid1.Name = "DataGrid1"
        Me.DataGrid1.Size = New System.Drawing.Size(234, 111)
        Me.DataGrid1.TabIndex = 3
        '
        'TIMBERLIST
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(96.0!, 96.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi
        Me.AutoScroll = True
        Me.ClientSize = New System.Drawing.Size(240, 294)
        Me.Controls.Add(Me.DataGrid1)
        Me.Controls.Add(Me.txt_TIMBER)
        Me.Controls.Add(Me.btnClose)
        Me.Name = "TIMBERLIST"
        Me.Text = "TIMBERLIST"
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents btnClose As System.Windows.Forms.Button
    Friend WithEvents txt_TIMBER As System.Windows.Forms.TextBox
    Friend WithEvents DataGrid1 As System.Windows.Forms.DataGrid
End Class
