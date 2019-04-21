using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH
{
    public partial class ViewRentalHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login PageCheck = new Login();
            PageCheck.BasicLoginCheck();

            string UserID = Convert.ToString(User.Identity.GetUserId());
            LBLUserID.Text = UserID;
        }
    }
}