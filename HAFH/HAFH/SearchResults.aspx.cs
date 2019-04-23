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
    public partial class SearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SelectSearch();
        }
                
        protected void SelectSearch()
        {
            String Search = Request.QueryString["Search"];
            string Type = Request.QueryString["Type"];
            int Selection = Convert.ToInt32(Type);


            if (Selection == 1)
            {
                string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand LoadDetails = new SqlCommand("MainSearch", con);
                    LoadDetails.CommandType = CommandType.StoredProcedure;
                    LoadDetails.Parameters.Add("@SearchInput", SqlDbType.VarChar).Value = Search;
                    con.Open();
                    DataList1.DataSource = LoadDetails.ExecuteReader();
                    DataList1.DataBind();
                }
            }
            else
            {
                int Zipcode = Convert.ToInt32(Search);

                string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand LoadDetails = new SqlCommand("ZipSearch", con);
                    LoadDetails.CommandType = CommandType.StoredProcedure;
                    LoadDetails.Parameters.Add("@Zip", SqlDbType.VarChar).Value = Zipcode;
                    con.Open();
                    DataList1.DataSource = LoadDetails.ExecuteReader();
                    DataList1.DataBind();
                };
            }
        }
    }
}