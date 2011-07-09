Public Class NewCheckfrm

    Private Sub NewCheck_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Dim MyMas_Bank As New MAS_BANK
        Dim MyDs As New DataSet

        MyDs = MyMas_Bank.GetDatasetSearch("ACTIVE = 1")

       

        BankCmb.DataSource = MyDs.Tables(0)
        BankCmb.DisplayMember = "BANK_DESC"
        BankCmb.ValueMember = "BANK_ID"

    End Sub

    Private Sub BankCmb_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BankCmb.SelectedIndexChanged

        banklogo.ImageLocation = My.Application.Info.DirectoryPath & "\photo\bbl.png"

    End Sub
End Class
