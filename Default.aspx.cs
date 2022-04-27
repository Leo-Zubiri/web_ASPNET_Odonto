using System;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace ASPNET_Odonto
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click (object sender, EventArgs e) {

            string key = ConfigurationManager.ConnectionStrings["mysqlConn"].ConnectionString;
            MySqlConnection con = new MySqlConnection(key);
            MySqlCommand cmd = new MySqlCommand();
           
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_Iniciar_Sesion";

            cmd.Parameters.Add("@usuario", MySqlDbType.VarChar,15).Value = floatingInput.Text;
            cmd.Parameters.Add("@pass", MySqlDbType.VarChar, 15).Value = floatingPassword.Text;

            cmd.Connection.Open();
            MySqlDataReader dReader = cmd.ExecuteReader();

            if (dReader.Read())
            {
                //Sesion de usuario
                Session["userSess"] = floatingInput.Text;
                Response.Redirect("Home.aspx");
            }
            else {
                lblLog.Text = "Usuario o password incorrectos";
            }

            cmd.Connection.Close();

            //string user = floatingInput.Text;
            //string pass = floatingPassword.Text;
            //Response.Redirect("home.html/");
        }


    }
}