Imports System.Data
Imports System.Data.OleDb
Imports System.Globalization
Imports System.Threading
Module PackageDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function packageHTML(ByVal package As Queue) As String
        Dim SQL As String
        Dim i As Integer, n As Integer = package.Count
        Dim myPackage As Package

        myPackage = package.Dequeue

        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width=""174"" height=""78"" rowspan='" & n & "'><div align=""center"">" & myPackage.Package_Name & "</div></td>"
        SQL = SQL & "             <td width=""173"" height=""78"" rowspan='" & n & "'><div align=""center"">" & myPackage.Package_AreaStop & "</div></td>"
        SQL = SQL & "             <td width=""108"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
        SQL = SQL & "             <td width=""65"" height=""26""></td>"
        SQL = SQL & "             <td width=""103"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
        SQL = SQL & "             <td width=""70"" height=""26""></td>"
        SQL = SQL & "             </tr>"

        For i = 0 To n - 2
            myPackage = package.Dequeue
            SQL = SQL & "           <tr>"
            SQL = SQL & "             <td width=""108"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
            SQL = SQL & "             <td width=""65"" height=""26""></td>"
            SQL = SQL & "             <td width=""103"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
            SQL = SQL & "             <td width=""70"" height=""26""></td>"
            SQL = SQL & "             </tr>"
        Next

        Return SQL
    End Function
    Function packageSelectionHTML(ByVal package As Queue) As String
        Dim SQL As String
        Dim i As Integer, n As Integer = package.Count
        Dim myPackage As Package
        Dim price As String

        myPackage = package.Dequeue

        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width=""115"" height=""78"" rowspan='" & n & "'><div align=""center"">" & myPackage.Package_Name & "</div></td>"
        SQL = SQL & "             <td width=""115"" height=""78"" rowspan='" & n & "'><div align=""center"">" & myPackage.Package_AreaStop & "</div></td>"
        SQL = SQL & "             <td width=""75"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
        SQL = SQL & "             <td width=""40"" height=""26""></td>"
        If myPackage.Package_Price = 0 Then
            price = "©цу"
        Else
            price = myPackage.Package_Price
        End If
        SQL = SQL & "             <td width=""71"" height=""26""><div align=""right"">" & price & "</div></td>"
        SQL = SQL & "             <td width=""44"" height=""26""></td>"
        'SQL = SQL & "             <td width=""71"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
        'SQL = SQL & "             <td width=""44"" height=""26""></td>"

        SQL = SQL & "             <td width=""115"" height=""26""><div align=""center"">"
        SQL = SQL & "             <input type=""radio"" name=""package"" value=" & myPackage.Package_Id & " onClick=""disableBtn('next_page',false);"">"
        SQL = SQL & "             </div></td>"
        SQL = SQL & "             </tr>"

        For i = 0 To n - 2
            myPackage = package.Dequeue
            SQL = SQL & "           <tr>"
            SQL = SQL & "             <td width=""75"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
            SQL = SQL & "             <td width=""40"" height=""26""></td>"
            If myPackage.Package_Price = 0 Then
                price = "©цу"
            Else
                price = myPackage.Package_Price
            End If
            SQL = SQL & "             <td width=""71"" height=""26""><div align=""right"">" & price & "</div></td>"
            SQL = SQL & "             <td width=""44"" height=""26""></td>"
            'SQL = SQL & "             <td width=""71"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
            'SQL = SQL & "             <td width=""44"" height=""26""></td>"
            SQL = SQL & "             <td width=""115"" height=""26""><div align=""center"">"
            SQL = SQL & "             <input type=""radio"" name=""package"" value=" & myPackage.Package_Id & " onClick=""disableBtn('next_page',false);"">"
            SQL = SQL & "             </div></td>"
            SQL = SQL & "             </tr>"
        Next

        Return SQL
    End Function


    Function getPackageName(ByVal package_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim package_name As String


        sql = "SELECT Package_Name FROM Package WHERE (Package_Id = " & package_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            package_name = Ans_ID.Item("Package_Name")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return package_name
    End Function
    Function getPackageWeek(ByVal package_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim Package_Week As String


        sql = "SELECT Package_Week FROM Package WHERE (Package_Id = " & package_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            Package_Week = Ans_ID.Item("Package_Week")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return Package_Week
    End Function
    Function getPackagePrice(ByVal package_id As Integer) As Double
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim Package_Price As String


        sql = "SELECT Package_Price FROM Package WHERE (Package_Id = " & package_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            Package_Price = Ans_ID.Item("Package_Price")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return Package_Price
    End Function
    Function getPackagePic(ByVal package_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim Package_Pic As String


        sql = "SELECT Package_Pic FROM Package WHERE (Package_Id = " & package_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            Package_Pic = Ans_ID.Item(0)
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return Package_Pic
    End Function
    Function getPackageArea(ByVal package_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim Package_Pic As String


        sql = "SELECT isnull(Package_AreaStop,0) as area FROM Package WHERE (Package_Id = " & package_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            Package_Pic = Ans_ID.Item(0)
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return Package_Pic
    End Function
    Function getCategory(ByVal package_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim category As String


        sql = "SELECT Package.Package_Category FROM Package Where Package_Id = " & package_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            category = Ans_ID.Item(0)
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return category
    End Function
    'Function getPackageDiscount(ByVal noticeid As Integer, ByVal newStart As DateTime) As string
    Function getPackOldStart(ByVal packWeek As Integer, ByVal noticeEnd As DateTime) As DateTime
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As DateTime

        sql = "SELECT DATEADD(m,-" & packWeek & ",'" & noticeEnd.ToString("MM/dd/yyyy") & "') as REM"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            result = Ans_ID.Item("REM")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        'Return sql
        Return result
    End Function
    Function getPackageDiscount(ByVal noticeid As Integer, ByVal newStart As DateTime) As Double
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As Double

        '
        'sql = "SELECT  DATEDIFF(day, Notice.Notice_StartDate, Notice.Notice_StopDate) AS totalDiff, "
        'sql = sql & " Package.Package_Price / DATEDIFF(day, Notice.Notice_StartDate, Notice.Notice_StopDate) AS perDay,"
        'sql = sql & " isnull(DATEDIFF(day,Notice.Notice_StopDate,'" & newStart.ToString("MM/dd/yyyy") & "') * "
        'sql = sql & " (Package.Package_Price / DATEDIFF(day, Notice.Notice_StartDate, Notice.Notice_StopDate)),0) AS REM"
        'sql = sql & " FROM   Notice INNER JOIN"
        'sql = sql & " Package ON Notice.Notice_PackageId = Package.Package_Id"
        'sql = sql & " Where Notice.Notice_Id = " & noticeid

        sql = "SELECT  DATEDIFF(day, dateadd(m,(Package.Package_Week*-1),Notice.Notice_StopDate), Notice.Notice_StopDate) AS totalDiff, "
        sql = sql & " (Package.Package_Price*0.1 / DATEDIFF(day, dateadd(m,(Package.Package_Week*-1),Notice.Notice_StopDate), Notice.Notice_StopDate))/0.1 AS perDay,"
        sql = sql & " isnull(DATEDIFF(day,Notice.Notice_StopDate,'" & newStart.ToString("MM/dd/yyyy") & "') * "
        sql = sql & " ((Package.Package_Price*0.1 / DATEDIFF(day, dateadd(m,(Package.Package_Week*-1),Notice.Notice_StopDate), Notice.Notice_StopDate)))/0.1,0) AS REM"
        sql = sql & " FROM   Notice INNER JOIN"
        sql = sql & " Package ON Notice.Notice_PackageId = Package.Package_Id"
        sql = sql & " Where  Notice.Notice_Id = " & noticeid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            result = Ans_ID.Item("REM")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        'Return sql
        Return result
    End Function

    Function getPackages(ByVal cat As Integer, ByVal type As Integer, ByVal package_name As String) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim packages As Package
        Dim QPackage As New Queue


        sql = "SELECT Package_Id,Package_Name, Package_AreaStop, Package_Week,Package_Price FROM Package WHERE (Package_Category = " & cat & ") AND (Package_Type = " & type & ") AND (Package_Name ='" & package_name & "') ORDER BY Package_AreaStop, Package_Week"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            packages.Package_Id = Ans_ID.Item("Package_Id")
            packages.Package_Name = Ans_ID.Item("Package_Name")
            packages.Package_AreaStop = Ans_ID.Item("Package_AreaStop")
            packages.Package_Week = Ans_ID.Item("Package_Week")
            packages.Package_Price = Ans_ID.Item("Package_Price")
            QPackage.Enqueue(packages)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return QPackage
    End Function
    Function getPackageGroup(ByVal cat As Integer, ByVal type As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim packages As Package
        Dim QPackage As New Queue


        sql = "SELECT Package_Name ,package_areastop FROM Package WHERE (Package_Category = " & cat & ") AND (Package_Type = " & type & ") group by package_name,package_areastop order by package_areastop"
        sql = sql & ""
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            packages.Package_Name = Ans_ID.Item("Package_Name")
            packages.Package_AreaStop = Ans_ID.Item("package_areastop")

            QPackage.Enqueue(packages)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return QPackage
    End Function
    Function getPackageType(ByVal packageid As Integer) As PackageNType
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim packages As PackageNType


        sql = "SELECT Package_Type.Package_TypeDesc, Package.Package_Name, Package.Package_AreaStop, Package.Package_Week, Package.Package_Price FROM Package INNER JOIN Cat_PackageType ON Package.Package_Category = Cat_PackageType.Cat_Pack INNER JOIN Package_Type ON Cat_PackageType.Cat_PackType = Package_Type.Package_Type WHERE (Package.Package_Type = 2) AND (Package.Package_Id = " & packageid & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            packages.Package_TypeDesc = Ans_ID.Item(0)
            packages.Package_Name = Ans_ID.Item(1)
            packages.Package_AreaStop = Ans_ID.Item(2)
            packages.Package_Week = Ans_ID.Item(3)
            packages.Package_Price = Ans_ID.Item(4)

        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return packages
    End Function

    Function getPackage(ByVal packageid As Integer) As Package
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim packages As Package


        sql = "SELECT Package_Id,Package_Name, Package_AreaStop, Package_Week,Package_Price,Package_Category FROM Package WHERE (Package_Id =" & packageid & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            packages.Package_Id = Ans_ID.Item("Package_Id")
            packages.Package_Name = Ans_ID.Item("Package_Name")
            packages.Package_AreaStop = Ans_ID.Item("Package_AreaStop")
            packages.Package_Week = Ans_ID.Item("Package_Week")
            packages.Package_Price = Ans_ID.Item("Package_Price")
            packages.Package_Category = Ans_ID.Item("Package_Category")
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return packages
    End Function

    Function listPackageGroup(ByVal cat As Integer, ByVal type As Integer, ByVal package_name As String) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim QPackage As New Queue


        sql = "SELECT Package_Name,convert(decimal(4,0),right(package_name,len(package_name)-1)) as sort FROM Package WHERE (Package_Category = " & cat & ") AND (Package_Type = " & type & ") /*AND (Package_Name <>'" & package_name & "')*/ group BY Package_Name order by convert(decimal(4,0),right(package_name,len(package_name)-1)) asc"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            QPackage.Enqueue(Ans_ID.Item("Package_Name"))

        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return QPackage
    End Function
    Function listPackageGroup2(ByVal cat As Integer, ByVal type As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim QPackage As New Queue


        sql = "SELECT Package_Name,convert(decimal(4,0),right(package_name,len(package_name)-1)) as sort FROM Package WHERE (Package_Category = " & cat & ") AND (Package_Type = " & type & ")  group BY Package_Name order by convert(decimal(4,0),right(package_name,len(package_name)-1)) asc"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            QPackage.Enqueue(Ans_ID.Item("Package_Name"))

        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return QPackage
    End Function

    Function listChangePackage(ByVal cat As Integer, ByVal type As Integer, ByVal package_name As String) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim packages As Package
        Dim QPackage As New Queue


        sql = "SELECT Package_Id,Package_Name, Package_AreaStop, Package_Week,Package_Price FROM Package WHERE (Package_Category = " & cat & ") AND (Package_Type = " & type & ") AND (Package_Name <>'" & package_name & "') ORDER BY Package_AreaStop, Package_Week"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            packages.Package_Id = Ans_ID.Item("Package_Id")
            packages.Package_Name = Ans_ID.Item("Package_Name")
            packages.Package_AreaStop = Ans_ID.Item("Package_AreaStop")
            packages.Package_Week = Ans_ID.Item("Package_Week")
            packages.Package_Price = Ans_ID.Item("Package_Price")
            QPackage.Enqueue(packages)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return QPackage
    End Function

    Structure Package
        Dim Package_Id As Integer
        Dim Package_Category As Integer
        Dim Package_Name As String
        Dim Package_AreaStart As Integer
        Dim Package_AreaStop As Integer
        Dim Package_Pic As Integer
        Dim Package_StartDate As Date
        Dim Package_StopDate As Date
        Dim Package_Week As Integer
        Dim Package_Type As Integer
        Dim Package_Price As Double

    End Structure
    Structure PackageNType
        Dim Package_TypeDesc As String
        Dim Package_Name As String
        Dim Package_AreaStop As Integer
        Dim Package_StopDate As Date
        Dim Package_Week As Integer
        Dim Package_Price As Double

    End Structure

End Module
