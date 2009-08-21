<%@ Page Language="vb" AutoEventWireup="false" Codebehind="editBanner.aspx.vb" Inherits="manage.editBanner"%>
<%@Register TagPrefix="menu" TagName="header_manage" Src="header_manage.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>editBanner</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table width="100%" border="0">
				<tr>
					<td><menu:header_manage id="header_manage" runat="server"></menu:header_manage></td>
				</tr>
			</table>
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="80%" border="1">
				<TR>
					<TD colSpan="2"><FONT face="Tahoma">Banner&nbsp;:
							<asp:label id="bannerName" runat="server"></asp:label></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="Tahoma">Image</FONT></TD>
					<TD><INPUT id="bimage" type="file" onchange="if(chkPicSize()){a()};" size="30" runat="server"><asp:label id="bPIC" runat="server"></asp:label></TD>
				</TR>
				<TR>
					<TD><FONT face="Tahoma">Link</FONT></TD>
					<TD><FONT face="Tahoma"><asp:textbox id="bLink" runat="server" MaxLength="255"></asp:textbox>
							<asp:Label id="picErr" runat="server"></asp:Label></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="Tahoma">Text</FONT></TD>
					<TD><FONT face="Tahoma" color="#ff3333"><asp:textbox id="btxt" runat="server" MaxLength="60" Height="80px" TextMode="MultiLine"></asp:textbox>(60 
							ตัวอักษร)</FONT></TD>
				</TR>
				<TR>
					<TD></TD>
					<TD><asp:button id="btnSave" runat="server" Text="Save"></asp:button><asp:button id="btnCancel" runat="server" Text="Cancel"></asp:button></TD>
				</TR>
			</TABLE>
		</form>
		<script type="text/javascript">
			//document.Form1.elements["btnSave"].disabled=true;
			function a(){
				var f = document.getElementById("bimage");
				var i = document.getElementById("bannerimg");
				var filename = f.value;
				if(			filename.indexOf('.jpg')==-1 && 
							filename.indexOf('.jpe')==-1 && 
							filename.indexOf('.jpeg')==-1 && 
							filename.indexOf('.gif')==-1 && 
							filename.indexOf('.png')==-1 )
				{	alert("Not Support");
					document.Form1.elements["btnSave"].disabled=true;
					return false;
				}
				else{document.Form1.elements["btnSave"].disabled=false;i.src=f.value;}
			
				/*var f=document.form1;
				var filename=f.elements["img"+no].value.toLowerCase();
				if(filename.length==0) {
					f.elements["Image"+no].src='../../images/objects/no_image_80x60.gif';
					return true;
				}else if(	filename.indexOf('.jpg')==-1 && 
							filename.indexOf('.jpe')==-1 && 
							filename.indexOf('.jpeg')==-1 && 
							filename.indexOf('.gif')==-1 && 
							filename.indexOf('.png')==-1 )
					{
							f.elements["Image"+no].src='../../images/objects/no_image_80x60.gif';
							alert('???????????????????? .jpg,.jpe,.jpeg,.gif ???? .png ????????');	
							return false;
						}
	  				else { f.elements["Image"+no].src=filename; return true;}*/
			}
			
		/*	function CheckSize(objVal){
			
			try{
			  var fso = new ActiveXObject("Scripting.FileSystemObject");
			  var d=fso.GetFile(objVal);
						if (eval(d.size)>4096000){
							alert('Exceed 4M file size! Not allow to upload');
						else{
							a()
						}
			}catch(err){
			
			}
			}*/
			 function chkPicSize()
			{
				var PicSize = document.Form1.bannerimg.fileSize;
				var f = document.getElementById("bannerimg");
				var maxSize = 4096000; // 4M
				if (PicSize > maxSize){ 
					alert("Exceed 4M file size! Not allow to upload"); 
					//document.Form1.bannerimg.src='../images/object/no_image_80x60.gif';
					document.Form1.elements["btnSave"].disabled=true;
					return false;}
					
				else 
				{document.Form1.elements["btnSave"].disabled=false;return true;}
			}
			
			
		</script>
	</body>
</HTML>
