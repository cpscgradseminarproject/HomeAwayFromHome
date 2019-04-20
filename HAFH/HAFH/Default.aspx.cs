using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNCreatAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewUserRegistration.aspx");
        }

        protected void BTNLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void DataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("Listing.aspx?PropertyId=" + e.CommandArgument.ToString());
        }
    }
}