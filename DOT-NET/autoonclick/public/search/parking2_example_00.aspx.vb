Public Class parking2_example_00
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents searchResult1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchAgain1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList1 As System.Web.UI.WebControls.Label
    Protected WithEvents searchResult2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchAgain2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents result As System.Web.UI.WebControls.Label
    Protected WithEvents carNum As System.Web.UI.HtmlControls.HtmlInputHidden

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim oldCarNum As String = Request.Form("saveCarNum")
        Dim oldCarSave As String = Request.Form("saveCar")
        Dim newCookie As String
        Dim newCar As Array


        If oldCarNum <> "" Then
            newCookie = Cookies.removeExpireCar(Cookies.checkCarCookie(oldCarNum, oldCarSave))
            If newCookie <> "" Then
                newCar = Split(newCookie, "|#|")

                Session("saveCarNum") = newCar.GetValue(0)
                Session("saveCar") = newCar.GetValue(1)
            Else
                Response.Redirect("parking1_intro_00.aspx")
            End If
        Else
            Response.Redirect("parking1_intro_00.aspx")
        End If



        'If Session("saveCarNum") = "" Then
        If newCar.GetValue(0) = "" Then
            Response.Redirect("parking1_intro_00.aspx")
        Else
            'setLink(Session("CurPage"))
            'makeList(Session("saveCarNum"), Request.Form("saveCar"), Request.Form("saveCarMsg"))
            makeList(newCar.GetValue(0), newCar.GetValue(1))
        End If


        AjaxPro.Utility.RegisterTypeForAjax(GetType(parking2_example_00))
    End Sub
    Private Sub setLink(ByVal cur_Page As String)

        'searchResult1.NavigateUrl = "search2_result_car.aspx?cur_Page=" & cur_Page
        'searchAgain1.NavigateUrl = "search1_car2.aspx?again=yes"
        'requestSearch1.NavigateUrl = "request1_car.aspx"
        ''parkingList1.NavigateUrl = "parking2_example_01.htm"

        'searchResult2.NavigateUrl = "search2_result_car.aspx?cur_Page=" & cur_Page
        'searchAgain2.NavigateUrl = "search1_car2.aspx?again=yes"
        'requestSearch2.NavigateUrl = "request1_car.aspx"
        ''parkingList2.NavigateUrl = "parking2_example_01.htm"

    End Sub

    Function showList(ByVal carid As Integer, ByVal rowid As Integer, ByVal Msg As String, ByVal Cur As Integer) As String
        Dim sql As String
        Dim n As String
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer

        Dim detailPage As Integer = Cur

        sql = sql & "             <tr>"
        sql = sql & "               <td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/result_li.gif"" class=""Font_black_LH_15px"">"
        sql = sql & "   <tr>"
        sql = sql & "     <td width=""26"" height=""21""><div align=""center"">"
        sql = sql & "       <input type=""checkbox"" name='carCheck' id='carCheck' value='car:" & carid & "' onClick='getCheckBox(this.checked,this.value," & Session("saveCarNum") & ",1," & rowid & ")'>"
        sql = sql & "     </div></td>"
        sql = sql & "     <td width=""5"" height=""21""></td>"
        sql = sql & "     <td width=""80"" height=""21""></td>"
        sql = sql & "     <td width=""11"" height=""21""></td>"
        sql = sql & "     <td width=""455"" height=""21""><a href='parking3_example_detail_car_00.aspx?curData=" & detailPage & "&fmp=parking_result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A_H_bold_white_underline"">" & CarDB.getBrand(carid) & "</a></td>"
        sql = sql & "     <td width=""11"" height=""21""></td>"
        sql = sql & "     <td width=""100"" height=""21"" class=""H1_white""><div align=""center""> ฿ " & FormatNumber(CarDB.getPrice(carid), 0, , , TriState.True) & "</div></td>"
        sql = sql & "     <td width=""5"" height=""21""></td>"
        sql = sql & "   </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td height=""5"" colspan=""8""></td>"
        sql = sql & "     </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td width=""26"" rowspan=""2""></td>"
        sql = sql & "     <td width=""5"" rowspan=""2""></td>"

        If CarDB.getMainPic2(carid) = "no_image_60x45.gif" Then
            Pics = "../../images/objects/no_image_80x60.gif"
        Else
            Pics = CarDB.getMainPic2(carid)
        End If
        a = New Bitmap(Server.MapPath(Pics))
        resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)

        sql = sql & "     <td rowspan=""2"" width=""80"" height=""80"" ><div align=""center""><a href='parking3_example_detail_car_00.aspx?curData=" & detailPage & "&fmp=parking_result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "'><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0""></a></div></td>"
        sql = sql & "     <td width=""11"" rowspan=""2""></td>"
        'sql = sql & "     <td width=""455"" valign=""top"">" & CarDB.getCarInfo(carid)
        sql = sql & "     </td>"
        sql = sql & "     <td width=""11"" rowspan=""2"" ></td>"
        sql = sql & "     <td width=""100"" rowspan=""2""><table width=""100%""  border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & "       <tr>"
        sql = sql & "         <td><a href='parking3_example_detail_car_00.aspx?curData=" & detailPage & "&fmp=parking_result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A80"">รายละเอียด</a></td>"
        sql = sql & "       </tr>"
        sql = sql & "       <tr>"
        sql = sql & "         <td height=""2""></td>"
        sql = sql & "       </tr>"
        sql = sql & "       <tr>"
        sql = sql & "         <td><input class=""button"" id='del" & rowid & "' onmouseover=""document.all.del" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""

        If Session("saveCarNum") = 1 Then
            sql = sql & "			onclick=""document.form1.carCheck.checked=true;doCommand('5'," & Session("saveCarNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
        Else
            sql = sql & "			onclick=""document.form1.carCheck[" & rowid & "].checked=true;doCommand('1'," & Session("saveCarNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
        End If
        sql = sql & "			type=""button"" value='ลบ' name=""del" & rowid & """></td>"
        sql = sql & "       </tr>"
        sql = sql & "     </table>	      </td>"
        sql = sql & "     <td width=""5"" rowspan=""2""></td>"
        sql = sql & "   </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td width=""455"" valign=""bottom""><table width=""100%""  border=""0"" cellspacing=""0"" cellpadding=""0""><tr><td>"
        If CarDB.getNumPic(carid) > 1 Then
            sql = sql & "<div  onClick='picPopUp(" & carid & ",1);' style=""CURSOR: hand""><IMG height='9' src='../../images/objects/moreimages.gif' width='12' border=""0""></div>"
        Else
            sql = sql & "&nbsp;"
        End If
        sql = sql & "       </tr></td><tr>"
        sql = sql & "         <td>&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617; :"
        sql = sql & "           <input name='checkB' id='checkB' type='hidden' >"
        sql = sql & "           <input name='M' id='M' type='hidden' value='car:" & carid & ":'>"
        sql = sql & "           <input name='Msg' id='Msg' type=""text"" maxlength='50' class=""Font_black"" style=""WIDTH: 245px"" value='" & Msg & "'></td>"
        sql = sql & "         <td><div align=""right"">"


        sql = sql & "        <input class=""button"" id='saveMsg" & rowid & "' onmouseover=""document.all.saveMsg" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""

        If Session("saveCarNum") = 1 Then
            sql = sql & "        onclick=""document.form1.carCheck.checked=true;addCar(" & Session("saveCarNum") & ");alert('ประกาศถูกบันทึกแล้วค่ะ');"" onmouseout=""document.all.saveMsg" & rowid & ".className='button'"""
        Else
            sql = sql & "        onclick=""document.form1.carCheck[" & rowid & "].checked=true;addCar(" & Session("saveCarNum") & ");alert('ประกาศถูกบันทึกแล้วค่ะ');"" onmouseout=""document.all.saveMsg" & rowid & ".className='button'"""
        End If

        sql = sql & "          type=""button"" value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;' name=""saveMsg" & rowid & """>"

        sql = sql & "          </div></td>"
        sql = sql & "       </tr>"
        sql = sql & "     </table></td>"
        sql = sql & "   </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td height=""5"" colspan=""8""><img src=""../../images/dividers/result.gif"" width=""693"" height=""5""></td>"
        sql = sql & "     </tr>"
        sql = sql & " </table></td>"
        sql = sql & "             </tr>"

        Return sql
    End Function
    Function showListMoto(ByVal carid As Integer, ByVal rowid As Integer, ByVal Msg As String, ByVal Cur As Integer) As String
        Dim sql As String
        Dim n As String
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer

        Dim detailPage As Integer = Cur

        sql = sql & "             <tr>"
        sql = sql & "               <td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/result_li.gif"" class=""Font_black_LH_15px"">"
        sql = sql & "   <tr>"
        sql = sql & "     <td width=""26"" height=""21""><div align=""center"">"
        sql = sql & "       <input type=""checkbox"" name='carCheck' id='carCheck' value='bike:" & carid & "' onClick='getCheckBox(this.checked,this.value," & Session("saveCarNum") & ",2," & rowid & ")'>"
        sql = sql & "     </div></td>"
        sql = sql & "     <td width=""5"" height=""21""></td>"
        sql = sql & "     <td width=""80"" height=""21""></td>"
        sql = sql & "     <td width=""11"" height=""21""></td>"
        sql = sql & "     <td width=""455"" height=""21""><a href='parking3_example_detail_moto_00.aspx?curData=" & detailPage & "&fmp=parking_result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A_H_bold_white_underline"">" & BikeDB.getBrand(carid) & "</a></td>"
        sql = sql & "     <td width=""11"" height=""21""></td>"
        sql = sql & "     <td width=""100"" height=""21"" class=""H1_white""><div align=""center""> ฿ " & FormatNumber(BikeDB.getPrice(carid), 0, , , TriState.True) & "</div></td>"
        sql = sql & "     <td width=""5"" height=""21""></td>"
        sql = sql & "   </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td height=""5"" colspan=""8""></td>"
        sql = sql & "     </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td width=""26"" rowspan=""2""></td>"
        sql = sql & "     <td width=""5"" rowspan=""2""></td>"

        If BikeDB.getMainPic2(carid) = "no_image_60x45.gif" Then
            Pics = "../../images/objects/no_image_80x60.gif"
        Else
            Pics = BikeDB.getMainPic2(carid)
        End If
        a = New Bitmap(Server.MapPath(Pics))
        resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)

        sql = sql & "     <td rowspan=""2"" width=""80"" height=""80"" ><div align=""center""><a href='parking3_example_detail_moto_00.aspx?curData=" & detailPage & "&fmp=parking_result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "'><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0""></a></div></td>"
        sql = sql & "     <td width=""11"" rowspan=""2""></td>"
        sql = sql & "     <td width=""455"" valign=""top"">" & BikeDB.getBikeInfo(carid)
        sql = sql & "     </td>"
        sql = sql & "     <td width=""11"" rowspan=""2"" ></td>"
        sql = sql & "     <td width=""100"" rowspan=""2""><table width=""100%""  border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & "       <tr>"
        sql = sql & "         <td><a href='parking3_example_detail_moto_00.aspx?curData=" & detailPage & "&fmp=parking_result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A80"">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</a></td>"
        sql = sql & "       </tr>"
        sql = sql & "       <tr>"
        sql = sql & "         <td height=""2""></td>"
        sql = sql & "       </tr>"

        sql = sql & "       <tr>"
        sql = sql & "         <td><input class=""button"" id='del" & rowid & "' onmouseover=""document.all.del" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""
        If Session("saveCarNum") = 1 Then
            sql = sql & "			onclick=""document.form1.carCheck.checked=true;doCommand('5'," & Session("saveCarNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
        Else
            sql = sql & "			onclick=""document.form1.carCheck[" & rowid & "].checked=true;doCommand('1'," & Session("saveCarNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
        End If

        sql = sql & "			type=""button"" value='&#3621;&#3610;' name=""del" & rowid & """></td>"
        sql = sql & "       </tr>"

        sql = sql & "     </table>	      </td>"
        sql = sql & "     <td width=""5"" rowspan=""2""></td>"
        sql = sql & "   </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td width=""455"" valign=""bottom""><table width=""100%""  border=""0"" cellspacing=""0"" cellpadding=""0""><tr><td>"
        If BikeDB.getNumPic(carid) > 1 Then
            sql = sql & "<div  onClick='picPopUp(" & carid & ",2);' style=""CURSOR: hand""><IMG height='9' src='../../images/objects/moreimages.gif' width='12' border=""0""></div>"
        Else
            sql = sql & "&nbsp;"
        End If
        sql = sql & "       </tr></td><tr>"
        sql = sql & "         <td>&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617; :"
        sql = sql & "           <input name='checkB' id='checkB' type='hidden' >"
        sql = sql & "           <input name='M' id='M' type='hidden' value='bike:" & carid & ":'>"
        sql = sql & "           <input name='Msg' id='Msg' type=""text"" maxlength='50' class=""Font_black"" style=""WIDTH: 245px"" value='" & Msg & "'></td>"
        sql = sql & "         <td><div align=""right"">"


        sql = sql & "        <input class=""button"" id='saveMsg" & rowid & "' onmouseover=""document.all.saveMsg" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""

        If Session("saveCarNum") = 1 Then
            sql = sql & "        onclick=""document.form1.carCheck.checked=true;addCar(" & Session("saveCarNum") & ");alert('ประกาศถูกบันทึกแล้วค่ะ');"" onmouseout=""document.all.saveMsg" & rowid & ".className='button'"""
        Else
            sql = sql & "        onclick=""document.form1.carCheck[" & rowid & "].checked=true;addCar(" & Session("saveCarNum") & ");alert('ประกาศถูกบันทึกแล้วค่ะ');"" onmouseout=""document.all.saveMsg" & rowid & ".className='button'"""
        End If

        sql = sql & "          type=""button"" value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;' name=""saveMsg" & rowid & """>"

        sql = sql & "          </div></td>"
        sql = sql & "       </tr>"
        sql = sql & "     </table></td>"
        sql = sql & "   </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td height=""5"" colspan=""8""><img src=""../../images/dividers/result.gif"" width=""693"" height=""5""></td>"
        sql = sql & "     </tr>"
        sql = sql & " </table></td>"
        sql = sql & "             </tr>"

        Return sql
    End Function
    Function showListTruck(ByVal Truckid As Integer, ByVal rowid As Integer, ByVal Msg As String, ByVal Cur As Integer) As String

        Dim n As String
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer


        Dim detailPage As Integer = Cur


        n = " 										<tr>"
        n = n & " 											<td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/result_li.gif"""
        n = n & " 													class=""Font_black_LH_15px"">"
        n = n & " 													<tr>"
        n = n & " 														<td width=""26"" height=""21""><div align=""center"">"
        n = n & " 																<input type=""checkbox"" name='carCheck' id='carCheck' value='truck:" & Truckid & "' onClick='getCheckBox(this.checked,this.value," & Session("saveCarNum") & ",3," & rowid & ")'>"
        n = n & " 															</div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" height=""21""></td>"
        n = n & " 														<td width=""80"" height=""21""></td>"
        n = n & " 														<td width=""11"" height=""21""></td>"
        n = n & " 														<td width=""455"" height=""21""><a href='parking3_example_detail_truck_00.aspx?curData=" & detailPage & "&fmp=result&carid=" & Truckid & "&cur_Page=" & Session("CurPage") & "' class=""A_H_bold_white_underline"">" & TruckDB.getBrand(Truckid) & "</a></td>"
        n = n & " 														<td width=""11"" height=""21""></td>"
        n = n & " 														<td width=""100"" height=""21"" class=""H1_white""><div align=""center""> ฿ " & FormatNumber(TruckDB.getPrice(Truckid), 0, , , TriState.True) & "</div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" height=""21""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""5"" colspan=""8""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td width=""26"" rowspan=""3""></td>"
        n = n & " 														<td width=""5"" rowspan=""3""></td>"

        If TruckDB.getMainPic2(Truckid) = "no_image_60x45.gif" Then
            Pics = "../../images/objects/no_image_80x60.gif"
        Else
            Pics = TruckDB.getMainPic2(Truckid)
        End If
        a = New Bitmap(Server.MapPath(Pics))
        resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)

        'n = n & " 														<td width=""80"" rowspan=""3""><div align=""center""><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' onclick='picPopUp(" & Truckid & ");'></div>"
        n = n & " 														<td rowspan=""3"" width=""80"" height=""80""><div align=""center""><a href='parking3_example_detail_truck_00.aspx?curData=" & detailPage & "&fmp=result&carid=" & Truckid & "&cur_Page=" & Session("CurPage") & "'><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0""></a></div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""11"" rowspan=""3""></td>"
        n = n & " 														<td width=""455"" valign=""top"">" & TruckDB.getTruckInfo(Truckid) & "</td>"
        n = n & " 														<td width=""11"" rowspan=""3""></td>"
        n = n & " 														<td width=""100"" rowspan=""3""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        n = n & " 																<tr>"
        n = n & " 																	<td><a href='parking3_example_detail_truck_00.aspx?curData=" & detailPage & "&fmp=result&carid=" & Truckid & "&cur_Page=" & Session("CurPage") & "' class=""A80"">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</a></td>"
        n = n & " 																</tr>"
        n = n & " 																<tr>"
        n = n & " 																	<td height=""2""></td>"
        n = n & " 																</tr>"

        n = n & "       <tr>"
        n = n & "         <td><input class=""button"" id='del" & rowid & "' onmouseover=""document.all.del" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""
        If Session("saveCarNum") = 1 Then
            n = n & "			onclick=""document.form1.carCheck.checked=true;doCommand('5'," & Session("saveCarNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
        Else
            n = n & "			onclick=""document.form1.carCheck[" & rowid & "].checked=true;doCommand('1'," & Session("saveCarNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
        End If
        n = n & "			type=""button"" value='&#3621;&#3610;' name=""del" & rowid & """></td>"
        n = n & "       </tr>"

        n = n & " 															</table>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" rowspan=""3""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""3""></td>"
        n = n & " 													</tr>"
        n = n & "   <tr>"
        n = n & "     <td width=""455"" valign=""bottom""><table width=""100%""  border=""0"" cellspacing=""0"" cellpadding=""0""><tr><td>"
        If TruckDB.getNumPic(Truckid) > 1 Then
            n = n & "<div onClick='picPopUp(" & Truckid & ",3);' style=""CURSOR: hand""><IMG height='9' src='../../images/objects/moreimages.gif' width='12' border=""0""></div>"
        Else
            n = n & "&nbsp;"
        End If

        n = n & "       </tr></td><tr>"
        n = n & "         <td>&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617; :"
        n = n & "           <input name='checkB' id='checkB' type='hidden' >"
        n = n & "           <input name='M' id='M' type='hidden' value='truck:" & Truckid & ":'>"
        n = n & "           <input name='Msg' id='Msg' type=""text"" maxlength='50' class=""Font_black"" style=""WIDTH: 245px"" value='" & Msg & "'></td>"
        n = n & "         <td><div align=""right"">"


        n = n & "        <input class=""button"" id='saveMsg" & rowid & "' onmouseover=""document.all.saveMsg" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""

        If Session("saveCarNum") = 1 Then
            n = n & "        onclick=""document.form1.carCheck.checked=true;addCar(" & Session("saveCarNum") & ");alert('ประกาศถูกบันทึกแล้วค่ะ');"" onmouseout=""document.all.saveMsg" & rowid & ".className='button'"""
        Else
            n = n & "        onclick=""document.form1.carCheck[" & rowid & "].checked=true;addCar(" & Session("saveCarNum") & ");alert('ประกาศถูกบันทึกแล้วค่ะ');"" onmouseout=""document.all.saveMsg" & rowid & ".className='button'"""
        End If

        n = n & "          type=""button"" value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;' name=""saveMsg" & rowid & """>"

        n = n & "          </div></td>"
        n = n & "       </tr>"
        n = n & "     </table></td>"
        n = n & "   </tr>"
        n = n & "   <tr>"
        n = n & "     <td height=""5"" colspan=""8""><img src=""../../images/dividers/result.gif"" width=""693"" height=""5""></td>"
        n = n & "     </tr>"
        n = n & " </table></td>"
        n = n & "             </tr>"


        Return n
    End Function
    Function showListPart(ByVal PartID As Integer, ByVal rowid As Integer, ByVal Msg As String, ByVal Cur As Integer) As String

        Dim n As String
        Dim myPart As Part = PartsDB.getPart(PartID)
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer

        Dim detailPage As Integer = Cur

        n = " 										<tr>"
        n = n & " 											<td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/result_li.gif"""
        n = n & " 													class=""Font_black_LH_15px"">"
        n = n & " 													<tr>"
        n = n & " 														<td width=""26"" height=""21""><div align=""center"">"
        n = n & " 																<input type=""checkbox"" name='carCheck' id='carCheck' value='part:" & PartID & "' onClick='getCheckBox(this.checked,this.value," & Session("saveCarNum") & ",4," & rowid & ")'>"
        n = n & " 															</div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" height=""21""></td>"
        n = n & " 														<td width=""80"" height=""21""></td>"
        n = n & " 														<td width=""11"" height=""21""></td>"
        Dim brands As String
        brands = PartsTypeDB.getPartTypeName(myPart.Type) & " : " & myPart.Brand
        If myPart.Model <> "" Then
            brands = brands & "/" & myPart.Model
        End If
        n = n & " 														<td width=""455"" height=""21""><a href='parking3_example_detail_part_00.aspx?curData=" & detailPage & "&fmp=result&carid=" & PartID & "&cur_Page=" & Session("CurPage") & "' class=""A_H_bold_white_underline"">" & brands & "</a></td>"
        n = n & " 														<td width=""11"" height=""21""></td>"
        n = n & " 														<td width=""100"" height=""21"" class=""H1_white""><div align=""center""> ฿ " & FormatNumber(myPart.Price, 0, , , TriState.True) & "</div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" height=""21""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""5"" colspan=""8""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td width=""26"" rowspan=""3""></td>"
        n = n & " 														<td width=""5"" rowspan=""3""></td>"

        If PartsDB.getMainPic2(PartID) = "no_image_60x45.gif" Then
            Pics = "../../images/objects/no_image_80x60.gif"
        Else
            Pics = PartsDB.getMainPic2(PartID)
        End If

        a = New Bitmap(Server.MapPath(Pics))
        resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)

        n = n & " 														<td rowspan=""3"" width=""80"" height=""80""><div align=""center""><a href='parking3_example_detail_part_00.aspx?curData=" & detailPage & "&fmp=result&carid=" & PartID & "&cur_Page=" & Session("CurPage") & "'><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0""></a></div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""11"" rowspan=""3""></td>"
        n = n & " 														<td width=""455"" valign=""top"">" & PartsDB.getPartInfo(PartID) & "</td>"
        n = n & " 														<td width=""11"" rowspan=""3""></td>"
        n = n & " 														<td width=""100"" rowspan=""3""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        n = n & " 																<tr>"
        n = n & " 																	<td><a href='parking3_example_detail_part_00.aspx?curData=" & detailPage & "&fmp=result&carid=" & PartID & "&cur_Page=" & Session("CurPage") & "' class=""A80"">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</a></td>"
        n = n & " 																</tr>"
        n = n & " 																<tr>"
        n = n & " 																	<td height=""2""></td>"
        n = n & " 																</tr>"

        n = n & "       <tr>"
        n = n & "         <td><input class=""button"" id='del" & rowid & "' onmouseover=""document.all.del" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""
        If Session("saveCarNum") = 1 Then
            n = n & "			onclick=""document.form1.carCheck.checked=true;doCommand('5'," & Session("saveCarNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
        Else
            n = n & "			onclick=""document.form1.carCheck[" & rowid & "].checked=true;doCommand('1'," & Session("saveCarNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
        End If
        n = n & "			type=""button"" value='&#3621;&#3610;' name=""del" & rowid & """></td>"
        n = n & "       </tr>"

        n = n & " 															</table>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" rowspan=""3""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""3""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr><td width=""455"" valign=""bottom"" >"
        n = n & "       <table width=""100%""  border=""0"" cellspacing=""0"" cellpadding=""0""><tr><td>"
        n = n & "&nbsp;"
        n = n & "       </tr></td><tr>"
        n = n & "         <td>&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617; :"
        n = n & "           <input name='checkB' id='checkB' type='hidden' >"
        n = n & "           <input name='M' id='M' type='hidden' value='part:" & PartID & ":'>"
        n = n & "           <input name='Msg' id='Msg' type=""text"" maxlength='50' class=""Font_black"" style=""WIDTH: 245px"" value='" & Msg & "'></td>"
        n = n & "         <td><div align=""right"">"


        n = n & "        <input class=""button"" id='saveMsg" & rowid & "' onmouseover=""document.all.saveMsg" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""
        If Session("saveCarNum") = 1 Then
            n = n & "        onclick=""document.form1.carCheck.checked=true;addCar(" & Session("saveCarNum") & ");alert('ประกาศถูกบันทึกแล้วค่ะ');"" onmouseout=""document.all.saveMsg" & rowid & ".className='button'"""
        Else
            n = n & "        onclick=""document.form1.carCheck[" & rowid & "].checked=true;addCar(" & Session("saveCarNum") & ");alert('ประกาศถูกบันทึกแล้วค่ะ');"" onmouseout=""document.all.saveMsg" & rowid & ".className='button'"""
        End If

        n = n & "          type=""button"" value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;' name=""saveMsg" & rowid & """>"

        n = n & "          </div></td>"
        n = n & "       </tr>"
        n = n & "     </table></td>"
        n = n & "   </tr>"
        n = n & "   <tr>"
        n = n & "     <td height=""5"" colspan=""8""><img src=""../../images/dividers/result.gif"" width=""693"" height=""5""></td>"
        n = n & "     </tr>"
        n = n & " </table></td>"
        n = n & "             </tr>"


        Return n
    End Function

    Function makeList(ByVal saveCarNum As String, ByVal saveCar As String)
        Dim i As Integer
        Dim cartype As String
        Dim carid As Integer
        Dim tmp As Array
        Dim tmp2 As Array
        Dim tmp3 As String
        Dim tmpMsg As Array
        Dim tmpMsg2 As Array
        Dim tmpMsg3 As String, Msg As String


        tmp = saveCar.Split(",")
        'car:1,car:2,bike:3

        'If saveCarMsg <> "" Then
        '    tmpMsg = saveCarMsg.Split(",")
        'End If
        'car:1:text,bike:2:test text,truck:3:okok

        Session.Remove("allCar_Parking")
        Session.Remove("allBike_Parking")
        Session.Remove("allTruck_Parking")
        Session.Remove("allPart_Parking")

        Dim allC As New Queue
        Dim allB As New Queue
        Dim allT As New Queue
        Dim allP As New Queue
        Dim c As Integer = 0, b As Integer = 0, t As Integer = 0, p As Integer = 0

        For i = 0 To tmp.Length - 2
            Msg = ""
            tmp3 = tmp.GetValue(i)
            tmp2 = tmp3.Split(":")

            cartype = tmp2.GetValue(0)
            carid = tmp2.GetValue(1)
            If tmp2.GetValue(2) <> "" Then
                Msg = tmp2.GetValue(2)
            End If
            'If saveCarMsg <> "" Then
            '    If tmpMsg.GetValue(i) <> "" Then
            '        tmpMsg3 = tmpMsg.GetValue(i)
            '        tmpMsg2 = tmpMsg3.Split(":")
            '        Msg = tmpMsg2.GetValue(2)

            '    End If
            'End If


            Select Case cartype

                Case "car"
                    c = c + 1
                    result.Text = result.Text & showList(carid, i, Msg, c)
                    '============Set Session all car id =========
                    allC.Enqueue(carid)
                    '============================================
                Case "bike"
                    b = b + 1
                    result.Text = result.Text & showListMoto(carid, i, Msg, b)
                    '============Set Session all bike id =========
                    allB.Enqueue(carid)
                    '============================================
                Case "truck"
                    t = t + 1
                    result.Text = result.Text & showListTruck(carid, i, Msg, t)
                    '============Set Session all truck id =========
                    allT.Enqueue(carid)
                    '============================================
                Case "part"
                    p = p + 1
                    result.Text = result.Text & showListPart(carid, i, Msg, p)
                    '============Set Session all part id =========
                    allP.Enqueue(carid)
                    '============================================
            End Select

        Next

        Session.Add("allCar_Parking", allC)
        Session.Add("allBike_Parking", allB)
        Session.Add("allTruck_Parking", allT)
        Session.Add("allPart_Parking", allP)


    End Function


    <AjaxPro.AjaxMethod()> _
    Public Function goComparePage(ByVal wComp As String, ByVal cat As String) As String
        Dim tmpStr As Array, tmpStr2 As Array
        Dim wantComp As String
        Dim i As Integer

        tmpStr = Split(Right(wComp, wComp.Length - 1), ";")
        For i = 0 To tmpStr.Length - 1
            tmpStr2 = Split(tmpStr.GetValue(i), ":")
            wantComp = wantComp & ":" & tmpStr2.GetValue(1)
        Next


        Session.Remove("want_comp")
        Session("want_comp") = Right(wantComp, wantComp.Length - 1)


        Dim url As String
        Select Case cat
            Case "car"
                url = "compare/frameset_compare_car_parking_0.aspx"
            Case "bike"
                url = "compare/frameset_compare_moto_parking_0.aspx"
            Case "truck"
                url = "compare/frameset_compare_truck_parking_0.aspx"
            Case "part"
                url = "compare/frameset_compare_part_parking_0.aspx"
        End Select

        Return url
    End Function
End Class
