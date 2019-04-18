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
    public partial class PaymentManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LBLCurrentUser.Text = User.Identity.GetUserId();
        }

        protected void BTNAddCard_Click(object sender, EventArgs e)
        {
            string CurrentUser = User.Identity.GetUserId();
            string NameOnCard = TXTNameOnCard.Text;
            string CardNumber = TXTCardNumber.Text;
            string CardType = DDLCardType.SelectedValue.ToString();
            string SecurityCode = TXTSecurityCode.Text;
            DateTime CardExp = CALExp.SelectedDate;



            string UserID = Convert.ToString(User.Identity.GetUserId());


            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("AddCard", conn) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@CurrentUser", SqlDbType.NVarChar).Value = CurrentUser;
                command.Parameters.Add("@NameOnCard", SqlDbType.VarChar).Value = NameOnCard;
                command.Parameters.Add("@CardNumber", SqlDbType.VarChar).Value = CardNumber;
                command.Parameters.Add("@CardType", SqlDbType.VarChar).Value = CardType;
                command.Parameters.Add("@SecurityCode", SqlDbType.VarChar).Value = SecurityCode;
                command.Parameters.Add("@ExpDate", SqlDbType.Date).Value = CardExp;



                conn.Open();
                command.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
}