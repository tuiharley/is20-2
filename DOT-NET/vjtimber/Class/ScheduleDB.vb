Imports System.Data
Imports System.Data.OleDb
Imports System.Globalization
Imports System.Threading

Module ScheduleDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    
    Function getSchDS(Optional ByVal cond As String = "") As DataSet
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim da As OleDbDataAdapter
        Dim sql As String
        Dim myDS As New DataSet

        sql = "SELECT   * "
        sql &= " FROM SCHEDULE_TASK "
        If cond <> "" Then
            sql &= " WHERE " & cond
        End If
        da = New OleDbDataAdapter(sql, myconn)
        da.Fill(myDS, "Schedule_Task")

        da.Dispose()
        myconn.Close()

        Return myDS
    End Function
    Sub addNewSch(ByVal MySchedule As Schedule_Task)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        DBTrans = myconn.BeginTransaction()
        mycommand.Connection = myconn
        mycommand.Transaction = DBTrans

        Dim sql As String
        Dim inputDate As String
        inputDate = "CONVERT(DATETIME, '" & MySchedule.SCH_DATE.ToString("yyyy-MM-dd hh:mm:ss") & "', 120)"


        Try
            sql = "INSERT INTO SCHEDULE_TASK"
            sql = sql & "(SCH_DATE, SCH_TOPIC, SCH_DESC)"
            sql = sql & " VALUES(" & inputDate & "," & checkNullstr(MySchedule.SCH_TOPIC)
            sql = sql & " ," & checkNullstr(MySchedule.SCH_DESC) & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()


            DBTrans.Commit()
        Catch
            DBTrans.Rollback()
        End Try



        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub delSch(ByVal sch_id As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        sql = "DELETE FROM SCHEDULE_TASK WHERE SCH_ID = " & sch_id

        mycommand.CommandText = sql
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub updateSch(ByVal MySchedule As Schedule_Task)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE SCHEDULE_TASK "
        sql &= " SET SCH_DATE = " & MySchedule.SCH_DATE
        sql &= " , SCH_TOPIC = " & checkNullstr(MySchedule.SCH_TOPIC)
        sql &= " , SCH_DESC = " & checkNullstr(MySchedule.SCH_DESC)
        sql &= " WHERE SCH_ID = " & MySchedule.SCH_ID


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Function getMinYear() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim MinYear As Integer

        sql = "SELECT MIN(YEAR(SCH_DATE)) as MIN_YEAR"
        sql = sql & " FROM  SCHEDULE_TASK "
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            MinYear = Ans_ID.Item("MIN_YEAR")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return MinYear
    End Function


    Structure Schedule_Task
        Dim SCH_ID As Integer
        Dim SCH_DATE As DateTime
        Dim SCH_TOPIC As String
        Dim SCH_DESC As String
    End Structure
End Module
