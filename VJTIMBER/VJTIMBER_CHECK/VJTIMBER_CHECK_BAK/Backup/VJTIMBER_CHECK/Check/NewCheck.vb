Public Class NewCheck

    Private Sub NewCheck_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        


    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim MyMas_Bank As New MAS_BANK
        Dim MyDs As New DataSet
        MessageBox.Show("start")
        MyDs = MyMas_Bank.GetDatasetOneRecord("1")

        gridtest.DataSource = MyDs
    End Sub
End Class