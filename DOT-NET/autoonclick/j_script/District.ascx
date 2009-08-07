<%@Import Namespace = "System.Data.OleDb" %>
<%@Import Namespace = "System.Data" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="District.ascx.vb" Inherits="autoonclick.District1" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script language="javascript">
		var ListUtil = new Object();
		ListUtil.add = function  (oListbox, sName, sValue) {
		alert(oListbox);
			/*var oOption = document.createElement('option');
			oOption.appendChild(document.createTextNode(sName));
			if (arguments.length == 3) {
				oOption.setAttribute('value', sValue);
			}
			oListbox.appendChild(oOption);*/
		}
		
		function setDistrit(){
			var DD = new Array();
			var oListbox = document.getElementById('province');
			ListUtil.add(oListbox, '-------- เลือกจังหวัด ------- ', 0);
			//prov.options[0]= new Option('-------- เลือกจังหวัด ------- ','0');
			<%
			Dim myconn As New OleDbConnection(Session("conn"))
			myconn.Open()
			Dim myconn2 As New OleDbConnection(Session("conn"))
			myconn2.Open()

			Dim mycommand As OleDbCommand
			Dim mycommand2 As OleDbCommand
			Dim Ans_ID2 as OleDbDataReader
			
			Dim sql As String
			Dim i As integer
			Dim tmp as integer
			Dim District as String

			sql = "SELECT Province,Province_Name FROM Province ORDER BY Province.Province"

			mycommand = New OleDbCommand(sql, myconn)
			Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
			i = 0
			
			while  Ans_ID.Read 
				
				sql = "SELECT * FROM DISTRICT WHERE PROVINCE = " & Ans_ID.Item("Province")
				mycommand2 = New OleDbCommand(sql, myconn2)
				Ans_ID2 = mycommand2.ExecuteReader()
				while Ans_ID2.Read
				
					District = District & "," & Ans_ID2.Item("District") & ":" & Ans_ID2.Item("District_Name")
				
				
				end while
				
				Ans_ID2.Close()
				mycommand2.Dispose()
				
				%>
					DD[<%=i%>] = '<%=District%>';	
					prov.options[i+1]= new Option(<%=Ans_ID.Item("Province_Name")%>,<%=Ans_ID.Item("Province")%>);		
				<%
			   District = ""
			   i = i + 1
			end while


			Ans_ID.Close()
			mycommand.Dispose()
			myconn.Close()
			myconn2.Close()
			%>
			return DD;
		}
</script>
<FONT face="Tahoma"></FONT>
