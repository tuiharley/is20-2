Module Compare_Cars

    Function OrderBY(ByVal ConditionID As Integer) As String
        
        Dim KeyOrder_By As String

        Select Case ConditionID
            Case 0
                KeyOrder_By = "Car_Price"
            Case 1
                KeyOrder_By = "Car_Year_Ord"
            Case 2
                KeyOrder_By = "Car_CC"
            Case 3
                KeyOrder_By = "Car_Power"
            Case 4
                KeyOrder_By = "Car_Miles"
            Case 5
                KeyOrder_By = "Car_Post DESC"

        End Select


        Return KeyOrder_By
    End Function





End Module
