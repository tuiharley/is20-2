Public Class NewCheck

    Private Sub NewCheck_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        
        Dim MyMas_Bank As New MAS_BANK
        Dim MyDs As New DataSet

        MyDs = MyMas_Bank.GetDatasetOneRecord("1")

    End Sub

End Class