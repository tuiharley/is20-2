Imports System.Data
Imports System.Data.OleDb
Imports System.Globalization
Imports System.Threading

Module PackageDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function packageSelectionHTML(ByVal package As Queue) As String
        Dim SQL As String
        Dim i As Integer, n As Integer = package.Count
        Dim myPackage As Package

        myPackage = package.Dequeue

        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width=""115"" height=""78"" rowspan='" & n & "'><div align=""center"">" & myPackage.Package_Name & "</div></td>"
        SQL = SQL & "             <td width=""115"" height=""78"" rowspan='" & n & "'><div align=""center"">" & myPackage.Package_AreaStop & "</div></td>"
        SQL = SQL & "             <td width=""75"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
        SQL = SQL & "             <td width=""40"" height=""26""></td>"
        SQL = SQL & "             <td width=""71"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
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
            SQL = SQL & "             <td width=""71"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
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
    Function getPckStop(ByVal package_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim Package_Pic As String


        sql = "SELECT Package_AreaStop FROM Package WHERE (Package_Id = " & package_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            Package_Pic = Ans_ID.Item("Package_AreaStop")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return Package_Pic
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

    Function getPackages() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim packages As Package
        Dim QPackage As New Queue


        sql = "SELECT     Package.Package_Id,Package.Package_Category, Category.Category_Name, Package.Package_Name, Package.Package_AreaStop, "
        sql = sql & " Package.Package_StartDate, Package.Package_StopDate, Package.Package_Week,Package.Package_Type, "
        sql = sql & " REPLACE(REPLACE(Package.Package_Type, 1, 'บุคคลธรรมดา'), 2, 'ผู้ประกอบการ') AS type, Package.Package_Price"
        sql = sql & " FROM         Package INNER JOIN"
        sql = sql & " Category ON Package.Package_Category = Category.Category"
        sql = sql & " ORDER BY REPLACE(REPLACE(Package.Package_Type, 1, 'บุคคลธรรมดา'), 2, 'ผู้ประกอบการ'), Category.Category_Name, Package.Package_AreaStop"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            packages.Package_Id = Ans_ID.Item("Package_Id")
            packages.Package_Category = Ans_ID.Item("Package_Category")
            packages.Package_Category_txt = Ans_ID.Item("Category_Name")
            packages.Package_Name = Ans_ID.Item("Package_Name")
            packages.Package_AreaStop = checkNullDBNum(Ans_ID.Item("Package_AreaStop"))
            packages.Package_StartDate = checkNullDBDate(Ans_ID.Item("Package_StartDate"))
            packages.Package_StopDate = checkNullDBDate(Ans_ID.Item("Package_StopDate"))
            packages.Package_Week = Ans_ID.Item("Package_Week")
            packages.Package_Type = Ans_ID.Item("Package_Type")
            packages.Package_Type_txt = Ans_ID.Item("type")
            packages.Package_Price = Ans_ID.Item("Package_Price")
            QPackage.Enqueue(packages)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return QPackage
    End Function
    Function getPackages2(ByVal cat As Integer, ByVal type As Integer, ByVal package_name As String) As Queue
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
    Function getPackage(ByVal packageid As Integer) As Package
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim packages As Package


        sql = "SELECT     Package.Package_Id,Package.Package_Category, Category.Category_Name, Package.Package_Name, Package.Package_AreaStop, "
        sql = sql & " Package.Package_StartDate, Package.Package_StopDate, Package.Package_Week,Package.Package_Type, "
        sql = sql & " REPLACE(REPLACE(Package.Package_Type, 1, 'บุคคลธรรมดา'), 2, 'ผู้ประกอบการ') AS type, Package.Package_Price"
        sql = sql & " FROM         Package INNER JOIN"
        sql = sql & " Category ON Package.Package_Category = Category.Category"
        sql = sql & " WHERE Package.Package_Id = " & packageid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then

            packages.Package_Id = Ans_ID.Item("Package_Id")
            packages.Package_Category = Ans_ID.Item("Package_Category")
            packages.Package_Category_txt = Ans_ID.Item("Category_Name")
            packages.Package_Name = Ans_ID.Item("Package_Name")
            packages.Package_AreaStop = checkNullDBNum(Ans_ID.Item("Package_AreaStop"))
            packages.Package_StartDate = checkNullDBDate(Ans_ID.Item("Package_StartDate"))
            packages.Package_StopDate = checkNullDBDate(Ans_ID.Item("Package_StopDate"))
            packages.Package_Week = Ans_ID.Item("Package_Week")
            packages.Package_Type = Ans_ID.Item("Package_Type")
            packages.Package_Type_txt = Ans_ID.Item("type")
            packages.Package_Price = Ans_ID.Item("Package_Price")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return packages
    End Function

    Function getMaxPackage() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim category As Integer


        sql = "SELECT max(Package.Package_Id) + 1 FROM Package "
        mycommand = New OleDbCommand(sql, myconn)

        If IsDBNull(mycommand.ExecuteScalar()) Then
            category = 1
        Else
            category = mycommand.ExecuteScalar()
        End If

        mycommand.Dispose()
        myconn.Close()

        Return category
    End Function
    Function addPackage(ByVal myPack As Package) As Boolean
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer
        Dim stDate As DateTime, enDate As String
        Dim packid As Integer = getMaxPackage()



        stDate = myPack.Package_StartDate
        If myPack.Package_StopDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateEn") Then
            enDate = "null"
        Else
            enDate = "CONVERT(DATETIME, '" & myPack.Package_StopDate.ToString("yyyy-MM-dd HH:mm:ss") & "', 120)"
        End If

        sql = "INSERT INTO Package"
        sql = sql & "(Package_Id, Package_Category, Package_Name, Package_AreaStop, Package_StartDate, Package_StopDate, Package_Week, Package_Type, "
        sql = sql & " Package_Price)"
        sql = sql & " VALUES (" & packid & ", " & myPack.Package_Category & ","
        sql = sql & " '" & myPack.Package_Name & "', " & myPack.Package_AreaStop & ","
        sql = sql & " CONVERT(DATETIME, '" & stDate.ToString("yyyy-MM-dd HH:mm:ss") & "', 120),"
        sql = sql & enDate & ", " & myPack.Package_Week & ", " & myPack.Package_Type & ", " & myPack.Package_Price & ")"
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        Return True
    End Function
    Sub editPackage(ByVal myPack As Package)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim stDate As DateTime, enDate As String

        stDate = myPack.Package_StartDate
        If myPack.Package_StopDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateEn") Then
            enDate = "null"
        Else
            enDate = "CONVERT(DATETIME, '" & myPack.Package_StopDate.ToString("yyyy-MM-dd HH:mm:ss") & "', 120)"
        End If


        sql = " UPDATE Package"
        sql = sql & " SET Package_Category = " & myPack.Package_Category & ", Package_Name = '" & myPack.Package_Name & "', "
        sql = sql & " Package_AreaStop = " & myPack.Package_AreaStop & ", "
        sql = sql & " Package_StartDate = CONVERT(DATETIME, '" & stDate.ToString("yyyy-MM-dd HH:mm:ss") & "', 120),"
        sql = sql & " Package_StopDate = " & enDate & ","
        sql = sql & " Package_Week = " & myPack.Package_Week & ", "
        sql = sql & " Package_Type = " & myPack.Package_Type & ", Package_Price = " & FormatNumber(myPack.Package_Price, 2, , TriState.False, TriState.False)
        sql = sql & " WHERE Package.Package_id = " & myPack.Package_Id
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub



    Structure Package
        Dim Package_Id As Integer
        Dim Package_Category As Integer
        Dim Package_Category_txt As String
        Dim Package_Name As String
        Dim Package_AreaStart As Integer
        Dim Package_AreaStop As Integer
        Dim Package_Pic As Integer
        Dim Package_StartDate As DateTime
        Dim Package_StopDate As DateTime
        Dim Package_Week As Integer
        Dim Package_Type As Integer
        Dim Package_Type_txt As String
        Dim Package_Price As Double

    End Structure

    Structure PackageNType
        Dim Package_TypeDesc As String
        Dim Package_Name As String
        Dim Package_AreaStop As Integer
        Dim Package_StopDate As Date
        Dim Package_Week As Integer
        Dim Package_Price As Integer

    End Structure
End Module
