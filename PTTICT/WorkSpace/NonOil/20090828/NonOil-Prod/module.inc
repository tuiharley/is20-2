<script language="VBScript">
Public Excl,WB,WS,rs,rsh,rst,conn,parameterClause,parameterClause2,sql,tempBB

//PTT OLD CONFIG
//USERNAME="nonoil711"
//PASSWORD="711nonoil"
//TNS="nonoil"

//PTT NEW CONFIG
USERNAME="nonoil711"
PASSWORD="london711"
TNS="nonoil-prd"


FILEPATH="\\hq-web-s02\nonoil7-11\exceltemplate\"
SharePath="c:\temp\"

Function GetTMonth(data)
    m = Month(data)
    If m = 1 Then
        temp = "���Ҥ�"
    ElseIf m = 2 Then
        temp = "����Ҿѹ��"
    ElseIf m = 3 Then
        temp = "�չҤ�"
    ElseIf m = 4 Then
        temp = "����¹"
    ElseIf m = 5 Then
        temp = "����Ҥ�"
    ElseIf m = 6 Then
        temp = "�Զع�¹"
    ElseIf m = 7 Then
        temp = "�á�Ҥ�"
    ElseIf m = 8 Then
        temp = "�ԧ�Ҥ�"
    ElseIf m = 9 Then
        temp = "�ѹ��¹"
    ElseIf m = 10 Then
        temp = "���Ҥ�"
    ElseIf m = 11 Then
        temp = "��Ȩԡ�¹"
    Else
        temp = "�ѹ�Ҥ�"
    End If
    GetTMonth = temp
End Function
Function GetEMonth(data)
    m = Month(data)
    If m = 1 Then
        temp = "January"
    ElseIf m = 2 Then
        temp = "February"
    ElseIf m = 3 Then
        temp = "March"
    ElseIf m = 4 Then
        temp = "April"
    ElseIf m = 5 Then
        temp = "May"
    ElseIf m = 6 Then
        temp = "June"
    ElseIf m = 7 Then
        temp = "July"
    ElseIf m = 8 Then
        temp = "August"
    ElseIf m = 9 Then
        temp = "September"
    ElseIf m = 10 Then
        temp = "October"
    ElseIf m = 11 Then
        temp = "November"
    Else
        temp = "December"
    End If
    GetEMonth = temp
End Function

Function GetESMonth(data)
    m = Month(data)
    If m = 1 Then
        temp = "Jan"
    ElseIf m = 2 Then
        temp = "Feb"
    ElseIf m = 3 Then
        temp = "Mar"
    ElseIf m = 4 Then
        temp = "Apr"
    ElseIf m = 5 Then
        temp = "May"
    ElseIf m = 6 Then
        temp = "Jun"
    ElseIf m = 7 Then
        temp = "Jul"
    ElseIf m = 8 Then
        temp = "Aug"
    ElseIf m = 9 Then
        temp = "Sep"
    ElseIf m = 10 Then
        temp = "Oct"
    ElseIf m = 11 Then
        temp = "Nov"
    Else
        temp = "Dec"
    End If
    GetESMonth = temp
End Function

Function GetTSMonth(data)
    m = Month(data)
    If m = 1 Then
        temp = "�.�."
    ElseIf m = 2 Then
        temp = "�.�."
    ElseIf m = 3 Then
        temp = "��.�."
    ElseIf m = 4 Then
        temp = "��.�."
    ElseIf m = 5 Then
        temp = "�.�."
    ElseIf m = 6 Then
        temp = "��.�."
    ElseIf m = 7 Then
        temp = "�.�."
    ElseIf m = 8 Then
        temp = "�.�."
    ElseIf m = 9 Then
        temp = "�.�."
    ElseIf m = 10 Then
        temp = "�.�."
    ElseIf m = 11 Then
        temp = "�.�."
    Else
        temp = "�.�."
    End If
    GetTSMonth = temp
End Function

Function ReadNo(amount, LCode)
If LCode = "E" Then
    'ReadNo = EReadno(amount)
Else
    ReadNo = TReadno(amount)
End If
End Function

Function TransNoT(amount, unit, e)
    temp = ""
    amount=Cint(amount)
    If amount = 9 Then temp = "���"
    If amount = 8 Then temp = "Ỵ"
    If amount = 7 Then  temp = "��"
    If amount = 6 Then temp = "ˡ"
    If amount = 5 Then temp = "���"
    If amount = 4 Then temp = "���"
    If amount = 3 Then temp = "���"
    If amount = 2 Then
        If (unit = 1000) Or (unit = 10) Or (unit = 1000000000) Then
            temp = "���"
        Else
            temp = "�ͧ"
        End If
    End If
    
    If amount = 1 Then
        If (unit <> 1000) And (unit <> 10) And (unit <> 1000000000) Then
            temp = "˹��"
        End If
    End If
    If unit = 1000000000 Then temp = temp & "�Ժ"
    If unit = 100000000 Then temp = temp & "��ҹ"
    If unit = 10000000 Then temp = temp & "�ʹ"
    If unit = 1000000 Then temp = temp & "����"
    If unit = 100000 Then temp = temp & "�ѹ"
    If unit = 10000 Then temp = temp & "����"
    If unit = 1000 Then temp = temp & "�Ժ"
    If unit = 100 Then temp = temp & "�ҷ"
    If unit = 10 Then temp = temp & "�Ժ"
    If unit = 1 Then temp = temp & "ʵҧ��"
    TransNoT = temp
End Function

Function TReadno(amount)
    temp = ""
    checker = 0
    checker2=0
    X = 1000000000
    If amount = "0" Then
        temp = "�ٹ��ҷ"
    ElseIf amount < 210000000 Then
       temp3 = amount * 100
       if (temp3 mod 100) >0 then checker=1
        While X >= 1
            If (temp3 < 100000000) And (X = 100000000) And (amount >= 1000000) Then
                temp = temp & "��ҹ"
            End If
            If (temp3<100) and (X < 100) and (checker2=0) Then
                temp = temp & "�ҷ"
		checker2=1
            End If
             If (temp3 < 1) And (X = 1) And (checker=1)  Then
                temp = temp & "ʵҧ��"
            End If
            If temp3 >= X Then
                temp2 = temp3 Mod X
                If (temp3 < 100) And (temp2 >= 0) Then
                    checker = 1
		    checker2=1
                End If
                temp4 = (temp3 - temp2) / X
                If temp4 > 0 Then
                    If (temp4 = 1) And ((X = 100) Or (X = 1) Or (X = 100000000)) And (temp <> "") Then
                        temp = temp & "���"
                        If X = 100 Then
                            temp = temp & "�ҷ"
			    checker2=1
                        End If
                        If X = 100000000 Then temp = temp & "��ҹ"
                        If X = 1 Then temp = temp & "ʵҧ��"
                    Else
                        temp = temp & TransNoT(temp4, X, e)
			if x=100 then checker2=1
                    End If
                End If
                temp3 = temp2
            End If
            X = X / 10
        Wend
    End If
    TReadno = temp & "��ǹ"
End Function

sub duplicateSheet(total)
     For i = 1 To total - 1
        WS.Copy ,WB.Worksheets(i)
    Next
end sub

sub duplicateSheet2(total,x)
     For i = 1 To cint(total)-1
        WS.Copy ,WB.Worksheets(x)
    Next
end sub

sub SelectSheet(sheet)
	Set WS = WB.Worksheets(sheet)
end sub

Sub openExcelFile(FileName,Template,total)
Set Excl = CreateObject("excel.application")
Excl.Workbooks.Open Template & ".xls"
    On error resume next
    'Kill (Trim(FileName & ".xls"))
    Set fso=CreateObject("Scripting.FileSystemObject")
    fso.DeleteFile Trim(FileName & ".xls"),true
    Set WB = Excl.Activeworkbook
    selectSheet(1)
    if "" & total<>"" and total>0 then
	duplicateSheet(total)
    end if
    WB.SaveAs FileName & ".xls"
    Excl.Visible = True
End sub

Sub SaveExcelFile()
WB.Save
Set WB = Nothing
Set WS = Nothing
Set Excl = Nothing
End Sub

Sub ExcelWrite(row,col,data)
	WS.Cells(Row,col)=data
end sub

Function excelRead(row,col)
	excelRead=WS.Cells(row,col)
end function

Sub DrawLine(row,col,side,style)

If UCASE(side)="TOP" then edge=8 'xlEdgeTop
If UCASE(side)="LEFT" then edge=7 'xlEdgeLeft
If UCASE(side)="RIGHT" then edge=10 'xlEdgeRIGHT
If UCASE(side)="BOTTOM" then edge=9 'xlEdgeBottom

If UCASE(Style)="DOUBLE" then 
	 	   WS.Cells(row, col).Borders(edge).ColorIndex =0 'xlAutomatic
                    WS.Cells(row, col).Borders(edge).LineStyle =&HFFFFEFE9 'xlDouble
Else
		    WS.Cells(row, col).Borders(edge).ColorIndex =0 'xlAutomatic
                    WS.Cells(row, col).Borders(edge).LineStyle =1 'xlContinuous
                    WS.Cells(row, col).Borders(edge).Weight =2 'xlThin
end if
end sub

Function getCellName(row,col)
		getCellName=WS.cells(row,col).Address
end function

Sub DrawRange(ran,side)
	If UCASE(side)="TOP" then edge=8 'xlEdgeTop
	If UCASE(side)="LEFT" then edge=7 'xlEdgeLeft
	If UCASE(side)="RIGHT" then edge=10 'xlEdgeRIGHT
	If UCASE(side)="BOTTOM" then edge=9 'xlEdgeBottom

	If UCASE(Style)="DOUBLE" then 
		WS.Range(ran).Borders(edge).ColorIndex =-4105 'xlAutomatic
		WS.Range(ran).Borders(edge).LineStyle =-4119 'xlDouble
	Else
		WS.Range(ran).Borders(edge).ColorIndex =-4105 'xlAutomatic
		WS.Range(ran).Borders(edge).LineStyle =1 'xlContinuous
		WS.Range(ran).Borders(edge).Weight =2 'xlThin
	end if
end sub
</script>