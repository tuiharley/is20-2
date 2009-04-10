<%
Set conn=Server.CreateObject("ADODB.Connection")
Set rs=Server.CreateObject("ADODB.Recordset") 
%>

<%
sql="SELECT stockholder_id,stockholder_name,stock,stockholder_group FROM stockholder WHERE stockholder .stockholder_id='" & session("stockholder_id") & "'"

Set Conn = Server.CreateObject("ADODB.Connection")
conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.Mappath("db1.mdb")

%>
<html>

<head>
	<meta charset="TIS-620">
</head>

<body>
<form method="POST" action="savestockholder.asp">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3612;&#3641;&#3657;&#3606;&#3639;&#3629;&#3627;&#3640;&#3657;&#3609;</font></b></span></td>
  </tr>
</table>
  <font face="MS Sans Serif" size="4"><br>
  <span lang="th">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></font>
  <table border="0" cellspacing="1" style="border-collapse: collapse" bordercolor="#111111" width="674" id="AutoNumber2">

    <tr>
      <td align="right" width="246">
      <p><font face="MS Sans Serif"><b><font color="#0000ff">
      <span lang="th">&#3594;&#3639;&#3656;&#3629;&#3612;&#3641;&#3657;&#3606;&#3639;&#3629;&#3627;&#3640;&#3657;&#3609;</span>&nbsp; </td>
      <td width="421"><input type="Text" name="stockholder_name" size="29"></span></font></b></font></td>
    </tr>
    <tr>
      <td align=right width="246">
      <p><b>
      <font face="MS Sans Serif" color="#0000FF"><span lang="th">&#3592;&#3635;&#3609;&#3623;&#3609;&#3627;&#3640;&#3657;&#3609;</span>&nbsp; </font></b></td>
      <td width="421">
      <input type="Text" name="stock" size="20"></span></td>
    </tr>
    <tr>
      <td width="246">
      <p align="right">&nbsp;<span lang="th"> <b>
      <font face="MS Sans Serif" color="#0000FF">
      &#3585;&#3621;&#3640;&#3656;&#3617;</font></b></span><b><font face="MS Sans Serif" color="#0000FF">&nbsp; </font></b></td><td width="421"><p align="left"><span lang="th"></span><input type="radio" value="1" name="stockholder_group"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">&#3609;&#3636;&#3605;&#3636;&#3610;&#3640;&#3588;&#3588;&#3621;</span></font></b></td>
    </tr>
    <tr>
      <td width="246">
      <p align="left"><span lang="th">
      </span></td><td width="421"><input type="radio" name="stockholder_group" value="2"<%if gstockholder_group="2" then response.write "checked"%>><font face="MS Sans Serif" color="#0000ff"><b>Foreign 
      Juristic Person</b></font></td>
    </tr>
    <tr>
      <td width="246">
      <p align="left"><span lang="th"><font face="MS Sans Serif"><b>
      <font color="#0000ff"></td><td width="421"><input type="radio" name="stockholder_group" value="3" <%if gstockholder_group="3" then response.write "checked"%>><font face="MS Sans Serif" color="#0000ff"><b>&#3609;&#3634;&#3617;&#3626;&#3585;&#3640;&#3621; &#3585; - &#3611;</font></b></font></span></td>
    </tr>
    <tr>
      <td width="246" align="center">
      <p align="left"><b><font color="#0000FF"><span lang="th">
      </span></td><td width="421"><input type="radio" name="stockholder_group" value="4"<%if gstockholder_group="4" then response.write "checked"%>></font></b><span lang="th"><font face="MS Sans Serif"><b><font color="#0000ff">&#3609;&#3634;&#3617;&#3626;&#3585;&#3640;&#3621;
      </font></b></font></span><b><font face="MS Sans Serif" color="#0000FF">&#3612;<span lang="th"> 
      - &#3630;</span></font></b></td>
    </tr>
</table>
  <p align="center">  
  
 <input type="submit" value="      &#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;      " name="submit" onClick="return window.confirm('&#3588;&#3640;&#3603;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;?');" style="font-family: MS Sans Serif; "></a><font >
 <input type="reset"  name="B1">
</form></font>