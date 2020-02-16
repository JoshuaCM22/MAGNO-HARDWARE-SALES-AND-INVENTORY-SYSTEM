Public Class Form_Print_Sales
    Public Sub DeletingAllPrintPreview()
        Try
            con.Open()
            cmd = con.CreateCommand()
            cmd.CommandText = "TRUNCATE tbl_print_sales;"
            cmd.ExecuteNonQuery()
            con.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub
    Private Sub Form_Print_Sales_FormClosed(sender As Object, e As FormClosedEventArgs) Handles MyBase.FormClosed
        DeletingAllPrintPreview()
    End Sub
    Private Sub Form_Print_Sales_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CrystalReportViewer1.RefreshReport()
    End Sub
End Class