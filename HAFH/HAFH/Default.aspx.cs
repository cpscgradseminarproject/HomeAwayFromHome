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
        Label[,] PropertySynopsis = new Label[5, 6];
        int i = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Page Loaded");
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

                PropertySynopsisPage.Controls.Add(new LiteralControl("<div class='PropertySynopsis'>"));

                Label PropertyName = new Label();
                PropertyName.ID = "PropName_" + i.ToString();
                PropertySynopsis[1, 0] = PropertyName;
                PropertyName.Text = myReader["PropertyName"].ToString().Trim();
                PropertySynopsisPage.Controls.Add(PropertyName);
                PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));
                    

                Label PropertyAddress = new Label();
                PropertyAddress.ID = "PropAdd_" + i.ToString();
                PropertySynopsis[1, 1] = PropertyAddress;
                PropertyAddress.Text = myReader["PropertyAddress"].ToString().Trim();
                PropertySynopsisPage.Controls.Add(PropertyAddress);
                PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));


                Label PropertyDesc = new Label();
                PropertyDesc.ID = "PropDesc_" + i.ToString();
                PropertySynopsis[1, 2] = PropertyDesc;
                PropertyDesc.Text = myReader["PropertyDesc"].ToString().Trim();
                PropertySynopsisPage.Controls.Add(PropertyDesc);
                PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));


                Label PropertyBedroomCount = new Label();
                PropertyBedroomCount.ID = "Bedroom_" + i.ToString();
                PropertySynopsis[1, 3] = PropertyBedroomCount;
                PropertyBedroomCount.Text = myReader["NumberOfBedrooms"].ToString().Trim();
                PropertySynopsisPage.Controls.Add(PropertyBedroomCount);
                PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));


                Label PropertyBathroomCount = new Label();
                PropertyBathroomCount.ID = "bath_" + i.ToString();
                PropertySynopsis[1, 4] = PropertyBathroomCount;
                PropertyBathroomCount.Text = myReader["NumberOfBathrooms"].ToString().Trim();
                PropertySynopsisPage.Controls.Add(PropertyBathroomCount);
                PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));

                Label PropertyID = new Label();
                PropertyID.ID = "PropID_" + i.ToString();
                PropertySynopsis[1, 5] = PropertyID;
                PropertyID.Text = myReader["PropertyID"].ToString().Trim();
                PropertyID.Visible = false;
                PropertySynopsisPage.Controls.Add(PropertyID);
                PropertySynopsisPage.Controls.Add(new LiteralControl("<br />"));


                /*
                Button BTNFullListing = new Button();
                BTNFullListing.Text = "View Full Listing";
                BTNFullListing.ID = "lising_" + i.ToString();
                BTNFullListing.Font.Size = FontUnit.Point(12);
                BTNFullListing.ControlStyle.CssClass = "btn btn-default";
                BTNFullListing.CommandArgument = "Listing.aspx";
                BTNFullListing.Click += new EventHandler (FullListing);
                PropertySynopsisPage.Controls.Add(BTNFullListing);
                */
                Button BTNFullListing = new Button();
                BTNFullListing.Text = "View Full Listing";
                BTNFullListing.ID = "listing_" + i.ToString();
                BTNFullListing.Font.Size = FontUnit.Point(12);
                BTNFullListing.ControlStyle.CssClass = "btn btn-default";
                //BTNFullListing.Click;
                PropertySynopsisPage.Controls.Add(BTNFullListing);

                i++;

                PropertySynopsisPage.Controls.Add(new LiteralControl("</div>"));

                


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

        protected void FullListing(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Main Method ran.");
            Console.WriteLine("");
            if(Page.IsPostBack)
            {
                System.Diagnostics.Debug.WriteLine("The If statement ran");
                Response.Redirect("Listing.aspx");
            }
            //if ()
            //{
            //Response.Redirect("Listing.asx?PropertyID=" + );
            //}
        }
    }
}