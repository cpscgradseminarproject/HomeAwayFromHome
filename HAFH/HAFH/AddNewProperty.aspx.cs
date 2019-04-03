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
    public partial class AddNewProperty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    if (User.Identity.IsAuthenticated)
                    {
                        string CurrentUser = User.Identity.GetUserId();
                        int CurrentUserRole;

                        string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                        SqlConnection con = new SqlConnection(conn);
                        con.Open();
                        string strSelect = "Select RoleID From AspNetUserRoles where UserID = @CurrentUser";
                        SqlCommand cmd = new SqlCommand(strSelect, con);

                        cmd.Parameters.AddWithValue("@CurrentUser", CurrentUser);

                        SqlDataReader myReader = cmd.ExecuteReader();

                        myReader.Close();
                        CurrentUserRole = Convert.ToInt16(cmd.ExecuteScalar());

                        con.Close();

                        if (CurrentUserRole == 0002)
                        {
                            PanelProperty.Visible = true;
                        }
                    }

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }

        }

        protected void SubmitProp_Click(object sender, EventArgs e)
        {
            string PropertyName = PropNameTxt.Text;
            string PropertyAddress = AddrTxt.Text;
            string PropertyCity = CityDDL.SelectedValue;
            string PropertyState = StDDL.SelectedValue;
            int PropertyZipcode = Convert.ToInt32(ZipTxt.Text);
            int NumberOfBedrooms = Convert.ToInt32(BedroomDDL.SelectedValue);
            int NumberOfBathrooms = Convert.ToInt32(BedroomDDL.SelectedValue);
            bool IsHandycapAccessible = HandiBool.Checked;
            bool HasPool = PoolBool.Checked;
            string PropertyDesc = PropDescTxt.Text;
            double CostPerNight = Convert.ToDouble(PriceTxt.Text);


            string UserID = Convert.ToString(User.Identity.GetUserId());


            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("AddProperty", conn) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@PropertyName", SqlDbType.VarChar).Value = PropertyName;
                command.Parameters.Add("@PropertyAddress", SqlDbType.VarChar).Value = PropertyAddress;
                command.Parameters.Add("@PropertyCity", SqlDbType.VarChar).Value = PropertyCity;
                command.Parameters.Add("@PropertyState", SqlDbType.VarChar).Value = PropertyState;
                command.Parameters.Add("@PropertyZipcode", SqlDbType.Int).Value = PropertyZipcode;
                command.Parameters.Add("@NumberOfBedrooms", SqlDbType.Int).Value = NumberOfBedrooms;
                command.Parameters.Add("@NumberOfBathrooms", SqlDbType.Int).Value = NumberOfBathrooms;
                command.Parameters.Add("@IsHandycapAccessible", SqlDbType.Bit).Value = HasPool;
                command.Parameters.Add("@HasPool", SqlDbType.Bit).Value = HasPool;
                command.Parameters.Add("@PropertyDesc", SqlDbType.VarChar).Value = PropertyDesc;
                command.Parameters.Add("@CostPerNight", SqlDbType.Int).Value = CostPerNight;
                command.Parameters.Add("@PropertyOwner", SqlDbType.NVarChar).Value = UserID;
                command.Parameters.Add("@Is_Active", SqlDbType.Bit).Value = true;
                command.Parameters.Add("@Is_Approved", SqlDbType.Bit).Value = true;



                conn.Open();
                command.ExecuteNonQuery();
            }
        }
    }
}