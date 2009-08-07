<%@ Page Language="vb" AutoEventWireup="false" Codebehind="blank_menu.aspx.vb" Inherits="autoonclick.blank_menu" EnableSessionState="True" enableViewState="True" enableViewStateMac="True" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>blank</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="form1" name="form1" method="post">
			<INPUT id="saveCarNum" type="hidden" name="saveCarNum"> <INPUT id="saveCar" type="hidden" name="saveCar">
			<INPUT id="saveCarMsg" type="hidden" name="saveCarMsg">
		</form>
		<script src="../../j_script/cookie.js" type="text/javascript"></script>
		<script language="javascript">
		
		function setHiddenBox(carNum,carSaved) {
			document.all['saveCarNum'].value=carNum;
			document.all['saveCar'].value=carSaved;
			//alert(carSaved);
			//document.all['saveCarMsg'].value=carMsg;
			/*deleteCookie('saveCar','/');
			deleteCookie('saveCarNum','/');
			setCookie('saveCar', carSaved, getExpDate(60, 0, 0),'/'); 
			setCookie('saveCarNum', carNum, getExpDate(60, 0, 0),'/'); */
		}
		function redirect(url){
		//alert(url);
			document.form1.action=url;
			document.form1.submit();
				
		}
		function cCookies(carNum,carSaved){
				autoonclick.blank.correctCookie(carNum,carSaved,mailBack);
				
		}
		function mailBack(res){
			var x = res.value.split('|#|');
			setHiddenBox(x[0],x[1]);
			
		}
		setHiddenBox(getCookie('saveCarNum'),getCookie('saveCar'));
		//alert(getCookie('saveCar'));
		redirect('parking2_example_00.aspx');
		
		//alert(getCookie('saveCarNum')+'---'+getCookie('saveCar'));
		//document.write(getCookie('saveCarNum')+'---'+getCookie('saveCar'));
		//cCookies(getCookie('saveCarNum'),getCookie('saveCar'));
		//redirect('blank2.aspx');
		
		</script>
	</body>
</HTML>
