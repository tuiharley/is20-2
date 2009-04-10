<!-- #include file="openform.inc"-->
<%
Set conn=Server.CreateObject("ADODB.Connection")
Set rs=Server.CreateObject("ADODB.Recordset") 
sql="SELECT stockholder_id,stockholder_name,stock,stockholder_group FROM stockholder WHERE stockholder .stockholder_id='" & session("stockholder_id") & "'"
Set Conn = Server.CreateObject("ADODB.Connection")
conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.Mappath("db1.mdb")
%>
<html>
<head>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3612;&#3641;&#3657;&#3606;&#3639;&#3629;&#3627;&#3640;&#3657;&#3609;</font></b></span></td>
  </tr>
</table>
<form method="POST" action="edit_stockholder.asp" webbot-action="--WEBBOT-SELF--">  
  <!--webbot bot="SaveResults" u-file="../_private/form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" startspan --><input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" endspan i-checksum="43374" --><p align="left">
  <font face="MS Sans Serif" size="4"><br>
  <span lang="th">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></font>
  <span lang="th"><b><font color="#0000FF" face="MS Sans Serif">
  &#3619;&#3627;&#3633;&#3626;&#3612;&#3641;&#3657;&#3606;&#3639;&#3629;&#3627;&#3640;&#3657;&#3609;&nbsp;&nbsp;&nbsp;&nbsp;</font></b><font face="MS Sans Serif" color="#0000FF"><b><input type="text" name="stockholder_id" size="20" value="<%response.write A%>"></b></font></span><font face="MS Sans Serif" color="#0000FF"><b><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <span lang="th">&nbsp;</span></b></font><span lang="th"><font face="MS Sans Serif"><b><font color="#0000FF">&#3594;&#3639;&#3656;&#3629;&#3612;&#3641;&#3657;&#3606;&#3639;&#3629;&#3627;&#3640;&#3657;&#3609;&nbsp;&nbsp; 
  <input type="text" name="stockholder_name" size="33" value="<%=rs("stockholder_name")%>" ><br>
  
  </font></b></font>
  </span>
  <font face="MS Sans Serif" color="#0000FF"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <span lang="th">&nbsp;</span></b></font><span lang="th"><font face="MS Sans Serif"><b><font color="#0000FF">&#3592;&#3635;&#3609;&#3623;&#3609;&#3627;&#3640;&#3657;&#3609;&nbsp;&nbsp;&nbsp; 
  <input type="text" name="stock" size="20" value="<%=rs("stock")%>" ><br>
  </font></b></font>
  </span>
  <font face="MS Sans Serif" color="#0000FF"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <span lang="th">&#3585;&#3621;&#3640;&#3656;&#3617;</span> </b></font> <span lang="th">
  <font face="MS Sans Serif"><b><font color="#0000FF">&nbsp; <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="stockholder_group" value="1" <%if rs("stockholder_group") ="1" then response.write "checked"%>>&#3609;&#3636;&#3605;&#3636;&#3610;&#3640;&#3588;&#3621;<br>
  </font></b></font>
  </span>
  <font face="MS Sans Serif" color="#0000FF"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <span lang="th">&nbsp;</span></b></font><span lang="th"><font face="MS Sans Serif" color="#0000FF"><b>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" value="2" name="stockholder_group" <%if rs("stockholder_group") ="2" then response.write "checked"%>></b></font></span><font face="MS Sans Serif" color="#0000FF"><b>Foreign 
  Juristic Person<span lang="th"><br>
  </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </b></font>
  <span lang="th">
  <font face="MS Sans Serif"><b><font color="#0000FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" value="3" name="stockholder_group"   <%if rs("stockholder_group") ="3" then response.write "checked"%>>&#3609;&#3634;&#3617;&#3626;&#3585;&#3640;&#3621; &#3585; - &#3611;<br>
  </font></b></font>
  </span>
  <font face="MS Sans Serif" color="#0000FF"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <span lang="th">&nbsp;</span></b></font><span lang="th"><font face="MS Sans Serif"><b><font face="MS Sans Serif" size="4"><font color="#0000FF">&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" value="4" name="stockholder_group"   <%if rs("stockholder_group")="4" then response.write "checked"%>></font><font face="MS Sans Serif" color="#0000FF">&#3609;&#3634;&#3617;&#3626;&#3585;&#3640;&#3621; &#3612; - &#3630;</font></font></b></font></span></p>
  <p align="center">  
  <input type="submit" value="  &#3605;&#3585;&#3621;&#3591;" name="submit" onClick="return window.confirm('&#3588;&#3640;&#3603;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;?');" style="font-family: MS Sans Serif; "><font face="MS Sans Serif">
  </font> 
  <input type="submit" value="&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;" name="cancel" onClick="return window.confirm('&#3588;&#3640;&#3603;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;?')" style="font-family: MS Sans Serif; "></p>
</form>
<%end if%>