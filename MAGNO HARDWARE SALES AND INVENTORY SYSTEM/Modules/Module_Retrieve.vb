Imports MySql.Data.MySqlClient
Module Module_Retrieve ' Created by: Joshua C. Magoliman
    Public Sub Inventory_In_CA()
        If Not Form_Main.dgv_In_CA.Rows.Count < 1 Then
            Try
                Dim row As DataGridViewRow = Form_Main.dgv_In_CA.CurrentRow
                Form_Main.inventoryIdGetter = row.Cells(0).Value.ToString()
                Form_Purchasing.txtProductName.Text = row.Cells(1).Value.ToString()
                Form_Purchasing.txtUnit.Text = row.Cells(3).Value.ToString()
                Form_Purchasing.txtQuantity.Text = row.Cells(4).Value.ToString()
                Form_Purchasing.Reset()
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub Inventory_In_M()
        If Not Form_Main.dgv_In_CA.Rows.Count < 1 Then
            Try
                Dim row As DataGridViewRow = Form_Main.dgv_In_M.CurrentRow
                Form_Main.inventoryIdGetter = row.Cells(0).Value.ToString()
                Form_Main.cmbbox_In_M_ProductName.Text = row.Cells(1).Value.ToString()
                Form_Main.cmbbox_In_M_Unit.Text = row.Cells(3).Value.ToString()
                Form_Main.txt_In_M_Quantity.Text = row.Cells(4).Value.ToString()
                Form_Main.btn_In_M_Add.Visible = False
                Form_Main.btn_In_M_Edit.Visible = True
                Form_Main.btn_In_M_Clear.Enabled = True
                Form_Main.btn_In_M_Edit.Enabled = True
                Form_Main.cmbbox_In_M_ProductName.Enabled = False
                Form_Main.cmbbox_In_M_Unit.Enabled = False
                Form_Main.txt_In_M_Quantity.Enabled = False
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub Inventory_Out()
        Try
            If Not Form_Main.dgv_Out.Rows.Count < 1 Then
                Dim row As DataGridViewRow = Form_Main.dgv_Out.CurrentRow
                Form_Main.inventoryIdGetter = row.Cells(0).Value.ToString()
                Form_Voiding.txtProductName.Text = row.Cells(1).Value.ToString()
                Form_Voiding.txtUnit.Text = row.Cells(3).Value.ToString()
                Form_Voiding.txtQuantity.Text = row.Cells(4).Value.ToString()
                Form_Voiding.Show()
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            dr.Close()
            con.Close()
        End Try
    End Sub
    Public Sub ManageProducts()
        If Not Form_Main.dgv_ManageProducts.Rows.Count < 1 Then
            Try
                Dim row As DataGridViewRow = Form_Main.dgv_ManageProducts.CurrentRow
                Form_Main.txt_ManageProductsProductID.Text = row.Cells(0).Value.ToString()
                Form_Main.txt_ManageProductsName.Text = row.Cells(1).Value.ToString()
                Form_Main.txt_ManageProductsPrice.Text = row.Cells(2).Value.ToString()
                Form_Main.cmbbox_ManageProductsProductCategory.Text = row.Cells(3).Value.ToString()
                Form_Main.cmbbox_ManageProductsSupplier.Text = row.Cells(4).Value.ToString()
                Form_Main.btn_ManageProductsAdd.Visible = False
                Form_Main.btn_ManageProductsEdit.Visible = True
                Form_Main.btn_ManageProductsClear.Enabled = True
                Form_Main.txt_ManageProductsProductID.Enabled = False
                Form_Main.txt_ManageProductsName.Enabled = False
                Form_Main.txt_ManageProductsPrice.Enabled = False
                Form_Main.cmbbox_ManageProductsProductCategory.Enabled = False
                Form_Main.cmbbox_ManageProductsSupplier.Enabled = False
                Form_Main.btn_ManageProductsEdit.Enabled = True
                Form_Main.btn_ManageProductsUpdate.Enabled = False
                Form_Main.btn_ManageProductsDelete.Enabled = False
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub ProductCategories()
        If Not Form_Main.dgv_ProductCategories.Rows.Count < 1 Then
            Try
                Dim row As DataGridViewRow = Form_Main.dgv_ProductCategories.CurrentRow
                Form_Main.productCategoryIdGetter = row.Cells(0).Value.ToString()
                Form_Main.txt_ProductCategoriesCategoryName.Text = row.Cells(1).Value.ToString()
                Form_Main.btn_ProductCategoriesAdd.Visible = False
                Form_Main.btn_ProductCategoriesEdit.Visible = True
                Form_Main.btn_ProductCategoriesClear.Enabled = True
                Form_Main.txt_ProductCategoriesCategoryName.Enabled = False
                Form_Main.btn_ProductCategoriesEdit.Enabled = True
                Form_Main.btn_ProductCategoriesUpdate.Enabled = False
                Form_Main.btn_ProductCategoriesDelete.Enabled = False
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub Suppliers()
        If Not Form_Main.dgv_Suppliers.Rows.Count < 1 Then
            Try
                Dim row As DataGridViewRow = Form_Main.dgv_Suppliers.CurrentRow
                Form_Main.supplierIdGetter = row.Cells(0).Value.ToString()
                Form_Main.txt_SuppliersSupplierName.Text = row.Cells(1).Value.ToString()
                Dim type As String = ""
                type = row.Cells(2).Value.ToString
                Form_Main.cmbbox_SuppliersTypes.Text = type
                Form_Main.txt_SuppliersEmail.Text = row.Cells(3).Value.ToString()
                Form_Main.txt_SuppliersContactNumber.Text = row.Cells(4).Value.ToString()
                Form_Main.txt_SuppliersAddress.Text = row.Cells(5).Value.ToString()
                Form_Main.btn_SuppliersAdd.Visible = False
                Form_Main.btn_SuppliersEdit.Visible = True
                Form_Main.btn_SuppliersClear.Enabled = True
                Form_Main.txt_SuppliersSupplierName.Enabled = False
                Form_Main.cmbbox_SuppliersTypes.Enabled = False
                Form_Main.txt_SuppliersEmail.Enabled = False
                Form_Main.txt_SuppliersContactNumber.Enabled = False
                Form_Main.txt_SuppliersAddress.Enabled = False
                Form_Main.btn_SuppliersEdit.Enabled = True
                Form_Main.btn_SuppliersUpdate.Enabled = False
                Form_Main.btn_SuppliersDelete.Enabled = False
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
End Module
