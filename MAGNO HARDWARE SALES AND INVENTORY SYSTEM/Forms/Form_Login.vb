Imports MySql.Data.MySqlClient
Imports System.Drawing
Imports System.Windows.Forms
Public Class Form_Login ' Created by: Joshua C. Magoliman
    Public adminFullName As String = ""
    Public Sub Reset()
        txtUsername.Select()
        chckboxShowPassword.Checked = False
        txtUsername.Clear()
        txtPassword.Clear()
        AcceptButton = btnLogin
    End Sub
    Private Sub Form_Login_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Reset()
    End Sub
    Private Sub txtUsername_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtUsername.KeyPress
        If Char.IsLetterOrDigit(e.KeyChar) Or Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub
    Private Sub txtPassword_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtPassword.KeyPress
        If Char.IsLetterOrDigit(e.KeyChar) Or Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub
    Private Sub btnExit_Click(sender As Object, e As EventArgs) Handles btnExit.Click
        Application.Exit()
    End Sub
    Private Sub chckboxShowPassword_CheckedChanged(sender As Object, e As EventArgs) Handles chckboxShowPassword.CheckedChanged
        If chckboxShowPassword.Checked = False Then
            txtPassword.PasswordChar = "*"
        Else
            txtPassword.PasswordChar = ""
        End If
        lblUsername.Select()
    End Sub
    Private Sub btnForgotPassword_Click(sender As Object, e As EventArgs) Handles btnForgotPassword.Click
        Me.Hide()
        Form_ForgotPassword.Show()
        Form_ForgotPassword.Reset()
    End Sub
    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        If txtUsername.Text = "" And txtPassword.Text = "" Then
            MsgBox("No Username and Password Found!", MsgBoxStyle.Critical, "ATTENTION")
            txtUsername.Focus()
        ElseIf txtUsername.Text = "" Then
            MsgBox("No Username Found!", MsgBoxStyle.Critical, "ATTENTION")
            txtUsername.Focus()
        ElseIf txtPassword.Text = "" Then
            MsgBox("No Password Found!", MsgBoxStyle.Critical, "ATTENTION")
            txtPassword.Focus()
        Else
            lblPassword.Focus()
            LoginMethod()
        End If
    End Sub
    Private Sub LoginMethod()
        Try
            con.Open()
            cmd = New MySqlCommand("sp_Login", con)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("param_Username", txtUsername.Text)
            dr = cmd.ExecuteReader()
            If dr.Read = True Then
                If (BCrypt.Net.BCrypt.Verify(txtPassword.Text, dr.Item("Password"))) Then
                    adminFullName = dr.Item("Full_Name")
                    Form_Main.userIdGetter = dr.Item("Id")
                    Form_Main.usernameGetter = txtUsername.Text
                    Form_Main.passwordGetter = txtPassword.Text
                    dr.Close()
                    con.Close()
                    Me.Hide()
                    Form_Main.GeneralReset()
                    Form_Main.Show()
                Else
                    MsgBox("Incorrect Username And/Or Password!", MsgBoxStyle.Critical, "ATTENTION")
                    txtPassword.Clear()
                    txtPassword.Focus()
                End If
            ElseIf dr.Read = False Then
                dr.Close()
                con.Close()
                MsgBox("Incorrect Username And/Or Password!", MsgBoxStyle.Critical, "ATTENTION")
                Reset()
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message & vbCrLf & ex.StackTrace)
        Finally
            dr.Close()
            con.Close()
        End Try
    End Sub
End Class
