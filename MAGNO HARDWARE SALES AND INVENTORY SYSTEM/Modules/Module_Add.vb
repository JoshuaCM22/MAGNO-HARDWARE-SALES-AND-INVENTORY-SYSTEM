Imports MySql.Data.MySqlClient
Module Module_Add ' Created by: Joshua C. Magoliman
    Public Sub Inventory_In_M()
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
        ElseIf Form_Main.txt_In_M_Quantity.Text = "0" Then
            MsgBox("Zero Quantity Found!", MsgBoxStyle.Critical, "ATTENTION")
            Form_Main.txt_In_M_Quantity.Focus()
        Else
            Try
                Dim a As String = ""
                Dim b As Integer = 0
                con.Open()
                cmd = New MySqlCommand("SELECT * FROM tbl_products WHERE Name=@param_Name", con)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@param_Name", Form_Main.cmbbox_In_M_ProductName.Text)
                dr = cmd.ExecuteReader()
                While dr.Read
                    a = (dr.GetString("Id"))
                End While
                cmd.Dispose()
                con.Close()

                con.Open()
                cmd = New MySqlCommand("SELECT * FROM tbl_units WHERE Unit=@param_Unit", con)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@param_Unit", Form_Main.cmbbox_In_M_Unit.Text)
                dr = cmd.ExecuteReader()
                While dr.Read
                    b = (dr.GetString("Id"))
                End While
                cmd.Dispose()
                con.Close()

                con.Open()
                cmd = New MySqlCommand("SELECT * FROM tbl_inventory WHERE Product_Id=@Product_Id AND Is_Current=@Is_Current", con)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@Product_Id", a)
                cmd.Parameters.AddWithValue("@Is_Current", 1)
                dr = cmd.ExecuteReader()
                If dr.Read = True Then
                    dr.Close()
                    con.Close()
                    MsgBox("This Product Name is already exists in Current Available Tab!", MsgBoxStyle.Critical, "ATTENTION")
                    Form_Main.lblTitle.Focus()
                Else
                    dr.Close()
                    con.Close()

                    Dim dateToday As Date = Date.Now.ToString("yyyy-MM-dd")
                    con.Open()
                    cmd = New MySqlCommand("sp_CreateNewProductInInventory", con)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add(New MySqlParameter("param_ProductId", a))
                    cmd.Parameters.Add(New MySqlParameter("param_StatusId", 1))
                    cmd.Parameters.Add(New MySqlParameter("param_UnitId", b))
                    cmd.Parameters.Add(New MySqlParameter("param_Quantity", Form_Main.txt_In_M_Quantity.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_UserId", Form_Main.userIdGetter))
                    cmd.Parameters.Add(New MySqlParameter("param_Date", dateToday))
                    cmd.Parameters.Add(New MySqlParameter("param_Time", Form_Main.lblTimeNow.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_IsCurrent", 1))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    MsgBox("SUCCESSFULLY ADDED!", MsgBoxStyle.Information, "ATTENTION")
                    con.Close()
                    Module_Reset.Inventory_In_M()
                End If
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                dr.Close()
                con.Close()
            End Try
        End If
    End Sub
    Public Sub ManageProducts()
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
                con.Open()
                cmd = New MySqlCommand("SELECT * FROM tbl_products WHERE Name=@param_Name", con)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@param_Name", Form_Main.txt_ManageProductsName.Text)
                dr = cmd.ExecuteReader()
                If dr.Read = True Then
                    dr.Close()
                    con.Close()
                    MsgBox("This Product Name is already exists, Please try another Product Name!", MsgBoxStyle.Critical, "ATTENTION")
                Else
                    dr.Close()
                    con.Close()

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
                    cmd = New MySqlCommand("sp_CreateNewProduct", con)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add(New MySqlParameter("param_Id", Form_Main.txt_ManageProductsProductID.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_Name", Form_Main.txt_ManageProductsName.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_Price", Form_Main.txt_ManageProductsPrice.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_CategoryId", a))
                    cmd.Parameters.Add(New MySqlParameter("param_SupplierId", b))
                    cmd.Parameters.Add(New MySqlParameter("param_UserId", Form_Main.userIdGetter))
                    cmd.Parameters.Add(New MySqlParameter("param_Date", dateToday))
                    cmd.Parameters.Add(New MySqlParameter("param_Time", Form_Main.lblTimeNow.Text))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    MsgBox("SUCCESSFULLY ADDED!", MsgBoxStyle.Information, "ATTENTION")
                    con.Close()
                    Module_Reset.Products_ManageProducts()
                End If
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub ProductCategories()
        If Form_Main.txt_ProductCategoriesCategoryName.Text = String.Empty Or Form_Main.txt_ProductCategoriesCategoryName.Text = " " Then
            MsgBox("No Category Name Found!", MsgBoxStyle.Critical, "Error")
            Form_Main.txt_ProductCategoriesCategoryName.Focus()
        Else
            Try
                con.Open()
                cmd = New MySqlCommand("SELECT * FROM tbl_categories WHERE Category=@param_Category", con)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@param_Category", Form_Main.txt_ProductCategoriesCategoryName.Text)
                dr = cmd.ExecuteReader()
                If dr.Read = True Then
                    dr.Close()
                    con.Close()
                    MsgBox("This Category Name is already exists, Please try another Category Name!", MsgBoxStyle.Critical, "ATTENTION")
                Else
                    dr.Close()
                    con.Close()

                    Dim dateToday As Date = Date.Now.ToString("yyyy-MM-dd")
                    con.Open()
                    cmd = New MySqlCommand("sp_CreateNewProductCategory", con)
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.Add(New MySqlParameter("param_CategoryName", Form_Main.txt_ProductCategoriesCategoryName.Text))
                    cmd.Parameters.Add(New MySqlParameter("param_Date", dateToday))
                    cmd.Parameters.Add(New MySqlParameter("param_Time", Form_Main.lblTimeNow.Text))
                    cmd.ExecuteNonQuery()
                    cmd.Dispose()
                    MsgBox("SUCCESSFULLY ADDED!", MsgBoxStyle.Information, "ATTENTION")
                    con.Close()
                    Module_Reset.Products_ProductCategories()
                End If
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub Supplier()
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
                cmd = New MySqlCommand("sp_CreateNewSupplier", con)
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.Add(New MySqlParameter("param_Name", Form_Main.txt_SuppliersSupplierName.Text))
                cmd.Parameters.Add(New MySqlParameter("param_TypeId", type))
                cmd.Parameters.Add(New MySqlParameter("param_Email", Form_Main.txt_SuppliersEmail.Text))
                cmd.Parameters.Add(New MySqlParameter("param_ContactNumber", Form_Main.txt_SuppliersContactNumber.Text))
                cmd.Parameters.Add(New MySqlParameter("param_Address", Form_Main.txt_SuppliersAddress.Text))
                cmd.Parameters.Add(New MySqlParameter("param_UserId", Form_Main.userIdGetter))
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                MsgBox("SUCCESSFULLY ADDED!", MsgBoxStyle.Information, "ATTENTION")
                con.Close()
                Module_Reset.Suppliers()
            Catch ex As Exception
                MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Public Sub CreaterAnotherAccount()
        If Form_Main.txt_CreateANewAccountUsername.Text = "" And Form_Main.txt_CreateANewAccountPassword.Text = "" And Form_Main.txt_CreateANewAccountGivenName.Text = "" And Form_Main.txt_CreateANewAccountMiddleInitial.Text = "" And Form_Main.txt_CreateANewAccountLastName.Text = "" And Form_Main.txt_CreateANewAccountSuffix.Text = "" And Form_Main.cmbbox_CreateANewAccountSecretQuestion.Text = "" And Form_Main.txt_CreateANewAccountSecretAnswer.Text = "" Then
            MsgBox("Fill up your account details", MsgBoxStyle.Critical, "ATTENTION!")
            Form_Main.txt_CreateANewAccountUsername.Focus()
        ElseIf Form_Main.txt_CreateANewAccountUsername.Text = "" Then
            MsgBox("No Username Found!", MsgBoxStyle.Critical, "Error")
            Form_Main.txt_CreateANewAccountUsername.Focus()
        ElseIf Form_Main.txt_CreateANewAccountPassword.Text = "" Then
            MsgBox("No Password Found!", MsgBoxStyle.Critical, "Error")
            Form_Main.txt_CreateANewAccountPassword.Focus()
        ElseIf Form_Main.txt_CreateANewAccountGivenName.Text = "" Then
            MsgBox("No Given Name Found!", MsgBoxStyle.Critical, "Error")
            Form_Main.txt_CreateANewAccountGivenName.Focus()
        ElseIf Form_Main.txt_CreateANewAccountMiddleInitial.Text = "" Then
            MsgBox("No Middle Initial Found!", MsgBoxStyle.Critical, "Error")
            Form_Main.txt_CreateANewAccountMiddleInitial.Focus()
        ElseIf Form_Main.txt_CreateANewAccountLastName.Text = "" Then
            MsgBox("No Last Name Found!", MsgBoxStyle.Critical, "Error")
            Form_Main.txt_CreateANewAccountLastName.Focus()
        ElseIf Form_Main.cmbbox_CreateANewAccountSecretQuestion.Text = "" Then
            MsgBox("No Secret Question Found!", MsgBoxStyle.Critical, "Error")
            Form_Main.cmbbox_CreateANewAccountSecretQuestion.Focus()
        ElseIf Form_Main.txt_CreateANewAccountSecretAnswer.Text = "" Then
            MsgBox("No Secret Answer Found!", MsgBoxStyle.Critical, "Error")
            Form_Main.txt_CreateANewAccountSecretAnswer.Focus()
        Else
            CheckingUsername()
        End If
    End Sub
    Private Sub CheckingUsername()
        Try
            con.Open()
            cmd = New MySqlCommand("SELECT Username FROM tbl_Users WHERE Username=@Username ", con)
            cmd.CommandType = CommandType.Text
            cmd.Parameters.Add(New MySqlParameter("@Username", Form_Main.txt_CreateANewAccountUsername.Text))
            dr = cmd.ExecuteReader()
            Dim count As Integer
            count = 0
            While dr.Read
                count = count + 1
            End While
            Select Case count
                Case 1
                    MsgBox("Username is already exist. Please try another username!", MsgBoxStyle.Critical, "ATTENTION")
                Case Else
                    con.Close()
                    CreatingAccount()
            End Select
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            dr.Close()
            con.Close()
        End Try
    End Sub
    Private Sub CreatingAccount()
        Dim fullName As String = ""
        Dim space As Char = " "
        If Form_Main.txt_CreateANewAccountSuffix.Text = "" Then
            fullName = Form_Main.txt_CreateANewAccountGivenName.Text + space + Form_Main.txt_CreateANewAccountMiddleInitial.Text + "." + space + Form_Main.txt_CreateANewAccountLastName.Text
        Else
            fullName = Form_Main.txt_CreateANewAccountGivenName.Text + space + Form_Main.txt_CreateANewAccountMiddleInitial.Text + "." + space + Form_Main.txt_CreateANewAccountLastName.Text + space + Form_Main.txt_CreateANewAccountSuffix.Text + "."
        End If
        Try
            con.Open()
            cmd = New MySqlCommand("sp_CreateNewUser", con)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add(New MySqlParameter("@param_Username", Form_Main.txt_CreateANewAccountUsername.Text))
            cmd.Parameters.Add(New MySqlParameter("@param_Password", BCrypt.Net.BCrypt.HashPassword(Form_Main.txt_CreateANewAccountPassword.Text)))
            cmd.Parameters.Add(New MySqlParameter("@param_FullName", fullName)) '
            cmd.Parameters.Add(New MySqlParameter("@param_SecretQuestion", Form_Main.cmbbox_CreateANewAccountSecretQuestion.Text))
            cmd.Parameters.Add(New MySqlParameter("@param_SecretAnswer", BCrypt.Net.BCrypt.HashPassword(Form_Main.txt_CreateANewAccountSecretAnswer.Text)))
            cmd.ExecuteNonQuery()
            MsgBox("SUCCESSFULLY CREATED", MsgBoxStyle.Information, "ATTENTION")
            con.Close()
            Module_Reset.Accounts_CreateANewAccount()
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            con.Close()
        End Try
    End Sub
End Module
