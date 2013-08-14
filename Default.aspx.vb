Imports System.Data
Partial Class GridHover_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim dt As New DataTable()
            dt.Columns.AddRange(New DataColumn(3) {New DataColumn("Id"), New DataColumn("Name"), New DataColumn("Country"), New DataColumn("Mensaje")})
            dt.Rows.Add(1, "José Hernández", "México", "Hola esto esta muy bueno")
            dt.Rows.Add(2, "Luis Felipe", "Cancun", "Comparte el artículo")
            dt.Rows.Add(3, "Carlos Antonio", "Baja California", "Que te parece este artículo?")
            dt.Rows.Add(4, "Juan Antonio", "Guerrero", "Tienes algun problema con programación?")
            dt.Rows.Add(5, "Jorge Ramirez", "Guadalajara", "Envianos tus comentarios")
            dt.Rows.Add(6, "Alan Pulido", "Monterrey", "Tienes algun problema con programación?")
            GridView1.DataSource = dt
            GridView1.DataBind()
        End If
    End Sub
End Class
