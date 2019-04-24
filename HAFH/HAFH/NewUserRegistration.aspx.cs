using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace HAFH
{
    public partial class NewUserRegistration : System.Web.UI.Page
    {
        string CurrentUser;

        protected void Page_Load(object sender, EventArgs e)
        {
            // allows validation with minimal effort.
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            // Default UserStore constructor uses the default connection string named: DefaultConnection
            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = UserName.Text };

            IdentityResult result = manager.Create(user, Password.Text);

            if (result.Succeeded)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                //adds additional info to DB
                CurrentUser = userIdentity.GetUserId();
                InitialInfo();

                //Change pages
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                StatusMessage.Text = result.Errors.FirstOrDefault();
            }
        }

        protected void InitialInfo()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlCommand AccountSetup = new SqlCommand("UserInitialSetup", con);
            AccountSetup.CommandType = CommandType.StoredProcedure;
            AccountSetup.Parameters.Add("@Id", SqlDbType.NVarChar).Value = CurrentUser;
            AccountSetup.Parameters.Add("@Email", SqlDbType.NVarChar).Value = TXTEmail.Text;
            AccountSetup.Parameters.Add("@PhoneNumber", SqlDbType.NVarChar).Value = TXTPhoneNumber.Text;
            AccountSetup.Parameters.Add("@FirstName", SqlDbType.NVarChar).Value = TXTFirstName.Text;
            AccountSetup.Parameters.Add("@LastName", SqlDbType.NVarChar).Value = TXTLastName.Text;
            AccountSetup.Parameters.Add("@BDay", SqlDbType.Date).Value = TXTBday.Text;

            AccountSetup.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = UserName.Text;

            con.Open();
            AccountSetup.ExecuteNonQuery();
            con.Close();
        }
    }
}