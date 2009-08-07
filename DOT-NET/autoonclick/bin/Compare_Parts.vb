Module Compare_Parts

    Function OrderBY(ByVal ConditionID As Integer) As String

        Dim KeyOrder_By As String

        Select Case ConditionID
            Case 0
                KeyOrder_By = "Part_Price"
            Case 1
                KeyOrder_By = "Part_Post DESC"

        End Select


        Return KeyOrder_By
    End Function





End Module
