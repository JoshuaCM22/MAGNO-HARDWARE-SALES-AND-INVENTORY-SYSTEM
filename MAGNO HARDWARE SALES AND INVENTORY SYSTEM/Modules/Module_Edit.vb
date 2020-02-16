Module Module_Edit ' Created by: Joshua C. Magoliman
    Public Sub Inventory_In_M()
        Form_Main.btn_In_M_Edit.Enabled = False
        Form_Main.btn_In_M_Update.Enabled = True
        Form_Main.btn_In_M_Delete.Enabled = True
        Form_Main.cmbbox_In_M_Unit.Enabled = True
        Form_Main.txt_In_M_Quantity.Enabled = True
    End Sub
    Public Sub ManageProducts()
        Form_Main.btn_ManageProductsEdit.Enabled = False
        Form_Main.txt_ManageProductsProductID.Enabled = False
        Form_Main.txt_ManageProductsName.Enabled = True
        Form_Main.txt_ManageProductsPrice.Enabled = True
        Form_Main.cmbbox_ManageProductsProductCategory.Enabled = True
        Form_Main.cmbbox_ManageProductsSupplier.Enabled = True
        Form_Main.btn_ManageProductsUpdate.Enabled = True
        Form_Main.btn_ManageProductsDelete.Enabled = True
    End Sub
    Public Sub ProductCategories()
        Form_Main.btn_ProductCategoriesEdit.Enabled = False
        Form_Main.btn_ProductCategoriesAdd.Visible = False
        Form_Main.btn_ProductCategoriesEdit.Visible = True
        Form_Main.btn_ProductCategoriesUpdate.Enabled = True
        Form_Main.btn_ProductCategoriesDelete.Enabled = True
        Form_Main.txt_ProductCategoriesCategoryName.Enabled = True
    End Sub
    Public Sub Supplier()
        Form_Main.btn_SuppliersEdit.Enabled = False
        Form_Main.txt_SuppliersSupplierName.Enabled = True
        Form_Main.cmbbox_SuppliersTypes.Enabled = True
        Form_Main.txt_SuppliersEmail.Enabled = True
        Form_Main.txt_SuppliersContactNumber.Enabled = True
        Form_Main.txt_SuppliersAddress.Enabled = True
        Form_Main.btn_SuppliersUpdate.Enabled = True
        Form_Main.btn_SuppliersDelete.Enabled = True
    End Sub
End Module
