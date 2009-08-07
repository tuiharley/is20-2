<%@ Page Language="vb" AutoEventWireup="false" Codebehind="blank2.aspx.vb" Inherits="autoonclick.blank2" EnableSessionState="False" enableViewState="False"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>blank</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="form1" name="form1" runat="server">
			<INPUT type="hidden" id="saveBikeNum" name="saveBikeNum"> <INPUT type="hidden" id="saveBike" name="saveBike">
			<INPUT type="hidden" id="saveBikeMsg" name="saveBikeMsg">
		</form>
		<script type='text/javascript' src="../../j_script/cookie.js"></script>
		<script language="javascript">
		<!--
			
			function setHiddenBox() {
					document.all['saveBikeNum'].value=getCookie('saveBikeNum');
					document.all['saveBike'].value=getCookie('saveBike');
					document.all['saveBikeMsg'].value=getCookie('saveBikeMsg');
					
			}
			function redirect(url){
				document.form1.action=url;
				document.form1.submit();
				
			}
		
			//setHiddenBox();
			
			//alert(document.all['saveCarMsg'].value);
			//redirect('parking2_example_01_moto.aspx');
		//-->
		</script>
	</body>
</HTML>
