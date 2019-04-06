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

        protected void SbmtInfo_Click(object sender, EventArgs e)
        {

        }

        protected void LoadUserInfo()
        {
            /*
            string UserName;
            string FirstName;
            string LastName;
            string PhoneNumber;
            string Email;

            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("SelectUserSelfEdit", conn) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@Username", SqlDbType.NVarChar);
                command.Parameters.Add("@FirstName", SqlDbType.NVarChar);
                command.Parameters.Add("@LastName", SqlDbType.NVarChar);
                command.Parameters.Add("@PhoneNumber", SqlDbType.NVarChar);
                command.Parameters.Add("@Email", SqlDbType.NVarChar);

                conn.Open();
                command.ExecuteNonQuery();
                */

            string CurrentUser = User.Identity.GetUserId();
            //string StateValue;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            conn.Open();
            SqlDataReader myReader = null;
            //modify to use stored procedure
            using (var command = new SqlCommand("SelectUserSelfEdit", conn) { CommandType = CommandType.StoredProcedure })
            {
                //Any Parameters will be here.
                command.Parameters.Add("@CurrentUser", SqlDbType.NVarChar).Value = CurrentUser;
                command.Parameters.Add("@UserName", SqlDbType.NVarChar);
                command.Parameters.Add("@LastName", SqlDbType.NVarChar);
                command.Parameters.Add("@PhoneNumber", SqlDbType.NVarChar);
                command.Parameters.Add("@Email", SqlDbType.NVarChar);

                command.Connection = conn;

                myReader = command.ExecuteReader();

                while (myReader.Read())
                {
                    //this is where the data is going
                    TxtUsername.Text = myReader["@UserName"].ToString().Trim();
                    TxtFirstName.Text = myReader["@FirstName"].ToString().Trim();
                    TxtLastName.Text = myReader["@LastName"].ToString().Trim();
                    TxtPhoneNumber.Text = myReader["@PhoneNumber"].ToString().Trim();
                    TxtEmail.Text = myReader["@Email"].ToString().Trim();

                }
                conn.Close();
            }
                
        }

        protected void PageValidation()
        {

        }

    }
}