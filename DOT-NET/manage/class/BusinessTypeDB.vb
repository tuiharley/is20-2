Imports System.Data
Imports System.Data.OleDb
Module BusinessTypeDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function saleCarHtml() As String
        Dim x As String
        x = "<tr>"
        x = x & "<td width='693'><table width='249'  border='0' align='center' cellpadding='0' cellspacing='0' class='All_Border_blue' >"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#CBD9F3'><div align='center'><strong>&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;</strong></div></td>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#FFFFFF'><div align='center'>&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3607;&#3637;&#3656;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618; :</div></td>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#ECEEF0'>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='59' height='20'><input type='checkbox' name='1_1' value='1'> &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='98' height='20'><input type='checkbox' name='1_2' value='1'> &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='70' height='20'><input type='checkbox' name='1_3' value='1'> &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "</tr>"
        x = x & "</table></td>"
        x = x & "</tr>"
        Return x
    End Function
    Function saleCarHtmlShow(ByVal myQuestion As infoQuestion) As String
        Dim x As String
        x = "<tr>"
        x = x & "<td width='693'><table width='249'  border='0' align='center' cellpadding='0' cellspacing='0' class='All_Border_blue' >"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#CBD9F3'><div align='center'><strong>&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;</strong></div></td>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#FFFFFF'><div align='center'>&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3607;&#3637;&#3656;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618; :</div></td>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#ECEEF0'>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='59' height='20'>"
        If myQuestion.q1 = 1 Then
            x = x & "<input type='checkbox' name='1_1' value='1' checked>"
        Else
            x = x & "<input type='checkbox' name='1_1' value='1'>"
        End If
        x = x & " &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='98' height='20'>"
        If myQuestion.q2 = 1 Then
            x = x & "<input type='checkbox' name='1_2' value='1' checked>"
        Else
            x = x & "<input type='checkbox' name='1_2' value='1'>"
        End If
        x = x & " &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='70' height='20'>"
        If myQuestion.q3 = 1 Then
            x = x & "<input type='checkbox' name='1_3' value='1' checked>"
        Else
            x = x & "<input type='checkbox' name='1_3' value='1'>"
        End If
        x = x & " &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "</tr>"
        x = x & "</table></td>"
        x = x & "</tr>"
        Return x
    End Function
    Function serviceCarHtml() As String
        Dim x As String
        x = x & "<tr>"
        x = x & "<td width='693'><table width='249'  border='0' align='center' cellpadding='0' cellspacing='0' class='All_Border_blue'>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#CBD9F3'><div align='center'><strong>&#3624;&#3641;&#3609;&#3618;&#3660;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;/&#3629;&#3641;&#3656;&#3619;&#3606;</strong></div></td>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#FFFFFF'><div align='center'>&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619; :</div></td>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#ECEEF0'>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='59' height='20'><input type='checkbox' name='2_1' value='1'> &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='98' height='20'><input type='checkbox' name='2_2' value='1'> &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='70' height='20'><input type='checkbox' name='2_3' value='1'> &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "</tr>"
        x = x & "</table></td>"
        x = x & "</tr>"

        Return x
    End Function
    Function serviceCarHtmlShow(ByVal myQuestion As infoQuestion) As String
        Dim x As String
        x = x & "<tr>"
        x = x & "<td width='693'><table width='249'  border='0' align='center' cellpadding='0' cellspacing='0' class='All_Border_blue'>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#CBD9F3'><div align='center'><strong>&#3624;&#3641;&#3609;&#3618;&#3660;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;/&#3629;&#3641;&#3656;&#3619;&#3606;</strong></div></td>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#FFFFFF'><div align='center'>&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619; :</div></td>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#ECEEF0'>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='59' height='20'>"
        If myQuestion.q1 = 1 Then
            x = x & "<input type='checkbox' name='2_1' value='1' checked>"
        Else
            x = x & "<input type='checkbox' name='2_1' value='1'>"
        End If
        x = x & " &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='98' height='20'>"
        If myQuestion.q2 = 1 Then
            x = x & "<input type='checkbox' name='2_2' value='1' checked>"
        Else
            x = x & "<input type='checkbox' name='2_2' value='1'>"
        End If
        x = x & " &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='70' height='20'>"
        If myQuestion.q3 = 1 Then
            x = x & "<input type='checkbox' name='2_3' value='1' checked>"
        Else
            x = x & "<input type='checkbox' name='2_3' value='1'>"
        End If
        x = x & " &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "</tr>"
        x = x & "</table></td>"
        x = x & "</tr>"

        Return x
    End Function
    Function salePartHtml() As String
        Dim x As String
        x = x & "<tr>"
        x = x & "<td width='693'><table width='249'  border='0' align='center' cellpadding='0' cellspacing='0' class='All_Border_blue'>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#CBD9F3'><div align='center'><strong>&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</strong></div></td>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#FFFFFF'><div align='center'>&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3586;&#3629;&#3591;&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;&#3607;&#3637;&#3656;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618; :</div></td>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#ECEEF0'>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='59' height='20'><input type='checkbox' name='3_1' value='1'> &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='98' height='20'><input type='checkbox' name='3_2' value='1'> &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='70' height='20'><input type='checkbox' name='3_3' value='1'> &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "</tr>"
        x = x & "</table></td>"
        x = x & "</tr>"
        Return x
    End Function
    Function salePartHtmlShow(ByVal myQuestion As infoQuestion) As String
        Dim x As String
        x = x & "<tr>"
        x = x & "<td width='693'><table width='249'  border='0' align='center' cellpadding='0' cellspacing='0' class='All_Border_blue'>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#CBD9F3'><div align='center'><strong>&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</strong></div></td>"
        x = x & "<td height='20' bgcolor='#CBD9F3'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "<td height='20' colspan='5' bgcolor='#FFFFFF'><div align='center'>&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3586;&#3629;&#3591;&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;&#3607;&#3637;&#3656;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618; :</div></td>"
        x = x & "<td height='20' bgcolor='#FFFFFF'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#2A60AE'>"
        x = x & "<td height='1' colspan='7'></td>"
        x = x & "</tr>"
        x = x & "<tr bgcolor='#ECEEF0'>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='59' height='20'>"
        If myQuestion.q1 = 1 Then
            x = x & "<input type='checkbox' name='3_1' value='1' checked>"
        Else
            x = x & "<input type='checkbox' name='3_1' value='1'>"
        End If
        x = x & " &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='98' height='20'>"
        If myQuestion.q2 = 1 Then
            x = x & "<input type='checkbox' name='3_2' value='1' checked>"
        Else
            x = x & "<input type='checkbox' name='3_2' value='1'>"
        End If
        x = x & " &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "<td width='70' height='20'>"
        If myQuestion.q3 = 1 Then
            x = x & "<input type='checkbox' name='3_3' value='1' checked>"
        Else
            x = x & "<input type='checkbox' name='3_3' value='1'>"
        End If
        x = x & " &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        x = x & "<td width='5' height='20'></td>"
        x = x & "</tr>"
        x = x & "</table></td>"
        x = x & "</tr>"
        Return x
    End Function
    Function rentCarHtml() As String
        Dim sql As String

        sql = sql & "             <tr>"
        sql = sql & "               <td width=""693""><table width=""249""  border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & "                 <tr>"
        sql = sql & "                   <td height=""20"" bgcolor=""#CBD9F3""></td>"
        sql = sql & "                   <td height=""20"" colspan=""5"" bgcolor=""#CBD9F3""><div align=""center""><strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3648;&#3594;&#3656;&#3634;</strong></div></td>"
        sql = sql & "                   <td height=""20"" bgcolor=""#CBD9F3""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr bgcolor=""#2A60AE"">"
        sql = sql & "                   <td height=""1"" colspan=""7""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr>"
        sql = sql & "                   <td height=""20"" bgcolor=""#FFFFFF""></td>"
        sql = sql & "                   <td height=""20"" colspan=""5"" bgcolor=""#FFFFFF""><div align=""center"">&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3607;&#3637;&#3656;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619; :</div></td>"
        sql = sql & "                   <td height=""20"" bgcolor=""#FFFFFF""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr bgcolor=""#2A60AE"">"
        sql = sql & "                   <td height=""1"" colspan=""7""></td>"
        sql = sql & "                   </tr>"
        sql = sql & "                 <tr bgcolor=""#ECEEF0"">"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""59"" height=""20""><input type=""checkbox"" name=""4_1"" value=""1""> &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""98"" height=""20""><input type=""checkbox"" name=""4_2"" value=""1""> &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""70"" height=""20""><input type=""checkbox"" name=""4_3"" value=""1""> &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   </tr>"
        sql = sql & "               </table></td>"
        sql = sql & "               </tr>"

        Return sql
    End Function
    Function rentCarHtmlShow(ByVal myQuestion As infoQuestion) As String
        Dim sql As String

        sql = sql & "             <tr>"
        sql = sql & "               <td width=""693""><table width=""249""  border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & "                 <tr>"
        sql = sql & "                   <td height=""20"" bgcolor=""#CBD9F3""></td>"
        sql = sql & "                   <td height=""20"" colspan=""5"" bgcolor=""#CBD9F3""><div align=""center""><strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3648;&#3594;&#3656;&#3634;</strong></div></td>"
        sql = sql & "                   <td height=""20"" bgcolor=""#CBD9F3""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr bgcolor=""#2A60AE"">"
        sql = sql & "                   <td height=""1"" colspan=""7""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr>"
        sql = sql & "                   <td height=""20"" bgcolor=""#FFFFFF""></td>"
        sql = sql & "                   <td height=""20"" colspan=""5"" bgcolor=""#FFFFFF""><div align=""center"">&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3607;&#3637;&#3656;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619; :</div></td>"
        sql = sql & "                   <td height=""20"" bgcolor=""#FFFFFF""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr bgcolor=""#2A60AE"">"
        sql = sql & "                   <td height=""1"" colspan=""7""></td>"
        sql = sql & "                   </tr>"
        sql = sql & "                 <tr bgcolor=""#ECEEF0"">"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""59"" height=""20"">"
        If myQuestion.q1 = 1 Then
            sql = sql & "<input type=""checkbox"" name=""4_1"" value=""1"" checked>"
        Else
            sql = sql & "<input type=""checkbox"" name=""4_1"" value=""1"">"
        End If
        sql = sql & " &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""98"" height=""20"">"
        If myQuestion.q2 = 1 Then
            sql = sql & "<input type=""checkbox"" name=""4_2"" value=""1"" checked>"
        Else
            sql = sql & "<input type=""checkbox"" name=""4_2"" value=""1"">"
        End If
        sql = sql & " &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""70"" height=""20"">"
        If myQuestion.q3 = 1 Then
            sql = sql & "<input type=""checkbox"" name=""4_3"" value=""1"" checked>"
        Else
            sql = sql & "<input type=""checkbox"" name=""4_3"" value=""1"">"
        End If
        sql = sql & " &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   </tr>"
        sql = sql & "               </table></td>"
        sql = sql & "               </tr>"

        Return sql
    End Function
    Function washCarHtml() As String
        Dim sql As String

        sql = sql & "             <tr>"
        sql = sql & "               <td width=""693""><table width=""249""  border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & "                 <tr>"
        sql = sql & "                   <td height=""20"" bgcolor=""#CBD9F3""></td>"
        sql = sql & "                   <td height=""20"" colspan=""5"" bgcolor=""#CBD9F3""><div align=""center""><strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3635;&#3588;&#3623;&#3634;&#3617;&#3626;&#3632;&#3629;&#3634;&#3604;/&#3610;&#3635;&#3619;&#3640;&#3591;&#3619;&#3633;&#3585;&#3625;&#3634;&#3619;&#3606;</strong></div></td>"
        sql = sql & "                   <td height=""20"" bgcolor=""#CBD9F3""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr bgcolor=""#2A60AE"">"
        sql = sql & "                   <td height=""1"" colspan=""7""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr>"
        sql = sql & "                   <td height=""20"" bgcolor=""#FFFFFF""></td>"
        sql = sql & "                   <td height=""20"" colspan=""5"" bgcolor=""#FFFFFF""><div align=""center"">&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3607;&#3637;&#3656;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619; :</div></td>"
        sql = sql & "                   <td height=""20"" bgcolor=""#FFFFFF""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr bgcolor=""#2A60AE"">"
        sql = sql & "                   <td height=""1"" colspan=""7""></td>"
        sql = sql & "                   </tr>"
        sql = sql & "                 <tr bgcolor=""#E8E8E8"">"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""59"" height=""20""><input type=""checkbox"" name=""5_1"" value=""1""> &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""98"" height=""20""><input type=""checkbox"" name=""5_2"" value=""1""> &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""70"" height=""20""><input type=""checkbox"" name=""5_3"" value=""1""> &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   </tr>"
        sql = sql & "               </table></td>"
        sql = sql & "               </tr>"

        Return sql
    End Function
    Function washCarHtmlShow(ByVal myQuestion As infoQuestion) As String
        Dim sql As String

        sql = sql & "             <tr>"
        sql = sql & "               <td width=""693""><table width=""249""  border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & "                 <tr>"
        sql = sql & "                   <td height=""20"" bgcolor=""#CBD9F3""></td>"
        sql = sql & "                   <td height=""20"" colspan=""5"" bgcolor=""#CBD9F3""><div align=""center""><strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3635;&#3588;&#3623;&#3634;&#3617;&#3626;&#3632;&#3629;&#3634;&#3604;/&#3610;&#3635;&#3619;&#3640;&#3591;&#3619;&#3633;&#3585;&#3625;&#3634;&#3619;&#3606;</strong></div></td>"
        sql = sql & "                   <td height=""20"" bgcolor=""#CBD9F3""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr bgcolor=""#2A60AE"">"
        sql = sql & "                   <td height=""1"" colspan=""7""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr>"
        sql = sql & "                   <td height=""20"" bgcolor=""#FFFFFF""></td>"
        sql = sql & "                   <td height=""20"" colspan=""5"" bgcolor=""#FFFFFF""><div align=""center"">&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3607;&#3637;&#3656;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619; :</div></td>"
        sql = sql & "                   <td height=""20"" bgcolor=""#FFFFFF""></td>"
        sql = sql & "                 </tr>"
        sql = sql & "                 <tr bgcolor=""#2A60AE"">"
        sql = sql & "                   <td height=""1"" colspan=""7""></td>"
        sql = sql & "                   </tr>"
        sql = sql & "                 <tr bgcolor=""#E8E8E8"">"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""59"" height=""20"">"
        If myQuestion.q1 = 1 Then
            sql = sql & "<input type=""checkbox"" name=""5_1"" value=""1"" checked>"
        Else
            sql = sql & "<input type=""checkbox"" name=""5_1"" value=""1"">"
        End If
        sql = sql & " &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""98"" height=""20"">"
        If myQuestion.q2 = 1 Then
            sql = sql & "<input type=""checkbox"" name=""5_2"" value=""1"" checked>"
        Else
            sql = sql & "<input type=""checkbox"" name=""5_2"" value=""1"">"
        End If
        sql = sql & " &#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   <td width=""70"" height=""20"">"
        If myQuestion.q3 = 1 Then
            sql = sql & "<input type=""checkbox"" name=""5_3"" value=""1"" checked>"
        Else
            sql = sql & "<input type=""checkbox"" name=""5_3"" value=""1"">"
        End If
        sql = sql & " &#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>"
        sql = sql & "                   <td width=""5"" height=""20""></td>"
        sql = sql & "                   </tr>"
        sql = sql & "               </table></td>"
        sql = sql & "               </tr>"

        Return sql
    End Function

    '==========================Car Question ===========================
    Function saleCarQuestion(ByVal subQuestions As Queue, ByVal headTxt As String) As String
        Dim sql As String

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & "<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"""
        sql = sql & " 										class=""Font_black"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""11""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3619;&#3641;&#3611;&#3649;&#3610;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""11"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""223"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3611;&#3655;&#3609;&#3605;&#3633;&#3623;&#3649;&#3607;&#3609;&#3607;&#3637;&#3656;&#3652;&#3604;&#3657;&#3619;&#3633;&#3610;&#3585;&#3634;&#3619;&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3629;&#3618;&#3656;&#3634;&#3591;&#3648;&#3611;&#3655;&#3609;&#3607;&#3634;&#3591;&#3585;&#3634;&#3619;?</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" height=""20"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""203"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" height=""20"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""223"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""11"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""203"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""20"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarOfficial"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3611;&#3655;&#3609;&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarOfficial"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3650;&#3604;&#3618;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""saleCarOfficial_text"" type=""text"" class=""Font_black"" style=""WIDTH: 194px""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""203"" height=""20"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarType"" value=""ผู้จำหน่ายรถใหม่"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;&#3651;&#3627;&#3617;&#3656;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarType"" value=""ผู้จำหน่ายรถมือสอง""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarType"" value=""ผู้จำหน่ายรถใหม่และมือสอง""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;&#3651;&#3627;&#3617;&#3656;&#3649;&#3621;&#3632;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""20"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""saleCarBuy"" value=""รับซื้อ""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3595;&#3639;&#3657;&#3629;, "
        sql = sql & " 																		&#3649;&#3621;&#3585;&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;/&#3648;&#3607;&#3636;&#3619;&#3660;&#3609;&#3619;&#3606;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""saleCarFinance"" value=""รับจัดไฟแนนซ์""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3592;&#3633;&#3604;&#3652;&#3615;&#3649;&#3609;&#3609;&#3595;&#3660;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""saleCarSecondhand"" value=""รับประกันรถมือสอง""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;&#3619;&#3606;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;"
        sql = sql & " 																	</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""saleCarInfo"" value=""เพิ่มเติม""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3604;&#3641;&#3607;&#3637;&#3656; "
        sql = sql & " 																		""&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;""</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""203"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        '============================ Start Sub Question ===============================
        Dim i As Integer
        Dim q(3) As Integer
        Dim TempObjQueue As IEnumerator = subQuestions.GetEnumerator()
        TempObjQueue.MoveNext()
        For i = 1 To subQuestions.Count
            q.SetValue(TempObjQueue.Current, i)
            TempObjQueue.MoveNext()
        Next


        If q.GetValue(1) = 1 Or q.GetValue(2) = 1 Or q.GetValue(3) = 1 Then
            sql = sql & saleCarSubQuestion(subQuestions)
        End If

        '============================ End Sub Question ===============================
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        sql = sql & " 																<textarea name=""saleCarMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px""></textarea>"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function
    Function saleCarSubQuestion(ByVal tempSubQuestion As Queue) As String
        Dim sql As String
        Dim Qnum As Integer = tempSubQuestion.Count
        Dim subQuestion As New Queue
        subQuestion = tempSubQuestion.Clone

        sql = " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3651;&#3604;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3651;&#3604;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"

        Dim i As Integer, val As Integer
        For i = 0 To Qnum - 1
            val = subQuestion.Dequeue
            If val = 1 Then
                Select Case i + 1
                    Case 1
                        '======================== Sub Car 1 ==================================
                        sql = sql & saleCarSubQCar()
                    Case 2
                        '======================== Sub Car 2 ==================================
                        sql = sql & saleCarSubQBike()
                    Case 3
                        '======================== Sub Car 3 ==================================
                        sql = sql & saleCarSubQTruck()
                End Select
            End If
        Next

        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"

        Return sql
    End Function
    Function saleCarSubQCar() As String
        Dim sql As String

        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarCBrand"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarCBrand"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""saleCarCBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarCType"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarCType"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""saleCarCType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function saleCarSubQBike() As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarBBrand"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarBBrand"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""saleCarBBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"" >"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarBType"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarBType"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""saleCarBType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function saleCarSubQTruck() As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarTBrand"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarTBrand"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""saleCarTBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"" >"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarTType"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""saleCarTType"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""saleCarTType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function

    '========================== Show Car Question ===========================
    Function saleCarQuestionShow(ByVal subQuestions As Queue, ByVal headTxt As String, ByVal myBuz As infoSaleCar) As String
        Dim sql As String

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & "<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"""
        sql = sql & " 										class=""Font_black"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""11""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3619;&#3641;&#3611;&#3649;&#3610;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""11"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""223"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3611;&#3655;&#3609;&#3605;&#3633;&#3623;&#3649;&#3607;&#3609;&#3607;&#3637;&#3656;&#3652;&#3604;&#3657;&#3619;&#3633;&#3610;&#3585;&#3634;&#3619;&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3629;&#3618;&#3656;&#3634;&#3591;&#3648;&#3611;&#3655;&#3609;&#3607;&#3634;&#3591;&#3585;&#3634;&#3619;?</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" height=""20"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""203"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" height=""20"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""223"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""11"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""203"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""20"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Official_Dealer = 0 Then
            sql = sql & "<input type=""radio"" name=""saleCarOfficial"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarOfficial"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3611;&#3655;&#3609;&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"

        If myBuz.Official_Dealer = 1 Then
            sql = sql & "<input type=""radio"" name=""saleCarOfficial"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarOfficial"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3650;&#3604;&#3618;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.Official_Dealer = 1 Then
            sql = sql & "<input name=""saleCarOfficial_text"" type=""text"" class=""Font_black"" style=""WIDTH: 194px"" value='" & myBuz.Official_Dealer_txt & "'></td>"
        Else
            sql = sql & "<input name=""saleCarOfficial_text"" type=""text"" class=""Font_black"" style=""WIDTH: 194px"" ></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""203"" height=""20"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Dealer_Type = "ผู้จำหน่ายรถใหม่" Then
            sql = sql & "<input type=""radio"" name=""saleCarType"" value=""ผู้จำหน่ายรถใหม่"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarType"" value=""ผู้จำหน่ายรถใหม่"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;&#3651;&#3627;&#3617;&#3656;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Dealer_Type = "ผู้จำหน่ายรถมือสอง" Then
            sql = sql & "<input type=""radio"" name=""saleCarType"" value=""ผู้จำหน่ายรถมือสอง"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarType"" value=""ผู้จำหน่ายรถมือสอง""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Dealer_Type = "ผู้จำหน่ายรถใหม่และมือสอง" Then
            sql = sql & "<input type=""radio"" name=""saleCarType"" value=""ผู้จำหน่ายรถใหม่และมือสอง"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarType"" value=""ผู้จำหน่ายรถใหม่และมือสอง""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;&#3651;&#3627;&#3617;&#3656;&#3649;&#3621;&#3632;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""20"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"

        Dim infoSaleCar_About As Queue
        infoSaleCar_About = InfoSaleCarDB.getInfoSaleCarAbout(myBuz.SaleCar_ID)


        sql = sql & " 																	<td width=""20"" height=""20"">"
        If infoSaleCar_About.Contains("รับซื้อ") Then
            sql = sql & "<input type=""checkbox"" name=""saleCarBuy"" value=""รับซื้อ"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""saleCarBuy"" value=""รับซื้อ""></td>"
        End If

        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3595;&#3639;&#3657;&#3629;, "
        sql = sql & " 																		&#3649;&#3621;&#3585;&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;/&#3648;&#3607;&#3636;&#3619;&#3660;&#3609;&#3619;&#3606;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If infoSaleCar_About.Contains("รับจัดไฟแนนซ์") Then
            sql = sql & "<input type=""checkbox"" name=""saleCarFinance"" value=""รับจัดไฟแนนซ์"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""saleCarFinance"" value=""รับจัดไฟแนนซ์""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3592;&#3633;&#3604;&#3652;&#3615;&#3649;&#3609;&#3609;&#3595;&#3660;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If infoSaleCar_About.Contains("รับประกันรถมือสอง") Then
            sql = sql & "<input type=""checkbox"" name=""saleCarSecondhand"" value=""รับประกันรถมือสอง"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""saleCarSecondhand"" value=""รับประกันรถมือสอง""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;&#3619;&#3606;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;"
        sql = sql & " 																	</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If infoSaleCar_About.Contains("เพิ่มเติม") Then
            sql = sql & "<input type=""checkbox"" name=""saleCarInfo"" value=""เพิ่มเติม"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""saleCarInfo"" value=""เพิ่มเติม""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3604;&#3641;&#3607;&#3637;&#3656; "
        sql = sql & " 																		""&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;""</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""203"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""223"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        '============================ Start Sub Question ===============================
        Dim i As Integer
        Dim q(3) As Integer
        Dim TempObjQueue As IEnumerator = subQuestions.GetEnumerator()
        TempObjQueue.MoveNext()
        For i = 1 To subQuestions.Count
            q.SetValue(TempObjQueue.Current, i)
            TempObjQueue.MoveNext()
        Next


        If q.GetValue(1) = 1 Or q.GetValue(2) = 1 Or q.GetValue(3) = 1 Then
            sql = sql & saleCarSubQuestionShow(subQuestions, myBuz)
        End If

        '============================ End Sub Question ===============================
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        If myBuz.Information = "" Then
            sql = sql & "		<textarea name=""saleCarMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px"" ></textarea>"
        Else
            sql = sql & "		<textarea name=""saleCarMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px"" >" & myBuz.Information & "</textarea>"
        End If
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function
    Function saleCarSubQuestionShow(ByVal tempSubQuestion As Queue, ByVal mybuz As infoSaleCar) As String
        Dim sql As String
        Dim Qnum As Integer = tempSubQuestion.Count
        Dim subQuestion As New Queue
        subQuestion = tempSubQuestion.Clone

        sql = " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3651;&#3604;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3651;&#3604;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"

        Dim i As Integer, val As Integer
        For i = 0 To Qnum - 1
            val = subQuestion.Dequeue
            If val = 1 Then
                Select Case i + 1
                    Case 1
                        '======================== Sub Car 1 ==================================
                        sql = sql & saleCarSubQCarShow(mybuz)
                    Case 2
                        '======================== Sub Car 2 ==================================
                        sql = sql & saleCarSubQBikeShow(mybuz)
                    Case 3
                        '======================== Sub Car 3 ==================================
                        sql = sql & saleCarSubQTruckShow(mybuz)
                End Select
            End If
        Next

        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"

        Return sql
    End Function
    Function saleCarSubQCarShow(ByVal myBuz As infoSaleCar) As String
        Dim sql As String

        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Car_Brand = 0 Then
            sql = sql & "<input type=""radio"" name=""saleCarCBrand"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarCBrand"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Car_Brand = 1 Then
            sql = sql & "<input type=""radio"" name=""saleCarCBrand"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarCBrand"" value=""1""></td>"
        End If

        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Car_Brand = 0 Then
            sql = sql & "<input name=""saleCarCBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        Else
            sql = sql & "<input name=""saleCarCBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Car_Brand_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Car_Type = 0 Then
            sql = sql & "<input type=""radio"" name=""saleCarCType"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarCType"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Car_Type = 1 Then
            sql = sql & "<input type=""radio"" name=""saleCarCType"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarCType"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Car_Type = 0 Then
            sql = sql & "<input name=""saleCarCType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        Else
            sql = sql & "<input name=""saleCarCType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Car_Type_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function saleCarSubQBikeShow(ByVal myBuz As infoSaleCar) As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Bike_Brand = 0 Then
            sql = sql & "<input type=""radio"" name=""saleCarBBrand"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarBBrand"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Bike_Brand = 1 Then
            sql = sql & "<input type=""radio"" name=""saleCarBBrand"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarBBrand"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Bike_Brand = 0 Then
            sql = sql & "<input name=""saleCarBBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        Else
            sql = sql & "<input name=""saleCarBBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Bike_Brand_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"" >"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Bike_Type = 0 Then
            sql = sql & "<input type=""radio"" name=""saleCarBType"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarBType"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Bike_Type = 1 Then
            sql = sql & "<input type=""radio"" name=""saleCarBType"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarBType"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Bike_Type = 0 Then
            sql = sql & "<input name=""saleCarBType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        Else
            sql = sql & "<input name=""saleCarBType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Bike_Type_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function saleCarSubQTruckShow(ByVal myBuz As infoSaleCar) As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Truck_Brand = 0 Then
            sql = sql & "<input type=""radio"" name=""saleCarTBrand"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarTBrand"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Truck_Brand = 1 Then
            sql = sql & "<input type=""radio"" name=""saleCarTBrand"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarTBrand"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Truck_Brand = 0 Then
            sql = sql & "<input name=""saleCarTBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        Else
            sql = sql & "<input name=""saleCarTBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Truck_Brand_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"" >"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Truck_Type = 0 Then
            sql = sql & "<input type=""radio"" name=""saleCarTType"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarTType"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Truck_Type = 1 Then
            sql = sql & "<input type=""radio"" name=""saleCarTType"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""saleCarTType"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; "
        sql = sql & " 																		&#3588;&#3639;&#3629; :</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Truck_Type = 0 Then
            sql = sql & "<input name=""saleCarTType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        Else
            sql = sql & "<input name=""saleCarTType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Truck_Type_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function

    '=========================== Show Service Question ==========================
    Function ServiceCarQuestionShow(ByVal subQuestions As Queue, ByVal headTxt As String, ByVal myBuz As infoServiceCar) As String
        Dim sql As String

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3624;&#3641;&#3609;&#3618;&#3660;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;/&#3629;&#3641;&#3656;&#3619;&#3606; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"""
        sql = sql & " 										class=""Font_black"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""11"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3619;&#3641;&#3611;&#3649;&#3610;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""11"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""247"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3611;&#3655;&#3609;&#3605;&#3633;&#3623;&#3649;&#3607;&#3609;&#3607;&#3637;&#3656;&#3652;&#3604;&#3657;&#3619;&#3633;&#3610;&#3585;&#3634;&#3619;&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3629;&#3618;&#3656;&#3634;&#3591;&#3648;&#3611;&#3655;&#3609;&#3607;&#3634;&#3591;&#3585;&#3634;&#3619;?</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" height=""20"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""155"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3586;&#3629;&#3591;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" height=""20"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""247"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""11"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""155"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""20"" valign=""top"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Official_Dealer = 0 Then
            sql = sql & "<input type=""radio"" name=""serviceCarOfficial"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarOfficial"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3611;&#3655;&#3609;&#3612;&#3641;&#3657;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Official_Dealer = 1 Then
            sql = sql & "<input type=""radio"" name=""serviceCarOfficial"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarOfficial"" value=""1"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3650;&#3604;&#3618;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.Official_Dealer = 0 Then
            sql = sql & "<input name=""serviceCarOfficial_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 218px""></td>"
        Else
            sql = sql & "<input name=""serviceCarOfficial_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 218px"" value='" & myBuz.Official_Dealer_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""155"" height=""20"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.Dealer_Type = "" Then
            sql = sql & "<input name=""serviceCarType"" type=""text"" class=""Font_black"" style=""WIDTH: 149px""></td>"
        Else
            sql = sql & "<input name=""serviceCarType"" type=""text"" class=""Font_black"" style=""WIDTH: 149px"" value='" & myBuz.Dealer_Type & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""20"" valign=""top"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"

        Dim InfoServiceCar_About As Queue
        InfoServiceCar_About = InfoServiceCarDB.getInfoServiceCarAbout(myBuz.ServiceCar_ID)

        If InfoServiceCar_About.Contains("รับประกันคุณภาพงาน") Then
            sql = sql & "<input type=""checkbox"" name=""serviceCarInsur"" value=""รับประกันคุณภาพงาน"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""serviceCarInsur"" value=""รับประกันคุณภาพงาน""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;&#3588;&#3640;&#3603;&#3616;&#3634;&#3614;&#3591;&#3634;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If InfoServiceCar_About.Contains("รับจัดไฟแนนซ์") Then
            sql = sql & "<input type=""checkbox"" name=""serviceCarFinance"" value=""รับจัดไฟแนนซ์"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""serviceCarFinance"" value=""รับจัดไฟแนนซ์""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3592;&#3633;&#3604;&#3652;&#3615;&#3649;&#3609;&#3609;&#3595;&#3660;(&#3595;&#3656;&#3629;&#3617;)</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If InfoServiceCar_About.Contains("บริการรถยก") Then
            sql = sql & "<input type=""checkbox"" name=""serviceCarToll"" value=""บริการรถยก"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""serviceCarToll"" value=""บริการรถยก""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3585;, "
        sql = sql & " 																		&#3619;&#3606;&#3621;&#3634;&#3585;&#3592;&#3641;&#3591;(&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;)</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If InfoServiceCar_About.Contains("บริการติดตั้ง") Then
            sql = sql & "<input type=""checkbox"" name=""serviceCarInstall"" value=""บริการติดตั้ง"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""serviceCarInstall"" value=""บริการติดตั้ง""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3605;&#3636;&#3604;&#3605;&#3633;&#3657;&#3591;/&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">"
        If InfoServiceCar_About.Contains("เพิ่มเติม") Then
            sql = sql & "<input type=""checkbox"" name=""serviceCarInfo"" value=""เพิ่มเติม"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""serviceCarInfo"" value=""เพิ่มเติม""></td>"
        End If
        sql = sql & " 																	<td height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3604;&#3641;&#3607;&#3637;&#3656; "
        sql = sql & " 																		""&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;""</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""155"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        ' =======================================Start Sub Question =============================
        Dim i As Integer
        Dim q(3) As Integer
        Dim TempObjQueue As IEnumerator = subQuestions.GetEnumerator()
        TempObjQueue.MoveNext()
        For i = 1 To subQuestions.Count
            q.SetValue(TempObjQueue.Current, i)
            TempObjQueue.MoveNext()
        Next


        If q.GetValue(1) = 1 Or q.GetValue(2) = 1 Or q.GetValue(3) = 1 Then
            sql = sql & ServiceCarSubQuestionShow(subQuestions, myBuz)
        End If

        '=========================================End Sub Question ================]==============
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        If myBuz.Information = "" Then
            sql = sql & " 																<textarea name=""serviceCarMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px""></textarea>"
        Else
            sql = sql & " 																<textarea name=""serviceCarMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px"" >" & myBuz.Information & "</textarea>"
        End If
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function
    Function ServiceCarSubQuestionShow(ByVal tempSubQuestion As Queue, ByVal myBuz As infoServiceCar) As String
        Dim sql As String
        Dim Qnum As Integer = tempSubQuestion.Count
        Dim subQuestion As New Queue
        subQuestion = tempSubQuestion.Clone

        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3651;&#3604;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3651;&#3604;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"

        Dim i As Integer, val As Integer
        For i = 0 To Qnum - 1
            val = subQuestion.Dequeue
            If val = 1 Then
                Select Case i + 1
                    Case 1
                        '======================== Sub Question 1 ==================================
                        sql = sql & ServiceCarSubQCarShow(myBuz)
                    Case 2
                        '======================== Sub Question 2 ==================================
                        sql = sql & ServiceCarSubQBikeShow(myBuz)
                    Case 3
                        '======================== Sub Question 3 ==================================
                        sql = sql & ServiceCarSubQTruckShow(myBuz)
                End Select
            End If
        Next

        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"

        Return sql
    End Function
    Function ServiceCarSubQCarShow(ByVal myBuz As infoServiceCar) As String
        Dim sql As String

        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Car_Brand = 0 Then
            sql = sql & "<input type=""radio"" name=""serviceCarCBrand"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarCBrand"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Car_Brand = 1 Then
            sql = sql & "<input type=""radio"" name=""serviceCarCBrand"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarCBrand"" value=""1"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Car_Brand = 0 Then
            sql = sql & "<input name=""serviceCarCBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        Else
            sql = sql & "<input name=""serviceCarCBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Car_Brand_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Car_Type = 0 Then
            sql = sql & "<input type=""radio"" name=""serviceCarCType"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarCType"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Car_Type = 1 Then
            sql = sql & "<input type=""radio"" name=""serviceCarCType"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarCType"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Car_Type = 0 Then
            sql = sql & "<input name=""serviceCarCType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        Else
            sql = sql & "<input name=""serviceCarCType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Car_Type_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function ServiceCarSubQBikeShow(ByVal myBuz As infoServiceCar) As String
        Dim sql As String


        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Bike_Brand = 0 Then
            sql = sql & "<input type=""radio"" name=""serviceCarBBrand"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarBBrand"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Bike_Brand = 1 Then
            sql = sql & "<input type=""radio"" name=""serviceCarBBrand"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarBBrand"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Bike_Brand = 0 Then
            sql = sql & "<input name=""serviceCarBBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        Else
            sql = sql & "<input name=""serviceCarBBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Bike_Brand_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Bike_Type = 0 Then
            sql = sql & "<input type=""radio"" name=""serviceCarBType"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarBType"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Bike_Type = 1 Then
            sql = sql & "<input type=""radio"" name=""serviceCarBType"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarBType"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Bike_Type = 0 Then
            sql = sql & "<input name=""serviceCarBType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        Else
            sql = sql & "<input name=""serviceCarBType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Bike_Type_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function ServiceCarSubQTruckShow(ByVal myBuz As infoServiceCar) As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Truck_Brand = 0 Then
            sql = sql & "<input type=""radio"" name=""serviceCarTBrand"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarTBrand"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Truck_Brand = 1 Then
            sql = sql & "<input type=""radio"" name=""serviceCarTBrand"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarTBrand"" value=""1"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Truck_Brand = 0 Then
            sql = sql & "<input name=""serviceCarTBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        Else
            sql = sql & "<input name=""serviceCarTBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Truck_Brand_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Truck_Type = 0 Then
            sql = sql & "<input type=""radio"" name=""serviceCarTType"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarTType"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.About_Truck_Type = 1 Then
            sql = sql & "<input type=""radio"" name=""serviceCarTType"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""serviceCarTType"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Truck_Type = 0 Then
            sql = sql & "<input name=""serviceCarTType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        Else
            sql = sql & "<input name=""serviceCarTType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.About_Truck_Type_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function

    '===========================Service Question ==========================
    Function ServiceCarQuestion(ByVal subQuestions As Queue, ByVal headTxt As String) As String
        Dim sql As String

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3624;&#3641;&#3609;&#3618;&#3660;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;/&#3629;&#3641;&#3656;&#3619;&#3606; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"""
        sql = sql & " 										class=""Font_black"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""11"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3619;&#3641;&#3611;&#3649;&#3610;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""11"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""247"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3611;&#3655;&#3609;&#3605;&#3633;&#3623;&#3649;&#3607;&#3609;&#3607;&#3637;&#3656;&#3652;&#3604;&#3657;&#3619;&#3633;&#3610;&#3585;&#3634;&#3619;&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3629;&#3618;&#3656;&#3634;&#3591;&#3648;&#3611;&#3655;&#3609;&#3607;&#3634;&#3591;&#3585;&#3634;&#3619;?</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" height=""20"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""155"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3586;&#3629;&#3591;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" height=""20"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""247"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" height=""20"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""11"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""155"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""20"" valign=""top"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarOfficial"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3611;&#3655;&#3609;&#3612;&#3641;&#3657;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarOfficial"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3650;&#3604;&#3618;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""serviceCarOfficial_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 218px""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""155"" height=""20"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><input name=""serviceCarType"" type=""text"" class=""Font_black"" style=""WIDTH: 149px""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""20"" valign=""top"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""serviceCarInsur"" value=""รับประกันคุณภาพงาน""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;&#3588;&#3640;&#3603;&#3616;&#3634;&#3614;&#3591;&#3634;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""serviceCarFinance"" value=""รับจัดไฟแนนซ์""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3619;&#3633;&#3610;&#3592;&#3633;&#3604;&#3652;&#3615;&#3649;&#3609;&#3609;&#3595;&#3660;(&#3595;&#3656;&#3629;&#3617;)</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""serviceCarToll"" value=""บริการรถยก""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3585;, "
        sql = sql & " 																		&#3619;&#3606;&#3621;&#3634;&#3585;&#3592;&#3641;&#3591;(&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;)</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""serviceCarInstall"" value=""บริการติดตั้ง""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3605;&#3636;&#3604;&#3605;&#3633;&#3657;&#3591;/&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><input type=""checkbox"" name=""serviceCarInfo"" value=""เพิ่มเติม""></td>"
        sql = sql & " 																	<td height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3604;&#3641;&#3607;&#3637;&#3656; "
        sql = sql & " 																		""&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;""</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""155"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""247"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        ' =======================================Start Sub Question =============================
        Dim i As Integer
        Dim q(3) As Integer
        Dim TempObjQueue As IEnumerator = subQuestions.GetEnumerator()
        TempObjQueue.MoveNext()
        For i = 1 To subQuestions.Count
            q.SetValue(TempObjQueue.Current, i)
            TempObjQueue.MoveNext()
        Next


        If q.GetValue(1) = 1 Or q.GetValue(2) = 1 Or q.GetValue(3) = 1 Then
            sql = sql & ServiceCarSubQuestion(subQuestions)
        End If

        '=========================================End Sub Question ================]==============
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        sql = sql & " 																<textarea name=""serviceCarMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px""></textarea>"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function
    Function ServiceCarSubQuestion(ByVal tempSubQuestion As Queue) As String
        Dim sql As String
        Dim Qnum As Integer = tempSubQuestion.Count
        Dim subQuestion As New Queue
        subQuestion = tempSubQuestion.Clone

        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3651;&#3604;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3651;&#3604;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"

        Dim i As Integer, val As Integer
        For i = 0 To Qnum - 1
            val = subQuestion.Dequeue
            If val = 1 Then
                Select Case i + 1
                    Case 1
                        '======================== Sub Question 1 ==================================
                        sql = sql & ServiceCarSubQCar()
                    Case 2
                        '======================== Sub Question 2 ==================================
                        sql = sql & ServiceCarSubQBike()
                    Case 3
                        '======================== Sub Question 3 ==================================
                        sql = sql & ServiceCarSubQTruck()
                End Select
            End If
        Next

        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"

        Return sql
    End Function
    Function ServiceCarSubQCar() As String
        Dim sql As String

        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarCBrand"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarCBrand"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""serviceCarCBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarCType"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarCType"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""serviceCarCType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function ServiceCarSubQBike() As String
        Dim sql As String


        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarBBrand"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarBBrand"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""serviceCarBBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarBType"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarBType"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""serviceCarBType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function ServiceCarSubQTruck() As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarTBrand"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarTBrand"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""serviceCarTBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"" colspan=""3"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarTType"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;, "
        sql = sql & " 																		&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3611;&#3632;&#3611;&#3609;&#3585;&#3633;&#3609;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""serviceCarTType"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3592;&#3634;&#3632;&#3592;&#3591;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625;:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""serviceCarTType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function

    '===========================salePart Question ==========================
    Function salePartQuestion(ByVal headTxt As String) As String
        Dim sql As String

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"""
        sql = sql & " 										class=""Font_black"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7"" bgcolor=""#cbd9f3""><div align=""center""><strong>General "
        sql = sql & " 																	Information about your Business Form</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3611;&#3655;&#3609;&#3605;&#3633;&#3623;&#3649;&#3607;&#3609;&#3607;&#3637;&#3656;&#3652;&#3604;&#3657;&#3619;&#3633;&#3610;&#3585;&#3634;&#3619;&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3629;&#3618;&#3656;&#3634;&#3591;&#3648;&#3611;&#3655;&#3609;&#3607;&#3634;&#3591;&#3585;&#3634;&#3619;?</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""salePartOfficial"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3611;&#3655;&#3609;&#3612;&#3641;&#3657;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""salePartOfficial"" value=""1"" ></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3650;&#3604;&#3618;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20""><input name=""salePartOfficial_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""salePartType"" value=""ผู้จำหน่ายสินค้าใหม่"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3651;&#3627;&#3617;&#3656;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""salePartType"" value=""ผู้จำหน่ายสินค้ามือสอง""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""salePartType"" value=""ผู้จำหน่ายสินค้าใหม่และมือสอง""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3651;&#3627;&#3617;&#3656;&#3649;&#3621;&#3632;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3607;&#3637;&#3656;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><div align=""center"">"
        sql = sql & " 																			<input name=""salePartKind"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"">"
        sql = sql & " 																		</div>"
        sql = sql & " 																	</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""salePartInstall"" value=""บริการติดตั้ง""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3605;&#3636;&#3604;&#3605;&#3633;&#3657;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""checkbox"" name=""salePartInfo"" value=""เพิ่มเติม""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3604;&#3641;&#3607;&#3637;&#3656; "
        sql = sql & " 																		""&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;""</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        sql = sql & " 																<textarea name=""salePartMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px""></textarea>"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function

    Function salePartQuestionShow(ByVal headTxt As String, ByVal myBuz As infoSalePart) As String
        Dim sql As String

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"""
        sql = sql & " 										class=""Font_black"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7"" bgcolor=""#cbd9f3""><div align=""center""><strong>General "
        sql = sql & " 																	Information about your Business Form</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3611;&#3655;&#3609;&#3605;&#3633;&#3623;&#3649;&#3607;&#3609;&#3607;&#3637;&#3656;&#3652;&#3604;&#3657;&#3619;&#3633;&#3610;&#3585;&#3634;&#3619;&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3629;&#3618;&#3656;&#3634;&#3591;&#3648;&#3611;&#3655;&#3609;&#3607;&#3634;&#3591;&#3585;&#3634;&#3619;?</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Official_Dealer = 0 Then
            sql = sql & "<input type=""radio"" name=""salePartOfficial"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""salePartOfficial"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3648;&#3611;&#3655;&#3609;&#3612;&#3641;&#3657;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Official_Dealer = 1 Then
            sql = sql & "<input type=""radio"" name=""salePartOfficial"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""salePartOfficial"" value=""1"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3651;&#3594;&#3656;, "
        sql = sql & " 																		&#3649;&#3605;&#3656;&#3591;&#3605;&#3633;&#3657;&#3591;&#3650;&#3604;&#3618;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.Official_Dealer = 0 Then
            sql = sql & "<input name=""salePartOfficial_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px""></td>"
        Else
            sql = sql & "<input name=""salePartOfficial_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 301px"" value='" & myBuz.Official_Dealer_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Dealer_Type = "ผู้จำหน่ายสินค้าใหม่" Then
            sql = sql & "<input type=""radio"" name=""salePartType"" value=""ผู้จำหน่ายสินค้าใหม่"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""salePartType"" value=""ผู้จำหน่ายสินค้าใหม่"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3651;&#3627;&#3617;&#3656;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Dealer_Type = "ผู้จำหน่ายสินค้ามือสอง" Then
            sql = sql & "<input type=""radio"" name=""salePartType"" value=""ผู้จำหน่ายสินค้ามือสอง"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""salePartType"" value=""ผู้จำหน่ายสินค้ามือสอง""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Dealer_Type = "ผู้จำหน่ายสินค้าใหม่และมือสอง" Then
            sql = sql & "<input type=""radio"" name=""salePartType"" value=""ผู้จำหน่ายสินค้าใหม่และมือสอง"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""salePartType"" value=""ผู้จำหน่ายสินค้าใหม่และมือสอง""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3651;&#3627;&#3617;&#3656;&#3649;&#3621;&#3632;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3607;&#3637;&#3656;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><div align=""center"">"
        If myBuz.Item_type = "" Then
            sql = sql & " 		<input name=""salePartKind"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"">"
        Else
            sql = sql & " 		<input name=""salePartKind"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value='" & myBuz.Item_type & "'>"
        End If
        sql = sql & " 																		</div>"
        sql = sql & " 																	</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0"" valign=""top""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"

        Dim InfoSalePart_About As Queue
        InfoSalePart_About = InfoSalePartDB.getInfoSalePartAbout(myBuz.SalePart_ID)

        If InfoSalePart_About.Contains("บริการติดตั้ง") Then
            sql = sql & "<input type=""checkbox"" name=""salePartInstall"" value=""บริการติดตั้ง"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""salePartInstall"" value=""บริการติดตั้ง""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3605;&#3636;&#3604;&#3605;&#3633;&#3657;&#3591;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If InfoSalePart_About.Contains("เพิ่มเติม") Then
            sql = sql & "<input type=""checkbox"" name=""salePartInfo"" value=""เพิ่มเติม"" checked></td>"
        Else
            sql = sql & "<input type=""checkbox"" name=""salePartInfo"" value=""เพิ่มเติม""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3604;&#3641;&#3607;&#3637;&#3656; "
        sql = sql & " 																		""&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;""</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        If myBuz.Information = "" Then
            sql = sql & " 			<textarea name=""salePartMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px""></textarea>"
        Else
            sql = sql & " 			<textarea name=""salePartMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px"" >" & myBuz.Information & "</textarea>"
        End If
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function


    '===========================rentCar Question ==========================
    Function rentCarQuestion(ByVal subQuestions As Queue, ByVal headTxt As String) As String
        Dim sql As String





        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3648;&#3594;&#3656;&#3634; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Dim i As Integer
        Dim q(3) As Integer
        Dim TempObjQueue As IEnumerator = subQuestions.GetEnumerator()
        TempObjQueue.MoveNext()
        For i = 1 To subQuestions.Count
            q.SetValue(TempObjQueue.Current, i)
            TempObjQueue.MoveNext()
        Next

        If q.GetValue(1) = 1 Or q.GetValue(2) = 1 Or q.GetValue(3) = 1 Then
            sql = sql & rentCarSubQuestion(subQuestions)
        End If

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"">"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        sql = sql & " 																<textarea name=""rentCarMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px""></textarea>"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function
    Function rentCarSubQuestion(ByVal tempSubQuestion As Queue) As String
        Dim sql As String
        Dim Qnum As Integer = tempSubQuestion.Count
        Dim subQuestion As New Queue
        subQuestion = tempSubQuestion.Clone

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"">"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3607;&#3637;&#3656;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3648;&#3594;&#3656;&#3634;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3607;&#3637;&#3656;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3648;&#3594;&#3656;&#3634;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"

        Dim i As Integer, val As Integer
        For i = 0 To Qnum - 1
            val = subQuestion.Dequeue
            If val = 1 Then
                Select Case i + 1
                    Case 1
                        '======================== start  rent car subquestion 1 ==================================
                        sql = sql & rentCarSubQCar()
                    Case 2
                        '======================== start rent car subquestion 2 ==================================
                        sql = sql & rentCarSubQBike()
                    Case 3
                        '======================== start rent car subquestion 3 ==================================
                        sql = sql & rentCarSubQTruck()
                End Select
            End If
        Next

        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 										</tr>"

        Return sql
    End Function
    Function rentCarSubQCar() As String
        Dim sql As String

        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><input name=""rentCarCBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><input name=""rentCarCType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function rentCarSubQBike() As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><input name=""rentCarBBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><input name=""rentCarBType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function rentCarSubQTruck() As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><input name=""rentCarTBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20""><input name=""rentCarTType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function

    '===========================rentCar Question ==========================
    Function rentCarQuestionShow(ByVal subQuestions As Queue, ByVal headTxt As String, ByVal myBuz As infoRentCar) As String
        Dim sql As String





        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3648;&#3594;&#3656;&#3634; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Dim i As Integer
        Dim q(3) As Integer
        Dim TempObjQueue As IEnumerator = subQuestions.GetEnumerator()
        TempObjQueue.MoveNext()
        For i = 1 To subQuestions.Count
            q.SetValue(TempObjQueue.Current, i)
            TempObjQueue.MoveNext()
        Next

        If q.GetValue(1) = 1 Or q.GetValue(2) = 1 Or q.GetValue(3) = 1 Then
            sql = sql & rentCarSubQuestionShow(subQuestions, myBuz)
        End If

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"">"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        If myBuz.Information = "" Then
            sql = sql & " <textarea name=""rentCarMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px""></textarea>"
        Else
            sql = sql & " <textarea name=""rentCarMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px"" >" & myBuz.Information & "</textarea>"
        End If
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function
    Function rentCarSubQuestionShow(ByVal tempSubQuestion As Queue, ByVal myBuz As infoRentCar) As String
        Dim sql As String
        Dim Qnum As Integer = tempSubQuestion.Count
        Dim subQuestion As New Queue
        subQuestion = tempSubQuestion.Clone

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"">"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;&#3607;&#3637;&#3656;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3648;&#3594;&#3656;&#3634;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;&#3607;&#3637;&#3656;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3648;&#3594;&#3656;&#3634;</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"

        Dim i As Integer, val As Integer
        For i = 0 To Qnum - 1
            val = subQuestion.Dequeue
            If val = 1 Then
                Select Case i + 1
                    Case 1
                        '======================== start  rent car subquestion 1 ==================================
                        sql = sql & rentCarSubQCarShow(myBuz)
                    Case 2
                        '======================== start rent car subquestion 2 ==================================
                        sql = sql & rentCarSubQBikeShow(myBuz)
                    Case 3
                        '======================== start rent car subquestion 3 ==================================
                        sql = sql & rentCarSubQTruckShow(myBuz)
                End Select
            End If
        Next

        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 										</tr>"

        Return sql
    End Function
    Function rentCarSubQCarShow(ByVal myBuz As infoRentCar) As String
        Dim sql As String

        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Car_Brand_txt = "" Then
            sql = sql & "<input name=""rentCarCBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        Else
            sql = sql & "<input name=""rentCarCBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value='" & myBuz.About_Car_Brand_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Car_Type_txt = "" Then
            sql = sql & "<input name=""rentCarCType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        Else
            sql = sql & "<input name=""rentCarCType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value='" & myBuz.About_Car_Type_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function rentCarSubQBikeShow(ByVal myBuz As infoRentCar) As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Bike_Brand_txt = "" Then
            sql = sql & "<input name=""rentCarBBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        Else
            sql = sql & "<input name=""rentCarBBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value='" & myBuz.About_Bike_Brand_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Bike_Type_txt = "" Then
            sql = sql & "<input name=""rentCarBType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        Else
            sql = sql & "<input name=""rentCarBType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value='" & myBuz.About_Bike_Type_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function
    Function rentCarSubQTruckShow(ByVal myBuz As infoRentCar) As String
        Dim sql As String

        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Truck_Brand_txt = "" Then
            sql = sql & "<input name=""rentCarTBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;""></td>"
        Else
            sql = sql & "<input name=""rentCarTBrand_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value='" & myBuz.About_Truck_Brand_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;<strong>&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</strong>:</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td height=""20"">"
        If myBuz.About_Truck_Type_txt = "" Then
            sql = sql & "<input name=""rentCarTType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value=""&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;""></td>"
        Else
            sql = sql & "<input name=""rentCarTType_txt"" type=""text"" class=""Font_black"" style=""WIDTH: 324px"" value='" & myBuz.About_Truck_Type_txt & "'></td>"
        End If
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"

        Return sql
    End Function

    '===========================washCar Question ==========================
    Function washCarQuestion(ByVal subQuestions As Queue, ByVal headTxt As String) As String
        Dim sql As String

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3635;&#3588;&#3623;&#3634;&#3617;&#3626;&#3632;&#3629;&#3634;&#3604;/&#3610;&#3635;&#3619;&#3640;&#3591;&#3619;&#3633;&#3585;&#3625;&#3634;&#3619;&#3606; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"">"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3617;&#3637;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3621;&#3657;&#3634;&#3591; "
        sql = sql & " 																&#3629;&#3633;&#3604; "
        sql = sql & " 																&#3593;&#3637;&#3604;&#3649;&#3610;&#3610;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;(&#3651;&#3594;&#3657;&#3649;&#3619;&#3591;&#3591;&#3634;&#3609;)&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3617;&#3637;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3621;&#3657;&#3634;&#3591;&#3604;&#3657;&#3623;&#3618;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3621;&#3657;&#3634;&#3591;&#3629;&#3633;&#3605;&#3650;&#3609;&#3617;&#3633;&#3605;&#3636;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""carWashNormal"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3617;&#3637;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""carWashNormal"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3617;&#3637;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""carWashAuto"" value=""0"" CHECKED></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3617;&#3637;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20""><input type=""radio"" name=""carWashAuto"" value=""1""></td>"
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3617;&#3637;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        sql = sql & " 																<textarea name=""carWashMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px""></textarea>"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function
    Function washCarQuestionShow(ByVal subQuestions As Queue, ByVal headTxt As String, ByVal myBuz As infoCarWash) As String
        Dim sql As String

        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" height=""21"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/header/h_b_693.gif"""
        sql = sql & " 										class=""H1_white"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td width=""683""><div align=""center"">- " & headTxt & " : "
        sql = sql & " 													&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3635;&#3588;&#3623;&#3634;&#3617;&#3626;&#3632;&#3629;&#3634;&#3604;/&#3610;&#3635;&#3619;&#3640;&#3591;&#3619;&#3633;&#3585;&#3625;&#3634;&#3619;&#3606; "
        sql = sql & " 													-</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/g_693.gif"">"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr bgcolor=""#cbd9f3"">"
        sql = sql & " 														<td height=""20"" colspan=""7"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr bgcolor=""#2a60ae"">"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3617;&#3637;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3621;&#3657;&#3634;&#3591; "
        sql = sql & " 																&#3629;&#3633;&#3604; "
        sql = sql & " 																&#3593;&#3637;&#3604;&#3649;&#3610;&#3610;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;(&#3651;&#3594;&#3657;&#3649;&#3619;&#3591;&#3591;&#3634;&#3609;)&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 														<td width=""330"" height=""20"" bgcolor=""#ffffff""><div align=""center"">&#3617;&#3637;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3621;&#3657;&#3634;&#3591;&#3604;&#3657;&#3623;&#3618;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3621;&#3657;&#3634;&#3591;&#3629;&#3633;&#3605;&#3650;&#3609;&#3617;&#3633;&#3605;&#3636;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;?"
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td width=""5"" bgcolor=""#ffffff""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" colspan=""7"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Wash = 0 Then
            sql = sql & "<input type=""radio"" name=""carWashNormal"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""carWashNormal"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3617;&#3637;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Wash = 1 Then
            sql = sql & "<input type=""radio"" name=""carWashNormal"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""carWashNormal"" value=""1"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3617;&#3637;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td bgcolor=""#eceef0""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Auto_Wash = 0 Then
            sql = sql & "<input type=""radio"" name=""carWashAuto"" value=""0"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""carWashAuto"" value=""0"" ></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3617;&#3637;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 																<tr>"
        sql = sql & " 																	<td width=""20"" height=""20"">"
        If myBuz.Auto_Wash = 1 Then
            sql = sql & "<input type=""radio"" name=""carWashAuto"" value=""1"" CHECKED></td>"
        Else
            sql = sql & "<input type=""radio"" name=""carWashAuto"" value=""1""></td>"
        End If
        sql = sql & " 																	<td width=""3"" height=""20""></td>"
        sql = sql & " 																	<td height=""20"">&#3652;&#3617;&#3656;&#3617;&#3637;</td>"
        sql = sql & " 																</tr>"
        sql = sql & " 															</table>"
        sql = sql & " 														</td>"
        sql = sql & " 														<td bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td height=""3"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""330"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 														<td width=""5"" height=""3"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 											<td><table width=""683"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""All_Border_blue"">"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""20"" bgcolor=""#cbd9f3""><div align=""center""><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592; "
        sql = sql & " 																	(&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 500 "
        sql = sql & " 																	&#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</strong></div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""1"" bgcolor=""#2a60ae""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td bgcolor=""#eceef0""><div align=""center"">"
        If myBuz.Information = "" Then
            sql = sql & " 		<textarea name=""carWashMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px""></textarea>"
        Else
            sql = sql & " 		<textarea name=""carWashMore"" rows=""4"" class=""Font_black_LH_17px"" style=""WIDTH: 667px; HEIGHT: 68px"" >" & myBuz.Information & "</textarea>"
        End If
        sql = sql & " 															</div>"
        sql = sql & " 														</td>"
        sql = sql & " 													</tr>"
        sql = sql & " 													<tr>"
        sql = sql & " 														<td height=""5"" bgcolor=""#eceef0""></td>"
        sql = sql & " 													</tr>"
        sql = sql & " 												</table>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr class=""Font_black"">"
        sql = sql & " 											<td height=""10"" colspan=""3""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td><img src=""../../images/lines/w.gif"" width=""693"" height=""1""></td>"
        sql = sql & " 							</tr>"

        Return sql
    End Function



    '========================= Dealer Homepage files ======================
    Function saleCarHP(ByVal myBuz As infoSaleCar, ByVal infoQ As infoQuestion) As String
        Dim SQL As String
        Dim flag As Boolean = False

        SQL = " <tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_b_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td class=""H1_white"" width=""215"" background=""../images/header/h_b_1.gif"" height=""21"">"
        SQL = SQL & " 								<div align=""center"">ผู้จำหน่ายรถ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_b_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>"
        If infoQ.q1 = 1 Then
            SQL = SQL & " <u>รถยนต์</u>"
            flag = True
        End If
        If infoQ.q2 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถจักรยานยนต์</u>"
            flag = True
        End If
        If infoQ.q3 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถบรรทุก</u>"
            flag = True
        End If

        SQL = SQL & " </strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">รูปแบบ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Official_Dealer = 1 Then
            SQL = SQL & " เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย " & myBuz.Official_Dealer_txt
        Else
            SQL = SQL & " ผู้จำหน่ายทั่วไป"
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">ประเภทผู้จำหน่าย</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">" & myBuz.Dealer_Type & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">บริการ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        Dim sCarAbout As New Queue
        Dim myCarAbout As String
        Dim abt As String = ""

        sCarAbout = InfoSaleCarDB.getInfoSaleCarAbout(myBuz.SaleCar_ID)
        For Each myCarAbout In sCarAbout
            If myCarAbout = "เพิ่มเติม" Then
                abt = abt & "ดูที่ ""ข้อมูลเพิ่มเติมเกี่ยวกับธุรกิจ"", "
            Else
                abt = abt & myCarAbout & ", "
            End If
        Next

        If Len(abt) > 0 Then
            abt = Left(abt, Len(abt) - 2)
        Else
            abt = "-"
        End If
        SQL = SQL & abt
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"

        If infoQ.q1 = 1 Then
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td>"
            SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
            SQL = SQL & " 						border=""0"">"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
            SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""1"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>เกี่ยวกับรายการรถยนต์</strong></td>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr bgColor=""#ffffff"">"
            SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ยี่ห้อรถ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Car_Brand = 0 Then
                SQL = SQL & "ไม่เจาะจงยี่ห้อ(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงยี่ห้อเป็นพิเศษ คือ " & myBuz.About_Car_Brand_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr background=""../images/table/dh_bu_info.gif"">"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ประเภทรถ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Car_Type = 0 Then
                SQL = SQL & "ไม่เจาะจงประเภท(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงประเภทรถเป็นพิเศษ คือ " & myBuz.About_Car_Type_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 					</table>"
            SQL = SQL & " 				</td>"
            SQL = SQL & " 			</tr>"
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 			</tr>"
        End If
        If infoQ.q2 = 1 Then
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td>"
            SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
            SQL = SQL & " 						border=""0"">"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
            SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""1"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>เกี่ยวกับรายการรถจักรยานยนต์</strong></td>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr bgColor=""#ffffff"">"
            SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ยี่ห้อรถ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Bike_Brand = 0 Then
                SQL = SQL & "ไม่เจาะจงยี่ห้อ(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงยี่ห้อเป็นพิเศษ คือ " & myBuz.About_Bike_Brand_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ประเภทรถ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Bike_Type = 0 Then
                SQL = SQL & "ไม่เจาะจงประเภท(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงประเภทรถเป็นพิเศษ คือ " & myBuz.About_Bike_Type_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 					</table>"
            SQL = SQL & " 				</td>"
            SQL = SQL & " 			</tr>"
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 			</tr>"
        End If
        If infoQ.q3 = 1 Then
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td>"
            SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
            SQL = SQL & " 						border=""0"">"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
            SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""1"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>เกี่ยวกับรายการรถบรรทุก</strong></td>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr bgColor=""#ffffff"">"
            SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ยี่ห้อรถ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Truck_Brand = 0 Then
                SQL = SQL & "ไม่เจาะจงยี่ห้อ(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงยี่ห้อเป็นพิเศษ คือ " & myBuz.About_Truck_Brand_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ประเภทรถ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Truck_Type = 0 Then
                SQL = SQL & "ไม่เจาะจงประเภท(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงประเภทรถเป็นพิเศษ คือ " & myBuz.About_Truck_Type_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 					</table>"
            SQL = SQL & " 				</td>"
            SQL = SQL & " 			</tr>"
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 			</tr>"
        End If

        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>ข้อมูลเพิ่มเติมเกี่ยวกับธุรกิจ</strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215""></td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Information = "" Then
            SQL = SQL & "-"
        Else
            SQL = SQL & myBuz.Information
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"

        Return SQL
    End Function
    Function serviceCarDP(ByVal myBuz As infoServiceCar, ByVal infoQ As infoQuestion) As String
        Dim SQL As String
        Dim flag As Boolean = False

        SQL = " <tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_b_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td class=""H1_white"" width=""215"" background=""../images/header/h_b_1.gif"" height=""21"">"
        SQL = SQL & " 								<div align=""center"">ศูนย์บริการ/อู่รถ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_b_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>"

        If infoQ.q1 = 1 Then
            SQL = SQL & " <u>รถยนต์</u>"
            flag = True
        End If
        If infoQ.q2 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถจักรยานยนต์</u>"
            flag = True
        End If
        If infoQ.q3 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถบรรทุก</u>"
            flag = True
        End If

        SQL = SQL & "</strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">รูปแบบ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Official_Dealer = 1 Then
            SQL = SQL & " เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย " & myBuz.Official_Dealer_txt
        Else
            SQL = SQL & " ผู้ให้บริการทั่วไป"
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">ประเภทของบริการ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Dealer_Type = "" Then
            SQL = SQL & "-"
        Else
            SQL = SQL & myBuz.Dealer_Type
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">บริการ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        Dim sCarAbout As New Queue
        Dim myCarAbout As String
        Dim abt As String = ""

        sCarAbout = InfoServiceCarDB.getInfoServiceCarAbout(myBuz.ServiceCar_ID)
        For Each myCarAbout In sCarAbout
            If myCarAbout = "เพิ่มเติม" Then
                abt = abt & "ดูที่ ""ข้อมูลเพิ่มเติมเกี่ยวกับธุรกิจ"", "
            Else
                abt = abt & myCarAbout & ", "
            End If
        Next

        If Len(abt) > 0 Then
            abt = Left(abt, Len(abt) - 2)
        Else
            abt = "-"
        End If
        SQL = SQL & abt
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"
        If infoQ.q1 = 1 Then
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td>"
            SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
            SQL = SQL & " 						border=""0"">"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
            SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""1"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>เกี่ยวกับบริการรถยนต์</strong></td>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr bgColor=""#ffffff"">"
            SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""><FONT face=""Tahoma""></FONT></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ยี่ห้อรถที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Car_Brand = 0 Then
                SQL = SQL & "ไม่เจาะจงยี่ห้อ(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงยี่ห้อเป็นพิเศษ คือ " & myBuz.About_Car_Brand_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ประเภทรถที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Car_Type = 0 Then
                SQL = SQL & "ไม่เจาะจงประเภท(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงประเภทรถเป็นพิเศษ คือ " & myBuz.About_Car_Type_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 					</table>"
            SQL = SQL & " 				</td>"
            SQL = SQL & " 			</tr>"
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 			</tr>"
        End If
        If infoQ.q2 = 1 Then
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td>"
            SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
            SQL = SQL & " 						border=""0"">"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
            SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""1"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>เกี่ยวกับบริการรถจักรยานยนต์</strong></td>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr bgColor=""#ffffff"">"
            SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ยี่ห้อรถที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Bike_Brand = 0 Then
                SQL = SQL & "ไม่เจาะจงยี่ห้อ(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงยี่ห้อเป็นพิเศษ คือ " & myBuz.About_Bike_Brand_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ประเภทรถที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Bike_Type = 0 Then
                SQL = SQL & "ไม่เจาะจงประเภท(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงประเภทรถเป็นพิเศษ คือ " & myBuz.About_Bike_Type_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 					</table>"
            SQL = SQL & " 				</td>"
            SQL = SQL & " 			</tr>"
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 			</tr>"
        End If
        If infoQ.q3 = 1 Then
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td>"
            SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
            SQL = SQL & " 						border=""0"">"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
            SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""1"" height=""21""></td>"
            SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
            SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>เกี่ยวกับบริการรถบรรทุก</strong></td>"
            SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr bgColor=""#ffffff"">"
            SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ยี่ห้อรถที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Truck_Brand = 0 Then
                SQL = SQL & "ไม่เจาะจงยี่ห้อ(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงยี่ห้อเป็นพิเศษ คือ " & myBuz.About_Truck_Brand_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ประเภทรถที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Truck_Type = 0 Then
                SQL = SQL & "ไม่เจาะจงประเภท(ปะปนกัน)"
            Else
                SQL = SQL & "เจาะจงประเภทรถเป็นพิเศษ คือ " & myBuz.About_Truck_Type_txt
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 					</table>"
            SQL = SQL & " 				</td>"
            SQL = SQL & " 			</tr>"
            SQL = SQL & " 			<tr>"
            SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
            SQL = SQL & " 			</tr>"
        End If
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>ข้อมูลเพิ่มเติมเกี่ยวกับธุรกิจ</strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215""></td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Information = "" Then
            SQL = SQL & "-"
        Else
            SQL = SQL & myBuz.Information
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"


        Return SQL
    End Function
    Function salePartHP(ByVal myBuz As infoSalePart, ByVal infoQ As infoQuestion) As String
        Dim SQL As String
        Dim flag As Boolean = False

        SQL = " <tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_b_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td class=""H1_white"" width=""215"" background=""../images/header/h_b_1.gif"" height=""21"">"
        SQL = SQL & " 								<div align=""center"">ผู้จำหน่ายชิ้นส่วน/อะไหล่/ประดับยนต์</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_b_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>สำหรับ"
        If infoQ.q1 = 1 Then
            SQL = SQL & " <u>รถยนต์</u>"
            flag = True
        End If
        If infoQ.q2 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถจักรยานยนต์</u>"
            flag = True
        End If
        If infoQ.q3 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถบรรทุก</u>"
            flag = True
        End If

        SQL = SQL & "</strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">รูปแบบ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Official_Dealer = 1 Then
            SQL = SQL & " เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย " & myBuz.Official_Dealer_txt
        Else
            SQL = SQL & " ผู้จำหน่ายทั่วไป"
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">ประเภทผู้จำหน่าย</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">" & myBuz.Dealer_Type & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">ประเภทสินค้าที่จำหน่าย</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Item_type <> "" Then
            SQL = SQL & myBuz.Item_type & "</td>"
        Else
            SQL = SQL & "-</td>"
        End If

        SQL = SQL & " 							<td width=""5""></td>"

        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">บริการ</div>"
        SQL = SQL & " 							</td>"

        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        Dim sCarAbout As New Queue
        Dim myCarAbout As String
        Dim abt As String = ""

        sCarAbout = InfoSalePartDB.getInfoSalePartAbout(myBuz.SalePart_ID)
        For Each myCarAbout In sCarAbout
            If myCarAbout = "เพิ่มเติม" Then
                abt = abt & "ดูที่ ""ข้อมูลเพิ่มเติมเกี่ยวกับธุรกิจ"", "
            Else
                abt = abt & myCarAbout & ", "
            End If
        Next

        If Len(abt) > 0 Then
            abt = Left(abt, Len(abt) - 2)
        Else
            abt = "-"
        End If
        SQL = SQL & abt
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"


        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>ข้อมูลเพิ่มเติมเกี่ยวกับธุรกิจ</strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215""></td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Information = "" Then
            SQL = SQL & "-"
        Else
            SQL = SQL & myBuz.Information
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"

        Return SQL
    End Function
    Function carRentHP(ByVal myBuz As infoRentCar, ByVal infoQ As infoQuestion) As String
        Dim SQL As String
        Dim flag As Boolean = False

        SQL = " <tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_b_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td class=""H1_white"" width=""215"" background=""../images/header/h_b_1.gif"" height=""21"">"
        SQL = SQL & " 								<div align=""center"">บริการรถเช่า</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_b_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>"
        If infoQ.q1 = 1 Then
            SQL = SQL & " <u>รถยนต์</u>"
            flag = True
        End If
        If infoQ.q2 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถจักรยานยนต์</u>"
            flag = True
        End If
        If infoQ.q3 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถบรรทุก</u>"
            flag = True
        End If

        SQL = SQL & "</strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        If infoQ.q1 = 1 Then
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ประเภทรถยนต์ที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Car_Brand_txt <> "" Then

                SQL = SQL & myBuz.About_Car_Brand_txt
            Else
                SQL = SQL & "-"
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ยี่ห้อรถยนต์ที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Car_Type_txt <> "" Then
                SQL = SQL & myBuz.About_Car_Type_txt
            Else
                SQL = SQL & "-"
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
        End If
        If infoQ.q2 = 1 Then
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ประเภทรถจักรยานยนต์ที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Bike_Brand_txt <> "" Then
                SQL = SQL & myBuz.About_Bike_Brand_txt
            Else
                SQL = SQL & "-"
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ยี่ห้อรถจักรยานยนต์ที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Bike_Type_txt <> "" Then
                SQL = SQL & myBuz.About_Bike_Type_txt
            Else
                SQL = SQL & "-"
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
        End If
        If infoQ.q3 = 1 Then
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ประเภทรถบรรทุกที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Truck_Brand_txt <> "" Then
                SQL = SQL & myBuz.About_Truck_Brand_txt
            Else
                SQL = SQL & "-"
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
            SQL = SQL & " 								<div align=""right"">ยี่ห้อรถบรรทุกที่ให้บริการ</div>"
            SQL = SQL & " 							</td>"
            SQL = SQL & " 							<td colSpan=""3""></td>"
            SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
            If myBuz.About_Truck_Type_txt <> "" Then
                SQL = SQL & myBuz.About_Truck_Type_txt
            Else
                SQL = SQL & "-"
            End If
            SQL = SQL & "</td>"
            SQL = SQL & " 							<td width=""5""></td>"
            SQL = SQL & " 						</tr>"
            SQL = SQL & " 						<tr>"
            SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
            SQL = SQL & " 						</tr>"
        End If
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>ข้อมูลเพิ่มเติมเกี่ยวกับธุรกิจ</strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215""></td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Information = "" Then
            SQL = SQL & "-"
        Else
            SQL = SQL & myBuz.Information
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"

        Return SQL
    End Function
    Function carWashHP(ByVal myBuz As infoCarWash, ByVal infoQ As infoQuestion) As String
        Dim SQL As String
        Dim flag As Boolean = False

        SQL = " <tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_b_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td class=""H1_white"" width=""215"" background=""../images/header/h_b_1.gif"" height=""21"">"
        SQL = SQL & " 								<div align=""center"">บริการทำความสะอาด/บำรุงรักษารถ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_b_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>"
        If infoQ.q1 = 1 Then
            SQL = SQL & " <u>รถยนต์</u>"
            flag = True
        End If
        If infoQ.q2 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถจักรยานยนต์</u>"
            flag = True
        End If
        If infoQ.q3 = 1 Then
            If flag Then
                SQL = SQL & ","
            End If
            SQL = SQL & " <u>รถบรรทุก</u>"
            flag = True
        End If

        SQL = SQL & "</strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">บริการล้างแบบทั่วไป(ใช้แรงงาน)</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Wash = 1 Then
            SQL = SQL & "ไม่มี"
        Else
            SQL = SQL & "มี"
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7""><IMG src=""../images/dividers/dh_bu_info.gif""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215"">"
        SQL = SQL & " 								<div align=""right"">บริการล้างด้วยเครื่องอัตโนมัติ</div>"
        SQL = SQL & " 							</td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Auto_Wash = 1 Then
            SQL = SQL & "ไม่มี"
        Else
            SQL = SQL & "มี"
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td>"
        SQL = SQL & " 					<table class=""Font_black_LH_17px"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background=""../images/table/dh_bu_info.gif"""
        SQL = SQL & " 						border=""0"">"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L5.gif"" width=""5""></td>"
        SQL = SQL & " 							<td width=""215"" background=""../images/header/h_g_1.gif"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""1"" height=""21""></td>"
        SQL = SQL & " 							<td width=""15"" height=""21""><IMG height=""21"" src=""../images/header/h_g_L15.gif"" width=""15""></td>"
        SQL = SQL & " 							<td width=""437"" background=""../images/header/h_g_1.gif"" height=""21""><strong>ข้อมูลเพิ่มเติมเกี่ยวกับธุรกิจ</strong></td>"
        SQL = SQL & " 							<td width=""5"" height=""21""><IMG height=""21"" src=""../images/header/h_g_R5.gif"" width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr bgColor=""#ffffff"">"
        SQL = SQL & " 							<td colSpan=""7"" height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""215""></td>"
        SQL = SQL & " 							<td colSpan=""3""></td>"
        SQL = SQL & " 							<td vAlign=""top"" width=""437"">"
        If myBuz.Information = "" Then
            SQL = SQL & "-"
        Else
            SQL = SQL & myBuz.Information
        End If
        SQL = SQL & "</td>"
        SQL = SQL & " 							<td width=""5""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 						<tr>"
        SQL = SQL & " 							<td colSpan=""7"" height=""3""></td>"
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"
        SQL = SQL & " 				</td>"
        SQL = SQL & " 			</tr>"
        SQL = SQL & " 			<tr>"
        SQL = SQL & " 				<td height=""1""><IMG height=""1"" src=""../images/lines/w.gif"" width=""693""></td>"
        SQL = SQL & " 			</tr>"

        Return SQL
    End Function
    '================ End Dealer Homepage Files =======================

    Function getNumBuz() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim num As Integer

        sql = "SELECT count(*) FROM BusinessType"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            num = Ans_ID.Item(0)
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return num
    End Function
    Function getAllBuzType() As Queue
        Dim ans As Queue
        Dim custinfo As BusinessType
        Dim num As Integer = getNumBuz()
        Dim i As Integer

        For i = 0 To num - 1
            ans.Enqueue(getBuZType(i + 1))
        Next



        Return ans
    End Function

    Function getBuZName(ByVal BuzId As Integer) As BusinessType
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim BuzType As BusinessType

        sql = "SELECT BusinessType_Id, BusinessType_Name, BusinessType_Word, BusinessType_Word2 "
        sql = sql & " FROM BusinessType "
        sql = sql & " WHERE  BusinessType_Id = " & BuzId
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            BuzType.id = Ans_ID.Item("BusinessType_Id")
            BuzType.typeName = String_chk.checkNullDBstr(Ans_ID.Item("BusinessType_Name"))
            BuzType.html = ""
            BuzType.words = String_chk.checkNullDBstr(Ans_ID.Item("BusinessType_Word"))
            BuzType.words2 = String_chk.checkNullDBstr(Ans_ID.Item("BusinessType_Word2"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return BuzType
    End Function
    Function getBuZType(ByVal BuzId As Integer) As BusinessType
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim BuzType As BusinessType

        sql = "SELECT * FROM BusinessType WHERE BusinessType_Id = " & BuzId
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            BuzType.id = Ans_ID.Item(0)
            BuzType.typeName = String_chk.checkNullDBstr(Ans_ID.Item(1))

            Select Case Ans_ID.Item(0)
                Case 1
                    BuzType.html = saleCarHtml()
                Case 2
                    BuzType.html = serviceCarHtml()
                Case 3
                    BuzType.html = salePartHtml()
                Case 4
                    BuzType.html = rentCarHtml()
                Case 5
                    BuzType.html = washCarHtml()
            End Select

            BuzType.words = String_chk.checkNullDBstr(Ans_ID.Item(3))


        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return BuzType
    End Function
    Function getBuZTypeShow(ByVal BuzId As Integer, ByVal cust_id As Integer) As BusinessType
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim BuzType As BusinessType

        sql = "SELECT * FROM BusinessType WHERE BusinessType_Id = " & BuzId
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            BuzType.id = Ans_ID.Item(0)
            BuzType.typeName = String_chk.checkNullDBstr(Ans_ID.Item(1))

            Select Case Ans_ID.Item(0)
                Case 1
                    BuzType.html = saleCarHtmlShow(InfoQuestionDB.getInfoQuestion(cust_id, InfoQuestionDB.questionType(1)))
                Case 2
                    BuzType.html = serviceCarHtmlShow(InfoQuestionDB.getInfoQuestion(cust_id, InfoQuestionDB.questionType(2)))
                Case 3
                    BuzType.html = salePartHtmlShow(InfoQuestionDB.getInfoQuestion(cust_id, InfoQuestionDB.questionType(3)))
                Case 4
                    BuzType.html = rentCarHtmlShow(InfoQuestionDB.getInfoQuestion(cust_id, InfoQuestionDB.questionType(4)))
                Case 5
                    BuzType.html = washCarHtmlShow(InfoQuestionDB.getInfoQuestion(cust_id, InfoQuestionDB.questionType(5)))
            End Select

            BuzType.words = String_chk.checkNullDBstr(Ans_ID.Item(3))


        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return BuzType
    End Function
    Structure BusinessType
        Dim id As Integer
        Dim typeName As String
        Dim html As String
        Dim words As String
        Dim words2 As String

    End Structure
End Module
