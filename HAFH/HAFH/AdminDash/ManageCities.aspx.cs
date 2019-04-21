using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH.AdminDash
{
    public partial class ManageCities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login AdminManager = new Login();
            AdminManager.AdminLoginCheck();
        }

        protected void BTNAddCity_Click(object sender, EventArgs e)
        {
            string CityName = TXTAddCity.Text;
            string StateName =DDLStates.SelectedValue.ToString();


            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("AddCity", conn) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@CityName", SqlDbType.VarChar).Value = CityName;
                command.Parameters.Add("@FKState", SqlDbType.VarChar).Value = StateName;

                conn.Open();
                command.ExecuteNonQuery();

                Response.Redirect("ManageCities");
            }
        }
    }
}