Imports System.Data
Imports System.Data.OleDb
Public Class offer6_intro
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents show_data As System.Web.UI.WebControls.Label
    Protected WithEvents dealerRegis As System.Web.UI.WebControls.HyperLink

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
        Dim conn As New OleDbConnection(Session("conn"))
        conn.Open()

        Dim command As OleDbCommand
        Dim rd As OleDbDataReader

        Dim Sql As String
        Dim url As String

        Session.Clear()
        Session.Add("conn", DBConnect.getStrDBConnect)


        Sql = "SELECT Package_Id, Package_Category, Package_Name, Package_Week, Package_Pic, Package_Price FROM Package WHERE (Package_Type = 1) AND (Package_StartDate <= GETDATE()) AND (Package_StopDate >= GETDATE() OR Package_StopDate IS NULL)"
        command = New OleDbCommand(Sql, conn)
        rd = command.ExecuteReader()
        While rd.Read()

            Select Case rd.Item(0)
                Case 1
                    url = "offer1_car_datas.aspx"
                Case 2
                    url = "offer1_moto_datas.aspx"
                Case 3
                    url = "offer1_truck_datas.aspx"
                Case 4
                    url = "offer1_part_datas.aspx"
            End Select

            show_data.Text = show_data.Text & showPrivatePackage(rd.Item("Package_Id"), rd.Item("Package_Category"), rd.Item("Package_Name"), rd.Item("Package_Week"), rd.Item("Package_Pic"), rd.Item("Package_Price"), url)
            
        End While

        rd.Close()
        command.Dispose()
        conn.Close()


    End Sub
    Private Function showPrivatePackage(ByVal package_id As Integer, ByVal cat As Integer, ByVal package_name As String, ByVal period As Integer, ByVal package_pics As Integer, ByVal package_price As Double, ByVal link_to As String) As String
        Dim result As String
        result = "<tr>"
        result = result & "<td width='246' height='26'><div align='center'>" & package_name & "</div>"
        result = result & "</td>"
        result = result & "<td width='106' height='26'><div align='center'>" & period & " เดือน</div>"
        result = result & "</td>"
        result = result & "<td width='107' height='26'><div align='center'>" & package_pics & " รูป</div>"
        result = result & "</td>"
        result = result & "<td width='105' height='26'><div align='center'>" & FormatNumber(package_price) & " บาท</div>"
        result = result & "</td>"
        result = result & "<td width='129' height='26'><div align='center'><img src='../../images/objects/so_ar_o_b.gif' width='19' height='9'><a href='" & link_to & "?package_id=" & package_id & "' class='A_black_underline'>&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</a></div>"
        result = result & "</td>"
        result = result & "</tr>"

        Return result
    End Function
End Class
