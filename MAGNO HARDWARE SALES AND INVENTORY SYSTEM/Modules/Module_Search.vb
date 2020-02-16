Imports MySql.Data.MySqlClient
Module Module_Search ' Created by: Joshua C. Magoliman
    Public Sub Inventory_In_CA()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            If Form_Main.txt_In_CA_Search.Text = "" Then
                Module_GetData.Inventory_In_CA()
            ElseIf Form_Main.cmbbox_In_CA_Filter.Text = "PRODUCT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_CA_By_ProductName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_ProductName", "%" & Form_Main.txt_In_CA_Search.Text & "%")
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
            ElseIf Form_Main.cmbbox_In_CA_Filter.Text = "UNIT" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_CA_By_Unit", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Unit", "%" & Form_Main.txt_In_CA_Search.Text & "%")
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
            ElseIf Form_Main.cmbbox_In_CA_Filter.Text = "QUANTITY" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_CA_By_Quantity", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Quantity", Form_Main.txt_In_CA_Search.Text)
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
            ElseIf Form_Main.cmbbox_In_CA_Filter.Text = "ACCOUNT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_CA_By_AccountName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_AccountName", "%" & Form_Main.txt_In_CA_Search.Text & "%")
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
            ElseIf Form_Main.cmbbox_In_CA_Filter.Text = "DATE" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_CA_By_Date", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Date", Form_Main.txt_In_CA_Search.Text)
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
            ElseIf Form_Main.cmbbox_In_CA_Filter.Text = "TIME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_CA_By_Time", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Time", "%" & Form_Main.txt_In_CA_Search.Text & "%")
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
            End If
            da.Update(dt)
            con.Close()
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
            If Form_Main.txt_In_M_Search.Text = "" Then
                Module_GetData.Inventory_In_M()
            ElseIf Form_Main.cmbbox_In_M_Filter.Text = "PRODUCT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_M_CA_By_ProductName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_ProductName", "%" & Form_Main.txt_In_M_Search.Text & "%")
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
            ElseIf Form_Main.cmbbox_In_M_Filter.Text = "UNIT" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_M_CA_By_Unit", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Unit", "%" & Form_Main.txt_In_M_Search.Text & "%")
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
            ElseIf Form_Main.cmbbox_In_M_Filter.Text = "QUANTITY" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_M_CA_By_Quantity", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Quantity", Form_Main.txt_In_M_Search.Text)
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
            ElseIf Form_Main.cmbbox_In_M_Filter.Text = "ACCOUNT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_M_CA_By_AccountName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_AccountName", "%" & Form_Main.txt_In_M_Search.Text & "%")
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
            ElseIf Form_Main.cmbbox_In_M_Filter.Text = "DATE" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_M_CA_By_Date", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Date", Form_Main.txt_In_M_Search.Text)
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
            ElseIf Form_Main.cmbbox_In_M_Filter.Text = "TIME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_M_CA_By_Time", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Time", "%" & Form_Main.txt_In_M_Search.Text & "%")
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
            End If
            da.Update(dt)
            con.Close()
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
            If Form_Main.txt_In_H_Search.Text = "" Then
                Module_GetData.Inventory_In_H()
            ElseIf Form_Main.cmbbox_In_H_Filter.Text = "PRODUCT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_H_CA_By_ProductName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_ProductName", "%" & Form_Main.txt_In_H_Search.Text & "%")
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
            ElseIf Form_Main.cmbbox_In_H_Filter.Text = "UNIT" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_H_CA_By_Unit", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Unit", "%" & Form_Main.txt_In_H_Search.Text & "%")
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
            ElseIf Form_Main.cmbbox_In_H_Filter.Text = "QUANTITY" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_H_CA_By_Quantity", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Quantity", Form_Main.txt_In_H_Search.Text)
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
            ElseIf Form_Main.cmbbox_In_H_Filter.Text = "ACCOUNT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_H_CA_By_AccountName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_AccountName", "%" & Form_Main.txt_In_H_Search.Text & "%")
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
            ElseIf Form_Main.cmbbox_In_H_Filter.Text = "DATE" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_H_CA_By_Date", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Date", Form_Main.txt_In_H_Search.Text)
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
            ElseIf Form_Main.cmbbox_In_H_Filter.Text = "TIME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_In_H_CA_By_Time", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Time", "%" & Form_Main.txt_In_H_Search.Text & "%")
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
            End If
            da.Update(dt)
            con.Close()
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
            If Form_Main.txt_Out_Search.Text = "" Then
                Module_GetData.Inventory_Out()
            ElseIf Form_Main.cmbbox_Out_Filter.Text = "PRODUCT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_Out_By_ProductName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_ProductName", "%" & Form_Main.txt_Out_Search.Text & "%")
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
                Form_Main.dgv_Out.Columns(8).Visible = False
            ElseIf Form_Main.cmbbox_Out_Filter.Text = "UNIT" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_Out_By_Unit", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Unit", "%" & Form_Main.txt_Out_Search.Text & "%")
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
                Form_Main.dgv_Out.Columns(8).Visible = False
            ElseIf Form_Main.cmbbox_Out_Filter.Text = "QUANTITY" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_Out_By_Quantity", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Quantity", Form_Main.txt_Out_Search.Text)
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
                Form_Main.dgv_Out.Columns(8).Visible = False
            ElseIf Form_Main.cmbbox_Out_Filter.Text = "ACCOUNT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_Out_By_AccountName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_AccountName", "%" & Form_Main.txt_Out_Search.Text & "%")
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
                Form_Main.dgv_Out.Columns(8).Visible = False
            ElseIf Form_Main.cmbbox_Out_Filter.Text = "DATE" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_Out_By_Date", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Date", Form_Main.txt_Out_Search.Text)
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
                Form_Main.dgv_Out.Columns(8).Visible = False
            ElseIf Form_Main.cmbbox_Out_Filter.Text = "TIME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Inventory_Out_By_Time", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Time", "%" & Form_Main.txt_Out_Search.Text & "%")
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
                Form_Main.dgv_Out.Columns(8).Visible = False
            End If
            da.Update(dt)
            con.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
        Form_Main.lbl_Out_TotalSales.Text = "TOTAL : " + Form_Main.dgv_Out.RowCount.ToString
    End Sub
    Public Sub ManageProducts()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            If Form_Main.txt_ManageProductsSearch.Text = "" Then
                Module_GetData.Products_ManageProducts()
            ElseIf Form_Main.cmbbox_ManageProductsFilter.Text = "PRODUCT ID" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductByProductId", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_ProductId", Form_Main.txt_ManageProductsSearch.Text)
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
            ElseIf Form_Main.cmbbox_ManageProductsFilter.Text = "NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductByName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("sp_GetProductByName", "%" & Form_Main.txt_ManageProductsSearch.Text & "%")
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
            ElseIf Form_Main.cmbbox_ManageProductsFilter.Text = "PRICE" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductByPrice", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Price", Form_Main.txt_ManageProductsSearch.Text)
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
            ElseIf Form_Main.cmbbox_ManageProductsFilter.Text = "PRODUCT CATEGORY" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductByProductCategory", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_ProductCategory", "%" & Form_Main.txt_ManageProductsSearch.Text & "%")
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
            ElseIf Form_Main.cmbbox_ManageProductsFilter.Text = "SUPPLIER" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductBySupplier", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Supplier", "%" & Form_Main.txt_ManageProductsSearch.Text & "%")
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
            ElseIf Form_Main.cmbbox_ManageProductsFilter.Text = "ACCOUNT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductByAccountName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_AccountName", "%" & Form_Main.txt_ManageProductsSearch.Text & "%")
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
            ElseIf Form_Main.cmbbox_ManageProductsFilter.Text = "DATE" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductByDate", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Date", Form_Main.txt_ManageProductsSearch.Text)
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
            ElseIf Form_Main.cmbbox_ManageProductsFilter.Text = "TIME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductByTime", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Time", "%" & Form_Main.txt_ManageProductsSearch.Text & "%")
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
            End If
            da.Update(dt)
            con.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
    Public Sub ProductCategories()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            If Form_Main.txt_ProductCategoriesSearch.Text = "" Then
                Module_GetData.Products_ProductCategories()
            ElseIf Form_Main.cmbbox_ProductCategoriesFilter.Text = "ID" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductCategoryById", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Id", Form_Main.txt_ProductCategoriesSearch.Text)
                da.Fill(ds)
                Form_Main.dgv_ProductCategories.DataSource = ds.Tables(0)
                Form_Main.dgv_ProductCategories.Columns(0).Width = 190
                Form_Main.dgv_ProductCategories.Columns(1).Width = 500
                Form_Main.dgv_ProductCategories.Columns(2).Width = 250
                Form_Main.dgv_ProductCategories.Columns(3).Width = 250
            ElseIf Form_Main.cmbbox_ProductCategoriesFilter.Text = "CATEGORY NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductCategoryByCategoryName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_CategoryName", "%" & Form_Main.txt_ProductCategoriesSearch.Text & "%")
                da.Fill(ds)
                Form_Main.dgv_ProductCategories.DataSource = ds.Tables(0)
                Form_Main.dgv_ProductCategories.Columns(0).Width = 190
                Form_Main.dgv_ProductCategories.Columns(1).Width = 500
                Form_Main.dgv_ProductCategories.Columns(2).Width = 250
                Form_Main.dgv_ProductCategories.Columns(3).Width = 250
            ElseIf Form_Main.cmbbox_ProductCategoriesFilter.Text = "DATE" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductCategoryByDate", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Date", Form_Main.txt_ProductCategoriesSearch.Text)
                da.Fill(ds)
                Form_Main.dgv_ProductCategories.DataSource = ds.Tables(0)
                Form_Main.dgv_ProductCategories.Columns(0).Width = 190
                Form_Main.dgv_ProductCategories.Columns(1).Width = 500
                Form_Main.dgv_ProductCategories.Columns(2).Width = 250
                Form_Main.dgv_ProductCategories.Columns(3).Width = 250
            ElseIf Form_Main.cmbbox_ProductCategoriesFilter.Text = "TIME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetProductCategoryByTime", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Time", "%" & Form_Main.txt_ProductCategoriesSearch.Text & "%")
                da.Fill(ds)
                Form_Main.dgv_ProductCategories.DataSource = ds.Tables(0)
                Form_Main.dgv_ProductCategories.Columns(0).Width = 190
                Form_Main.dgv_ProductCategories.Columns(1).Width = 500
                Form_Main.dgv_ProductCategories.Columns(2).Width = 250
                Form_Main.dgv_ProductCategories.Columns(3).Width = 250
            End If
            da.Update(dt)
            con.Close()
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
            If Form_Main.txt_SuppliersSearch.Text = "" Then
                Module_GetData.Suppliers()
            ElseIf Form_Main.cmbbox_SuppliersFilter.Text = "ID" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetSupplierById", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Id", Form_Main.txt_SuppliersSearch.Text)
                da.Fill(ds)
                Form_Main.dgv_Suppliers.DataSource = ds.Tables(0)
                Form_Main.dgv_Suppliers.Columns(0).Width = 200
                Form_Main.dgv_Suppliers.Columns(1).Width = 400
                Form_Main.dgv_Suppliers.Columns(2).Width = 200
                Form_Main.dgv_Suppliers.Columns(3).Width = 350
                Form_Main.dgv_Suppliers.Columns(4).Width = 300
                Form_Main.dgv_Suppliers.Columns(5).Width = 450
                Form_Main.dgv_Suppliers.Columns(6).Width = 300
            ElseIf Form_Main.cmbbox_SuppliersFilter.Text = "NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetSupplierByName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Name", "%" & Form_Main.txt_SuppliersSearch.Text & "%")
                da.Fill(ds)
                Form_Main.dgv_Suppliers.DataSource = ds.Tables(0)
                Form_Main.dgv_Suppliers.Columns(0).Width = 200
                Form_Main.dgv_Suppliers.Columns(1).Width = 400
                Form_Main.dgv_Suppliers.Columns(2).Width = 200
                Form_Main.dgv_Suppliers.Columns(3).Width = 350
                Form_Main.dgv_Suppliers.Columns(4).Width = 300
                Form_Main.dgv_Suppliers.Columns(5).Width = 450
                Form_Main.dgv_Suppliers.Columns(6).Width = 300
            ElseIf Form_Main.cmbbox_SuppliersFilter.Text = "TYPES" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetSupplierByTypes", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Types", "%" & Form_Main.txt_SuppliersSearch.Text & "%")
                da.Fill(ds)
                Form_Main.dgv_Suppliers.DataSource = ds.Tables(0)
                Form_Main.dgv_Suppliers.Columns(0).Width = 200
                Form_Main.dgv_Suppliers.Columns(1).Width = 400
                Form_Main.dgv_Suppliers.Columns(2).Width = 200
                Form_Main.dgv_Suppliers.Columns(3).Width = 350
                Form_Main.dgv_Suppliers.Columns(4).Width = 300
                Form_Main.dgv_Suppliers.Columns(5).Width = 450
                Form_Main.dgv_Suppliers.Columns(6).Width = 300
            ElseIf Form_Main.cmbbox_SuppliersFilter.Text = "EMAIL" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetSupplierByEmail", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Email", "%" & Form_Main.txt_SuppliersSearch.Text & "%")
                da.Fill(ds)
                Form_Main.dgv_Suppliers.DataSource = ds.Tables(0)
                Form_Main.dgv_Suppliers.Columns(0).Width = 200
                Form_Main.dgv_Suppliers.Columns(1).Width = 400
                Form_Main.dgv_Suppliers.Columns(2).Width = 200
                Form_Main.dgv_Suppliers.Columns(3).Width = 350
                Form_Main.dgv_Suppliers.Columns(4).Width = 300
                Form_Main.dgv_Suppliers.Columns(5).Width = 450
                Form_Main.dgv_Suppliers.Columns(6).Width = 300
            ElseIf Form_Main.cmbbox_SuppliersFilter.Text = "CONTACT NUMBER" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetSupplierByContactNumber", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_ContactNumber", "%" & Form_Main.txt_SuppliersSearch.Text & "%")
                da.Fill(ds)
                Form_Main.dgv_Suppliers.DataSource = ds.Tables(0)
                Form_Main.dgv_Suppliers.Columns(0).Width = 200
                Form_Main.dgv_Suppliers.Columns(1).Width = 400
                Form_Main.dgv_Suppliers.Columns(2).Width = 200
                Form_Main.dgv_Suppliers.Columns(3).Width = 350
                Form_Main.dgv_Suppliers.Columns(4).Width = 300
                Form_Main.dgv_Suppliers.Columns(5).Width = 450
                Form_Main.dgv_Suppliers.Columns(6).Width = 300
            ElseIf Form_Main.cmbbox_SuppliersFilter.Text = "ADDRESS" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetSupplierByAddress", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Address", "%" & Form_Main.txt_SuppliersSearch.Text & "%")
                da.Fill(ds)
                Form_Main.dgv_Suppliers.DataSource = ds.Tables(0)
                Form_Main.dgv_Suppliers.Columns(0).Width = 200
                Form_Main.dgv_Suppliers.Columns(1).Width = 400
                Form_Main.dgv_Suppliers.Columns(2).Width = 200
                Form_Main.dgv_Suppliers.Columns(3).Width = 350
                Form_Main.dgv_Suppliers.Columns(4).Width = 300
                Form_Main.dgv_Suppliers.Columns(5).Width = 450
                Form_Main.dgv_Suppliers.Columns(6).Width = 300
            ElseIf Form_Main.cmbbox_SuppliersFilter.Text = "ACCOUNT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_GetSupplierByAccountName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_AccountName", "%" & Form_Main.txt_SuppliersSearch.Text & "%")
                da.Fill(ds)
                Form_Main.dgv_Suppliers.DataSource = ds.Tables(0)
                Form_Main.dgv_Suppliers.Columns(0).Width = 200
                Form_Main.dgv_Suppliers.Columns(1).Width = 400
                Form_Main.dgv_Suppliers.Columns(2).Width = 200
                Form_Main.dgv_Suppliers.Columns(3).Width = 350
                Form_Main.dgv_Suppliers.Columns(4).Width = 300
                Form_Main.dgv_Suppliers.Columns(5).Width = 450
                Form_Main.dgv_Suppliers.Columns(6).Width = 300
            End If
            da.Update(dt)
            con.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
    Public Sub Sales()
        Try
            Module_Objects.da = New MySqlDataAdapter()
            Module_Objects.dt = New DataTable()
            Module_Objects.ds = New DataSet()
            If Form_Main.cmbbox_SalesFilter.Text = "ACCOUNT NAME" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Sales_By_AccountName", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_AccountName", "%" & Form_Main.txt_SalesSearch.Text & "%")
                da.Fill(ds)
                Form_Main.dgv_Sales.DataSource = ds.Tables(0)
                Form_Main.dgv_Sales.Columns(0).Visible = False
                Form_Main.dgv_Sales.Columns(1).Width = 295
                Form_Main.dgv_Sales.Columns(2).Width = 295
                Form_Main.dgv_Sales.Columns(3).Width = 295
                Form_Main.dgv_Sales.Columns(4).Width = 300
            ElseIf Form_Main.cmbbox_SalesFilter.Text = "DATE" Then
                con.Open()
                da = New MySqlDataAdapter("sp_Get_Sales_By_Date", con)
                da.SelectCommand.CommandType = CommandType.StoredProcedure
                da.SelectCommand.Parameters.AddWithValue("param_Date", Form_Main.txt_SalesSearch.Text)
                da.Fill(ds)
                Form_Main.dgv_Sales.DataSource = ds.Tables(0)
                Form_Main.dgv_Sales.Columns(0).Visible = False
                Form_Main.dgv_Sales.Columns(1).Width = 295
                Form_Main.dgv_Sales.Columns(2).Width = 295
                Form_Main.dgv_Sales.Columns(3).Width = 295
                Form_Main.dgv_Sales.Columns(4).Width = 300
            End If
            da.Update(dt)
            con.Close()
            Module_GetData.ComputeTotalSales()
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
End Module
