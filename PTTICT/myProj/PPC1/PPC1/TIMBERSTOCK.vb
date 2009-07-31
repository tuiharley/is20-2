Imports System.Text
Imports System.IO
Imports System.Data

Public Class TimberStock
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        showT_ID()
        showT_Name()
        showT_Category()
    End Sub

    Private Sub showT_ID()
        Dim myQueue As New Queue
        Dim myTimber As Timber_ST
        Dim DTable As New DataTable
        Dim DRow As DataRow

        DTable.Columns.Add(New DataColumn("T_ID", GetType(String)))
        DTable.Columns.Add(New DataColumn("T_NAME", GetType(String)))
        DRow = DTable.NewRow
        DRow.Item("T_ID") = "0"
        DRow.Item("T_NAME") = "เลือกรหัสไม้"
        DTable.Rows.Add(DRow)

        myQueue = TIMBER.getTimber()

        For Each myTimber In myQueue
            DRow = DTable.NewRow
            DRow.Item("T_ID") = myTimber.T_ID
            DRow.Item("T_NAME") = myTimber.T_ID
            DTable.Rows.Add(DRow)

        Next


        With LstT_ID
            .DropDownStyle = ComboBoxStyle.DropDownList
            .DataSource = DTable
            .DisplayMember = "T_NAME"
            .ValueMember = "T_ID"
            .SelectedIndex = 0
        End With

        myQueue.Clear()
        myTimber = Nothing
        DTable.Dispose()


        'Dim aIndex As Integer
        'With LstT_ID
        '    For aIndex = 0 To .Items.Count - 1
        '        If CType(.Items(aIndex)(1), String).trim = TextBox2.text.trim Then
        '            .SelectedIndex = aIndex
        '            Exit For
        '        End If
        '    Next

        '    If aIndex >= .Items.Count Then .SelectedIndex = -1
        'End With


    End Sub
    Private Sub showT_Name()
        Dim myQueue As New Queue
        Dim myTimber As Timber_ST
        Dim DTable As New DataTable
        Dim DRow As DataRow

        DTable.Columns.Add(New DataColumn("T_ID", GetType(String)))
        DTable.Columns.Add(New DataColumn("T_NAME", GetType(String)))
        DRow = DTable.NewRow
        DRow.Item("T_ID") = "0"
        DRow.Item("T_NAME") = "เลือกรหัสไม้"
        DTable.Rows.Add(DRow)

        myQueue = TIMBER.getTimber()

        For Each myTimber In myQueue
            DRow = DTable.NewRow
            DRow.Item("T_ID") = myTimber.T_ID
            DRow.Item("T_NAME") = myTimber.T_NAME
            DTable.Rows.Add(DRow)

        Next


        With LstT_Name
            .DropDownStyle = ComboBoxStyle.DropDownList
            .DataSource = DTable
            .DisplayMember = "T_NAME"
            .ValueMember = "T_ID"
            .SelectedIndex = 0
        End With

        myQueue.Clear()
        myTimber = Nothing
        DTable.Dispose()


        'Dim aIndex As Integer
        'With LstT_ID
        '    For aIndex = 0 To .Items.Count - 1
        '        If CType(.Items(aIndex)(1), String).trim = TextBox2.text.trim Then
        '            .SelectedIndex = aIndex
        '            Exit For
        '        End If
        '    Next

        '    If aIndex >= .Items.Count Then .SelectedIndex = -1
        'End With


    End Sub
    Private Sub showT_Category()
        Dim myQueue As New Queue
        Dim myCat As CATEGORY_ST
        Dim DTable As New DataTable
        Dim DRow As DataRow

        DTable.Columns.Add(New DataColumn("T_TYPE", GetType(String)))
        DTable.Columns.Add(New DataColumn("T_TYPE_DESC", GetType(String)))
        DRow = DTable.NewRow
        DRow.Item("T_TYPE") = "0"
        DRow.Item("T_TYPE_DESC") = "เลือกชนิดไม้"
        DTable.Rows.Add(DRow)

        myQueue = CATEGORY.getCategories()

        For Each myCat In myQueue
            DRow = DTable.NewRow
            DRow.Item("T_TYPE") = myCat.T_TYPE
            DRow.Item("T_TYPE_DESC") = myCat.T_TYPE_DESC
            DTable.Rows.Add(DRow)

        Next


        With LstT_Type
            .DropDownStyle = ComboBoxStyle.DropDownList
            .DataSource = DTable
            .DisplayMember = "T_TYPE_DESC"
            .ValueMember = "T_TYPE"
            .SelectedIndex = 0
        End With

        myQueue.Clear()
        myCat = Nothing
        DTable.Dispose()


        'Dim aIndex As Integer
        'With LstT_ID
        '    For aIndex = 0 To .Items.Count - 1
        '        If CType(.Items(aIndex)(1), String).trim = TextBox2.text.trim Then
        '            .SelectedIndex = aIndex
        '            Exit For
        '        End If
        '    Next

        '    If aIndex >= .Items.Count Then .SelectedIndex = -1
        'End With


    End Sub

    Private Sub btnStart_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnStart.Click

        Try
            Dim myQueue As New Queue
            Dim myTimber As Timber_ST
            Dim myDS As New DataSet

            If LstT_ID.SelectedValue <> "0" Then
                myTimber = TIMBER.getATimber(LstT_ID.SelectedValue)
                myQueue.Enqueue(myTimber)

                myDS = TIMBER.getTimberDS(LstT_ID.SelectedValue)
            ElseIf LstT_Name.SelectedValue <> "0" Then
                myTimber = TIMBER.getATimber(LstT_Name.SelectedValue)
                myQueue.Enqueue(myTimber)

                myDS = TIMBER.getTimberDS(LstT_Name.SelectedValue)
            ElseIf LstT_Type.SelectedValue <> "0" Then
                myQueue = TIMBER.getTimber(LstT_Type.SelectedValue, "T_TYPE")

                myDS = TIMBER.getTimberDS(LstT_Type.SelectedValue, "T_TYPE")
            Else
                myQueue = TIMBER.getTimber()

                myDS = TIMBER.getTimberDS()
            End If

            'For Each myTimber In myQueue
            '    MessageBox.Show(myTimber.T_NAME)
            'Next
            TIMBERLIST.myQueue = myQueue.Clone
            TIMBERLIST.DS = myDS

            myQueue.Clear()
            TIMBERLIST.ShowDialog()
            'MessageBox.Show("Successfully created")


        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub
    Private Sub btnExit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnExit.Click
        Close()
    End Sub




   
    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click
        LstT_ID.SelectedIndex = 0
        LstT_Name.SelectedIndex = 0
        LstT_Type.SelectedIndex = 0
    End Sub
End Class
