Module resize
    Public Sub doResize(ByVal imgWidth As Integer, ByVal imgHeight As Integer, ByRef reWidth As Integer, ByRef reHeight As Integer, ByVal maxSize As Integer)
        Dim p_cent As Double

        'maxSize=
        '547 X 800

        If imgWidth > imgHeight Then
            If imgWidth < maxSize Then
                reWidth = imgWidth
                reHeight = imgHeight
            Else
                reWidth = maxSize
                p_cent = ((imgWidth - maxSize) * 100) / imgWidth
                reHeight = imgHeight - (imgHeight * p_cent) / 100
            End If
            
        Else
            If imgHeight < maxSize Then
                reHeight = imgHeight
                reWidth = imgWidth
            Else
                reHeight = maxSize
                p_cent = ((imgHeight - maxSize) * 100) / imgHeight
                reWidth = imgWidth - (imgWidth * p_cent) / 100
            End If
            
        End If

    End Sub
    Public Sub doResize(ByVal imgWidth As Integer, ByVal imgHeight As Integer, ByRef reWidth As Integer, ByRef reHeight As Integer, ByVal maxSize As Integer, ByVal maxHeight As Integer)
        Dim p_cent As Double

        'maxSize=
        '547 X 800

        If imgWidth > imgHeight Then
            If imgWidth < maxSize Then
                reWidth = imgWidth
                reHeight = imgHeight
                'elseIf imgHeight < maxHeight Or imgWidth > maxSize Then '
            ElseIf imgWidth > maxSize Then
                reWidth = maxSize
                p_cent = ((imgWidth - maxSize) * 100) / imgWidth
                reHeight = imgHeight - (imgHeight * p_cent) / 100
            ElseIf imgWidth = maxSize Then
                reHeight = maxHeight
                p_cent = ((imgHeight - maxHeight) * 100) / imgHeight
                reWidth = imgWidth - (imgWidth * p_cent) / 100
            End If

            If reHeight > maxHeight Then
                reHeight = maxHeight
                p_cent = ((imgHeight - maxHeight) * 100) / imgHeight
                reWidth = imgWidth - (imgWidth * p_cent) / 100
            End If
        Else

            If imgHeight < maxHeight Then
                reHeight = imgHeight
                reWidth = imgWidth
            Else
                reHeight = maxHeight
                p_cent = ((imgHeight - maxHeight) * 100) / imgHeight
                reWidth = imgWidth - (imgWidth * p_cent) / 100
            End If

        End If

    End Sub
End Module
