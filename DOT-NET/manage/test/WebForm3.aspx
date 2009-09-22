<%@ Page Language="VB" %>
<%@ Import Namespace="System.IO"%>
<%@ Import Namespace="Excel"%>
<%@ Import Namespace="System.Data.OleDb"%>
<%@ Import Namespace="System.Data"%>
<HTML>
	<HEAD>
		<title>ThaiCreate.Com ASP.NET - Excel Application</title>
		<script runat="server">

Dim objConn As OleDbConnection
Dim objCmd As OleDbCommand


Sub Page_Load(sender As Object, e As EventArgs)
Dim strConnString As String
strConnString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath("database/mydatabase.mdb")&";"
objConn = New OleDbConnection(strConnString)
objConn.Open()

IF NOT Page.IsPostBack() Then
BindData()
End IF
End Sub

Sub BindData()
Dim strSQL As String
strSQL = "SELECT * FROM customer"

Dim dtReader As OleDbDataReader
objCmd = New OleDbCommand(strSQL, objConn)
dtReader = objCmd.ExecuteReader()

'*** BindData to Repeater ***'
myRepeater.DataSource = dtReader
myRepeater.DataBind()

dtReader.Close()
dtReader = Nothing

End Sub

Sub Page_UnLoad()
objConn.Close()
objConn = Nothing
End Sub


Sub Button1_Click(sender As Object, e As EventArgs)

Dim FileName As String = "MyXls/MyExcel.xls"

'*** Create Excel.Application ***'
Dim xlApp As New Excel.Application
Dim xlSheet1 As Excel.Worksheet
Dim xlBook As Excel.Workbook

xlBook = xlApp.Workbooks.Add()

xlBook.Application.Visible = False

'*** Create Sheet 1 ***'
xlSheet1 = xlBook.Worksheets(1)
xlSheet1.Name = "My Sheet1"

'*** Header ***'
With xlApp.ActiveSheet.Cells(1,1)
.Value = "CustomerID"
End With
With xlApp.ActiveSheet.Cells(1,2)
.Value = "Name"
End With
With xlApp.ActiveSheet.Cells(1,3)
.Value = "Email"
End With
With xlApp.ActiveSheet.Cells(1,4)
.Value = "CountryCode"
End With
With xlApp.ActiveSheet.Cells(1,5)
.Value = "Budget"
End With
With xlApp.ActiveSheet.Cells(1,6)
.Value = "Used"
End With
'***********'

Dim chkCusID As System.Web.UI.WebControls.CheckBox
Dim lblID As System.Web.UI.WebControls.Label
Dim lblCustomerID,lblName,lblEmail,lblCountryCode,lblBudget,lblUsed As System.Web.UI.WebControls.Label
Dim i,intRows As Integer

intRows = 2

For i = 0 To myRepeater.Items.Count - 1
chkCusID = myRepeater.Items(i).FindControl("chkCustomerID")
lblCustomerID = myRepeater.Items(i).FindControl("lblCustomerID")
lblName = myRepeater.Items(i).FindControl("lblName")
lblEmail = myRepeater.Items(i).FindControl("lblEmail")
lblCountryCode = myRepeater.Items(i).FindControl("lblCountryCode")
lblBudget = myRepeater.Items(i).FindControl("lblBudget")
lblUsed = myRepeater.Items(i).FindControl("lblUsed")
IF chkCusID.Checked = True Then

'*** Detail ***'
With xlApp.ActiveSheet.Cells(intRows,1)
.Value = lblCustomerID.Text
End With

With xlApp.ActiveSheet.Cells(intRows,2)
.Value = lblName.Text
End With

With xlApp.ActiveSheet.Cells(intRows,3)
.Value = lblEmail.Text
End With

With xlApp.ActiveSheet.Cells(intRows,4)
.Value = lblCountryCode.Text
End With

With xlApp.ActiveSheet.Cells(intRows,5)
.Value = lblBudget.Text
End With

With xlApp.ActiveSheet.Cells(intRows,6)
.Value = lblUsed.Text
End With
intRows = intRows + 1
End IF
Next

'*** If Files Already Exist Delete files ***'
Dim MyFile As New FileInfo(Server.MapPath(FileName))
If MyFile.Exists Then
MyFile.Delete()
End IF
MyFile = Nothing

'*** Save Excel ***'
'xlSheet1.PrintOut 1 '*** Print to printer ***'
xlSheet1.SaveAs(Server.MapPath(FileName))
xlApp.Quit()
'System.Runtime.InteropServices.Marshal.ReleaseComObject(xlSheet1)
'System.Runtime.InteropServices.Marshal.ReleaseComObject(xlBook)
'System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp)

'*** Quit and Clear Object ***'
xlSheet1 = Nothing
xlBook = Nothing
xlApp = Nothing

Me.lblText.Text = "Excel Created <a href="& FileName & ">Click here</a> to Download."
End Sub

		</script>
	</HEAD>
	<body>
		<form id="form1" runat="server">
			<table border="1">
				<asp:Repeater id="myRepeater" runat="server">
					<HeaderTemplate>
						<tr>
							<th>
								Select</th>
							<th>
								CustomerID</th>
							<th>
								Name</th>
							<th>
								Email</th>
							<th>
								CountryCode</th>
							<th>
								Budget</th>
							<th>
								Used</th>
						</tr>
					</HeaderTemplate>
					<ItemTemplate>
						<tr>
							<td align="center">
								<asp:CheckBox id="chkCustomerID" runat="server"></asp:CheckBox></td>
							<td align="center">
								<asp:Label id="lblCustomerID" runat="server" Text='<%#Container.DataItem("CustomerID") %>'>
								</asp:Label></td>
							<td>
								<asp:Label id="lblName" runat="server" Text='<%#Container.DataItem("Name") %>'>
								</asp:Label></td>
							<td>
								<asp:Label id="lblEmail" runat="server" Text='<%#Container.DataItem("Email") %>'>
								</asp:Label></td>
							<td align="center">
								<asp:Label id="lblCountryCode" runat="server" Text='<%#Container.DataItem("CountryCode") %>'>
								</asp:Label></td>
							<td align="right">
								<asp:Label id="lblBudget" runat="server" Text='<%#Container.DataItem("Budget") %>'>
								</asp:Label></td>
							<td align="right">
								<asp:Label id="lblUsed" runat="server" Text='<%#Container.DataItem("Used") %>'>
								</asp:Label></td>
						</tr>
					</ItemTemplate>
				</asp:Repeater>
			</table>
			<br>
			<asp:Button id="Button1" onclick="Button1_Click" runat="server" Text="Submit"></asp:Button>
			<hr>
			<asp:Label id="lblText" runat="server"></asp:Label>
		</form>
	</body>
</HTML>
