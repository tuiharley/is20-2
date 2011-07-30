Public Class NewCheckfrm

    Private Sub NewCheck_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        showBank()

    End Sub


    Private Sub showBank()
        Dim MyMas_Bank As New MAS_BANK
        Dim MyDs As New DataSet

        MyDs = MyMas_Bank.GetDatasetSearch("ACTIVE = 1")

        CmbBank.DisplayMember = "BANK_DESC"
        CmbBank.ValueMember = "BANK_ID"
        CmbBank.DataSource = MyDs.Tables(0)

    End Sub

    Private Sub CmbBank_SelectedValueChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CmbBank.SelectedValueChanged
        'banklogo.ImageLocation = My.Application.Info.DirectoryPath & "\photo\bbl.png"
        Dim MyMas_Bank_Branch As New MAS_BANK_BRANCH
        Dim MyDs As New DataSet

        If CmbBank.SelectedValue Is Nothing Then
            Exit Sub
        End If
        'MessageBox.Show(CmbBank.SelectedValue.ToString)

        MyDs = MyMas_Bank_Branch.GetDatasetSearch("BB.ACTIVE = 1 AND BB.BANK_ID = " & CmbBank.SelectedValue, "")


        CmbBranch.DisplayMember = "BRANCH_NAME"
        CmbBranch.ValueMember = "BRANCH_ID"
        CmbBranch.DataSource = MyDs.Tables(0)

    End Sub

    Private Sub btnExit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnExit.Click
        Me.Close()
    End Sub

    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click
        txtCheckNo.Text = ""
        txtCheckAmt.Text = ""

    End Sub
End Class
