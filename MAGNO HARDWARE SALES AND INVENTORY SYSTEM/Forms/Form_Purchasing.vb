Imports MySql.Data.MySqlClient
Imports System.IO
Public Class Form_Purchasing ' Created by: Joshua C. Magoliman
    Dim productIdGetter As String = ""
    Dim unitIdGetter As Integer = 0
    Dim categoryIdGetter As Integer = 0
    Dim supplierIdGetter As Integer = 0
    Dim originalQuantity As Integer = 0
    Private Sub Form_Purchasing_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Reset()
    End Sub
    Public Sub Reset()
        Form_Main.Enabled = False
        Me.Show()
        Me.BringToFront()
        If txtQuantity.Text = 0 Then
            txtProductName.Enabled = False
            txtPrice.Enabled = False
            txtProductCategory.Enabled = False
            txtNameOfSupplier.Enabled = False
            txtUnit.Enabled = False
            txtQuantity.Enabled = False
            btnPurchase.Enabled = False
        Else
            txtProductName.Enabled = False
            txtPrice.Enabled = False
            txtProductCategory.Enabled = False
            txtNameOfSupplier.Enabled = False
            txtUnit.Enabled = False
            txtQuantity.Enabled = True
            txtQuantity.Select()
            btnPurchase.Enabled = True
        End If
        Try
            con.Open()
            cmd = New MySqlCommand("SELECT * FROM tbl_products WHERE Name = @Name", con)
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@Name", txtProductName.Text)
            dr = cmd.ExecuteReader()
            While dr.Read
                txtPrice.Text = dr.GetString("Price")
                categoryIdGetter = dr.GetString("Category_Id")
                supplierIdGetter = dr.GetString("Supplier_Id")
                productIdGetter = dr.GetString("Id")
            End While
            cmd.Dispose()
            con.Close()

            con.Open()
            cmd = New MySqlCommand("SELECT * FROM tbl_categories WHERE Id = @Id", con)
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@Id", categoryIdGetter)
            dr = cmd.ExecuteReader()
            While dr.Read
                txtProductCategory.Text = dr.GetString("Category")
            End While
            cmd.Dispose()
            con.Close()

            con.Open()
            cmd = New MySqlCommand("SELECT * FROM tbl_suppliers WHERE Id = @Id", con)
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@Id", supplierIdGetter)
            dr = cmd.ExecuteReader()
            While dr.Read
                txtNameOfSupplier.Text = dr.GetString("Name")
            End While
            cmd.Dispose()
            con.Close()

            con.Open()
            cmd = New MySqlCommand("SELECT * FROM tbl_units WHERE Unit = @Unit", con)
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@Unit", txtUnit.Text)
            dr = cmd.ExecuteReader()
            While dr.Read
                unitIdGetter = dr.GetString("Id")
            End While
            cmd.Dispose()
            con.Close()
            originalQuantity = txtQuantity.Text
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            dr.Close()
            con.Close()
        End Try
    End Sub
    Private Sub btnPurchase_Click(sender As Object, e As EventArgs) Handles btnPurchase.Click
        Try
            If txtQuantity.Text = "0" Then
                MsgBox("Zero Quantity found !", MsgBoxStyle.Critical, "Error")
                txtQuantity.Focus()
            ElseIf CDbl(txtQuantity.Text) > CDbl(originalQuantity) Then
                MsgBox("Your Quantity is too much !", MsgBoxStyle.Critical, "Error")
                txtQuantity.Focus()
            Else
                Dim dateToday As Date = Date.Now.ToString("yyyy-MM-dd")
                con.Open()
                cmd = New MySqlCommand("UPDATE tbl_Inventory SET User_Id=@User_Id, Date=@Date, Time=@Time, Is_Current=@Is_Current WHERE Id = @Id", con)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@User_Id", Form_Main.userIdGetter)
                cmd.Parameters.AddWithValue("@Date", dateToday)
                cmd.Parameters.AddWithValue("@Time", Form_Main.lblTimeNow.Text)
                cmd.Parameters.AddWithValue("@Is_Current", 0)
                cmd.Parameters.AddWithValue("@Id", Form_Main.inventoryIdGetter)
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                con.Close()

                con.Open()
                cmd = New MySqlCommand("INSERT INTO tbl_inventory (Product_Id, Status_Id, Unit_Id, Quantity, User_Id, Date, Time, Is_Current) VALUES (@Product_Id, @Status_Id, @Unit_Id, @Quantity, @User_Id, @Date, @Time, @Is_Current)", con)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@Product_Id", productIdGetter)
                cmd.Parameters.AddWithValue("@Status_Id", 1)
                cmd.Parameters.AddWithValue("@Unit_Id", unitIdGetter)
                cmd.Parameters.AddWithValue("@Quantity", CDbl(originalQuantity) - CDbl(txtQuantity.Text))
                cmd.Parameters.AddWithValue("@User_Id", Form_Main.userIdGetter)
                cmd.Parameters.AddWithValue("@Date", dateToday)
                cmd.Parameters.AddWithValue("@Time", Form_Main.lblTimeNow.Text)
                cmd.Parameters.AddWithValue("@Is_Current", 1)
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                con.Close()

                con.Open()
                cmd = New MySqlCommand("sp_CreateNewProductOutInventory", con)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add(New MySqlParameter("param_ProductId", productIdGetter))
                cmd.Parameters.Add(New MySqlParameter("param_StatusId", 2))
                cmd.Parameters.Add(New MySqlParameter("param_UnitId", unitIdGetter))
                cmd.Parameters.Add(New MySqlParameter("param_Quantity", txtQuantity.Text))
                cmd.Parameters.Add(New MySqlParameter("param_UserId", Form_Main.userIdGetter))
                cmd.Parameters.Add(New MySqlParameter("param_Date", dateToday))
                cmd.Parameters.Add(New MySqlParameter("param_Time", Form_Main.lblTimeNow.Text))
                cmd.Parameters.Add(New MySqlParameter("param_IsCurrent", 0))
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                MsgBox("SUCCESSFULLY PURCHASED!", MsgBoxStyle.Information, "ATTENTION")
                con.Close()

                con.Open()
                cmd = New MySqlCommand("SELECT * FROM tbl_Sales WHERE Date=@Date AND User_Id=@User_Id", con)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@Date", Date.Now.ToString("yyyy-MM-dd"))
                cmd.Parameters.AddWithValue("@User_Id", Form_Main.userIdGetter)
                dr = cmd.ExecuteReader()
                If dr.Read = True Then
                    dr.Close()
                    cmd.Dispose()
                    con.Close()
                    con.Open()
                    cmd = New MySqlCommand("UPDATE tbl_Sales SET Sub_Total = Sub_Total + @Sub_Total * @Price, Time = @Time WHERE Date = @Date AND User_Id = @User_Id", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@Sub_Total", txtQuantity.Text)
                    cmd.Parameters.AddWithValue("@Price", txtPrice.Text)
                    cmd.Parameters.AddWithValue("@Time", Form_Main.lblTimeNow.Text)
                    cmd.Parameters.AddWithValue("@Date", Date.Now.ToString("yyyy-MM-dd"))
                    cmd.Parameters.AddWithValue("@User_Id", Form_Main.userIdGetter)
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()
                ElseIf dr.Read = False Then
                    dr.Close()
                    cmd.Dispose()
                    con.Close()
                    Dim calculated As Integer = 0
                    calculated = CDbl(txtQuantity.Text) * CDbl(txtPrice.Text)
                    con.Open()
                    cmd = New MySqlCommand("INSERT INTO tbl_Sales (User_Id,Sub_Total,Date,Time) values (@User_Id,@Sub_Total, @Date, @Time)", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@User_Id", Form_Main.userIdGetter)
                    cmd.Parameters.AddWithValue("@Sub_Total", calculated)
                    cmd.Parameters.AddWithValue("@Date", Date.Now.ToString("yyyy-MM-dd"))
                    cmd.Parameters.AddWithValue("@Time", Form_Main.lblTimeNow.Text)
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()
                End If
                Me.Close()
                Module_GetData.Inventory_In_CA()
                Form_Main.Enabled = True
                Form_Main.BringToFront()
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            dr.Close()
            con.Close()
        End Try
    End Sub
    Private Sub txtQuantity_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtQuantity.KeyPress
        If Asc(e.KeyChar) <> 8 Then
            If Asc(e.KeyChar) < 48 Or Asc(e.KeyChar) > 57 Then
                e.Handled = True
            End If
        End If
    End Sub
    Private Sub Form_Purchasing_FormClosed(sender As Object, e As FormClosedEventArgs) Handles MyBase.FormClosed
        Form_Main.Enabled = True
        Form_Main.BringToFront()
    End Sub
End Class