Imports System.IO

Public Module Utility
    '========================================
    ' Format Date and Time Function 
    ' DD=date, MM=month(number), MON=month(character), YY=year(2digit), YYYY=year(4digit)
    ' HH=hours, MIN=minutes, SS=seconds
    Public Function FormatDate(ByVal d, ByVal fmt)
        Dim DD, MM, YY

        If d & "" <> "" Then
            fmt = UCase(fmt)
            DD = Day(d)
            MM = Month(d)
            YY = Year(d)
            If YY > 2400 Then YY = YY - 543
            If InStr(1, fmt, "DD") > 0 Then
                If DD > 9 Then
                    fmt = Replace(fmt, "DD", DD)
                Else
                    fmt = Replace(fmt, "DD", "0" & DD)
                End If
            End If
            If InStr(1, fmt, "MM") > 0 Then
                If MM > 9 Then
                    fmt = Replace(fmt, "MM", MM)
                Else
                    fmt = Replace(fmt, "MM", "0" & MM)
                End If
            End If
            If InStr(1, fmt, "MON") > 0 Then fmt = Replace(fmt, "MON", UCase(EMonth2(MM)))
            If InStr(1, fmt, "YYYY") > 0 Then fmt = Replace(fmt, "YYYY", YY)
            If InStr(1, fmt, "YY") > 0 Then fmt = Replace(fmt, "YY", Right(YY, 2))
            If InStr(1, fmt, "HH") > 0 Then
                If Hour(d) > 9 Then
                    fmt = Replace(fmt, "HH", Hour(d))
                Else
                    fmt = Replace(fmt, "HH", "0" & Hour(d))
                End If
            End If

            If InStr(1, fmt, "MIN") > 0 Then
                If Minute(d) > 9 Then
                    fmt = Replace(fmt, "MIN", Minute(d))
                Else
                    fmt = Replace(fmt, "MIN", "0" & Minute(d))
                End If
            End If
            If InStr(1, fmt, "SS") > 0 Then
                If Second(d) > 9 Then
                    fmt = Replace(fmt, "SS", Second(d))
                Else
                    fmt = Replace(fmt, "SS", "0" & Second(d))
                End If
            End If
            ' ·ª≈ß format  ”À√—∫«—π∑’Ë‰∑¬
            If InStr(1, fmt, "««") > 0 Then
                If DD > 9 Then
                    fmt = Replace(fmt, "««", DD)
                Else
                    fmt = Replace(fmt, "««", "0" & DD)
                End If
            End If
            If InStr(1, fmt, "¥¥¥¥") > 0 Then
                fmt = Replace(fmt, "¥¥¥¥", TMonth(MM))
            ElseIf InStr(1, fmt, "¥¥¥") > 0 Then
                fmt = Replace(fmt, "¥¥¥", TMonth2(MM))
            End If
            If InStr(1, fmt, "BBBB") > 0 Then
                fmt = Replace(fmt, "BBBB", YY + 543)
            ElseIf InStr(1, fmt, "BB") > 0 Then
                fmt = Replace(fmt, "BB", Right(YY + 543, 2))
            ElseIf InStr(1, fmt, "ªªªª") > 0 Then
                fmt = Replace(fmt, "ªªªª", YY + 543)
            ElseIf InStr(1, fmt, "ªª") > 0 Then
                fmt = Replace(fmt, "ªª", Right(YY + 543, 2))
            End If

            FormatDate = fmt
        Else
            FormatDate = ""
        End If
    End Function

    Public Function EMonth(ByVal m)
        Select Case m
            Case 1 : EMonth = "January"
            Case 2 : EMonth = "February"
            Case 3 : EMonth = "March"
            Case 4 : EMonth = "April"
            Case 5 : EMonth = "May"
            Case 6 : EMonth = "June"
            Case 7 : EMonth = "July"
            Case 8 : EMonth = "August"
            Case 9 : EMonth = "September"
            Case 10 : EMonth = "October"
            Case 11 : EMonth = "November"
            Case 12 : EMonth = "December"
        End Select
    End Function

    Public Function EMonth2(ByVal m)
        Select Case m
            Case 1 : EMonth2 = "Jan"
            Case 2 : EMonth2 = "Feb"
            Case 3 : EMonth2 = "Mar"
            Case 4 : EMonth2 = "Apr"
            Case 5 : EMonth2 = "May"
            Case 6 : EMonth2 = "Jun"
            Case 7 : EMonth2 = "Jul"
            Case 8 : EMonth2 = "Aug"
            Case 9 : EMonth2 = "Sep"
            Case 10 : EMonth2 = "Oct"
            Case 11 : EMonth2 = "Nov"
            Case 12 : EMonth2 = "Dec"
        End Select
    End Function

    Public Function TMonth(ByVal m)
        Select Case m
            Case 1 : TMonth = "¡°√“§¡"
            Case 2 : TMonth = "°ÿ¡¿“æ—π∏Ï"
            Case 3 : TMonth = "¡’π“§¡"
            Case 4 : TMonth = "‡¡…“¬π"
            Case 5 : TMonth = "æƒ…¿“§¡"
            Case 6 : TMonth = "¡‘∂ÿπ“¬π"
            Case 7 : TMonth = "°√°Æ“§¡"
            Case 8 : TMonth = " ‘ßÀ“§¡"
            Case 9 : TMonth = "°—π¬“¬π"
            Case 10 : TMonth = "µÿ≈“§¡"
            Case 11 : TMonth = "æƒ»®‘°“¬π"
            Case 12 : TMonth = "∏—π«“§¡"
        End Select
    End Function

    Public Function TMonth2(ByVal m)
        Select Case m
            Case 1 : TMonth2 = "¡.§."
            Case 2 : TMonth2 = "°.æ."
            Case 3 : TMonth2 = "¡’.§."
            Case 4 : TMonth2 = "‡¡.¬."
            Case 5 : TMonth2 = "æ.§."
            Case 6 : TMonth2 = "¡‘.¬."
            Case 7 : TMonth2 = "°.§."
            Case 8 : TMonth2 = " .§."
            Case 9 : TMonth2 = "°.¬."
            Case 10 : TMonth2 = "µ.§."
            Case 11 : TMonth2 = "æ.¬."
            Case 12 : TMonth2 = "∏.§."
        End Select
    End Function

    Public Function ShowEngMonth(ByVal MM) As String
        ShowEngMonth = EMonth(MM)
    End Function

    Public Function ShowEngMM(ByVal MM) As String
        ShowEngMM = EMonth2(MM)
    End Function

    Public Function ShowThaiMonth(ByVal MM) As String
        ShowThaiMonth = TMonth(MM)
    End Function

    Public Function ShowThaiMM(ByVal MM) As String
        ShowThaiMM = TMonth2(MM)
    End Function

    Public Function EngDateValue(ByVal S)
        Dim D, M, Y
        Dim I, J, TS
        Dim T As Date
        Dim Delim

        Delim = "/"
        S = Trim(S & "")
        I = InStr(1, S, Delim)
        If (Len(S) < 6) Or (I = 0) Then
            EngDateValue = Nothing
        Else
            D = CInt(Left(S, I - 1))
            J = InStr(I + 2, S, Delim)
            If J = 0 Then J = I
            If (I > 0) And (J - I + 1 > 0) Then
                M = Val(Mid(S, I + 1, J - I - 1))
            Else
                M = 0
            End If
            S = Mid(S, J + 1)
            If IsNumeric(S) Then
                Y = CInt(S)
            Else
                Y = 0
            End If
            I = InStr(1, S, " ")
            If S Like "*:*" Then
                TS = Trim(Mid(S, I + 1))
            Else
                TS = ""
            End If
            If Y > 2400 Then                ' i.e. 2548
                Y = Y - 543
            ElseIf Y > 30 And Y < 100 Then  ' i.e. 48
                Y = Y + 2500 - 543
            ElseIf Y <= 30 Then
                Y = Y + 2000
            End If

            If (D > 0) And (D < 32) And (M > 0) And (M < 13) And (Y > 1000) Then
                If Year(Now) > 2500 Then Y = Y + 543
                If TS <> "" Then
                    T = TimeValue(TS)
                    EngDateValue = New Date(Y, M, D, T.Hour, T.Minute, T.Second)
                Else
                    EngDateValue = DateSerial(Y, M, D)
                End If
            Else
                EngDateValue = Nothing
            End If
        End If
    End Function

    Public Function ThaiDateValue(ByVal S)
        Dim D, M, Y
        Dim I, J, TS
        Dim T As Date
        Dim Delim

        Delim = "/"
        S = Trim(S & "")
        I = InStr(1, S, Delim)
        If (Len(S) < 6) Or (I = 0) Then
            ThaiDateValue = Nothing
        Else
            D = CInt(Left(S, I - 1))
            J = InStr(I + 2, S, Delim)
            If J = 0 Then J = I
            If (I > 0) And (J - I + 1 > 0) Then
                '                M = TMonth2Num(Trim(Mid(S, I + 1, J - I - 1)))
                M = Val(Mid(S, I + 1, J - I - 1))
            Else
                M = 0
            End If
            S = Mid(S, J + 1)
            If IsNumeric(S) Then
                Y = CInt(S)
            Else
                Y = 0
            End If
            I = InStr(1, S, " ")
            If S Like "*:*" Then
                TS = Trim(Mid(S, I + 1))
            Else
                TS = ""
            End If
            If Y < 20 Then
                Y = Y + 2543
            ElseIf Y < 100 Then
                Y = Y + 2500
            ElseIf Y < 1900 Then
                Y = 0
            ElseIf Y < 2400 Then
                Y = Y + 543
            End If

            If (D > 0) And (D < 32) And (M > 0) And (M < 13) And (Y > 2400) Then
                If Year(Now) < 2500 Then Y = Y - 543
                If TS <> "" Then
                    T = TimeValue(TS)
                    ThaiDateValue = New Date(Y, M, D, T.Hour, T.Minute, T.Second)
                Else
                    ThaiDateValue = DateSerial(Y, M, D)
                End If
            Else
                ThaiDateValue = Nothing
            End If
        End If
    End Function

    Public Function ThaiDateTimeValue(ByVal S, ByVal T)
        Dim D, M, Y, Hr, Min, Sec
        Dim I, J, TS
        Dim Delim

        Delim = "/"
        S = Trim(S & "")
        I = InStr(1, S, Delim)
        If (Len(S) < 6) Or (I = 0) Then
            ThaiDateTimeValue = Nothing
        Else
            D = CInt(Left(S, I - 1))
            J = InStr(I + 2, S, Delim)
            If J = 0 Then J = I
            If (I > 0) And (J - I + 1 > 0) Then
                M = Val(Mid(S, I + 1, J - I - 1))
            Else
                M = 0
            End If
            S = Mid(S, J + 1)
            If IsNumeric(S) Then
                Y = CInt(S)
            Else
                Y = 0
            End If
            I = InStr(1, S, " ")

            If Y < 20 Then
                Y = Y + 2543
            ElseIf Y < 100 Then
                Y = Y + 2500
            ElseIf Y < 1900 Then
                Y = 0
            ElseIf Y < 2400 Then
                Y = Y + 543
            End If

            If (D > 0) And (D < 32) And (M > 0) And (M < 13) And (Y > 2400) Then
                If Year(Now) < 2500 Then Y = Y - 543
                Hr = Left(T, InStr(T, ":") - 1)
                T = Right(T, Len(T) - Len(Hr) - 1)
                If InStr(T, ":") > 1 Then
                    Min = Left(T, InStr(T, ":") - 1)
                    T = Right(T, Len(T) - Len(Hr) - 1)
                    If Len(T) > 1 Then
                        Sec = T
                    Else
                        Sec = "0"
                    End If
                Else
                    Min = T
                    Sec = "0"
                End If

                ThaiDateTimeValue = DateSerial(Y, M, D) + " " + TimeSerial(Hr, Min, Sec)
                'ThaiDateTimeValue = New Date(Y, M, D, Hr, Min, Sec)
            Else
                ThaiDateTimeValue = Nothing
            End If
        End If
    End Function

    Public Function ToNum(ByVal N)
        If IsNumeric(N) Then
            ToNum = CDbl(N)
        Else
            ToNum = 0
        End If
    End Function

    Public Function ToInt(ByVal N)
        If IsNumeric(N) Then
            ToInt = CInt(N)
        Else
            ToInt = 0
        End If
    End Function

    Public Function ToLong(ByVal N)
        If IsNumeric(N) Then
            ToLong = CLng(N)
        Else
            ToLong = 0
        End If
    End Function

    Public Function ToDec(ByVal N)
        If IsNumeric(N) Then
            ToDec = CDec(N)
        Else
            ToDec = 0
        End If
    End Function

    Public Function SetYearID(ByVal YCell)
        Dim YID
        YID = Year(Today)
        If YID < 2400 Then YID -= 543
        YID = Right(CStr(YID), YCell)
        SetYearID = YID
    End Function

    Public Function SetENYearID(ByVal YCell)
        Dim YID
        YID = Year(Today)
        If YID > 2400 Then YID -= 543
        YID = Right(CStr(YID), YCell)
        SetENYearID = YID
    End Function

    Public Function GetFileType(ByVal FileName)
        Dim usrFile
        FileName = Mid(FileName, InStrRev(FileName, "\") + 1)
        FileName = Mid(FileName, InStrRev(FileName, "."))
        GetFileType = FileName
    End Function

    Public Function GetFileName(ByVal FileName)
        GetFileName = Mid(FileName, InStrRev(FileName, "\") + 1)
    End Function

    Public Function DeleteFile(ByVal FilePath)
        Dim FileDelete As FileInfo = New FileInfo(FilePath)
        FileDelete.Delete()
    End Function

    Public Function AppDateValue(ByVal S)
        AppDateValue = ThaiDateValue(S)
        'Dim errorMsg As String = String.Format(New CultureInfo("en-us", True), "There are some problems while trying to use the Cryptography Quick Start, please check the following error messages: " & Environment.NewLine & "{0}" & Environment.NewLine, e.Exception.Message)
    End Function

    Public Function AppDateTimeValue(ByVal S, ByVal T)
        AppDateTimeValue = ThaiDateTimeValue(S, T)
        'Dim errorMsg As String = String.Format(New CultureInfo("en-us", True), "There are some problems while trying to use the Cryptography Quick Start, please check the following error messages: " & Environment.NewLine & "{0}" & Environment.NewLine, e.Exception.Message)
    End Function

    Public Function AppFormatDate(ByVal D As Object, Optional ByVal LangType As String = "TH", Optional ByVal ShowType As String = "") As String
        If LangType = "EN" Then
            If ShowType <> "" Then
                AppFormatDate = FormatDate(D, ShowType)
            Else
                AppFormatDate = FormatDate(D, "dd/mm/yyyy")
            End If
        Else
            If ShowType <> "" Then
                AppFormatDate = FormatDate(D, ShowType)
            Else
                AppFormatDate = FormatDate(D, "dd/mm/bbbb")
            End If

        End If

        'Dim errorMsg As String = String.Format(New CultureInfo("en-us", True), "There are some problems while trying to use the Cryptography Quick Start, please check the following error messages: " & Environment.NewLine & "{0}" & Environment.NewLine, e.Exception.Message)
    End Function

    Public Function AppFormatDateTime(ByVal D As Object, Optional ByVal LangType As String = "TH") As String
        If LangType = "EN" Then
            AppFormatDateTime = FormatDate(D, "dd/mm/yyyy HH:MIN")
        Else
            AppFormatDateTime = FormatDate(D, "dd/mm/bbbb HH:MIN")
        End If

        'Dim errorMsg As String = String.Format(New CultureInfo("en-us", True), "There are some problems while trying to use the Cryptography Quick Start, please check the following error messages: " & Environment.NewLine & "{0}" & Environment.NewLine, e.Exception.Message)
    End Function

    Public Function AppFormatTime(ByVal D As Object, Optional ByVal LangType As String = "TH") As String
        AppFormatTime = FormatDate(D, "HH:MIN")
        'Dim errorMsg As String = String.Format(New CultureInfo("en-us", True), "There are some problems while trying to use the Cryptography Quick Start, please check the following error messages: " & Environment.NewLine & "{0}" & Environment.NewLine, e.Exception.Message)
    End Function

    Public Function SetDateFormat(ByVal DateStr As String, ByVal Deli As String) As String
        Dim ShDD As String, ShMM As String, ShYY As String
        Dim ShChr() As String
        Dim i As Integer
        If DateStr & "" <> "" Then
            DateStr = Replace(DateStr, Deli, "")
            If DateStr.Length < 10 Then
                ShDD = Left(DateStr, 2)
                ShMM = Right(Left(DateStr, 4), 2)
                ShYY = Right(DateStr, 4)
                Return ShDD + Deli + ShMM + Deli + ShYY
            Else
                Return DateStr
            End If
        End If
    End Function

    Public Sub LoadMonthCombo(ByRef C As DropDownList, Optional ByVal nullvalue As Boolean = True, Optional ByVal DefaultMonth As String = "", Optional ByVal LangType As String = "TH")
        Dim I, MM

        C.Items.Clear()
        If DefaultMonth = "" Then MM = Month(Now)
        If nullvalue Then
            C.Items.Insert(0, " ")
            C.Items(0).Value = ""
        End If
        If LangType & "" = "TH" Then
            For I = 1 To 12
                C.Items.Add(New ListItem(TMonth(I), I))
            Next
        Else
            For I = 1 To 12
                C.Items.Add(New ListItem(EMonth(I), I))
            Next
        End If

        C.SelectedValue = MM
    End Sub

    Public Sub InitYear(ByRef txtYear As TextBox, Optional ByVal nullvalue As Boolean = False)
        If Now.Year > 2500 Then
            txtYear.Text = Now.Year
        Else
            txtYear.Text = Now.Year + 543
        End If
    End Sub

    Public Sub InitMonthYear(ByRef lstMonth As DropDownList, ByRef txtYear As TextBox, Optional ByVal nullvalue As Boolean = False)
        LoadMonthCombo(lstMonth, nullvalue)
        InitYear(txtYear)
    End Sub

    Public Function LockCtrl(ByVal C As Object)
        If Not IsNothing(C.ID) Then
            Select Case C.ID.Substring(0, 3).ToLower
                Case "txt"
                    If TypeOf (C) Is TextBox Then
                        C.ReadOnly = True
                        C.BackColor = Color.FromName("#FFFFC0")
                    Else
                        C.Disabled = True
                    End If
                Case "lst"
                    C.Enabled = False
                    C.BackColor = Color.FromName("#FFFFC0")
                Case "rbl"
                    C.Enabled = False
                Case "cbl"
                    C.Enabled = False
                Case "btn"
                    C.Visible = False
                Case "img"
                    C.Visible = False
                Case "fil"
                    C.Disabled = True
                Case "chk"
                    If TypeOf (C) Is CheckBox Then
                        C.ReadOnly = True
                        C.BackColor = Color.FromName("#FFFFC0")
                    Else
                        C.Disabled = True
                    End If
            End Select
        End If
    End Function

    Public Sub LockControls(ByVal Controls As ControlCollection)
        Dim C As Object

        For Each C In Controls
            LockCtrl(C)
        Next
    End Sub

    Public Function CRDate(ByVal D As Object) As String
        CRDate = FormatDate(D, "yyyy/mm/dd")
    End Function

End Module

