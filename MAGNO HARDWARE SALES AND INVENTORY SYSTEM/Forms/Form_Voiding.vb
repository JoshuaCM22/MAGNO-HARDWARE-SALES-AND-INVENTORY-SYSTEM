Imports MySql.Data.MySqlClient
Imports System.IO
Public Class Form_Voiding ' Created by: Joshua C. Magoliman
    Dim productIdGetter As String = ""
    Dim unitIdGetter As Integer = 0
    Dim categoryIdGetter As Integer = 0
    Dim supplierIdGetter As Integer = 0
    Dim originalQuantity As Integer = 0
    Private Sub Form_Voiding_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Reset()
    End Sub
    Public Sub Reset()
        Form_Main.Enabled = False
        Me.Show()
        Me.BringToFront()
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
            Dim userIdGetterForChecking As Integer = 0

            con.Open()
            cmd = New MySqlCommand("SELECT * FROM tbl_inventory WHERE Id=@Id", con)
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@Id", Form_Main.inventoryIdGetter)
            dr = cmd.ExecuteReader()
            While dr.Read
                userIdGetterForChecking = dr.GetString("User_Id")
            End While
            cmd.Dispose()
            con.Close()

            If Not userIdGetterForChecking = Form_Main.userIdGetter Then
                txtProductName.Enabled = False
                txtPrice.Enabled = False
                txtProductCategory.Enabled = False
                txtNameOfSupplier.Enabled = False
                txtUnit.Enabled = False
                txtQuantity.Enabled = False
                btnVoid.Enabled = False
                MsgBox("You cannot void this product. Your Account Name should be match who purchased this product!", MsgBoxStyle.Critical, "ATTENTION")
            Else
                txtProductName.Enabled = False
                txtPrice.Enabled = False
                txtProductCategory.Enabled = False
                txtNameOfSupplier.Enabled = False
                txtUnit.Enabled = False
                txtQuantity.Enabled = True
                txtQuantity.Select()
                btnVoid.Enabled = True
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            dr.Close()
            con.Close()
        End Try
    End Sub
    Private Sub btnVoid_Click(sender As Object, e As EventArgs) Handles btnVoid.Click
        Try
            If txtQuantity.Text = "0" Then
                MsgBox("Zero Quantity found !", MsgBoxStyle.Critical, "Error")
                txtQuantity.Focus()
            ElseIf CDbl(txtQuantity.Text) > CDbl(originalQuantity) Then
                MsgBox("Your Quantity is too much !", MsgBoxStyle.Critical, "Error")
                txtQuantity.Focus()
            Else
                Dim question As String
                question = MsgBox("ARE YOU SURE YOU WANT TO VOID?", MsgBoxStyle.Exclamation + MsgBoxStyle.YesNo, "ATTENTION !")
                If question = vbYes Then
                    Dim dateToday As Date = Date.Now.ToString("yyyy-MM-dd")
                    Dim returnQuantity As Integer = txtQuantity.Text
                    Dim deductedSubTotal As Decimal = txtPrice.Text * txtQuantity.Text
                    Dim leftQuantity As Integer = CDbl(originalQuantity) - CDbl(txtQuantity.Text)

                    con.Open()
                    cmd = New MySqlCommand("UPDATE tbl_inventory SET Quantity=@Quantity, User_Id=@User_Id, Date=@Date, Time=@Time, Is_Current=@Is_Current WHERE Id = @Id AND Status_Id=@Status_Id", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@Quantity", leftQuantity)
                    cmd.Parameters.AddWithValue("@User_Id", Form_Main.userIdGetter)
                    cmd.Parameters.AddWithValue("@Date", dateToday)
                    cmd.Parameters.AddWithValue("@Time", Form_Main.lblTimeNow.Text)
                    cmd.Parameters.AddWithValue("@Is_Current", 0)
                    cmd.Parameters.AddWithValue("@Id", Form_Main.inventoryIdGetter)
                    cmd.Parameters.AddWithValue("@Status_Id", 2)
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()

                    con.Open()
                    cmd = New MySqlCommand("UPDATE tbl_inventory SET Quantity = Quantity + @Quantity, User_Id=@User_Id, Date=@Date, Time=@Time WHERE Product_Id=@Product_Id AND Status_Id=@Status_Id AND Is_Current=@Is_Current", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@Quantity", returnQuantity)
                    cmd.Parameters.AddWithValue("@User_Id", Form_Main.userIdGetter)
                    cmd.Parameters.AddWithValue("@Date", dateToday)
                    cmd.Parameters.AddWithValue("@Time", Form_Main.lblTimeNow.Text)
                    cmd.Parameters.AddWithValue("@Product_Id", productIdGetter)
                    cmd.Parameters.AddWithValue("@Status_Id", 1)
                    cmd.Parameters.AddWithValue("@Is_Current", 1)
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()

                    con.Open()
                    cmd = New MySqlCommand("UPDATE tbl_sales SET Sub_Total = Sub_Total - @Sub_Total, Time=@Time WHERE User_Id=@User_Id AND Date=@Date", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@Sub_Total", deductedSubTotal)
                    cmd.Parameters.AddWithValue("@Time", Form_Main.lblTimeNow.Text)
                    cmd.Parameters.AddWithValue("@User_Id", Form_Main.userIdGetter)
                    cmd.Parameters.AddWithValue("@Date", dateToday)
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    con.Close()

                    con.Open()
                    cmd = New MySqlCommand("SELECT * FROM tbl_inventory WHERE Quantity = @Quantity AND Status_Id = @Status_Id AND Is_Current = @Is_Current", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@Quantity", 0)
                    cmd.Parameters.AddWithValue("@Status_Id", 2)
                    cmd.Parameters.AddWithValue("@Is_Current", 0)
                    dr = cmd.ExecuteReader()
                    If dr.Read = True Then
                        Dim inventoryIdGetter As Integer = dr.Item("Id")
                        dr.Close()
                        con.Close()

                        con.Open()
                        cmd = New MySqlCommand("DELETE FROM magnohardware_sales_and_inventory_system.tbl_inventory WHERE Id = @Id", con)
                        cmd.CommandType = CommandType.Text
                        cmd.Parameters.Add(New MySqlParameter("@Id", inventoryIdGetter))
                        cmd.ExecuteNonQuery()
                        cmd.Dispose()
                        con.Close()
                    End If
                    dr.Close()
                    con.Close()

                    con.Open()
                    cmd = New MySqlCommand("SELECT * FROM tbl_sales WHERE Sub_Total=@Sub_Total AND Date=@Date", con)
                    cmd.CommandType = CommandType.Text
                    Dim zeroSubTotal As Decimal = 0.0
                    cmd.Parameters.AddWithValue("@Sub_Total", zeroSubTotal)
                    cmd.Parameters.AddWithValue("@Date", dateToday)
                    dr = cmd.ExecuteReader()
                    If dr.Read = True Then
                        Dim inventoryIdGetter As Integer = dr.Item("Id")
                        dr.Close()
                        con.Close()

                        con.Open()
                        cmd = New MySqlCommand("DELETE FROM magnohardware_sales_and_inventory_system.tbl_sales WHERE Id = @Id", con)
                        cmd.CommandType = CommandType.Text
                        cmd.Parameters.Add(New MySqlParameter("@Id", inventoryIdGetter))
                        cmd.ExecuteNonQuery()
                        cmd.Dispose()
                        con.Close()

                    End If
                    dr.Close()
                    con.Close()

                    Dim currentQuantity As Integer = 0
                    con.Open()
                    cmd = New MySqlCommand("SELECT * FROM tbl_inventory WHERE Product_Id=@Product_Id AND Status_Id=@Status_Id AND Date=@Date AND Is_Current=@Is_Current", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@Product_Id", productIdGetter)
                    cmd.Parameters.AddWithValue("@Status_Id", 1)
                    cmd.Parameters.AddWithValue("@Date", dateToday)
                    cmd.Parameters.AddWithValue("@Is_Current", 1)
                    dr = cmd.ExecuteReader()
                    If dr.Read = True Then
                        currentQuantity = dr.Item("Quantity")
                        dr.Close()
                        con.Close()
                    End If
                    dr.Close()
                    con.Close()

                    con.Open()
                    cmd = New MySqlCommand("SELECT * FROM tbl_inventory WHERE Product_Id=@Product_Id AND Status_Id=@Status_Id AND Quantity=@Quantity AND Date=@Date AND Is_Current=@Is_Current", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@Product_Id", productIdGetter)
                    cmd.Parameters.AddWithValue("@Status_Id", 1)
                    cmd.Parameters.AddWithValue("@Quantity", currentQuantity)
                    cmd.Parameters.AddWithValue("@Date", dateToday)
                    cmd.Parameters.AddWithValue("@Is_Current", 0)
                    dr = cmd.ExecuteReader()
                    If dr.Read = True Then
                        Dim inventoryIdGetter As Integer = dr.Item("Id")
                        dr.Close()
                        con.Close()

                        con.Open()
                        cmd = New MySqlCommand("DELETE FROM magnohardware_sales_and_inventory_system.tbl_inventory WHERE Id = @Id", con)
                        cmd.CommandType = CommandType.Text
                        cmd.Parameters.Add(New MySqlParameter("@Id", inventoryIdGetter))
                        cmd.ExecuteNonQuery()
                        cmd.Dispose()
                        con.Close()
                    End If
                    dr.Close()
                    con.Close()
                    MsgBox("SUCCESSFULLY VOIDED!", MsgBoxStyle.Information, "ATTENTION")
                    Me.Close()
                    Module_GetData.Inventory_Out()
                    Module_GetData.Sales()
                    Form_Main.Enabled = True
                    Form_Main.BringToFront()
                ElseIf question = vbNo Then
                    txtQuantity.Focus()
                End If
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            dr.Close()
            con.Close()
        End Try
    End Sub
    Private Sub txtQuantity_KeyPress(sender As Object, e As KeyPressEventArgs)
        If Asc(e.KeyChar) <> 8 Then
            If Asc(e.KeyChar) < 48 Or Asc(e.KeyChar) > 57 Then
                e.Handled = True
            End If
        End If
    End Sub
    Private Sub Form_Voiding_FormClosed(sender As Object, e As FormClosedEventArgs) Handles MyBase.FormClosed
        Form_Main.Enabled = True
        Form_Main.BringToFront()
    End Sub
End Class