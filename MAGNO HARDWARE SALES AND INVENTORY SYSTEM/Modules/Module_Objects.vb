Imports System.Configuration
Imports System.Data
Imports MySql.Data.MySqlClient
Public Module Module_Objects ' Created by: Joshua C. Magoliman
    Public con As New MySqlConnection(ConfigurationManager.ConnectionStrings("DBCS").ConnectionString)
    Public cmd As MySqlCommand
    Public dr As MySqlDataReader
    Public da As MySqlDataAdapter
    Public dt As New DataTable
    Public ds As New DataSet()
End Module
