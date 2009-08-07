Imports System.Data
Imports System.Data.OleDb
Imports System.IO
Module JobDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getMaxJobID() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(Job_Id)+1 as cust_id FROM Job"
        mycommand = New OleDbCommand(sql, myconn)

        If IsDBNull(mycommand.ExecuteScalar()) Then
            custid = 1
        Else
            custid = mycommand.ExecuteScalar()
        End If

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function
    Function addNewJOB(ByVal myJob As Job) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        DBTrans = myconn.BeginTransaction()
        mycommand.Connection = myconn
        mycommand.Transaction = DBTrans

        Dim sql As String
        Dim i As Integer
        Dim carid As Integer = getMaxJobID()



        Try
            sql = " INSERT INTO JOB"
            sql = sql & "(Job_Id, Job_Pos, Job_Other, Job_Education, Job_Branch, Job_Salary, Job_SalaryType, Job_Num, Job_Phone, Job_Location, Job_Province, Job_District, "
            sql = sql & " Job_Information,Job_Post) "
            sql = sql & " VALUES (" & carid & ", " & myJob.Job_Pos & ", " & checkNullstr(myJob.Job_Other)
            sql = sql & ", " & checkNullstr(myJob.Job_Education) & ", " & checkNullstr(myJob.Job_Branch)
            sql = sql & "," & checkNullNum(myJob.Job_Salary) & ", " & checkNullstr(myJob.Job_SalaryType)
            sql = sql & "," & checkNullNum(myJob.Job_Num) & ", " & checkNullstr(myJob.Job_Phone)
            sql = sql & "," & checkNullstr(myJob.Job_Location) & ", " & checkNullNum(myJob.Job_Province)
            sql = sql & "," & checkNullNum(myJob.Job_District) & ", " & checkNullstr(myJob.Job_Information)
            sql = sql & ",getdate())"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()


            DBTrans.Commit()
        Catch
            DBTrans.Rollback()
        End Try



        mycommand.Dispose()
        myconn.Close()

        Return carid
    End Function

    
    Function getJob(ByVal Jobid As Integer) As Job
        Dim jobInFo As New Job

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM JOB WHERE Job_Id = " & Jobid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            jobInFo.Job_Id = Ans_ID.Item("Job_Id")
            jobInFo.Job_Pos = String_chk.checkNullDBNum(Ans_ID.Item("Job_Pos"))
            jobInFo.Job_Other = String_chk.checkNullDBstr(Ans_ID.Item("Job_Other"))
            jobInFo.Job_Education = String_chk.checkNullDBstr(Ans_ID.Item("Job_Education"))
            jobInFo.Job_Branch = String_chk.checkNullDBstr(Ans_ID.Item("Job_Branch"))
            jobInFo.Job_Salary = String_chk.checkNullDBPrice(Ans_ID.Item("Job_Salary"))
            jobInFo.Job_SalaryType = String_chk.checkNullDBstr(Ans_ID.Item("Job_SalaryType"))
            jobInFo.Job_Num = String_chk.checkNullDBNum(Ans_ID.Item("Job_Num"))
            jobInFo.Job_Phone = String_chk.checkNullDBstr(Ans_ID.Item("Job_Phone"))
            jobInFo.Job_Location = String_chk.checkNullDBstr(Ans_ID.Item("Job_Location"))
            jobInFo.Job_Province = String_chk.checkNullDBNum(Ans_ID.Item("Job_Province"))
            jobInFo.Job_District = String_chk.checkNullDBNum(Ans_ID.Item("Job_District"))
            jobInFo.Job_Information = String_chk.checkNullDBstr(Ans_ID.Item("Job_Information"))
            jobInFo.Job_Remark = String_chk.checkNullDBstr(Ans_ID.Item("Job_Remark"))
        End If

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return jobInFo
    End Function

    Function getNewestJob() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myQCar As New Queue
        Dim myJob As RandomJob

        sql = sql & " SELECT     TOP 5 Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Customer.Customer_Id, Job_Position.Position_Name, "
        sql = sql & "                       Job.Job_Province, Job.Job_District, Job.Job_Id, Customer.Customer_Name"
        sql = sql & " FROM         Job_Position INNER JOIN"
        sql = sql & "                       Job ON Job_Position.Position_ID = Job.Job_Pos INNER JOIN"
        sql = sql & "                       NoticeDetail INNER JOIN"
        sql = sql & "                       Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN"
        sql = sql & "                       Customer ON Notice.Notice_MemberId = Customer.Customer_Id ON Job.Job_Id = NoticeDetail.NoticeDetail_DataId"
        sql = sql & " WHERE     (Notice.Notice_Category = 6) AND (NoticeDetail.Detail_show = 1) "
        sql = sql & " AND (Notice.Notice_Show = 1) "
        sql = sql & " AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1)"
        sql = sql & " ORDER BY Job.Job_Post DESC"
        'WHERE     (Notice.Notice_Category = 6) AND (Notice.Notice_Show = 1) 
        'AND (Notice.Notice_Status IN (2, 3)) 
        'AND (DATEDIFF(Day, GETDATE(),Notice.Notice_StopDate) >= 0) 
        'AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) 
        'AND (NoticeDetail.Detail_show = 1)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myJob.Customer_Username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            myJob.Notice_Id = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            myJob.NoticeDetail_Id = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_Id"))
            myJob.Customer_id = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Id"))
            myJob.Position_Name = String_chk.checkNullDBstr(Ans_ID.Item("Position_Name"))
            myJob.Job_Province = String_chk.checkNullDBNum(Ans_ID.Item("Job_Province"))
            myJob.Job_District = String_chk.checkNullDBNum(Ans_ID.Item("Job_District"))
            myJob.Job_Id = String_chk.checkNullDBNum(Ans_ID.Item("Job_Id"))
            myJob.Customer_Name = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Name"))
            
            myQCar.Enqueue(myJob)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQCar
    End Function

    Sub deleteJob(ByVal Jobid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        sql = "DELETE FROM JOB WHERE Job_Id = " & Jobid

        mycommand.CommandText = sql
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub editJob(ByVal myJob As Job)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE JOB "
        sql = sql & " SET Job_Pos = " & myJob.Job_Pos & ", Job_Other = " & checkNullstr(myJob.Job_Other) & ", Job_Education = " & checkNullstr(myJob.Job_Education) & ", Job_Branch = " & checkNullstr(myJob.Job_Branch)
        sql = sql & ",Job_Salary = " & checkNullNum(myJob.Job_Salary) & ", Job_SalaryType = " & checkNullstr(myJob.Job_SalaryType) & ", Job_Num = " & checkNullNum(myJob.Job_Num)
        sql = sql & ",Job_Phone = " & checkNullstr(myJob.Job_Phone) & ", Job_Location = " & checkNullstr(myJob.Job_Location) & ", Job_Province = " & checkNullNum(myJob.Job_Province) & ", Job_District = " & checkNullNum(myJob.Job_District)
        sql = sql & ",Job_Information = " & checkNullstr(myJob.Job_Information)
        sql = sql & " WHERE  Job_Id = " & myJob.Job_Id
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        'Return sql
    End Sub
    Sub editJobRemark(ByVal myJob As Job)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE JOB "
        sql = sql & " SET Job_Remark = " & checkNullstr(myJob.Job_Remark)
        sql = sql & " WHERE  Job_Id = " & myJob.Job_Id

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        'Return sql
    End Sub
    Function getJobOwnerID(ByVal jobid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT     Notice.Notice_MemberId"
        sql = sql & " FROM         NoticeDetail INNER JOIN"
        sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id"
        sql = sql & " WHERE     (Notice.Notice_Category = 6) AND (NoticeDetail.NoticeDetail_DataId = " & jobid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item("Notice_MemberId")
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement


    End Function


    '--------  Send 2 Friend -------------------
    Function getSend2Fr(ByVal myJob As Job) As String
        Dim picURL As String = ConfigurationSettings.AppSettings("picURL")
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")
        Dim picVD As String = ConfigurationSettings.AppSettings("picVD")
        Dim myCust As A_Customer
        Dim myCustNo As Integer
        Dim SQL As String
        Dim pri As String


        myCustNo = JobDB.getJobOwnerID(myJob.Job_Id)
        myCust = CustomerDB.getA_customer(myCustNo)

        SQL = SQL & " <html>"
        SQL = SQL & " <head>"
        SQL = SQL & " <meta http-equiv='Content-Type' content='text/html; charset=window-874'>"
        SQL = SQL & " <title>AUTO-ONCLICK .explore Mobility</title>"
        SQL = SQL & " <style type='text/css'>"
        SQL = SQL & " <!--"
        SQL = SQL & " body {"
        SQL = SQL & " 	margin-top: 0px;"
        SQL = SQL & " 	margin-bottom: 0px;"
        SQL = SQL & " }"
        SQL = SQL & " -->"
        SQL = SQL & " </style>"
        SQL = SQL & " <link href='" & picURL & "css/css.css' rel='stylesheet' type='text/css'>"
        SQL = SQL & " <style type='text/css'>"
        SQL = SQL & " <!--"
        SQL = SQL & " .style3 {font-weight: bold; font-size: xx-large;}"
        SQL = SQL & " .style4 {"
        SQL = SQL & " 	font-size: x-large;"
        SQL = SQL & " 	font-weight: bold;"
        SQL = SQL & " 	font-family: Arial, Helvetica, sans-serif;"
        SQL = SQL & " }"
        SQL = SQL & " .style5 {font-size: 12px}"
        SQL = SQL & " .style6 {"
        SQL = SQL & " 	font-family: Arial, Helvetica, sans-serif;"
        SQL = SQL & " 	font-size: 11px;"
        SQL = SQL & " }"
        SQL = SQL & " -->"
        SQL = SQL & " </style>"
        SQL = SQL & " </head>"
        SQL = SQL & " "
        SQL = SQL & " <body><table width='650px'  border='0' cellspacing='0' cellpadding='0'>"
        SQL = SQL & "   <tr>"
        SQL = SQL & "     <td height='30'>&nbsp;</td>"
        SQL = SQL & "   </tr>"
        SQL = SQL & "   <tr>"
        SQL = SQL & "     <td><table width='600px'  border='0' align='center' cellpadding='0' cellspacing='0'>"
        SQL = SQL & "       <tr>"
        SQL = SQL & "         <td colspan='2'><div align='right'><img src='" & picURL & "images/main_table/ao_logo_business.jpg' width='119' height='38'></div></td>"
        SQL = SQL & "         </tr>"
        SQL = SQL & "       <tr>"
        Dim mySubQ As New Queue
        mySubQ = InfoQuestionDB.getInfoQuestions(myCust.id)
        Dim myMainB As infoQuestion = InfoQuestionDB.getMainQuestion(myCust.id)

        SQL = SQL & "         <td height='20' colspan='2' class='style6'><strong>&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3627;&#3621;&#3633;&#3585;: </strong>" & JshowIntroMain(myMainB) & "</td>"
        SQL = SQL & "         </tr>"
        SQL = SQL & "       <tr>"
        SQL = SQL & "         <td height='20' colspan='2' class='style6'><strong>&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3648;&#3626;&#3619;&#3636;&#3617;: </strong>" & JshowIntroSub(mySubQ) & "</td>"
        SQL = SQL & "         </tr>"
        SQL = SQL & "       <tr>"
        SQL = SQL & "         <td>&nbsp;</td>"
        SQL = SQL & "         <td>&nbsp;</td>"
        SQL = SQL & "       </tr>"
        SQL = SQL & "       <tr>"
        SQL = SQL & "         <td><img src='" & picURL & "images/objects/no.gif' width='1' height='1'></td>"
        SQL = SQL & "         <td><img src='" & picURL & "images/objects/no.gif' width='1' height='1'></td>"
        SQL = SQL & "       </tr>"
        SQL = SQL & "       <tr>"
        SQL = SQL & "         <td width='350'><table width='284px'  border='0' cellpadding='0' cellspacing='0' class='standard_font'>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width='48%'><img src='" & picURL & "images/objects/no.gif' width='1' height='1'></td>"
        SQL = SQL & "             <td width='4%'><img src='" & picURL & "images/objects/no.gif' width='1' height='1'></td>"
        SQL = SQL & "             <td width='48%' bgcolor='#FFFFFF'><img src='" & picURL & "images/objects/no.gif' width='1' height='1'></td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width='48%' height='20' class='style6' >&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</td>"
        SQL = SQL & "             <td height='20'>&nbsp;</td>"
        Dim myQ As New Queue
        Dim tmp As Position
        Dim txt As String


        myQ = getPosition(myJob.Job_Pos)
        For Each tmp In myQ
            txt = tmp.Position_Name
        Next



        SQL = SQL & "             <td width='48%' height='20' bgcolor='#FFFFFF' class='style6' >" & txt & "</td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td height='20' class='style6' >&#3623;&#3640;&#3602;&#3636;&#3585;&#3634;&#3619;&#3624;&#3638;&#3585;&#3625;&#3634;</td>"
        SQL = SQL & "             <td height='20'>&nbsp;</td>"
        SQL = SQL & "             <td width='48%' height='20' bgcolor='#FFFFFF' class='style6' >" & checkNullStr_Line(myJob.Job_Education) & "</td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width='48%' height='20' class='style6' >&#3626;&#3634;&#3586;&#3634;</td>"
        SQL = SQL & "             <td height='20'>&nbsp;</td>"
        SQL = SQL & "             <td width='48%' height='20' bgcolor='#FFFFFF' >" & checkNullStr_Line(myJob.Job_Branch) & "</td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width='48%' height='20' class='style6' >&#3629;&#3633;&#3605;&#3619;&#3634;&#3588;&#3656;&#3634;&#3592;&#3657;&#3634;&#3591;</td>"
        SQL = SQL & "             <td height='20'>&nbsp;</td>"
        Dim JPrice As String
        If myJob.Job_Salary <> 0 Then
            JPrice = myJob.Job_Salary
            If myJob.Job_SalaryType = "M" Then
                JPrice = JPrice & " เดือน"
            Else
                JPrice = JPrice & " วัน"
            End If
        Else
            JPrice = checkNullStr_Line(myJob.Job_Salary)
        End If
        SQL = SQL & "             <td width='48%' height='20' bgcolor='#FFFFFF' class='style6' >" & JPrice & "</td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width='48%' height='20' class='style6' >&#3592;&#3635;&#3609;&#3623;&#3609;&#3607;&#3637;&#3656;&#3619;&#3633;&#3610;</td>"
        SQL = SQL & "             <td height='20'>&nbsp;</td>"
        SQL = SQL & "             <td width='48%' height='20' bgcolor='#FFFFFF' class='style6'>" & checkNullStr_Line(myJob.Job_Num) & "</td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width='48%' height='20' class='style6' >&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;</td>"
        SQL = SQL & "             <td height='20'>&nbsp;</td>"
        SQL = SQL & "             <td width='48%' height='20' bgcolor='#FFFFFF' >" & myJob.Job_Phone & "</td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width='48%' height='20' class='style6' >&#3626;&#3606;&#3634;&#3634;&#3609;&#3607;&#3637;&#3656;&#3607;&#3635;&#3591;&#3634;&#3609;</td>"
        SQL = SQL & "             <td height='20'>&nbsp;</td>"
        SQL = SQL & "             <td width='48%' height='20' bgcolor='#FFFFFF' class='style6' >" & myJob.Job_Location & "</td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width='48%' height='20' class='style6' >&#3648;&#3586;&#3605;</td>"
        SQL = SQL & "             <td height='20'>&nbsp;</td>"
        SQL = SQL & "             <td width='48%' height='20' bgcolor='#FFFFFF' >" & DistrictDB.getDistrictName(myJob.Job_District) & "</td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td width='48%' height='20' class='style6' >&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</td>"
        SQL = SQL & "             <td height='20'>&nbsp;</td>"
        SQL = SQL & "             <td width='48%' height='20' bgcolor='#FFFFFF' >" & ProvinceDB.getProvinceName(myJob.Job_Province) & "</td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "         </table></td>"
        SQL = SQL & "         <td width='350' align='right' valign='top'><table width='120' height='120' border='0' align='left' cellpadding='0' cellspacing='0'>"
        SQL = SQL & "           <tr>"
        SQL = SQL & "             <td bgcolor='#FFFFFF'><div align='center'><span class='standard_font'></span></div></td>"
        SQL = SQL & "           </tr>"
        SQL = SQL & "         </table></td>"
        SQL = SQL & "         </tr>"
        SQL = SQL & "       <tr>"
        SQL = SQL & "         <td colspan='2'>&nbsp;</td>"
        SQL = SQL & "         </tr>"
        SQL = SQL & "       <tr class='standard_font'>"
        SQL = SQL & "         <td height='20' colspan='2' class='style6'><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;: </strong>" & checkNullStr_Line(myJob.Job_Information) & "</td>"
        SQL = SQL & "       </tr>"
        SQL = SQL & "       <tr class='standard_font'>"
        SQL = SQL & "         <td height='20' colspan='2'>&nbsp;</td>"
        SQL = SQL & "       </tr>"
        SQL = SQL & "     </table>"
        SQL = SQL & "     <p>&nbsp;</p>"
        SQL = SQL & "     <p>&nbsp;</p>"
        SQL = SQL & "     <p>&nbsp;</p>"
        SQL = SQL & "     <p>&nbsp;</p>"
        SQL = SQL & "     <p>&nbsp;</p></td>"
        SQL = SQL & "   </tr>"
        SQL = SQL & "   <tr>"
        SQL = SQL & "     <td><table width='600px'  border='0' align='center' cellpadding='0' cellspacing='0'>"
        SQL = SQL & "       <tr class='standard_font'>"
        SQL = SQL & "         <td width='700' height='20'><img src='" & picURL & "images/objects/000000.gif' width='100 %' height='1'></td>"
        SQL = SQL & "       </tr>"
        SQL = SQL & "       <tr class='standard_font'>"
        SQL = SQL & "         <td height='20'><p class='style6'>" & myCust.name & "<br>"
        SQL = SQL & myCust.address & " อ." & DistrictDB.getDistrictName(myCust.district) & " จ." & ProvinceDB.getProvinceName(myCust.province) & "<br>"
        SQL = SQL & " &#3648;&#3610;&#3629;&#3619;&#3660;&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;: " & myCust.phone1
        If myCust.phone2 <> "" Then
            SQL = SQL & ", " & myCust.phone2
        End If
        SQL = SQL & " Fax: " & checkNullStr_Line(myCust.fax) & " <br>"
        SQL = SQL & "         Email: " & checkNullStr_Line(myCust.email)

        SQL = SQL & " <a target='_blank' href='" & userURL & myCust.username & "/index.html'>" & userURL & myCust.username & "/index.html</a>"

        SQL = SQL & "</p></td>"

        SQL = SQL & "       </tr>"
        SQL = SQL & "     </table></td>"
        SQL = SQL & "   </tr>"
        SQL = SQL & "   <tr>"
        SQL = SQL & "     <td>&nbsp;</td>"
        SQL = SQL & " </tr>"
        SQL = SQL & " </table>"
        SQL = SQL & " </body>"
        SQL = SQL & " </html>"



        Return SQL
    End Function
    Private Function JshowIntroMain(ByVal mainB As infoQuestion) As String
        Dim result As String
        Dim flag As Boolean = False
        Dim buzType As BusinessType
        Dim x As Integer = InfoQuestionDB.questionTypeRev(mainB.type)

        buzType = BusinessTypeDB.getBuZName(x)
        result = buzType.typeName
        If mainB.q1 = 1 Then
            result = result & " รถยนต์"
            flag = True
        End If
        If mainB.q2 = 1 Then
            If flag Then
                result = result & ","
            End If
            result = result & " รถจักรยานยนต์"
            flag = True
        End If
        If mainB.q3 = 1 Then
            If flag Then
                result = result & ","
            End If
            result = result & " รถบรรทุก"
        End If

        flag = False

        Select Case x
            Case 1
                Dim myBuz As infoSaleCar = InfoSaleCarDB.getInfoSaleCar(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 2
                Dim myBuz As infoServiceCar = InfoServiceCarDB.getInfoServiceCar(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 3
                Dim myBuz As infoSalePart = InfoSalePartDB.getInfoSalePart(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
        End Select

        If result.Length > 175 Then
            result = Left(result, 170) & "..."
        End If

        Return result
    End Function
    Private Function JshowIntroSub(ByVal subQ As Queue) As String
        Dim result As String = ""
        Dim presult As String
        Dim myBuz As infoQuestion

        For Each myBuz In subQ
            presult = JshowSub(myBuz)
            If presult <> "-" Then
                result = result & presult & "; "
            End If
        Next

        If Len(result) > 0 Then
            result = Left(result, Len(result) - 2)
        Else
            result = "-"
        End If


        If result.Length > 175 Then
            result = Left(result, 170) & "..."
        End If


        Return result
    End Function
    Private Function JshowSub(ByVal subB As infoQuestion) As String
        Dim result As String
        Dim flag As Boolean = False
        Dim buzType As BusinessType
        Dim x As Integer = InfoQuestionDB.questionTypeRev(subB.type)

        If subB.q1 <> 0 Or subB.q2 <> 0 Or subB.q3 <> 0 Then
            buzType = BusinessTypeDB.getBuZName(x)
            result = buzType.typeName
            If subB.q1 = 1 Then
                result = result & " รถยนต์"
                flag = True
            End If
            If subB.q2 = 1 Then
                If flag Then
                    result = result & ","
                End If
                result = result & " รถจักรยานยนต์"
                flag = True
            End If
            If subB.q3 = 1 Then
                If flag Then
                    result = result & ","
                End If
                result = result & " รถบรรทุก"
            End If

        Else
            result = "-"
        End If

        Return result
    End Function

    Structure Job
        Dim Job_Id As Integer
        Dim Job_Pos As Integer
        Dim Job_Other As String
        Dim Job_Education As String
        Dim Job_Branch As String
        Dim Job_Salary As Double
        Dim Job_SalaryType As String
        Dim Job_Num As Integer
        Dim Job_Phone As String
        Dim Job_Location As String
        Dim Job_Province As Integer
        Dim Job_District As Integer
        Dim Job_Information As String
        Dim Job_Remark As String

    End Structure
    Structure SearchJob
        Dim Job_Id As Integer
        Dim Notice_Id As Integer
        Dim Position_Name As String
        Dim Notice_StartDate As DateTime
        Dim Job_Num As Integer
        Dim Customer_Name As String
        Dim Job_Province As String
        Dim Job_District As String
    End Structure
    Structure RandomJob
        Dim Customer_Username As String
        Dim Notice_Id As Integer
        Dim NoticeDetail_Id As Integer
        Dim Customer_id As Integer
        Dim Position_Name As String
        Dim Job_Province As Integer
        Dim Job_District As Integer
        Dim Job_Id As Integer
        Dim Customer_Name As String

    End Structure
End Module
