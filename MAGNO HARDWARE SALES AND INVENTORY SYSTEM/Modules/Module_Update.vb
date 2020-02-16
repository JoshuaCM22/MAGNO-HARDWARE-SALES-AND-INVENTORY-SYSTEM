Imports MySql.Data.MySqlClient
Module Module_Update ' Created by: Joshua C. Magoliman
    Public Sub Inventory_In_M()
        Dim question As String
        question = MsgBox("Are you sure you want to update ?", MsgBoxStyle.Exclamation + MsgBoxStyle.YesNo, "ATTENTION !")
        If question = vbYes Then
            If Form_Main.cmbbox_In_M_ProductName.Text = "" And Form_Main.cmbbox_In_M_Unit.Text = "" And Form_Main.txt_In_M_Quantity.Text = "" Then
                MsgBox("Fill the Product Details", MsgBoxStyle.Critical, "ATTENTION")
                Form_Main.cmbbox_In_M_ProductName.Focus()
            ElseIf Form_Main.cmbbox_In_M_ProductName.Text = "" Then
                MsgBox("No Product Name Found!", MsgBoxStyle.Critical, "ATTENTION")
                Form_Main.cmbbox_In_M_ProductName.Focus()
            ElseIf Form_Main.cmbbox_In_M_Unit.Text = "" Then
                MsgBox("No Unit Found!", MsgBoxStyle.Critical, "ATTENTION")
                Form_Main.cmbbox_In_M_Unit.Focus()
            ElseIf Form_Main.txt_In_M_Quantity.Text = "" Then
                MsgBox("No Quantity Found!", MsgBoxStyle.Critical, "ATTENTION")
                Form_Main.txt_In_M_Quantity.Focus()
            Else
                Try
                    Dim quantityIdGetter As Integer = 0
                    con.Open()
                    cmd = New MySqlCommand("SELECT * FROM tbl_units WHERE Unit=@param_Unit", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@param_Unit", Form_Main.cmbbox_In_M_Unit.Text)
                    dr = cmd.ExecuteReader()
                    While dr.Read
                        quantityIdGetter = (dr.GetString("Id"))
                    End While
                    cmd.Dispose()
                    con.Close()

                    Dim dateToday As Date = Date.Now.ToString("yyyy-MM-dd")
                    con.Open()
                    cmd = New MySqlCommand("sp_UpdateExistingProduct", con)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add(New MySqlParameter("param_UnitId", quantityIdGetter))
                    cmd.Parameters.Add(New MySqlParameter("param_Quantity", Form_Main.txt_In_M_Quantity.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_UserId", Form_Main.userIdGetter))
                    cmd.Parameters.Add(New MySqlParameter("param_Date", dateToday))
                    cmd.Parameters.Add(New MySqlParameter("param_Time", Form_Main.lblTimeNow.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_Id", Form_Main.inventoryIdGetter))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    MsgBox("SUCCESSFULLY UPDATED!", MsgBoxStyle.Information, "ATTENTION")
                    con.Close()
                    Module_Reset.Inventory_In_M()
                Catch ex As Exception
                    MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
                Finally
                    con.Close()
                End Try
            End If
        End If
    End Sub
    Public Sub ManageProducts()
        Dim question As String
        question = MsgBox("Are you sure you want to update ?", MsgBoxStyle.Exclamation + MsgBoxStyle.YesNo, "ATTENTION !")
        If question = vbYes Then
            If Form_Main.txt_ManageProductsName.Text = "" And Form_Main.txt_ManageProductsPrice.Text = "" And Form_Main.cmbbox_ManageProductsProductCategory.Text = "" And Form_Main.cmbbox_ManageProductsSupplier.Text = "" Then
                MsgBox("Fill your Product Details", MsgBoxStyle.Critical, "ATTENTION")
                Form_Main.txt_ManageProductsName.Focus()
            ElseIf Form_Main.txt_ManageProductsName.Text = "" Then
                MsgBox("No Name Found!", MsgBoxStyle.Critical, "ATTENTION")
                Form_Main.txt_ManageProductsName.Focus()
            ElseIf Form_Main.txt_ManageProductsPrice.Text = "" Then
                MsgBox("No Price Found!", MsgBoxStyle.Critical, "ATTENTION")
                Form_Main.txt_ManageProductsPrice.Focus()
            ElseIf Form_Main.cmbbox_ManageProductsProductCategory.Text = "" Then
                MsgBox("No Product Category Found!", MsgBoxStyle.Critical, "ATTENTION")
                Form_Main.cmbbox_ManageProductsProductCategory.Focus()
            ElseIf Form_Main.cmbbox_ManageProductsSupplier.Text = "" Then
                MsgBox("No Supplier Found!", MsgBoxStyle.Critical, "ATTENTION")
                Form_Main.cmbbox_ManageProductsSupplier.Focus()
            Else
                Try
                    Dim a As Integer = 0
                    Dim b As Integer = 0
                    con.Open()
                    cmd = New MySqlCommand("SELECT * FROM tbl_categories WHERE Category=@param_CategoryName", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@param_CategoryName", Form_Main.cmbbox_ManageProductsProductCategory.Text)
                    dr = cmd.ExecuteReader()
                    While dr.Read
                        a = (dr.GetString("Id"))
                    End While
                    cmd.Dispose()
                    con.Close()

                    con.Open()
                    cmd = New MySqlCommand("SELECT * FROM tbl_suppliers WHERE Name=@param_Name", con)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@param_Name", Form_Main.cmbbox_ManageProductsSupplier.Text)
                    dr = cmd.ExecuteReader()
                    While dr.Read
                        b = (dr.GetString("Id"))
                    End While
                    cmd.Dispose()
                    con.Close()

                    Dim dateToday As Date = Date.Now.ToString("yyyy-MM-dd")
                    con.Open()
                    cmd = New MySqlCommand("sp_UpdateExistingProduct", con)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add(New MySqlParameter("param_Name", Form_Main.txt_ManageProductsName.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_Price", Form_Main.txt_ManageProductsPrice.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_CategoryId", a))
                    cmd.Parameters.Add(New MySqlParameter("param_SupplierId", b))
                    cmd.Parameters.Add(New MySqlParameter("param_UserId", Form_Main.userIdGetter))
                    cmd.Parameters.Add(New MySqlParameter("param_Date", dateToday))
                    cmd.Parameters.Add(New MySqlParameter("param_Time", Form_Main.lblTimeNow.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_Id", Form_Main.txt_ManageProductsProductID.Text))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    MsgBox("SUCCESSFULLY UPDATED!", MsgBoxStyle.Information, "ATTENTION")
                    con.Close()
                    Module_Reset.Products_ManageProducts()
                Catch ex As Exception
                    MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
                Finally
                    con.Close()
                End Try
            End If
        End If
    End Sub
    Public Sub ProductCategories()
        Dim question As String
        question = MsgBox("Are you sure you want to update ?", MsgBoxStyle.Exclamation + MsgBoxStyle.YesNo, "ATTENTION !")
        If question = vbYes Then
            If Form_Main.txt_ProductCategoriesCategoryName.Text = String.Empty Or Form_Main.txt_ProductCategoriesCategoryName.Text = " " Then
                MsgBox("No Category Name Found!", MsgBoxStyle.Critical, "Error")
                Form_Main.txt_ProductCategoriesCategoryName.Focus()
            Else
                Try
                    Dim dateToday As Date = Date.Now.ToString("yyyy-MM-dd")
                    con.Open()
                    cmd = New MySqlCommand("sp_UpdateExistingProductCategory", con)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add(New MySqlParameter("param_CategoryName", Form_Main.txt_ProductCategoriesCategoryName.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_Date", dateToday))
                    cmd.Parameters.Add(New MySqlParameter("param_Time", Form_Main.lblTimeNow.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_Id", Form_Main.productCategoryIdGetter))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    MsgBox("SUCCESSFULLY UPDATED!", MsgBoxStyle.Information, "ATTENTION")
                    con.Close()
                    Module_Reset.Products_ProductCategories()
                Catch ex As Exception
                    MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
                Finally
                    con.Close()
                End Try
            End If
        End If
    End Sub
    Public Sub Supplier()
        Dim question As String
        question = MsgBox("Are you sure you want to update ?", MsgBoxStyle.Exclamation + MsgBoxStyle.YesNo, "ATTENTION !")
        If question = vbYes Then
            If Form_Main.txt_SuppliersSupplierName.Text = "" Then
                MsgBox("No Supplier Name Found!", MsgBoxStyle.Critical, "Error")
                Form_Main.txt_SuppliersSupplierName.Focus()
            ElseIf Form_Main.cmbbox_SuppliersTypes.Text = "" Then
                MsgBox("No Types Found!", MsgBoxStyle.Critical, "Error")
                Form_Main.cmbbox_SuppliersTypes.Focus()
            ElseIf Form_Main.txt_SuppliersEmail.Text = "" Then
                MsgBox("No Email Found!", MsgBoxStyle.Critical, "Error")
                Form_Main.txt_SuppliersEmail.Focus()
            ElseIf Form_Main.txt_SuppliersContactNumber.Text = "" Then
                MsgBox("No Contact Number Found!", MsgBoxStyle.Critical, "Error")
                Form_Main.txt_SuppliersContactNumber.Focus()
            ElseIf Form_Main.txt_SuppliersAddress.Text = "" Then
                MsgBox("No Address Found!", MsgBoxStyle.Critical, "Error")
                Form_Main.txt_SuppliersAddress.Focus()
            Else
                Try
                    Dim type As Integer = 0
                    If Form_Main.cmbbox_SuppliersTypes.Text = "Local" Then
                        type = 1
                    ElseIf Form_Main.cmbbox_SuppliersTypes.Text = "International" Then
                        type = 2
                    End If
                    con.Open()
                    cmd = New MySqlCommand("sp_UpdateExistingSupplier", con)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add(New MySqlParameter("param_Name", Form_Main.txt_SuppliersSupplierName.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_TypeId", type))
                    cmd.Parameters.Add(New MySqlParameter("param_Email", Form_Main.txt_SuppliersEmail.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_ContactNumber", Form_Main.txt_SuppliersContactNumber.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_Address", Form_Main.txt_SuppliersAddress.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_UserId", Form_Main.userIdGetter))
                    cmd.Parameters.Add(New MySqlParameter("param_Id", Form_Main.supplierIdGetter))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    MsgBox("SUCCESSFULLY UPDATED!", MsgBoxStyle.Information, "ATTENTION")
                    con.Close()
                    Module_Reset.Suppliers()
                Catch ex As Exception
                    MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
                Finally
                    con.Close()
                End Try
            End If
        End If
    End Sub
End Module
