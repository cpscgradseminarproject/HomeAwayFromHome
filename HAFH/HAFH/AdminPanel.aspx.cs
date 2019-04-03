using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CurrentUser = User.Identity.GetUserId();
            int CurrentUserRole;

            if (User.Identity.IsAuthenticated)
            {

                string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(conn);
                con.Open();
                string strSelect = "Select RoleID From AspNetUserRoles where UserID = @CurrentUser";
                SqlCommand cmd = new SqlCommand(strSelect, con);

                cmd.Parameters.AddWithValue("@CurrentUser", CurrentUser);

                SqlDataReader myReader = cmd.ExecuteReader();

                myReader.Close();
                CurrentUserRole = Convert.ToInt16(cmd.ExecuteScalar());

                con.Close();

                if (CurrentUserRole == 0003)
                {
                    PNLAdmin.Visible = true;
                }

                else
                {
                    Response.Redirect("Login.aspx");
                }
            }

            else
            {
                Response.Redirect("Login.aspx");
            }

        }
    }
}