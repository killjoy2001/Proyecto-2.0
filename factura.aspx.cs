using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Gimnasio
{
    public partial class ClienteDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bfacturar_Click(object sender, EventArgs e)
        {
            Factura.precio = Int32.Parse(tprecio.Text);
            int calculo = Factura.precio / 100;
            Factura.iva = calculo * 13;
            Factura.total = Factura.precio + Factura.iva;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["GimnasioUHConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO Factura (CedulaC, NombreP, Precio, IVA, Total) VALUES('" + tced.Text + "', '" + DropDownList1.SelectedValue + "', " + tprecio.Text + ", " +Factura.iva+ ", " +Factura.total+ " )", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            Response.Redirect("factura.aspx");
        }
    }
}