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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            LoadProperties();
        }

        protected void LoadProperties()
        {
            string CurrentUser = User.Identity.GetUserId();
            //string StateValue;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            con.Open();
            SqlDataReader myReader = null;
            //out SQL code will execute as the stored procedure SelectUsersSelfEdit
            SqlCommand SelectUserInfo = new SqlCommand("SelectPropertySynopsis", con) { CommandType = CommandType.StoredProcedure };

            SelectUserInfo.Connection = con;

            myReader = SelectUserInfo.ExecuteReader();

            //While its reading the Query it will set the values to our form fields.
            while (myReader.Read())
            {
                LBLPropertyName.Text = myReader["PropertyName"].ToString().Trim();
                LBLAddress.Text = myReader["PropertyAddress"].ToString().Trim();
                LBLDesc.Text = myReader["PropertyDesc"].ToString().Trim();
                LBLBedroomCount.Text = myReader["NumberOfBedrooms"].ToString().Trim();
                LBLBathroomCount.Text = myReader["NumberOfBathrooms"].ToString().Trim();
            }
            con.Close();
        }

        protected void BTNCreatAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewUserRegistration.aspx");
        }

        protected void BTNLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}