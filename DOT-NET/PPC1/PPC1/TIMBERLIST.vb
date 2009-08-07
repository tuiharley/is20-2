Imports System.Data
Public Class TIMBERLIST
    Public txtShow As String
    Public myQueue As Queue
    Public DS As DataSet

    Private Sub TIMBERLIST_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim txt As String = ""
        Dim myTimber As Timber_ST

        For Each myTimber In myQueue
            txt &= myTimber.T_NAME & " " & myTimber.T_QTY & " ตัว " & myTimber.T_Q & " Q" & vbCrLf
        Next
        myQueue.Clear()

        txt_TIMBER.Text = txt
        loadDG(DS)
    End Sub

    Private Sub loadDG(ByVal DS As DataSet)

        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim i As Integer

        DTable.Columns.Add(New DataColumn("TIMBER", GetType(String)))
        DRow = DTable.NewRow

        For i = 0 To DS.Tables(0).Rows.Count - 1
            DRow = DTable.NewRow
            DRow.Item("TIMBER") = DS.Tables(0).Rows(i).Item("T_NAME") & " " & checkNullDBNum(DS.Tables(0).Rows(i).Item("T_QTY")) & " ตัว " & checkNullDBNum(DS.Tables(0).Rows(i).Item("T_Q")) & " Q"
            DTable.Rows.Add(DRow)
        Next
        


        Dim ts As New DataGridTableStyle
        ts.MappingName = "Timber"

        'Dim timberID As New DataGridTextBoxColumn
        'With timberID
        '    .MappingName = "T_ID"
        '    .HeaderText = "รหัสไม้"
        'End With
        'ts.GridColumnStyles.Add(timberID)

        Dim timberName As New DataGridTextBoxColumn
        With timberName
            .MappingName = "T_NAME"
            .HeaderText = "ไม้"
            .Width = 240

        End With
        ts.GridColumnStyles.Add(timberName)


        With DataGrid1

            .TableStyles.Add(ts)
            .DataSource = DTable
        End With

    End Sub
    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClose.Click
        Close()
    End Sub
End Class