﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH
{
    public partial class ManageProperties : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login PropertyManagerCheck = new Login();
            PropertyManagerCheck.PropertyManagerRoleCheck();
        }

        protected void BTNAddProperty_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PropertyManagerDash/AddNewProperty.aspx");
        }
    }
}