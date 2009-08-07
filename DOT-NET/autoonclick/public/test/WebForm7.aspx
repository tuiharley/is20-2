<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm7.aspx.vb" Inherits="autoonclick.WebForm7"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>WebForm7</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<DIV ID="dek" CLASS="dek"></DIV>
			<DIV id="topbar"><P align="left"><IMG src="../../images/banner/banner3.jpg"></P>
			</DIV>
		</form>
		<STYLE type="text/css">#topbar { BORDER-RIGHT: white 0px solid; PADDING-RIGHT: 0px; BORDER-TOP: white 0px solid; PADDING-LEFT: 0px; Z-INDEX: 100; VISIBILITY: hidden; PADDING-BOTTOM: 0px; BORDER-LEFT: white 0 px solid; WIDTH: 200px; HEIGHT: 350px; PADDING-TOP: 0px; BORDER-BOTTOM: white 0 px solid; POSITION: absolute; BACKGROUND-COLOR: }
		</STYLE>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
