using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;


namespace HAFH
{
    public partial class ViewRenterHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login PropertyManagerCheck = new Login();
            PropertyManagerCheck.PropertyManagerRoleCheck();

            String PropertyOwner = User.Identity.GetUserId();
            LBLPropertyOwner.Text = PropertyOwner;
        }
    }
}