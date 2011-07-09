Public Class VJTIMBER

    Private Sub NewCheckToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NewCheckToolStripMenuItem.Click

        closeChild()

        Dim NewMDIChild As New NewCheckfrm()
        'Set the Parent Form of the Child window.
        NewMDIChild.MdiParent = Me
        NewMDIChild.WindowState = FormWindowState.Maximized
        'Display the new form.
        NewMDIChild.Show()

    End Sub

    Private Sub WritePayInToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles WritePayInToolStripMenuItem.Click

        closeChild()

        Dim NewMDIChild As New PayIn
        'Set the Parent Form of the Child window.
        NewMDIChild.MdiParent = Me
        NewMDIChild.WindowState = FormWindowState.Maximized
        'Display the new form.
        NewMDIChild.Show()
    End Sub

    Private Sub ExitToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ExitToolStripMenuItem.Click
        Application.Exit()
    End Sub

    Private Sub closeChild()
        Dim AllChild As Form() = Me.MdiChildren
        Dim Child As Form

        For Each Child In AllChild
            Child.Dispose()
        Next
    End Sub

    Private Sub CheckClearingToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CheckClearingToolStripMenuItem.Click
        closeChild()

        Dim NewMDIChild As New CheckClearing
        'Set the Parent Form of the Child window.
        NewMDIChild.MdiParent = Me
        NewMDIChild.WindowState = FormWindowState.Maximized
        'Display the new form.
        NewMDIChild.Show()
    End Sub
End Class