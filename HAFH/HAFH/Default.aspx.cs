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
        Label[,] PropertySynopsis = new Label[5, 5];

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            LoadProperties();
        }

        protected void LoadProperties()
        {
            

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
                for (int i = 0; i <= 0; i++)
                {

                    PropertySynopsisPage.Controls.Add(new LiteralControl("<div class='PropertySynopsis'>"));

                    Label PropertyName = new Label();
                    PropertySynopsis[i, 0] = PropertyName;
                    PropertyName.Text = myReader["PropertyName"].ToString().Trim();
                    PropertySynopsisPage.Controls.Add(PropertyName);
                    PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));
                    

                    Label PropertyAddress = new Label();
                    PropertySynopsis[i, 1] = PropertyAddress;
                    PropertyAddress.Text = myReader["PropertyAddress"].ToString().Trim();
                    PropertySynopsisPage.Controls.Add(PropertyAddress);
                    PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));


                    Label PropertyDesc = new Label();
                    PropertySynopsis[i, 2] = PropertyDesc;
                    PropertyDesc.Text = myReader["PropertyDesc"].ToString().Trim();
                    PropertySynopsisPage.Controls.Add(PropertyDesc);
                    PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));


                    Label PropertyBedroomCount = new Label();
                    PropertySynopsis[i, 3] = PropertyBedroomCount;
                    PropertyBedroomCount.Text = myReader["NumberOfBedrooms"].ToString().Trim();
                    PropertySynopsisPage.Controls.Add(PropertyBedroomCount);
                    PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));


                    Label PropertyBathroomCount = new Label();
                    PropertySynopsis[i, 4] = PropertyBathroomCount;
                    PropertyBathroomCount.Text = myReader["NumberOfBathrooms"].ToString().Trim();
                    PropertySynopsisPage.Controls.Add(PropertyBathroomCount);
                    PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));

                    PropertySynopsisPage.Controls.Add(new LiteralControl("</div>"));

                }


                /*
                LBLPropertyName+Counter.Text = myReader["PropertyName"].ToString().Trim();
                LBLAddress.Text = myReader["PropertyAddress"].ToString().Trim();
                LBLDesc.Text = myReader["PropertyDesc"].ToString().Trim();
                LBLBedroomCount.Text = myReader["NumberOfBedrooms"].ToString().Trim();
                LBLBathroomCount.Text = myReader["NumberOfBathrooms"].ToString().Trim();
                */
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