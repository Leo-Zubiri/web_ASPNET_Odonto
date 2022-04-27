using System;


namespace ASPNET_Odonto
{
    public partial class Sistema : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userSess"] != null)
            {
                string userSess = Session["userSess"].ToString();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void BtnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("userSess");
            Response.Redirect("Default.aspx");
        }
    }
}