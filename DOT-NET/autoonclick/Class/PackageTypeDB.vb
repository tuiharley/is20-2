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


        sql = "select * from package_type where show = 1 and package_type not in (SELECT DISTINCT Cat_PackageType.Cat_PackType FROM Notice INNER JOIN Cat_PackageType ON Notice.Notice_Category = Cat_PackageType.Cat_Pack WHERE (Notice.Notice_MemberId = " & cust_id & ")) Order by Package_Type "
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
    Structure PackageType
        Dim Package_Type As Integer
        Dim Package_TypeDesc As String

    End Structure

End Module
