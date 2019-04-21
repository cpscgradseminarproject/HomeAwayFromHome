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
            Login AdminManager = new Login();
            AdminManager.AdminLoginCheck();
            PNLAdmin.Visible = true;
            
        }

        protected void BTNLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

        protected void BTNManageCity_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AdminDash/ManageCities.aspx");
        }

        protected void BTNManageState_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AdminDash/ManageStates.aspx");
        }

        protected void BTNManageUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AdminDash/ManageUsers.aspx");
        }

        protected void BTNViewPropertySubmissions_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AdminDash/ViewPropertySubmissions.aspx");
        }
    }
}