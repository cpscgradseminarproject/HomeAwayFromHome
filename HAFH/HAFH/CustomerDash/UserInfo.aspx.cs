using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH
{
    public partial class UserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CurrentUser = User.Identity.GetUserId();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            LoadUserInfo();
        }

        protected void SbmtInfo_Click(object sender, EventArgs e)
        {

        }

        protected void LoadUserInfo()
        {
            string CurrentUser = User.Identity.GetUserId();
            //string StateValue;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            con.Open();
            SqlDataReader myReader = null;
            //out SQL code will execute as the stored procedure SelectUsersSelfEdit
            SqlCommand SelectUserInfo = new SqlCommand("SelectUserSelfEdit", con) { CommandType = CommandType.StoredProcedure };

            //sets up the same variables as the query
            SelectUserInfo.Parameters.Add("@CurrentUser", SqlDbType.NVarChar).Value = CurrentUser;

            SelectUserInfo.Connection = con;

            myReader = SelectUserInfo.ExecuteReader();

            //While its reading the Query it will set the values to our form fields.
            while (myReader.Read())
            {
                TxtUsername.Text = myReader["UserName"].ToString().Trim();
                TxtFirstName.Text = myReader["FirstName"].ToString().Trim();
                TxtLastName.Text = myReader["LastName"].ToString().Trim();
                TxtPhoneNumber.Text = myReader["PhoneNumber"].ToString().Trim();
                TxtEmail.Text = myReader["Email"].ToString().Trim();
            }
            con.Close();       
        }

        protected void PageValidation()
        {

        }

    }
}