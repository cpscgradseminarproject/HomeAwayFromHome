using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginPageManager();
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
            Response.Redirect("~/PropertyManagerDash/ManageProperties.aspx");
        }

        protected void BTNViewRenterHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PropertyManagerDash/ViewRenterHistory.aspx");
        }

        protected void BTNAccBal_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PropertyManagerDash/AccountBalance.aspx");
        }

        protected void BTNPMSettings_Click(object sender, EventArgs e)
        {
            //Response.Redirect("");
        }

        protected void BTNPMApp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerDash/PMApplication.aspx");
        }

        protected void BTNAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerDash/UserInfo");
        }

        protected void BTNPaymentMethods_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerDash/ManagePayments.aspx");
        }

        protected void BTNViewReservtions_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerDash/ViewReservation.aspx");
        }

        protected void BTNViewRentalHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerDash/ViewRentalHistory.aspx");
        }

        public void LoginPageManager()
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    StatusText.Text = string.Format("Hello {0}!!", User.Identity.GetUserName());
                    LoginStatus.Visible = true;
                    LogoutButton.Visible = true;

                    CustomerPanel.Visible = true;

                    if (User.Identity.IsAuthenticated)
                    {
                        string CurrentUser = User.Identity.GetUserId();
                        int CurrentUserRole;

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

                        if (CurrentUserRole == 0002)
                        {
                            //They are a property manager show them the property manager panel
                            PropertManagerPanel.Visible = true;
                            BTNPMApp.Visible = false;
                        }

                        if (CurrentUserRole == 0003)
                        {
                            //They are an admin show them the admin page.
                            Response.Redirect("AdminPanel.aspx");
                        }

                        if (CurrentUserRole == 0004)
                        {
                            //They are the site owner so show them the things...
                        }

                        if (CurrentUserRole == 0005)
                        {
                            //They are banned show them the door
                        }
                    }
                }
                else
                {
                    LoginForm.Visible = true;
                }
            }
        }

        public void BasicLoginCheck()
        {
            if (User.Identity.IsAuthenticated == false)
            {
                HttpContext.Current.Response.Redirect("~/Bounce/LoginBounce.aspx");
            }
        }

        public void PropertyManagerRoleCheck()
        {
            if (User.Identity.IsAuthenticated)
            {
                string CurrentUser = User.Identity.GetUserId();
                int CurrentUserRole;

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

                if (CurrentUserRole == 0001)
                {
                    //they are a customer only and not authorized to view this page.
                    HttpContext.Current.Response.Redirect("~/Bounce/NotAuthorizedBounce.aspx");
                }

                if (CurrentUserRole == 0002)
                {
                    //Do nothing because they should be authorized to view this page
                }

                if (CurrentUserRole == 0003)
                {
                    //Lockout
                    HttpContext.Current.Response.Redirect("~/Bounce/NotAuthorizedBounce.aspx");
                }

                if (CurrentUserRole == 0004)
                {
                    //They are the site owner so show them the things...

                }

                if (CurrentUserRole == 0005)
                {
                    //They are banned show them the door
                    HttpContext.Current.Response.Redirect("~/Bounce/BannedBounce.aspx");
                }
            }

            if (User.Identity.IsAuthenticated == false)
            {
                HttpContext.Current.Response.Redirect("~/Bounce/LoginBounce.aspx");
            }
        }

        public void AdminLoginCheck()
        {
            if (User.Identity.IsAuthenticated)
            {
                string CurrentUser = User.Identity.GetUserId();
                int CurrentUserRole;

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

                if (CurrentUserRole == 0001)
                {
                    //they are a customer only and not authorized to view this page.
                    HttpContext.Current.Response.Redirect("~/Bounce/NotAuthorizedBounce.aspx");
                }

                if (CurrentUserRole == 0002)
                {
                    //They are a property manager so don't let them in.
                    HttpContext.Current.Response.Redirect("~/Bounce/NotAuthorizedBounce.aspx");
                }

                if (CurrentUserRole == 0003)
                {
                    //They are an admin so do nothing.
                    
                }

                if (CurrentUserRole == 0004)
                {
                    //They are the site owner so show them the things...

                }

                if (CurrentUserRole == 0005)
                {
                    //They are banned show them the door
                    HttpContext.Current.Response.Redirect("~/Bounce/BannedBounce.aspx");
                }
            }

            if (User.Identity.IsAuthenticated == false)
            {
                HttpContext.Current.Response.Redirect("~/Bounce/LoginBounce.aspx");
            }
        }
    }
}