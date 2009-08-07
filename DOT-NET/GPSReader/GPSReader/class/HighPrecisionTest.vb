Public Class HighPrecisionTest
    Private WithEvents MyInterpreter As New NmeaInterpreter
    Private MaximumDOPAllowed As Integer = 6
    Private CurrentHDOP As Double
    Private myTxt As String
    Public Sub Test()
        ' Parse satellite information (HDOP is 50.0)
        MyInterpreter.Parse("$GPGSA,A,1,,,,,,,,,,,,,50.0,50.0,50.0*05")

        ' Parse the current position
        MyInterpreter.Parse("$GPRMC,225233.990,V,3939.4000,N," & _
                            "10506.4000,W,0.00,51.40,280804,,*35")

        ' Parse satellite information (HDOP is 1.2)
        MyInterpreter.Parse("$GPGSA,A,3,11,29,07,08,19,28,26,,,,,,2.3,1.2,2.0*30")

        ' Parse the current position again
        MyInterpreter.Parse("$GPRMC,012558.584,A,3939.7000,N," & _
                            "10506.7000,W,0.00,198.07,290804,,*11")
    End Sub
    Private Sub OnHDOPReceived(ByVal value As Double) _
            Handles MyInterpreter.HDOPReceived
        ' Remember the current HDOP value
        CurrentHDOP = value
    End Sub
    Private Sub OnPositionReceived(ByVal latitude As String, _
      ByVal longitude As String) Handles MyInterpreter.PositionReceived
        ' Is the HDOP at least six?
        If CurrentHDOP <= MaximumDOPAllowed Then
            ' Yes.  Display the current position
            Debug.WriteLine("You are here: " & latitude & ", " & longitude)
            myTxt = myTxt & "You are here: " & latitude & ", " & longitude & vbCrLf
        Else
            ' No.  Discard this positional measurement
            Debug.WriteLine("The received location is not precise enough to use.")
            myTxt = myTxt & "The received location is not precise enough to use." & vbCrLf
        End If
    End Sub
    Public Function getMyTxt() As String
        Return myTxt
    End Function


End Class
