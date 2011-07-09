<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class NewCheckfrm
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.BankCmb = New System.Windows.Forms.ComboBox
        Me.banklogo = New System.Windows.Forms.PictureBox
        CType(Me.banklogo, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'BankCmb
        '
        Me.BankCmb.FormattingEnabled = True
        Me.BankCmb.Location = New System.Drawing.Point(87, 87)
        Me.BankCmb.Name = "BankCmb"
        Me.BankCmb.Size = New System.Drawing.Size(121, 21)
        Me.BankCmb.TabIndex = 0
        '
        'banklogo
        '
        Me.banklogo.Location = New System.Drawing.Point(306, 21)
        Me.banklogo.Name = "banklogo"
        Me.banklogo.Size = New System.Drawing.Size(262, 87)
        Me.banklogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize
        Me.banklogo.TabIndex = 1
        Me.banklogo.TabStop = False
        '
        'NewCheckfrm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(719, 493)
        Me.Controls.Add(Me.banklogo)
        Me.Controls.Add(Me.BankCmb)
        Me.Name = "NewCheckfrm"
        Me.Text = "NewCheck"
        CType(Me.banklogo, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents BankCmb As System.Windows.Forms.ComboBox
    Friend WithEvents banklogo As System.Windows.Forms.PictureBox
End Class
