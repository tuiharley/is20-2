Public Class NewCheckfrm

    Private Sub NewCheck_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Dim MyMas_Bank As New MAS_BANK
        Dim MyDs As New DataSet

        MyDs = MyMas_Bank.GetDatasetSearch("ACTIVE = 1")

       

        CmbBank.DataSource = MyDs.Tables(0)
        CmbBank.DisplayMember = "BANK_DESC"
        CmbBank.ValueMember = "BANK_ID"

    End Sub

    Private Sub BankCmb_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CmbBank.SelectedIndexChanged

        'banklogo.ImageLocation = My.Application.Info.DirectoryPath & "\photo\bbl.png"
        Dim MyMas_Bank_Branch As New MAS_BANK_BRANCH
        Dim MyDs As New DataSet

        MessageBox.Show(CmbBank.SelectedValue)

        'MyDs = MyMas_Bank_Branch.GetDatasetSearch("ACTIVE = 1 AND BB.BANK_ID = " & CmbBank.SelectedValue)

        'CmbBranch.DataSource = MyDs.Tables(0)
        'CmbBranch.DisplayMember = "BRANCH_NAME"
        'CmbBranch.ValueMember = "BRANCH_ID"

    End Sub

   
End Class
