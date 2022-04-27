using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace ASPNET_Odonto
{
    public partial class medicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string key = ConfigurationManager.ConnectionStrings["mysqlConn"].ConnectionString;
            MySqlConnection con = new MySqlConnection(key);
            MySqlCommand cmd = new MySqlCommand();

            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_Iniciar_Sesion";

            cmd.Parameters.Add("@usuario", MySqlDbType.VarChar, 15).Value = "admin";
            cmd.Parameters.Add("@pass", MySqlDbType.VarChar, 15).Value = "admin";

            cmd.Connection.Open();
            MySqlDataReader dReader = cmd.ExecuteReader();

            Response.Write("<table class='table table-bordered tablehover' border='1'><tr>");
            for (int i = 0; i < dReader.FieldCount; i++) {
                Response.Write("<th align='center' bgcolor='#eeeeee'>");
                Response.Write(dReader.GetName(i));
                Response.Write("</th>");

            }
            Response.Write("<th align='center' bgcolor='#eeeeee'>" +
                "Accion </h>");
            Response.Write("</tr>");

            while (dReader.Read())
            {
                //Console.WriteLine("User's last sign in was: " + rdr["lastin"]);
                Response.Write("<tr>");
                for (int i = 0; i < dReader.FieldCount; i++)
                {
                    Response.Write("<td align='center' bgcolor='#eeeeee'>");
                    Response.Write(dReader[dReader.GetName(i)]);

                    Response.Write("</td>");

                }
                
                Response.Write("<tr>");
            }
            dReader.Close();


            cmd.Connection.Close();
        }

        protected void BtnRegistrarMed(object sender, EventArgs e)
        {
        }
    }
}