
Module Security

    Public Const RET_UNKNOWN_ERR = 0

    Public Const TaskCustomerFind = 1          '1 หน้าจอค้นหาข้อมูลลูกค้า
    Public Const TaskOffice = 2               '2 หน้าจอข้อมูลบริษัท
    Public Const TaskFactory = 3               '3 หน้าจอข้อมูลโรงงาน
    Public Const TaskProduction = 4             '4 หน้าจอข้อมูลการผลิต
    Public Const TaskContract = 5             '5 หน้าจอข้อมูลสัญญาซื้อ-ขาย
    Public Const TaskEmergencyCase = 6            '6 หน้าจอข้อมูลกรณีฉุกเฉิน
    Public Const TaskContactData = 7            '7 หน้าจอข้อมูลการติดต่อ
    Public Const TaskSeminarData = 8             '8 หน้าจอข้อมูลสัมมนา/อบรม
    Public Const TaskGroupPerson = 9             '9 หน้าจอข้อมูลบุคคลผู้ติดต่อ
    Public Const TaskPersonData = 10             '10 หน้าจอข้อมูลบุคคลผู้ติดต่อ
    Public Const TaskHeatData = 11             '11 หน้าจอข้อมูลการเปลี่ยนแปลงค่าความร้อน
    Public Const TaskVendorList = 12             '12 หน้าจอข้อมูล Vendor List
    Public Const TaskBilling = 13            '13 หน้าจอข้อมูล Billing Report
    Public Const TaskRptContact = 14             '14 หน้าจอรายงานสรุปการติดต่อ
    Public Const TaskRptGas = 15             '15 หน้าจอรายงานค่าความร้อนและคุณภาพก๊าซ
    Public Const TaskLetter = 16             '16 หน้าจอพิมพ์สติ๊กเกอร์ซองจดหมาย
    Public Const TaskEMail = 17             '17 หน้าจอจัดการส่ง E-Mail
    Public Const TaskRptIntranet = 18             '18 หน้าจอรายงานผู้ใช้ระบบ (Intranet)
    Public Const TaskRptInternet = 19             '19 หน้าจอรายงานผู้ใช้ระบบ (Internet)
    Public Const TaskEmergencyData = 20             '20 หน้าจอข้อมูลเหตุการณ์ฉุกเฉิน
    Public Const TaskAnnounceData = 21             '21 หน้าจอข้อมูลเอกสารเผยแพร่
    Public Const TaskRoleData = 22             '22 หน้าจอข้อมูลกลุ่มผู้ใช้ระบบ (Intranet)
    Public Const TaskUserIntranet = 23             '23 หน้าจอข้อมูลผู้ใช้ระบบ (Intranet)
    Public Const TaskUserInternet = 24             '24 หน้าจอข้อมูลผู้ใช้ระบบ (Internet)
    Public Const TaskAudit = 25            '25 หน้าจอข้อมูล Audit
    Public Const TaskException = 26        '26 หน้าจอข้อมูล Exception

    'ActionType
    Public Const actNone = 0    ' default
    Public Const actRead = 1    ' ค้นหา, ดูข้อมูล
    Public Const actModify = 2   'แก้ไขข้อมูล
    Public Const actConfirm = 4   'ยืนยันข้อมูล


    Public gUSER_NAME

    Public Const CharList = " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_"
    Public Const CharCount = 64
    Public Const MaxKeyLen = 10

    Function CheckRole(ByVal TASK_ID As Integer)
        If Not IsAuthorized(TASK_ID, actRead) Then
            HttpContext.Current.Response.Redirect("../noRight.aspx")
        End If
    End Function

    Function CanDo(ByVal TASK_ID As Integer, ByVal Action As Integer, Optional ByVal Permits As Object = Nothing)
        CanDo = IsAuthorized(TASK_ID, Action, Permits)
    End Function

    Function CannotDo(ByVal TASK_ID As Integer, ByVal Action As Integer, Optional ByVal Permits As Object = Nothing)
        CannotDo = True
        If IsAuthorized(TASK_ID, Action, Permits) Then
            CannotDo = False
        End If
    End Function

    Function IsAuthorized(ByVal TASK_ID As Integer, ByVal Action As Integer, Optional ByVal Permissions As Object = Nothing)
        Dim P, RIGHTS
        P = 0
        If Not Permissions = Nothing Then
            RIGHTS = Permissions
        Else
            RIGHTS = HttpContext.Current.Session("RIGHTS") & ""
        End If
        P = Asc(Mid(RIGHTS, TASK_ID, 1) & "@") - 64
        IsAuthorized = ((Action And P) <> 0)
    End Function

    'Function IsAuthorized(ByVal TASK_ID, ByVal Action, ByVal Permit)
    '    Dim P
    '    P = 0
    '    If Not Permit = Nothing Then
    '        P = Asc(Mid(Permit, TASK_ID, 1) & "@") - 64
    '    End If
    '    IsAuthorized = ((Action And P) <> 0)
    'End Function
    'Function CannotDo(ByVal TASK_ID, ByVal Action, ByVal Permit)
    '    CannotDo = True
    '    If IsAuthorized(TASK_ID, Action, Permit) Then
    '        CannotDo = False
    '    End If
    'End Function

    ''=================================================================
    'Function CanDo(ByVal TASK_ID, ByVal Action, ByVal Permit)
    '    CanDo = IsAuthorized(TASK_ID, Action, Permit)
    'End Function

    ''=================================================================
    ''function แสดงค่าตามตัวแปร show เช่น link file หรือ msgbox
    ''   ในกรณีที่มีสิทธิ์  แต่ในกรณีไม่มีสิทธิ์จะแสดงข้อความเตือน
    'Function ShowCanDo(ByVal TASK_ID, ByVal Action, ByVal Show, ByVal Permit)
    '    If IsAuthorized(TASK_ID, Action, Permit) Then
    '        ShowCanDo = " '" & Show & "' "
    '    Else
    '        ShowCanDo = " 'VBScript:Alert(""  ไม่มีสิทธิ์ทำงานนี้!  "")'"
    '    End If
    'End Function

    '=================================================================
    ' Function สำหรับ เข้ารหัส รหัสผ่าน ก่อนบันทึกลงฐานข้อมูล
    Function Encrypted(ByVal Key1, ByVal Key2) As String
        Dim I
        Dim X
        Dim S
        Key1 = Trim(CStr(Key1))
        Key2 = Trim(CStr(Key2))
        X = 55
        For I = 1 To 10
            If I > 10 - Len(Key1) Then
                X = (X + I) Xor Asc(Mid(Key1, 10 - I + 1, 1))
            Else
                X = X Xor I
            End If
            If I <= Len(Key2) Then
                X = X Xor Asc(Mid(Key2, I, 1))
            Else
                X = X Xor (I * 3)
            End If
            X = X And 127
            If X = 124 Then
                X = 125
            ElseIf (X < 32) Then
                X = X + 32
            End If
            If X = 39 Then X = 40
            S = S & Chr(X)
        Next
        Encrypted = S
    End Function


    Public Function Key2Char(ByVal num) As String
        Key2Char = Mid(CharList, (num Mod CharCount) + 1, 1)
    End Function

    Public Function Key2Num(ByVal Key As String) As Integer
        Key2Num = InStr(CharList, Key) - 1
    End Function


    Public Function DecodeKey(ByVal SecretKey As String, ByVal EncodedKey As String) As String
        Dim X As Integer, X0 As Integer
        Dim S As String, t As String
        Dim num As Integer
        Dim Data As String
        Dim I As Integer
        Try
            If Len(EncodedKey) <> MaxKeyLen + 3 Then Exit Function
            Dim c As String = " "

            S = Right(c.PadRight(MaxKeyLen - 1, " ") + SecretKey + SecretKey + SecretKey + SecretKey, MaxKeyLen)
            X = Key2Num(Mid(EncodedKey, MaxKeyLen + 2, 1)) * CharCount + Key2Num(Mid(EncodedKey, MaxKeyLen + 1, 1))
            Data = ""
            For I = MaxKeyLen To 1 Step -1
                num = (CharCount + (Key2Num(Mid(EncodedKey, I, 1)) + 55 + Key2Num(Mid(S, I, 1)) - X) Mod CharCount) Mod CharCount
                t = Key2Char(num) + t
                X = X - 55 - Key2Num(Mid(S, I, 1)) + num
            Next I
            DecodeKey = Right(t, (CharCount * 100 + Key2Num(Right(EncodedKey, 1)) - X) Mod CharCount)
        Catch ex As Exception
            DecodeKey = ""
        End Try

    End Function


End Module
