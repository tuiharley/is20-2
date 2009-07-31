Imports System.Security
Imports System.Security.Principal
Imports System.Threading.Thread

Public Module SystemUtil

    ' ****** Log Category Constants ******
    Public Const catAppLog As String = "LOG"
    Public Const catErrorLog As String = "ERROR"
    Public Const catMailLog As String = "MAIL"

    Public Function GetErrorMsg(ByVal ex As Exception, Optional ByVal ProcName As String = "", Optional ByVal UsrMsg As String = "")
        Dim Msg As String
        Dim I, J As Integer

        If UsrMsg = "" Then
            If ProcName = "" Then
                J = ex.StackTrace.LastIndexOf("()")
                If J >= 0 Then
                    I = ex.StackTrace.Substring(0, J).LastIndexOf(".") + 1
                    ProcName = ex.StackTrace.Substring(I, J - I).ToLower
                End If
            Else
                ProcName = ProcName.ToLower
            End If

            If ProcName.StartsWith("load") Then
                Msg = "เกิดข้อผิดพลาดระหว่างการอ่านข้อมูล"
            ElseIf ProcName.StartsWith("save") Then
                Msg = "เกิดข้อผิดพลาดระหว่างการบันทึกข้อมูล"
            Else
                Select Case ProcName.ToLower
                    Case "deletedata"
                        Msg = "เกิดข้อผิดพลาดระหว่างการลบข้อมูล"
                    Case "openconn"
                        Msg = "ไม่สามารถติดต่อฐานข้อมูลได้ กรุณาติดต่อผู้ดูแลระบบ"
                End Select
            End If
        Else
            Msg = UsrMsg
        End If

        Select Case gDebugLevel
            Case "1"
                Msg += " => " & ex.Message.Replace(vbCrLf, " ").Replace("""", "'")
            Case "2"
                Msg += " => " & ex.ToString.Replace(vbCrLf, " ").Replace("""", "'")
        End Select

        WriteErrorLog(Msg)
        Return Msg
    End Function

    Public Sub CreateContext(ByVal UserName As String, ByVal Roles() As String)
        Dim identity As New GenericIdentity(UserName)

        HttpContext.Current.User = New GenericPrincipal(identity, Roles)
        CurrentThread.CurrentPrincipal = New GenericPrincipal(identity, Roles)
    End Sub


    ' Check if current user is in a specified role(s)
    ' i.e.  IsInRoles("Requester|Approver") 
    Public Function IsInRoles(ByVal Roles As String) As Boolean
        Dim role As String
        Dim Authorized As Boolean = False
        Dim S As String

        If Not IsNothing(HttpContext.Current.Session("ROLE_ID")) Then
            S = Strings.Join(HttpContext.Current.Session("ROLE_ID"), "|")
        End If

        For Each role In Split(Roles, "|")
            'If Not HttpContext.Current.User.IsInRole(role) Then
            If S.IndexOf(role) >= 0 Then
                Authorized = True
            End If
        Next

        Return (Authorized)
    End Function

    'Public Function IsAuthenticated() As Boolean
    '    Dim UserName As String = ""

    '    If HttpContext.Current.User.Identity.IsAuthenticated Then
    '        UserName = HttpContext.Current.Session("USER_NAME")
    '        If UserName = "" Then
    '            Dim I As Integer

    '            UserName = HttpContext.Current.User.Identity.Name
    '            I = UserName.IndexOf("\")
    '            If I >= 0 Then UserName = UserName.Substring(I + 1)
    '            LoadUserData(UserName)

    '            UserName = HttpContext.Current.Session("USER_NAME")
    '        End If
    '    End If

    '    Return (UserName <> "")
    'End Function

    Public Sub CheckRoles(ByVal IsRights As Boolean)
        'If Not IsInRoles(roles) Then
        '    HttpContext.Current.Response.Redirect("noRight.aspx")
        'End If
        If Not IsRights Then
            HttpContext.Current.Response.Redirect("..\noRight.aspx")
        End If
    End Sub

    Public Function GetDepartmentMask(ByVal departmentCode As String)
        Dim I As Integer

        I = 7
        Do While (I >= 0) AndAlso (departmentCode.Substring(I, 1) = "0")
            I = I - 1
        Loop

        Return departmentCode.Substring(0, I + 1) + "%"
    End Function

    Public Function GetDT(ByVal DS As DataSet) As DataTable
        If Not IsNothing(DS) AndAlso (DS.Tables.Count > 0) AndAlso (DS.Tables(0).Rows.Count > 0) Then
            Return DS.Tables(0)
        Else
            Return Nothing
        End If
    End Function

    Public Function GetDR(ByVal DS As DataSet) As DataRow
        If Not IsNothing(DS) AndAlso (DS.Tables.Count > 0) AndAlso (DS.Tables(0).Rows.Count > 0) Then
            Return DS.Tables(0).Rows(0)
        Else
            Return Nothing
        End If
    End Function

    Public Function GetDRV(ByVal DV As DataView) As DataRowView
        If Not IsNothing(DV) AndAlso (DV.Count > 0) Then
            Return DV.Item(0)
        Else
            Return Nothing
        End If
    End Function

    Public Sub LockControl(ByRef Ctrl As Object, ByVal IsEditable As Boolean)
        Dim Txt As TextBox
        Dim Cbo As DropDownList

        If TypeOf (Ctrl) Is TextBox Then
            Txt = CType(Ctrl, TextBox)
            If IsEditable Then
                Txt.CssClass = ""
                Txt.ReadOnly = False
            Else ' False แก้ไขไม่ได้
                Txt.CssClass = "txtReadOnly"
                Txt.ReadOnly = True
            End If
        Else ' เป็น Dropdown
            Cbo = CType(Ctrl, DropDownList)
            If IsEditable Then
                Cbo.CssClass = ""
                Cbo.Enabled = True
            Else ' False แก้ไขไม่ได้
                Cbo.CssClass = "txtReadOnly"
                Cbo.Enabled = False
            End If
        End If
    End Sub

    Public Sub LoadList(ByRef C As ListControl, ByVal DS As Object, ByVal FieldText As String, ByVal FieldValue As String)
        Dim DT As DataTable
        Dim DB As New DBUTIL

        Try
            If TypeOf (DS) Is DataSet Then
                DT = DB.GetDT(DS)
            Else
                DT = DS
            End If

            If Not IsNothing(C) AndAlso Not IsNothing(DT) Then
                With C
                    .Items.Clear()
                    .DataSource = DT
                    .DataTextField = FieldText
                    .DataValueField = FieldValue
                    .DataBind()
                End With
            End If
        Catch ex As Exception
            If Not IsNothing(C) Then
                C.Items.Clear()
            End If
        End Try
    End Sub

    Public Sub LoadNullList(ByRef C As ListControl, ByVal DS As Object, ByVal FieldText As String, ByVal FieldValue As String, Optional ByVal OptField As String = "", Optional ByVal NullShow As String = "")
        Dim DT As DataTable
        Dim DR As DataRow
        Dim DB As New DBUTIL

        Try
            If TypeOf (DS) Is DataSet Then
                DT = DB.GetDT(DS)
            Else
                DT = DS
            End If

            If Not IsNothing(C) AndAlso Not IsNothing(DT) Then
                'DR = DT.NewRow
                'DR(FieldText) = DBNull.Value
                'DT.Rows.InsertAt(DR, 0)
                With C
                    .Items.Clear()
                    .DataSource = DT
                    .DataTextField = FieldText
                    .DataValueField = FieldValue
                    If OptField <> "" Then .ID = OptField
                    .DataBind()
                End With
                If NullShow = "" Then
                    C.Items.Insert(0, "")
                Else
                    C.Items.Insert(0, NullShow)
                End If
                C.Items(0).Value = ""
            End If
        Catch ex As Exception
        End Try
    End Sub
    Public Sub LoadCheckList(ByRef chkList As CheckBoxList, ByVal DT As DataTable, ByVal FieldText As String, ByVal FieldValue As String)

        Try
            If Not IsNothing(chkList) Then
                If Not IsNothing(DT) Then
                    With chkList
                        .Items.Clear()
                        .DataSource = DT
                        .DataTextField = FieldText
                        .DataValueField = FieldValue
                        .DataBind()
                    End With
                End If
            End If
        Catch ex As Exception
            'Msg = GetErrorMsg(ex, "LOADDATA")
        End Try
    End Sub

    Public Sub LoadDropDownList(ByRef DDList As DropDownList, ByVal DT As DataTable, ByVal FieldText As String, ByVal FieldValue As String)

        Try
            If Not IsNothing(DDList) Then
                If Not IsNothing(DT) Then
                    With DDList
                        .Items.Clear()
                        .DataSource = DT
                        .DataTextField = FieldText
                        .DataValueField = FieldValue
                        .DataBind()
                    End With
                End If
            End If
        Catch ex As Exception
            'Msg = GetErrorMsg(ex, "LOADDATA")
        End Try
    End Sub

    Public Sub LoadRadioList(ByRef RDList As RadioButtonList, ByVal DT As DataTable, ByVal FieldText As String, ByVal FieldValue As String)
        Try
            If Not IsNothing(RDList) Then
                If Not IsNothing(DT) Then
                    With RDList
                        .Items.Clear()
                        .DataSource = DT
                        .DataTextField = FieldText
                        .DataValueField = FieldValue
                        .DataBind()
                    End With
                End If
            End If
        Catch ex As Exception
            'Msg = GetErrorMsg(ex, "LOADDATA")
        End Try
    End Sub

    Public Sub LoadNullDropDownList(ByRef DDList As DropDownList, ByVal DT As DataTable, ByVal FieldText As String, ByVal FieldValue As String)
        Dim I As Integer
        Dim DR As DataRow
        Try
            If Not IsNothing(DDList) Then
                DDList.Items.Clear()
                DDList.Items.Insert(0, " ")
                DDList.Items(0).Value = ""
                I = 1
                If Not IsNothing(DT) Then
                    For Each DR In DT.Rows
                        DDList.Items.Insert(I, DR(FieldText) & "")
                        DDList.Items(I).Value = DR(FieldValue) & ""
                        I = I + 1
                    Next
                End If
            End If
        Catch ex As Exception
            'Msg = GetErrorMsg(ex, "LOADDATA")
        End Try
    End Sub

    ' ********************************************
    ' 7/4/2006
    Public Sub SetListValue(ByRef C As ListControl, ByVal SelectedValue As Object)
        Try
            C.SelectedValue = SelectedValue
        Catch ex As Exception
            C.SelectedIndex = -1
        End Try
    End Sub

    ' ********************************************

    '***************************************************************************************************
    '28/09/49
    Public Function FormatSearchText(ByVal searchText As String, Optional ByVal searchBeginning As Boolean = False) As String
        Dim RET As String = ""

        If searchText <> "" Then
            searchText = Replace(searchText, "*", "%")
            If Not (InStr(searchText, "%") > 0) Then
                If searchBeginning Then
                    searchText = searchText & "%"
                Else
                    searchText = "%" & searchText & "%"
                End If
            End If

            RET = searchText
        End If

        Return RET
    End Function

End Module
