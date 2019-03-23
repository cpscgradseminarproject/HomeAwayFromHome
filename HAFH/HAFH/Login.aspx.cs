using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    StatusText.Text = string.Format("Hello {0}!!", User.Identity.GetUserName());
                    LoginStatus.Visible = true;
                    LogoutButton.Visible = true;

                    CustomerPanel.Visible = true;
                    //if (User.IsInRole("PropertyManager"))
                    //{
                        PropertManagerPanel.Visible = true;
                    //}
                    
                }
                else
                {
                    LoginForm.Visible = true;
                }
            }
        }

        protected void SignIn(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(UserName.Text, Password.Text);

            if (user != null)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                StatusText.Text = "Invalid username or password.";
                LoginStatus.Visible = true;
            }
        }

        protected void SignOut(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

        protected void BTNManageProperties_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageProperties.aspx");
        }

        protected void BTNViewRenterHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewRenterHistory.aspx");
        }

        protected void BTNDisputesAgainstYou_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewDisputesAgainstYou.aspx");
        }

        protected void BTNAccBal_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountBalance.aspx");
        }

        protected void BTNPMSettings_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }
    }
}