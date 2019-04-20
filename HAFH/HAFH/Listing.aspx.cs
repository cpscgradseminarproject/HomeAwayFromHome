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
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPropertyInfo();
        }

        protected void LoadPropertyInfo()
        {
            //string StateValue;
            string PropertyID = Request.QueryString["PropertyId"];

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            con.Open();
            SqlDataReader myReader = null;
            //out SQL code will execute as the stored procedure SelectUsersSelfEdit
            SqlCommand ViewListing = new SqlCommand("ViewFullListing", con) { CommandType = CommandType.StoredProcedure };

            //sets up the same variables as the query
            ViewListing.Parameters.Add("@PropertyID", SqlDbType.Int).Value = PropertyID;

            ViewListing.Connection = con;

            myReader = ViewListing.ExecuteReader();

            //While its reading the Query it will set the values to our form fields.
            while (myReader.Read())
            {
                LBLPropName.Text = myReader["PropertyName"].ToString().Trim();
                LBLPropAddress.Text = myReader["PropertyAddress" ].ToString().Trim() + ",";
                LBLPropCity.Text = myReader["PropertyCity" ].ToString().Trim() + ",";
                LBLPropState.Text = myReader["PropertyState" ].ToString().Trim() + ",";
                LBLPropZipcode.Text = myReader["PropertyZipcode"].ToString().Trim();
                LBLPropDescr.Text = myReader["PropertyDesc"].ToString().Trim();
                LBLNumBedrooms.Text = myReader["NumberOfBedrooms"].ToString().Trim();
                LBLNumBathrooms.Text = myReader["NumberOfBathrooms"].ToString().Trim();
                LBLCostPerNight.Text = myReader["CostPerNight"].ToString().Trim();
            }
            con.Close();
        }

        protected void BTNReservation_Click(object sender, EventArgs e)
        {
            string PropertyID = Request.QueryString["PropertyId"];
            Response.Redirect("Reservations.aspx?PropertyId=" + PropertyID);
        }
    }
}