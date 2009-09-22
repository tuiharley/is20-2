<%@ Page Language="VB" %>
<script runat="server">

    Sub SubmitButton_Click(Source As Object, e As EventArgs)
       If Not (File1.PostedFile Is Nothing) Then
          Try
             File1.PostedFile.SaveAs("C:\Uploads\uploadedfile.txt")
             Span1.InnerHtml = "Upload Successful!"
          Catch ex As Exception
             Span1.InnerHtml = "Error saving file <b>C:\\" & _
                File1.Value & "</b><br>" & ex.ToString()
          End Try
       End If
    End Sub

</script>
<html>
<head>
</head>
<body>
    <form runat="server" enctype="multipart/form-data" ID="Form1">
        Select a file to upload:<br />
        <input type="file" id="File1" runat="Server" NAME="File1">
        <p>
        <input type="submit" id="Submit1" runat="Server" 
         value="Upload File" OnServerClick="SubmitButton_Click" NAME="Submit1">
        <p>
        <span id="Span1" runat="Server" />
    </form>
</body>
</html>
