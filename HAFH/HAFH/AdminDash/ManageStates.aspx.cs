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
    public partial class ManageStates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login AdminManager = new Login();
            AdminManager.AdminLoginCheck();
        }

        protected void BTNAddState_Click(object sender, EventArgs e)
        {
            string StateName = TXTAddState.Text;



            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("AddState", conn) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@StateName", SqlDbType.VarChar).Value = StateName;

                conn.Open();
                command.ExecuteNonQuery();

                Response.Redirect("ManageStates.aspx");
            }
        }
    }
}