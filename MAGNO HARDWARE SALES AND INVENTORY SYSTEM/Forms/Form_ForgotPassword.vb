Imports MySql.Data.MySqlClient
Public Class Form_ForgotPassword ' Created by: Joshua C. Magoliman
    Private Sub Form_ForgotPassword_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Reset()
    End Sub
    Public Sub Reset()
        txtUsername.Focus()
        txtUsername.Clear()
        cmbboxSecretQuestion.Text = ""
        txtSecretAnswer.Clear()
        chckboxSecretAnswer.Checked = False
    End Sub
    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        If txtUsername.Text = "" And cmbboxSecretQuestion.Text = "" And txtSecretAnswer.Text = "" Then
            MsgBox("Fill up account details!", MsgBoxStyle.Critical, "ATTENTION")
            txtUsername.Select()
        ElseIf txtUsername.Text = "" Then
            MsgBox("No Username Found!", MsgBoxStyle.Critical, "ATTENTION")
            txtUsername.Select()
        ElseIf cmbboxSecretQuestion.Text = "" Then
            MsgBox("No Secret Question Found!", MsgBoxStyle.Critical, "ATTENTION")
            cmbboxSecretQuestion.Select()
        ElseIf txtSecretAnswer.Text = "" Then
            MsgBox("No Secret Answer Found!", MsgBoxStyle.Critical, "ATTENTION")
            txtSecretAnswer.Select()
        Else
            Try
                con.Open()
                cmd = New MySqlCommand("SELECT * FROM tbl_Users WHERE Username=@Username AND BINARY Secret_Question = @SecretQuestion", con)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.Add(New MySqlParameter("@Username", txtUsername.Text))
                cmd.Parameters.Add(New MySqlParameter("@SecretQuestion", cmbboxSecretQuestion.Text))
                dr = cmd.ExecuteReader()
                If dr.Read = True Then
                    If (BCrypt.Net.BCrypt.Verify(txtSecretAnswer.Text, dr.Item("Secret_Answer"))) Then
                        Form_SetANewPassword.userIDGetter = dr.Item("Id")
                        con.Close()
                        dr.Close()
                        Reset()
                        Me.Hide()
                        Form_SetANewPassword.Show()
                    Else
                        MsgBox("Your details is incorrect!", MsgBoxStyle.Critical, "ATTENTION")
                        dr.Close()
                        con.Close()
                        txtSecretAnswer.Clear()
                        txtSecretAnswer.Focus()
                    End If
                ElseIf dr.Read = False Then
                    MsgBox("Your details is incorrect!", MsgBoxStyle.Critical, "Error")
                    con.Close()
                    dr.Close()
                    Reset()
                End If
            Catch ex As Exception
                MessageBox.Show(ex.ToString)
            Finally
                con.Close()
            End Try
        End If
    End Sub
    Private Sub btnBack_Click(sender As Object, e As EventArgs) Handles btnBack.Click
        Reset()
        Me.Hide()
        Form_Login.Show()
        Form_Login.Reset()
    End Sub
    Private Sub txtUsername_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtUsername.KeyPress
        If Char.IsLetterOrDigit(e.KeyChar) Or Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub
    Private Sub txtSecretAnswer_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtSecretAnswer.KeyPress
        If Char.IsLetterOrDigit(e.KeyChar) Or Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub
    Private Sub chckboxSecretAnswer_CheckedChanged(sender As Object, e As EventArgs) Handles chckboxSecretAnswer.CheckedChanged
        If chckboxSecretAnswer.Checked = False Then
            txtSecretAnswer.PasswordChar = "*"
        Else
            txtSecretAnswer.PasswordChar = ""
        End If
        lblTitle.Select()
    End Sub
    Private Sub txtUsername_TextChanged(sender As Object, e As EventArgs) Handles txtUsername.TextChanged
        con.Open()
        cmd = New MySqlCommand("SELECT * FROM tbl_Users WHERE Username=@Username ", con)
        cmd.CommandType = CommandType.Text
        cmd.Parameters.Add(New MySqlParameter("@Username", txtUsername.Text))
        dr = cmd.ExecuteReader()
        If dr.Read Then
            cmbboxSecretQuestion.Text = dr("Secret_Question").ToString
        Else
            cmbboxSecretQuestion.Text = ""
        End If
        con.Close()
    End Sub
End Class