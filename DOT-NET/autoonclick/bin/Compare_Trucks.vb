Module Compare_Trucks

    Function OrderBY(ByVal ConditionID As Integer) As String

        Dim KeyOrder_By As String

        Select Case ConditionID
            Case 0
                KeyOrder_By = "Truck_Price"
            Case 1
                KeyOrder_By = "Truck_Year_Ord"
            Case 2
                KeyOrder_By = "Truck_CC"
            Case 3
                KeyOrder_By = "Truck_Power"
            Case 4
                KeyOrder_By = "Truck_Miles"
            Case 5
                KeyOrder_By = "Truck_Post DESC"

        End Select


        Return KeyOrder_By
    End Function





End Module
