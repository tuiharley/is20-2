Module String_chk
    Function checkNullstr(ByVal x As String) As String
        If x = "" Or x = "null" Then
            Return "null"
        Else
            Return "'" & x & "'"
        End If
    End Function
    Function checkNullstr_2(ByVal x As String) As String
        If x = "" Or x = "null" Then
            Return "'-'"
        Else
            Return "'" & x & "'"
        End If
    End Function
    Function checkNullNum(ByVal x As String) As String
        If x = "" Or x = "null" Then
            Return "null"
        Else
            Return x
        End If
    End Function
    Function checkNullStr_Line(ByVal x As String) As String
        If x = "" Or x = "null" Or x = "0" Then
            Return "-"
        Else
            Return x
        End If
    End Function
    Function changeLine2Zero(ByVal x As String) As String
        If x = "-" Then
            Return "00/0"
        Else
            Return x
        End If
    End Function
    '------------for edit data-------------------------------
    Function checknullStrInt(ByVal x As String) As Integer
        If x = "" Or x = "null" Then
            Return 0
        Else
            Return x
        End If
    End Function
    Function checkInt(ByVal x As Integer) As String
        If x = "-1" Then
            Return "null"
        Else
            Return x
        End If
    End Function

    Function checkNullNum2(ByVal x As Integer) As String
        If x = 0 Then
            Return "null"
        Else
            Return x
        End If
    End Function
    Function checkTrue(ByVal x As Boolean) As Integer
        If x Then
            Return 1
        Else
            Return 0
        End If
    End Function

    Function checkNullDBstr(ByVal x As Object) As String
        Dim y As String
        If IsDBNull(x) Then
            Return ""
        Else
            Return x
        End If
    End Function
    Function checkNullDBstr_Ln(ByVal x As Object) As String
        Dim y As String
        If IsDBNull(x) Then
            Return "-"
        Else
            Return x
        End If
    End Function
    Function cleanNullDBstr_Ln(ByVal x As Object) As String
        Dim y As String
        If x = "-" Or x = "" Then
            Return "null"
        Else
            Return "'" & x & "'"
        End If
    End Function
    Function checkNullDBNum(ByVal x As Object) As Integer
        Dim y As String
        If IsDBNull(x) Then
            Return 0
        ElseIf x = -1 Then
            Return 1
        Else
            Return x
        End If
    End Function
    Function checkNullDBPrice(ByVal x As Object) As Double
        Dim y As String
        If IsDBNull(x) Then
            Return 0
        ElseIf x = -1 Then
            Return 1
        Else
            Return x
        End If
    End Function
    Function checkNullTrue(ByVal x As Object) As Boolean
        Dim y As String
        If IsDBNull(x) Then
            Return False
        Else
            Return True
        End If
    End Function

    Function checkNullDBbit(ByVal x As Object) As Integer
        Dim y As String
        If IsDBNull(x) Then
            Return 999
        ElseIf x = -1 Then
            Return 1
        Else
            Return x
        End If
    End Function
    Function checkNullDBDate(ByVal x As Object) As Date
        Dim y As String
        If IsDBNull(x) Then
            Return Nothing
        Else
            Return x
        End If
    End Function
    Function checkNullDBDateT(ByVal x As Object) As DateTime
        Dim y As String
        If IsDBNull(x) Then
            Return Nothing
        Else
            Return x
        End If
    End Function
    '---------------for validate form-------------------------
    Function cleanRequire(ByVal x As String) As String
        If x = "โปรดระบุ" Then
            x = ""
        End If
        Return x
    End Function
    Function cleanTextBox(ByVal inputSTR As String, ByVal compSTR As String) As String
        Dim x As String
        If inputSTR = compSTR Then
            x = ""
        Else
            x = inputSTR
        End If
        Return x
    End Function

    Function checkDate(ByVal x As Object) As String
        Dim ans As String
        ans = "CONVERT(DATETIME,'" & x.Year & "-" & x.Month & "-" & x.Day & " " & x.Hour & ":" & x.Minute & ":" & x.Second & "',102)"
        Return ans
    End Function

    '---------------clean SQL injection-------------------------
    Function cleanSQ(ByVal tmpX As String) As String

        tmpX = Replace(tmpX, "'", "''")

        Return tmpX
    End Function
End Module
