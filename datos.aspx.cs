using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Gimnasio
{
    public partial class ClienteInicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bAgregar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["GimnasioUHConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO Cliente VALUES('" + tced.Text + "', '" + tnom.Text + "', '" + tapellido.Text + "'," +
                " '" + tcorreo.Text + "', '" + ttel.Text + "'  )", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            Response.Redirect("datos.aspx");
        }
    }
}