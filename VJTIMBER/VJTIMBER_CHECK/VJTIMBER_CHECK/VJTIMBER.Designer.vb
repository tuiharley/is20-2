<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class VJTIMBER
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
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip
        Me.MainToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator
        Me.ExitToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.CheckToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.NewCheckToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.WritePayInToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.CheckClearingToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.EditCheckToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.MenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'MenuStrip1
        '
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MainToolStripMenuItem, Me.CheckToolStripMenuItem})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Size = New System.Drawing.Size(895, 24)
        Me.MenuStrip1.TabIndex = 0
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'MainToolStripMenuItem
        '
        Me.MainToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripSeparator1, Me.ExitToolStripMenuItem})
        Me.MainToolStripMenuItem.Name = "MainToolStripMenuItem"
        Me.MainToolStripMenuItem.Size = New System.Drawing.Size(46, 20)
        Me.MainToolStripMenuItem.Text = "Main"
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(89, 6)
        '
        'ExitToolStripMenuItem
        '
        Me.ExitToolStripMenuItem.Name = "ExitToolStripMenuItem"
        Me.ExitToolStripMenuItem.Size = New System.Drawing.Size(92, 22)
        Me.ExitToolStripMenuItem.Text = "Exit"
        '
        'CheckToolStripMenuItem
        '
        Me.CheckToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.NewCheckToolStripMenuItem, Me.WritePayInToolStripMenuItem, Me.CheckClearingToolStripMenuItem, Me.EditCheckToolStripMenuItem})
        Me.CheckToolStripMenuItem.Name = "CheckToolStripMenuItem"
        Me.CheckToolStripMenuItem.Size = New System.Drawing.Size(52, 20)
        Me.CheckToolStripMenuItem.Text = "Check"
        '
        'NewCheckToolStripMenuItem
        '
        Me.NewCheckToolStripMenuItem.Name = "NewCheckToolStripMenuItem"
        Me.NewCheckToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.NewCheckToolStripMenuItem.Text = "New Check"
        '
        'WritePayInToolStripMenuItem
        '
        Me.WritePayInToolStripMenuItem.Name = "WritePayInToolStripMenuItem"
        Me.WritePayInToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.WritePayInToolStripMenuItem.Text = "Write PayIn"
        '
        'CheckClearingToolStripMenuItem
        '
        Me.CheckClearingToolStripMenuItem.Name = "CheckClearingToolStripMenuItem"
        Me.CheckClearingToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.CheckClearingToolStripMenuItem.Text = "Check Clearing"
        '
        'EditCheckToolStripMenuItem
        '
        Me.EditCheckToolStripMenuItem.Name = "EditCheckToolStripMenuItem"
        Me.EditCheckToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.EditCheckToolStripMenuItem.Text = "Edit Check"
        '
        'VJTIMBER
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(895, 368)
        Me.Controls.Add(Me.MenuStrip1)
        Me.IsMdiContainer = True
        Me.MainMenuStrip = Me.MenuStrip1
        Me.Name = "VJTIMBER"
        Me.Text = "VJTIMBER"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents MenuStrip1 As System.Windows.Forms.MenuStrip
    Friend WithEvents MainToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripSeparator1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents ExitToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CheckToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents NewCheckToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents WritePayInToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CheckClearingToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents EditCheckToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
End Class
