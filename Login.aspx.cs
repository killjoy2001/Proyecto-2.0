using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Gimnasio
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void bIngresar_Click(object sender, EventArgs e)
        {
            Credencial.Correo = tCorreo.Text;
            Credencial.Password = tContrasena.Text;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["GimnasioUHConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select Correo, Contrasena from Personal where correo = '" + Credencial.Correo + "' " +
                "and contrasena = '" + Credencial.Password + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Response.Redirect("datos.aspx");
            }
            else
            {
                Label1.Text = "Usuario o contraseña incorrecto";
            }

        }
        
    }
}