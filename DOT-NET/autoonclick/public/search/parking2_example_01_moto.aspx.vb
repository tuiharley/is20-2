Public Class parking2_example_01_moto
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
    Protected WithEvents want_comp As System.Web.UI.HtmlControls.HtmlInputHidden
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


        If Request.Form("saveBikeNum") = "" Then
            Response.Redirect("parking1_intro_01_moto.aspx")
        Else
            setLink(Session("CurPage"))
            makeList(Request.Form("saveBikeNum"), Request.Form("saveBike"), Request.Form("saveBikeMsg"))
        End If


        AjaxPro.Utility.RegisterTypeForAjax(GetType(parking2_example_01_moto))
    End Sub
    Private Sub setLink(ByVal cur_Page As String)

        searchResult1.NavigateUrl = "search2_result_moto.aspx?cur_Page=" & cur_Page
        searchAgain1.NavigateUrl = "search1_moto2.aspx?again=yes"
        requestSearch1.NavigateUrl = "request1_moto.aspx"
        'parkingList1.NavigateUrl = "parking2_example_01.htm"

        searchResult2.NavigateUrl = "search2_result_moto.aspx?cur_Page=" & cur_Page
        searchAgain2.NavigateUrl = "search1_moto2.aspx?again=yes"
        requestSearch2.NavigateUrl = "request1_moto.aspx"
        'parkingList2.NavigateUrl = "parking2_example_01.htm"

    End Sub

    Function showList(ByVal carid As Integer, ByVal rowid As Integer, ByVal Msg As String) As String
        Dim sql As String
        Dim n As String
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer

        Dim detailPage As Integer = rowid + 1

        sql = sql & "             <tr>"
        sql = sql & "               <td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/result_li.gif"" class=""Font_black_LH_15px"">"
        sql = sql & "   <tr>"
        sql = sql & "     <td width=""26"" height=""21""><div align=""center"">"
        sql = sql & "       <input type=""checkbox"" name='carCheck' id='carCheck' value='" & carid & "' onClick='getCheckBox(this.checked," & carid & "," & Session("CurPage") & "," & Request.Form("saveBikeNum") & ")'>"
        sql = sql & "     </div></td>"
        sql = sql & "     <td width=""5"" height=""21""></td>"
        sql = sql & "     <td width=""80"" height=""21""></td>"
        sql = sql & "     <td width=""11"" height=""21""></td>"
        sql = sql & "     <td width=""455"" height=""21""><a href='parking3_example_detail_moto_01.aspx?curData=" & detailPage & "&fmp=parking_result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A_H_bold_white_underline"">" & BikeDB.getBrand(carid) & "</a></td>"
        sql = sql & "     <td width=""11"" height=""21""></td>"
        sql = sql & "     <td width=""100"" height=""21"" class=""H1_white""><div align=""center""> ß " & FormatNumber(BikeDB.getPrice(carid), 0, , , TriState.True) & "</div></td>"
        sql = sql & "     <td width=""5"" height=""21""></td>"
        sql = sql & "   </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td height=""5"" colspan=""8""></td>"
        sql = sql & "     </tr>"
        sql = sql & "   <tr>"
        sql = sql & "     <td width=""26"" rowspan=""2""></td>"
        sql = sql & "     <td width=""5"" rowspan=""2""></td>"

        If BikeDB.getMainPic(carid) = "no_image_60x45.gif" Then
            Pics = "../../images/objects/no_image_80x60.gif"
        Else
            Pics = BikeDB.getMainPic(carid)
        End If
        a = New Bitmap(Server.MapPath(Pics))
        resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)

        sql = sql & "     <td rowspan=""2"" width=""80"" height=""80"" ><div align=""center""><a href='parking3_example_detail_moto_01.aspx?curData=" & detailPage & "&fmp=parking_result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "'><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0""></a></div></td>"
        sql = sql & "     <td width=""11"" rowspan=""2""></td>"
        sql = sql & "     <td width=""455"" valign=""top"">" & BikeDB.getBikeInfo(carid)
        sql = sql & "     </td>"
        sql = sql & "     <td width=""11"" rowspan=""2"" ></td>"
        sql = sql & "     <td width=""100"" rowspan=""2""><table width=""100%""  border=""0"" cellspacing=""0"" cellpadding=""0"">"
        sql = sql & "       <tr>"
        sql = sql & "         <td><a href='parking3_example_detail_moto_01.aspx?curData=" & detailPage & "&fmp=parking_result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A80"">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</a></td>"
        sql = sql & "       </tr>"
        sql = sql & "       <tr>"
        sql = sql & "         <td height=""2""></td>"
        sql = sql & "       </tr>"
        sql = sql & "       <tr>"
        sql = sql & "         <td><input class=""button"" id='del" & rowid & "' onmouseover=""document.all.del" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""
        If Request.Form("saveBikeNum") = 1 Then
            sql = sql & "			onclick=""document.form1.carCheck.checked=true;doCommand('5'," & Request.Form("saveBikeNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
        Else
            sql = sql & "			onclick=""document.form1.carCheck[" & rowid & "].checked=true;doCommand('1'," & Request.Form("saveBikeNum") & ");"" onmouseout=""document.all.del" & rowid & ".className='button'"""
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
        sql = sql & "           <input name='M' id='M' type='hidden' value='car:" & carid & ":'>"
        sql = sql & "           <input name='Msg' id='Msg' type=""text"" class=""Font_black"" style=""WIDTH: 320px"" value='" & Msg & "'></td>"
        sql = sql & "         <td><div align=""right"">"


        sql = sql & "        <input class=""button"" id='saveMsg" & rowid & "' onmouseover=""document.all.saveMsg" & rowid & ".className='buttonover'"" style=""CURSOR: hand"""
        sql = sql & "        onclick=""addCarMsg(" & Request.Form("saveBikeNum") & ");"" onmouseout=""document.all.saveMsg" & rowid & ".className='button'"""
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
    Function makeList(ByVal saveCarNum As String, ByVal saveCar As String, ByVal saveCarMsg As String)
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

        If saveCarMsg <> "" Then
            tmpMsg = saveCarMsg.Split(",")
        End If

        Session.Remove("allBike_Parking")
        Dim allC As New Queue

        For i = 0 To tmp.Length - 2
            tmp3 = tmp.GetValue(i)
            tmp2 = tmp3.Split(":")

            cartype = tmp2.GetValue(0)
            carid = tmp2.GetValue(1)

            If saveCarMsg <> "" Then
                If tmpMsg.GetValue(i) <> "" Then
                    tmpMsg3 = tmpMsg.GetValue(i)
                    tmpMsg2 = tmpMsg3.Split(":")
                    Msg = tmpMsg2.GetValue(2)
                End If
            End If


            '============Set Session all car id =========
            allC.Enqueue(carid)
            '============================================

            result.Text = result.Text & showList(carid, i, Msg)

        Next

        Session.Add("allBike_Parking", allC)
    End Function


    <AjaxPro.AjaxMethod()> _
    Public Function goComparePage(ByVal wComp) As String
        Session.Remove("want_comp")
        Session.Add("want_comp", wComp)
        Session("want_comp") = Right(Session("want_comp"), Session("want_comp").length - 1)

        Return "compare/frameset_compare_moto_parking.aspx"
        'Return wComp
    End Function
End Class
