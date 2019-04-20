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
    public partial class Reservations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
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
            SqlCommand LoadDetails = new SqlCommand("SelectPropertyReservation", con) { CommandType = CommandType.StoredProcedure };

            //sets up the same variables as the query
            LoadDetails.Parameters.Add("@PropertyID", SqlDbType.Int).Value = PropertyID;

            LoadDetails.Connection = con;

            myReader = LoadDetails.ExecuteReader();

            //While its reading the Query it will set the values to our form fields.
            while (myReader.Read())
            {
                LBLPropName.Text = myReader["PropertyName"].ToString().Trim();
                LBLPropAddress.Text = myReader["PropertyAddress"].ToString().Trim() + ",";
                LBLPropCity.Text = myReader["PropertyCity"].ToString().Trim() + ",";
                LBLPropState.Text = myReader["PropertyState"].ToString().Trim() + ",";
                LBLPropZipcode.Text = myReader["PropertyZipcode"].ToString().Trim();                
                LBLCostPerNight.Text = myReader["CostPerNight"].ToString().Trim();
            }
            con.Close();
        }

        protected void CheckOut_SelectionChanged(object sender, EventArgs e)
        {
            LBLCheckout.Text = CalCheckout.SelectedDate.ToShortDateString();

            TimeSpan difference = Convert.ToDateTime(LBLCheckout.Text) - Convert.ToDateTime(LBLCheckin.Text);

            int Days = difference.Days;

            LBLTotalNight.Text = Days.ToString();

            LBLTotalCost.Text = Convert.ToString(Convert.ToDecimal(LBLTotalNight.Text) * Convert.ToDecimal(LBLCostPerNight.Text));
        }

        protected void CalCheckin_SelectionChanged(object sender, EventArgs e)
        {
            LBLCheckin.Text = CalCheckin.SelectedDate.ToShortDateString();
        }










        protected void MakeReservation()
        {
            string PropertyId = Request.QueryString["PropertyId"];
            string CurrentUser = User.Identity.GetUserId();
            string PropertyID = PropertyId;
            string Checkin = LBLCheckin.Text;
            string Checkout = LBLCheckout.Text;
            string RentalTotalCost = LBLTotalCost.Text;



            using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("MakeReservation", con) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@PropertyID", SqlDbType.Int).Value = PropertyID;
                command.Parameters.Add("@UserID", SqlDbType.NVarChar).Value = CurrentUser;
                command.Parameters.Add("@Checkin", SqlDbType.DateTime).Value = Checkin;
                command.Parameters.Add("@Checkout", SqlDbType.DateTime).Value = Checkout;
                command.Parameters.Add("@RentalTotalCost", SqlDbType.Money).Value = RentalTotalCost;

                con.Open();
                command.ExecuteNonQuery();
                con.Close();
                System.Diagnostics.Debug.WriteLine(" make reservation connection has run and closed");
            }
        }

        private void OpenWindow()
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('A Reservation for these dates already exists');</script>");
        }

        protected void ConflictCheck()
        {
            string PropertyID = Request.QueryString["PropertyId"];

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            con.Open();
            SqlDataReader myReader = null;

            SqlCommand CheckConflict = new SqlCommand("ReservationConflictCheck", con) { CommandType = CommandType.StoredProcedure };

            CheckConflict.Parameters.Add("@PropertyID", SqlDbType.Int).Value = PropertyID;
            CheckConflict.Parameters.Add("@Checkin", SqlDbType.DateTime).Value = CalCheckin.SelectedDate;
            CheckConflict.Parameters.Add("@Checkout", SqlDbType.DateTime).Value = CalCheckout.SelectedDate;

            CheckConflict.Connection = con;

            myReader = CheckConflict.ExecuteReader();

            while (myReader.Read())
            {
                if (myReader.HasRows)
                {
                    OpenWindow();
                }
            }

            if(myReader.HasRows == false)
            {
                MakeReservation();
            }
            con.Close();
        }

        protected void BTNReserve_Click(object sender, EventArgs e)
        {
            ConflictCheck();
        }
    }
}