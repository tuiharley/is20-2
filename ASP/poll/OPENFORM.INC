<%
session.timeout=99
Set Conn=Server.CreateObject("ADODB.Connection")
conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.Mappath("db1.mdb")
%>

