Imports MySql.Data.MySqlClient
Module Module_Reset ' Created by: Joshua C. Magoliman
    Public Sub Inventory_In_CA()
        Form_Main.cmbbox_In_CA_Filter.Text = "NONE"
        Form_Main.txt_In_CA_Search.Clear()
        Module_GetData.Inventory_In_CA()
    End Sub
    Public Sub Inventory_In_M()
        Form_Main.cmbbox_In_M_Filter.Text = "NONE"
        Form_Main.txt_In_M_Search.Clear()
        Form_Main.cmbbox_In_M_ProductName.Items.Clear()
        Form_Main.cmbbox_In_M_Unit.Items.Clear()
        Form_Main.txt_In_M_Quantity.Clear()
        Form_Main.btn_In_M_Add.Visible = True
        Form_Main.btn_In_M_Edit.Visible = False
        Form_Main.btn_In_M_Clear.Visible = True
        Form_Main.btn_In_M_Update.Visible = True
        Form_Main.btn_In_M_Delete.Visible = True
        Form_Main.cmbbox_In_M_ProductName.Enabled = True
        Form_Main.cmbbox_In_M_Unit.Enabled = False
        Form_Main.txt_In_M_Quantity.Enabled = False
        Form_Main.btn_In_M_Add.Enabled = False
        Form_Main.btn_In_M_Clear.Enabled = False
        Form_Main.btn_In_M_Update.Enabled = False
        Form_Main.btn_In_M_Delete.Enabled = False
        Module_GetData.Inventory_In_M()
        Try
            con.Open()
            cmd = New MySqlCommand("SELECT * FROM tbl_products", con)
            cmd.CommandType = CommandType.Text
            dr = cmd.ExecuteReader()
            While dr.Read
                Form_Main.cmbbox_In_M_ProductName.Items.Add(dr.GetString("Name"))
            End While
            cmd.Dispose()
            con.Close()

            con.Open()
            cmd = New MySqlCommand("SELECT * FROM tbl_units", con)
            cmd.CommandType = CommandType.Text
            dr = cmd.ExecuteReader()
            While dr.Read
                Form_Main.cmbbox_In_M_Unit.Items.Add(dr.GetString("Unit"))
            End While
            cmd.Dispose()
            con.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
    Public Sub Inventory_In_H()
        Form_Main.cmbbox_In_H_Filter.Text = "NONE"
        Form_Main.txt_In_H_Search.Clear()
        Module_GetData.Inventory_In_H()
    End Sub
    Public Sub Inventory_Out()
        Form_Main.cmbbox_Out_Filter.Text = "NONE"
        Form_Main.txt_Out_Search.Clear()
        Module_GetData.Inventory_Out()
    End Sub
    Public Sub Products_ManageProducts()
        Form_Main.cmbbox_ManageProductsFilter.Text = "NONE"
        Form_Main.txt_ManageProductsSearch.Clear()
        Form_Main.txt_ManageProductsProductID.Clear()
        Form_Main.txt_ManageProductsName.Clear()
        Form_Main.txt_ManageProductsPrice.Clear()
        Form_Main.cmbbox_ManageProductsProductCategory.Items.Clear()
        Form_Main.cmbbox_ManageProductsSupplier.Items.Clear()
        Form_Main.btn_ManageProductsAdd.Visible = True
        Form_Main.btn_ManageProductsEdit.Visible = False
        Form_Main.btn_ManageProductsClear.Visible = True
        Form_Main.btn_ManageProductsUpdate.Visible = True
        Form_Main.btn_ManageProductsDelete.Visible = True
        Form_Main.btn_ManageProductsAdd.Enabled = False
        Form_Main.btn_ManageProductsClear.Enabled = False
        Form_Main.btn_ManageProductsUpdate.Enabled = False
        Form_Main.btn_ManageProductsDelete.Enabled = False
        Form_Main.txt_ManageProductsProductID.Enabled = True
        Form_Main.txt_ManageProductsName.Enabled = False
        Form_Main.txt_ManageProductsPrice.Enabled = False
        Form_Main.cmbbox_ManageProductsProductCategory.Enabled = False
        Form_Main.cmbbox_ManageProductsSupplier.Enabled = False
        Module_GetData.Products_ManageProducts()
        Try
            con.Open()
            cmd = New MySqlCommand("SELECT * FROM tbl_categories", con)
            cmd.CommandType = CommandType.Text
            dr = cmd.ExecuteReader()
            While dr.Read
                Form_Main.cmbbox_ManageProductsProductCategory.Items.Add(dr.GetString("Category"))
            End While
            cmd.Dispose()
            con.Close()

            con.Open()
            cmd = New MySqlCommand("SELECT * FROM tbl_suppliers", con)
            cmd.CommandType = CommandType.Text
            dr = cmd.ExecuteReader()
            While dr.Read
                Form_Main.cmbbox_ManageProductsSupplier.Items.Add(dr.GetString("Name"))
            End While
            cmd.Dispose()
            con.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
    Public Sub Products_ProductCategories()
        Form_Main.cmbbox_ProductCategoriesFilter.Text = "NONE"
        Form_Main.txt_ProductCategoriesSearch.Clear()
        Form_Main.txt_ProductCategoriesCategoryName.Clear()
        Form_Main.txt_ProductCategoriesCategoryName.Enabled = True
        Form_Main.btn_ProductCategoriesAdd.Visible = True
        Form_Main.btn_ProductCategoriesEdit.Visible = False
        Form_Main.btn_ProductCategoriesClear.Visible = True
        Form_Main.btn_ProductCategoriesUpdate.Visible = True
        Form_Main.btn_ProductCategoriesDelete.Visible = True
        Form_Main.btn_ProductCategoriesAdd.Enabled = False
        Form_Main.btn_ProductCategoriesClear.Enabled = False
        Form_Main.btn_ProductCategoriesUpdate.Enabled = False
        Form_Main.btn_ProductCategoriesDelete.Enabled = False
        Module_GetData.Products_ProductCategories()
        Form_Main.txt_ProductCategoriesCategoryName.Focus()
    End Sub
    Public Sub Suppliers()
        Form_Main.cmbbox_SuppliersFilter.Text = "NONE"
        Form_Main.txt_SuppliersSearch.Clear()
        Form_Main.txt_SuppliersSupplierName.Clear()
        Form_Main.cmbbox_SuppliersTypes.Text = ""
        Form_Main.txt_SuppliersEmail.Clear()
        Form_Main.txt_SuppliersContactNumber.Clear()
        Form_Main.txt_SuppliersAddress.Clear()
        Form_Main.btn_SuppliersAdd.Visible = True
        Form_Main.btn_SuppliersEdit.Visible = False
        Form_Main.btn_SuppliersClear.Visible = True
        Form_Main.btn_SuppliersUpdate.Visible = True
        Form_Main.btn_SuppliersDelete.Visible = True
        Form_Main.btn_SuppliersAdd.Enabled = False
        Form_Main.btn_SuppliersClear.Enabled = False
        Form_Main.btn_SuppliersUpdate.Enabled = False
        Form_Main.btn_SuppliersDelete.Enabled = False
        Module_GetData.Suppliers()
        Form_Main.txt_SuppliersSupplierName.Focus()
    End Sub
    Public Sub Accounts_CreateANewAccount()
        Form_Main.txt_CreateANewAccountUsername.Clear()
        Form_Main.txt_CreateANewAccountPassword.Clear()
        Form_Main.txt_CreateANewAccountGivenName.Clear()
        Form_Main.txt_CreateANewAccountMiddleInitial.Clear()
        Form_Main.txt_CreateANewAccountLastName.Clear()
        Form_Main.txt_CreateANewAccountSuffix.Clear()
        Form_Main.cmbbox_CreateANewAccountSecretQuestion.Text = ""
        Form_Main.txt_CreateANewAccountSecretAnswer.Clear()
        Form_Main.chkbox_CreateANewAccountShowPassword.Checked = False
        Form_Main.chkbox_CreateANewAccountShowSecretAnswer.Checked = False
        Module_GetData.Accounts()
        Form_Main.txt_CreateANewAccountUsername.Focus()
    End Sub
    Public Sub Accounts_ChangePassword()
        Form_Main.txt_ChangePasswordCurrentPassword.Clear()
        Form_Main.txt_ChangePasswordNewPassword.Clear()
        Form_Main.txt_ChangePasswordConfirmNewPassword.Clear()
        Form_Main.chkbox_ChangePasswordShowPassword1.Checked = False
        Form_Main.chkbox_ChangePasswordShowPassword2.Checked = False
        Module_GetData.Accounts()
        Form_Main.txt_ChangePasswordCurrentPassword.Focus()
    End Sub
    Public Sub Sales()
        Form_Main.cmbbox_SalesFilter.Text = "NONE"
        Form_Main.txt_SalesSearch.Clear()
        Module_GetData.Sales()
        Form_Main.txt_SalesSearch.Focus()
    End Sub
End Module
