Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim myX As New HighPrecisionTest

        myX.Test()
        txtResult.Text = myX.getMyTxt
    End Sub
End Class
