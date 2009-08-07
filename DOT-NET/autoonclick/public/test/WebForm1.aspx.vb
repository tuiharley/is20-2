Imports System.Globalization
Imports System.Threading


Public Class WebForm1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents btn1 As System.Web.UI.WebControls.Button
    Protected WithEvents LinkButton1 As System.Web.UI.WebControls.LinkButton

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

        'Response.Write(FormatDateTime("10/14/2007", 0))
        Dim x As DateTime = "2006-11-15 20:47:56.500"
        Dim y As String = "31/5/2550"
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        'Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")

        System.Convert.ToDateTime(y)
        Response.Write(y)

        Response.Write(x.ToString("dd/MM/yyyy hh:mm:ss.zzz") & "<BR>")
        Response.Write(x.ToString("G"))


        'Response.Write(FormatDateTime(Now, DateFormat.GeneralDate))
        'Response.Write(FormatDateTime(Now, DateFormat.LongDate))
        'Response.Write(FormatDateTime(Now, DateFormat.ShortTime))
        Dim temp As New Queue
        Dim temp2 As New Queue
        Dim temp3 As Queue

        temp2.Enqueue(45)
        temp2.Enqueue("test")

        temp.Enqueue(4)
        temp.Enqueue("stest")
        temp.Enqueue(temp2)
        Response.Write(temp.Dequeue)
        Response.Write(temp.Dequeue)
        temp3 = temp.Dequeue
        Response.Write(temp3.Dequeue)

        AjaxPro.Utility.RegisterTypeForAjax(GetType(WebForm1))
    End Sub

    'Imports System
    'Imports System.Globalization
    'Imports System.Threading

    '    Public Class FormatDate

    '        Public Shared Sub Main()
    '            Dim dt As DateTime = DateTime.Now
    '            ' Sets the CurrentCulture property to U.S. English.
    '            Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
    '            ' Displays dt, formatted using the ShortDatePattern
    '            ' and the CurrentThread.CurrentCulture.
    '            Console.WriteLine(dt.ToString("d"))

    '            ' Creates a CultureInfo for German in Germany.
    '            Dim ci As New CultureInfo("de-DE")
    '            ' Displays dt, formatted using the ShortDatePattern
    '            ' and the CultureInfo.
    '            Console.WriteLine(dt.ToString("d", ci))
    '        End Sub
    '    End Class

    '    Imports System
    'Imports System.Globalization
    'Imports System.Threading

    '    Public Class TimeZoneSample
    '        Public Shared Sub Main()
    '            Dim en As New CultureInfo("en-US")
    '            Thread.CurrentThread.CurrentCulture = en

    '            ' Creates a DateTime for the local time.
    '            Dim dt As New DateTime(2001, 7, 13, 4, 0, 0)

    '            ' Converts the local DateTime to the UTC time.
    '            Dim utcdt As DateTime = dt.ToUniversalTime()

    '            ' Defines a custom string format to display the DateTime.
    '            ' zzz specifies the full time zone offset.
    '            Dim format As [String] = "MM/dd/yyyy hh:mm:sszzz"

    '            ' Converts the local time to a string
    '            ' using the custom format string and display.
    '            Dim str As [String] = dt.ToString(format)
    '            Console.WriteLine(str)

    '            ' Converts the UTC time to a string
    '            ' using the custom format string and display.
    '            Dim utcstr As [String] = utcdt.ToString(format)
    '            Console.WriteLine(utcstr)

    '            ' Converts the string back to a local DateTime and displays it.
    '      Dim parsedBack As DateTime = DateTime.ParseExact(str, format, 
    '            en.DateTimeFormat)
    '            Console.WriteLine(parsedBack)

    '            ' Converts the string back to a UTC DateTime and displays it.
    '            ' If you do not use the DateTime.ParseExact method that takes
    '            ' a DateTimeStyles.AdjustToUniversal value, the parsed DateTime
    '            ' will not include the time zone information. 
    '            Dim parsedBackUTC As DateTime = DateTime.ParseExact(str, format, _
    '                  en.DateTimeFormat, DateTimeStyles.AdjustToUniversal)
    '            Console.WriteLine(parsedBackUTC)
    '        End Sub

    '    End Class


    <AjaxPro.AjaxMethod()> _
    Public Function correctCookie(ByVal carNum As Integer, ByVal carSaved As String) As String
        Dim newCookie As String

        newCookie = carNum & "|#|" & carSaved

        Return newCookie
    End Function
End Class
