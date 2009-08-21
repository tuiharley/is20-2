Imports System.Data
Imports System.Data.OleDb
Imports System.IO
Module RandomAds
    Dim connectDB As String = DBConnect.getStrDBConnect()
  
    Function IndexPGRandom() As DataSet
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim myconn As New OleDbConnection(connectDB)
        Dim sql As String
        Dim txt As String

        Try

            myconn.Open()
            sql = "SELECT     Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Car.Car_Id, Brand.Brand_name, Model.Model_Name, Status.Status_Name, "
            sql &= " Customer.Customer_Username,Car.Car_Price,Car.Car_Year_Ord,Car.Car_Image1"
            sql &= " FROM         Notice INNER JOIN"
            sql &= " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId INNER JOIN"
            sql &= " Car ON NoticeDetail.NoticeDetail_DataId = Car.Car_Id INNER JOIN"
            sql &= " Brand ON Car.Car_Brand = Brand.Brand INNER JOIN"
            sql &= " Model ON Car.Car_Model = Model.Model INNER JOIN"
            sql &= " Status ON Car.Car_Status = Status.Status INNER JOIN"
            sql &= " Customer ON Notice.Notice_MemberId = Customer.Customer_Id"
            sql &= " WHERE     (Notice.Notice_Category = 1)"
            sql &= " AND (Notice.Notice_Status IN (2, 3))"
            sql &= " AND (NoticeDetail.Detail_show = 1) "
            sql &= " AND (Notice.Notice_Show = 1) "
            sql &= " AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) "


            da = New OleDbDataAdapter(sql, myconn)
            da.Fill(ds, "Car")


            sql = "SELECT     Notice.Notice_Id, NoticeDetail.NoticeDetail_Id,Bike.Bike_id, Brand.Brand_name, Model.Model_Name, Status.Status_Name,"
            sql &= "Customer.Customer_Username, Bike.Bike_Price, Bike.Bike_Year_Ord,Bike.Bike_Image1"
            sql &= " FROM         Notice INNER JOIN"
            sql &= " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId INNER JOIN"
            sql &= " Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
            sql &= " Bike ON NoticeDetail.NoticeDetail_DataId = Bike.Bike_Id INNER JOIN"
            sql &= " Brand ON Bike.Bike_Brand = Brand.Brand INNER JOIN"
            sql &= " Model ON Bike.Bike_Model = Model.Model INNER JOIN"
            sql &= " Status ON Bike.Bike_Status = Status.Status"
            sql &= " WHERE     (Notice.Notice_Category = 2)"
            sql &= " AND (Notice.Notice_Status IN (2, 3))"
            sql &= " AND (NoticeDetail.Detail_show = 1) "
            sql &= " AND (Notice.Notice_Show = 1) "
            sql &= " AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) "

            da = New OleDbDataAdapter(sql, myconn)
            da.Fill(ds, "Bike")



            sql = "SELECT     Notice.Notice_Id, NoticeDetail.NoticeDetail_Id,Truck.Truck_Id, Brand.Brand_name, Status.Status_Name, Customer.Customer_Username,  "
            sql &= " Truck.Truck_Price,Truck.Truck_Year_Ord,Truck.Truck_Image1"
            sql &= " FROM         Notice INNER JOIN"
            sql &= " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId INNER JOIN"
            sql &= " Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
            sql &= " Truck ON NoticeDetail.NoticeDetail_DataId = Truck.Truck_Id INNER JOIN"
            sql &= " Brand ON Truck.Truck_Brand = Brand.Brand INNER JOIN"
            sql &= " Status ON Truck.Truck_Status = Status.Status"
            sql &= " WHERE     (Notice.Notice_Category = 3)"
            sql &= " AND (Notice.Notice_Status IN (2, 3))"
            sql &= " AND (NoticeDetail.Detail_show = 1) "
            sql &= " AND (Notice.Notice_Show = 1) "
            sql &= " AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) "

            da = New OleDbDataAdapter(sql, myconn)
            da.Fill(ds, "Truck")


            sql = "SELECT     Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Parts.Part_Id, Status.Status_Name, Customer.Customer_Username, Parts.Part_Price, Parts.Part_Year_Ord, "
            sql &= " Parts.Part_Image, Category.Category_Name, PartsType.PartsType_Name"
            sql &= " FROM         Notice INNER JOIN"
            sql &= " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId INNER JOIN"
            sql &= " Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
            sql &= " Parts ON NoticeDetail.NoticeDetail_DataId = Parts.Part_Id INNER JOIN"
            sql &= " Status ON Parts.Part_Status = Status.Status INNER JOIN"
            sql &= " PartsType ON Parts.Part_Type = PartsType.PartsType INNER JOIN"
            sql &= " Category ON PartsType.PartsType_Category = Category.Category"
            sql &= " WHERE     (Notice.Notice_Category = 4) AND (Notice.Notice_Status IN (2, 3)) AND (NoticeDetail.Detail_show = 1) AND (Notice.Notice_Show = 1) AND "
            sql &= " (NoticeDetail.Detail_delete IS NULL OR"
            sql &= " NoticeDetail.Detail_delete <> 1)"

            da = New OleDbDataAdapter(sql, myconn)
            da.Fill(ds, "Part")


            sql = "SELECT     Customer.Customer_Id, Customer.Customer_Username, Customer.Customer_Name, Customer.Customer_Logo, Province.Province_Name"
            sql &= " FROM         Customer INNER JOIN"
            sql &= " Province ON Customer.Customer_Province = Province.Province"
            sql &= " WHERE Customer.Customer_Type = 1"

            da = New OleDbDataAdapter(sql, myconn)
            da.Fill(ds, "Customer")

            da.Dispose()
            myconn.Close()
            myconn.Dispose()


        Catch ex As Exception
            txt = ex.Message
        End Try

        Return ds
    End Function

    Structure Ads
        Dim id As Integer
        Dim Brand As String
        Dim Model As String
        Dim Status As String
        Dim Yearr As String
        Dim Province As String
        Dim Price As String
        Dim Image1 As String

        Dim Noticeid As Integer
        Dim Detailid As Integer
        Dim Username As String

    End Structure

End Module
