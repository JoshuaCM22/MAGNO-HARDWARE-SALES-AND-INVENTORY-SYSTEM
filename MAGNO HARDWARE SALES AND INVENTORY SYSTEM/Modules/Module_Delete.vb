Imports MySql.Data.MySqlClient
Module Module_Delete ' Created by: Joshua C. Magoliman
    Public Sub Inventory_In_M()
        Dim question As String
        question = MsgBox("Are you sure you want to delete ?", MsgBoxStyle.Exclamation + MsgBoxStyle.YesNo, "ATTENTION !")
        If question = vbYes Then
            Try
                con.Open()
                cmd = New MySqlCommand("sp_DeleteExistingProduct", con)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add(New MySqlParameter("param_Id", Form_Main.inventoryIdGetter))
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                MsgBox("SUCCESSFULLY DELETED!", MsgBoxStyle.Information, "ATTENTION")
                con.Close()
                Module_Reset.Inventory_In_M()
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub ManageProducts()
        Dim question As String
        question = MsgBox("Are you sure you want to delete ?", MsgBoxStyle.Exclamation + MsgBoxStyle.YesNo, "ATTENTION !")
        If question = vbYes Then
            Try
                con.Open()
                cmd = New MySqlCommand("sp_DeleteExistingProduct", con)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add(New MySqlParameter("param_Id", Form_Main.txt_ManageProductsProductID.Text))
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                MsgBox("SUCCESSFULLY DELETED!", MsgBoxStyle.Information, "ATTENTION")
                con.Close()
                Module_Reset.Products_ManageProducts()
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub ProductCategories()
        Dim question As String
        question = MsgBox("Are you sure you want to delete ?", MsgBoxStyle.Exclamation + MsgBoxStyle.YesNo, "ATTENTION !")
        If question = vbYes Then
            Try
                con.Open()
                cmd = New MySqlCommand("sp_DeleteExistingProductCategory", con)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add(New MySqlParameter("param_Id", Form_Main.productCategoryIdGetter))
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                MsgBox("SUCCESSFULLY DELETED!", MsgBoxStyle.Information, "ATTENTION")
                con.Close()

                con.Open()
                cmd = New MySqlCommand("sp_Reset_AutoIncrement_ProductCategory", con)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                con.Close()
                Module_Reset.Products_ProductCategories()
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub Supplier()
        Dim question As String
        question = MsgBox("Are you sure you want to delete ?", MsgBoxStyle.Exclamation + MsgBoxStyle.YesNo, "ATTENTION !")
        If question = vbYes Then
            Try
                con.Open()
                cmd = New MySqlCommand("sp_DeleteExistingSupplier", con)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add(New MySqlParameter("param_Id", Form_Main.supplierIdGetter))
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                MsgBox("SUCCESSFULLY DELETED!", MsgBoxStyle.Information, "ATTENTION")
                con.Close()

                con.Open()
                cmd = New MySqlCommand("sp_Reset_AutoIncrement_Supplier", con)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.ExecuteScalar()
                cmd.Dispose()
                con.Close()
                Module_Reset.Suppliers()
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
End Module
