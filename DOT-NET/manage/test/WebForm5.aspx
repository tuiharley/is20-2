<%@ Page Language="C#" Debug="true" %>
<HTML>
	<HEAD>
		<script runat="server">

    void btnSubmit_Click(object sender, EventArgs e)
	{
        if(this.fiUpload.HasFile)
		{
            this.fiUpload.SaveAs(Server.MapPath("Myfiles/" + fiUpload.FileName));
            this.lblText1.Text = "File Name: " + fiUpload.PostedFile.FileName;
            this.lblText2.Text = "File Size: " + fiUpload.PostedFile.ContentLength;
            this.lblText3.Text = "File Type: " + fiUpload.PostedFile.ContentType;
        }
    }

		</script>
	</HEAD>
	<body>
		<form runat="server" ID="Form1">
			<asp:FileUpload id="fiUpload" runat="server"></asp:FileUpload>
			<asp:Button id="btnSubmit" onclick="btnSubmit_Click" runat="server" Text="Submit"></asp:Button>
			<hr>
			<asp:Label id="lblText1" runat="server"></asp:Label>
			<br>
			<asp:Label id="lblText2" runat="server"></asp:Label>
			<br>
			<asp:Label id="lblText3" runat="server"></asp:Label>
		</form>
	</body>
</HTML>
