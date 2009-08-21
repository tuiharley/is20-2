Imports System.Data
Imports System.Data.OleDb

Module PackageTypeDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function getPackageType(ByVal cust_id As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim packages As PackageType
        Dim QPackage As New Queue


        sql = "select * from package_type where package_type not in (SELECT DISTINCT Cat_PackageType.Cat_PackType FROM Notice INNER JOIN Cat_PackageType ON Notice.Notice_Category = Cat_PackageType.Cat_Pack WHERE (Notice.Notice_MemberId = " & cust_id & ")) Order by Package_Type "
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            packages.Package_Type = Ans_ID.Item(0)
            packages.Package_TypeDesc = Ans_ID.Item(1)
            QPackage.Enqueue(packages)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return QPackage
    End Function
    Function getPackTypeName(ByVal packType_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim Category_Name As String


        sql = "SELECT Package_TypeDesc FROM Package_Type Where Package_Type = " & packType_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            Category_Name = Ans_ID.Item("Package_TypeDesc")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return Category_Name
    End Function

    Function getPackTypes() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myCat As PackType
        Dim myQCat As New Queue


        sql = "select  Package_Type, Package_TypeDesc "
        sql = sql & " from   Package_Type"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read()

            myCat.PackType_ID = Ans_ID.Item("Package_Type")
            myCat.PackType_Desc = Ans_ID.Item("Package_TypeDesc")
            myQCat.Enqueue(myCat)
        Loop

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return myQCat
    End Function
    Function getPackType(ByVal packageTypeId As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim packages As String


        sql = "select Package_TypeDesc From Package_Type where Package_Type = " & packageTypeId
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            packages = Ans_ID.Item("Package_TypeDesc")
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return packages
    End Function

    Structure PackType
        Dim PackType_ID As Integer
        Dim PackType_Desc As String

    End Structure
    Structure PackageType
        Dim Package_Type As Integer
        Dim Package_TypeDesc As String

    End Structure


End Module
