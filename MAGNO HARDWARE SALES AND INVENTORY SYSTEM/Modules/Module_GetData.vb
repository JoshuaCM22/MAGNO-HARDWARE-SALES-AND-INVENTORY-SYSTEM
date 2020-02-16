Imports MySql.Data.MySqlClient
Module Module_GetData ' Created by: Joshua C. Magoliman
    Public getSalesValue As String
    Public Sub Inventory_In_CA()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            con.Open()
            da = New MySqlDataAdapter("vw_getdata_inventory_in_currentavailable", con)
            da.SelectCommand.CommandType = CommandType.TableDirect
            da.Fill(ds)
            Form_Main.dgv_In_CA.DataSource = ds.Tables(0)
            Form_Main.dgv_In_CA.Columns(0).Visible = False
            Form_Main.dgv_In_CA.Columns(1).Width = 395
            Form_Main.dgv_In_CA.Columns(2).Visible = False
            Form_Main.dgv_In_CA.Columns(3).Width = 150
            Form_Main.dgv_In_CA.Columns(4).Width = 120
            Form_Main.dgv_In_CA.Columns(5).Width = 270
            Form_Main.dgv_In_CA.Columns(6).Width = 150
            Form_Main.dgv_In_CA.Columns(7).Width = 155
            Form_Main.dgv_In_CA.Columns(8).Visible = False
            da.Update(dt)
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
        Form_Main.lbl_In_CA_Total.Text = "TOTAL : " + Form_Main.dgv_In_CA.RowCount.ToString
    End Sub
    Public Sub Inventory_In_M()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            con.Open()
            da = New MySqlDataAdapter("vw_getdata_inventory_in_manage", con)
            da.SelectCommand.CommandType = CommandType.TableDirect
            da.Fill(ds)
            Form_Main.dgv_In_M.DataSource = ds.Tables(0)
            Form_Main.dgv_In_M.Columns(0).Visible = False
            Form_Main.dgv_In_M.Columns(1).Width = 395
            Form_Main.dgv_In_M.Columns(2).Visible = False
            Form_Main.dgv_In_M.Columns(3).Width = 150
            Form_Main.dgv_In_M.Columns(4).Width = 120
            Form_Main.dgv_In_M.Columns(5).Width = 270
            Form_Main.dgv_In_M.Columns(6).Width = 150
            Form_Main.dgv_In_M.Columns(7).Width = 155
            Form_Main.dgv_In_M.Columns(8).Visible = False
            da.Update(dt)
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
    Public Sub Inventory_In_H()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            con.Open()
            da = New MySqlDataAdapter("vw_getdata_inventory_in_history", con)
            da.SelectCommand.CommandType = CommandType.TableDirect
            da.Fill(ds)
            Form_Main.dgv_In_H.DataSource = ds.Tables(0)
            Form_Main.dgv_In_H.Columns(0).Visible = False
            Form_Main.dgv_In_H.Columns(1).Width = 395
            Form_Main.dgv_In_H.Columns(2).Visible = False
            Form_Main.dgv_In_H.Columns(3).Width = 150
            Form_Main.dgv_In_H.Columns(4).Width = 120
            Form_Main.dgv_In_H.Columns(5).Width = 270
            Form_Main.dgv_In_H.Columns(6).Width = 150
            Form_Main.dgv_In_H.Columns(7).Width = 155
            Form_Main.dgv_In_H.Columns(8).Visible = False
            da.Update(dt)
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
        Form_Main.lbl_In_H_Total.Text = "TOTAL : " + Form_Main.dgv_In_H.RowCount.ToString
    End Sub
    Public Sub Inventory_Out()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            con.Open()
            da = New MySqlDataAdapter("vw_getdata_inventory_out", con)
            da.SelectCommand.CommandType = CommandType.TableDirect
            da.Fill(ds)
            Form_Main.dgv_Out.DataSource = ds.Tables(0)
            Form_Main.dgv_Out.Columns(0).Visible = False
            Form_Main.dgv_Out.Columns(1).Width = 395
            Form_Main.dgv_Out.Columns(2).Visible = False
            Form_Main.dgv_Out.Columns(3).Width = 150
            Form_Main.dgv_Out.Columns(4).Width = 120
            Form_Main.dgv_Out.Columns(5).Width = 270
            Form_Main.dgv_Out.Columns(6).Width = 150
            Form_Main.dgv_Out.Columns(7).Width = 155
            da.Update(dt)
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
        Form_Main.lbl_Out_TotalSales.Text = "TOTAL : " + Form_Main.dgv_Out.RowCount.ToString
    End Sub
    Public Sub Products_ManageProducts()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            con.Open()
            da = New MySqlDataAdapter("vw_getdata_products_manageproducts", con)
            da.SelectCommand.CommandType = CommandType.TableDirect
            da.Fill(ds)
            Form_Main.dgv_ManageProducts.DataSource = ds.Tables(0)
            Form_Main.dgv_ManageProducts.Columns(0).Width = 200
            Form_Main.dgv_ManageProducts.Columns(1).Width = 400
            Form_Main.dgv_ManageProducts.Columns(2).Width = 200
            Form_Main.dgv_ManageProducts.Columns(3).Width = 200
            Form_Main.dgv_ManageProducts.Columns(4).Width = 350
            Form_Main.dgv_ManageProducts.Columns(5).Width = 350
            Form_Main.dgv_ManageProducts.Columns(6).Width = 200
            Form_Main.dgv_ManageProducts.Columns(7).Width = 200
            da.Update(dt)
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
    Public Sub Products_ProductCategories()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            con.Open()
            da = New MySqlDataAdapter("vw_getdata_products_productcategories", con)
            da.SelectCommand.CommandType = CommandType.TableDirect
            da.Fill(ds)
            Form_Main.dgv_ProductCategories.DataSource = ds.Tables(0)
            Form_Main.dgv_ProductCategories.Columns(0).Width = 190
            Form_Main.dgv_ProductCategories.Columns(1).Width = 500
            Form_Main.dgv_ProductCategories.Columns(2).Width = 250
            Form_Main.dgv_ProductCategories.Columns(3).Width = 250
            da.Update(dt)
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
    Public Sub Suppliers()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            con.Open()
            da = New MySqlDataAdapter("vw_getdata_suppliers", con)
            da.SelectCommand.CommandType = CommandType.TableDirect
            da.Fill(ds)
            Form_Main.dgv_Suppliers.DataSource = ds.Tables(0)
            Form_Main.dgv_Suppliers.Columns(0).Width = 200
            Form_Main.dgv_Suppliers.Columns(1).Width = 400
            Form_Main.dgv_Suppliers.Columns(2).Width = 200
            Form_Main.dgv_Suppliers.Columns(3).Width = 350
            Form_Main.dgv_Suppliers.Columns(4).Width = 300
            Form_Main.dgv_Suppliers.Columns(5).Width = 450
            Form_Main.dgv_Suppliers.Columns(6).Width = 300
            da.Update(dt)
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
    Public Sub Accounts()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            con.Open()
            da = New MySqlDataAdapter("vw_getdata_accounts", con)
            da.SelectCommand.CommandType = CommandType.TableDirect
            da.Fill(ds)
            Form_Main.dgv_AccountDetails.DataSource = ds.Tables(0)
            Form_Main.dgv_AccountDetails.Columns(0).Visible = False
            Form_Main.dgv_AccountDetails.Columns(1).Visible = False
            Form_Main.dgv_AccountDetails.Columns(2).Visible = False
            Form_Main.dgv_AccountDetails.Columns(3).Visible = True
            Form_Main.dgv_AccountDetails.Columns(3).Width = 1105
            Form_Main.dgv_AccountDetails.Columns(4).Visible = False
            Form_Main.dgv_AccountDetails.Columns(5).Visible = False
            da.Update(dt)
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
        Form_Main.lbl_AccountTotal.Text = "TOTAL ACCOUNTS: " + Form_Main.dgv_AccountDetails.RowCount.ToString
    End Sub
    Public Sub Sales()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            con.Open()
            da = New MySqlDataAdapter("vw_getdata_sales", con)
            da.SelectCommand.CommandType = CommandType.TableDirect
            da.Fill(ds)
            Form_Main.dgv_Sales.DataSource = ds.Tables(0)
            Form_Main.dgv_Sales.Columns(0).Visible = False
            Form_Main.dgv_Sales.Columns(1).Width = 295
            Form_Main.dgv_Sales.Columns(2).Width = 295
            Form_Main.dgv_Sales.Columns(3).Width = 295
            Form_Main.dgv_Sales.Columns(4).Width = 300
            da.Update(dt)
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
        ComputeTotalSales()
    End Sub
    Public Sub ComputeTotalSales()
        If Form_Main.dgv_Sales.Rows.Count < 1 Then
            Form_Main.lbl_SalesTotal.Text = "TOTAL SALES : 0"
        Else
            Try
                Dim sum As Integer = 0
                For x As Integer = 0 To Form_Main.dgv_Sales.Rows.Count - 1 Step +1
                    sum = sum + Form_Main.dgv_Sales.Rows(x).Cells(2).Value
                Next
                Dim sumString As String = sum.ToString
                Dim patternFormat As Double = Convert.ToDouble(sumString)
                getSalesValue = patternFormat.ToString("#,##0.00")
                Form_Main.lbl_SalesTotal.Text = "TOTAL SALES : " & patternFormat.ToString("#,##0.00")
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            End Try
        End If
    End Sub
End Module
