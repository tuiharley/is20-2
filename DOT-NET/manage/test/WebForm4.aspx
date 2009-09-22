<%@ Page Language="VB" %>
<%@ Import Namespace="System.IO"%>
<%@ Import Namespace="Excel"%>
<%@ Import Namespace="System.Data.OleDb"%>
<%@ Import Namespace="System.Data"%>
<HTML>
	<HEAD>
		<title>ThaiCreate.Com ASP.NET - Excel Application</title>
		<script runat="server">

Sub Page_Load(sender As Object, e As EventArgs)
Dim objConn As New OleDbConnection
Dim dtAdapter As OleDbDataAdapter
Dim dt As New System.Data.DataTable

Dim strConnString As String
strConnString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath("database/mydatabase.mdb")&";"
objConn = New OleDbConnection(strConnString)
objConn.Open()

Dim strSQL As String
strSQL = "SELECT * FROM customer"

'*** Create DataTable ***'
dtAdapter = New OleDbDataAdapter(strSQL, objConn)
dtAdapter.Fill(dt)

'*** Export To Excel ***'
Dim FileName As String
FileName = "MyXls/MyExcel.xls"

'*** Create Excel.Application ***'
Dim xlApp As New Excel.Application
Dim xlSheet1 As Excel.Worksheet
Dim xlBook As Excel.Workbook
Dim i As Integer
Dim intRows As Integer

xlBook = xlApp.Workbooks.Add()
xlBook.Application.Visible = False

'*** Create Sheet 1 ***'
xlSheet1 = xlBook.Worksheets(1)
xlSheet1.Name = "My Sheet1"

'*** Width & Height (A1:A1) ***'
With xlApp.ActiveSheet.Range("A1:A1")
.ColumnWidth = 10.0
End With
With xlApp.ActiveSheet.Range("B1:B1")
.ColumnWidth = 13.0
End With
With xlApp.ActiveSheet.Range("C1:C1")
.ColumnWidth = 23.0
End With
With xlApp.ActiveSheet.Range("D1:D1")
.ColumnWidth = 12.0
End With
With xlApp.ActiveSheet.Range("E1:E1")
.ColumnWidth = 13.0
End With
With xlApp.ActiveSheet.Range("F1:F1")
.ColumnWidth = 12.0
End With

With xlApp.ActiveSheet.Range("A1:F1")
.BORDERS.Weight = 1
.MergeCells = True
.Font.Bold = True
.Font.Size = 20
.HorizontalAlignment = -4108
End With
With xlApp.ActiveSheet.Cells(1,1)
.Value = "Customer Report"
End With

'*** Header ***'
With xlApp.ActiveSheet.Cells(2,1)
.Value = "CustomerID"
.Font.Bold = True
.VerticalAlignment = -4108
.HorizontalAlignment = -4108
.BORDERS.Weight = 1
End With
With xlApp.ActiveSheet.Cells(2,2)
.Value = "Name"
.Font.Bold = True
.VerticalAlignment = -4108
.HorizontalAlignment = -4108
.BORDERS.Weight = 1
End With
With xlApp.ActiveSheet.Cells(2,3)
.Value = "Email"
.Font.Bold = True
.VerticalAlignment = -4108
.HorizontalAlignment = -4108
.BORDERS.Weight = 1
End With
With xlApp.ActiveSheet.Cells(2,4)
.Value = "CountryCode"
.Font.Bold = True
.VerticalAlignment = -4108
.HorizontalAlignment = -4108
.BORDERS.Weight = 1
End With
With xlApp.ActiveSheet.Cells(2,5)
.Value = "Budget"
.Font.Bold = True
.VerticalAlignment = -4108
.HorizontalAlignment = -4108
.BORDERS.Weight = 1
End With
With xlApp.ActiveSheet.Cells(2,6)
.Value = "Used"
.Font.Bold = True
.VerticalAlignment = -4108
.HorizontalAlignment = -4108
.BORDERS.Weight = 1
End With
'***********'

intRows = 3
For i = 0 To dt.Rows.Count - 1
'*** Detail ***'
With xlApp.ActiveSheet.Cells(intRows,1)
.Value = dt.Rows(i)("CustomerID")
.BORDERS.Weight = 1
.HorizontalAlignment = -4108
End With
With xlApp.ActiveSheet.Cells(intRows,2)
.Value = dt.Rows(i)("Name")
.BORDERS.Weight = 1
End With
With xlApp.ActiveSheet.Cells(intRows,3)
.Value = dt.Rows(i)("Email")
.BORDERS.Weight = 1
End With
With xlApp.ActiveSheet.Cells(intRows,4)
.Value = dt.Rows(i)("CountryCode")
.HorizontalAlignment = -4108
.BORDERS.Weight = 1
End With
With xlApp.ActiveSheet.Cells(intRows,5)
.Value = FormatNumber(dt.Rows(i)("Budget"),2)
.BORDERS.Weight = 1
End With
With xlApp.ActiveSheet.Cells(intRows,6)
.Value = FormatNumber(dt.Rows(i)("Used"),2)
.BORDERS.Weight = 1
End With
intRows = intRows + 1
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

'*** Quit and Clear Object ***'
xlSheet1 = Nothing
xlBook = Nothing
xlApp = Nothing

'*** End Export To Excel ***'

Me.lblText.Text = "Excel Created <a href="& FileName & ">Click here</a> to Download."

dtAdapter = Nothing
objConn.Close()
objConn = Nothing

End Sub


		</script>
	</HEAD>
	<body>
		<form id="form1" runat="server">
			<asp:Label id="lblText" runat="server"></asp:Label>
		</form>
	</body>
</HTML>
