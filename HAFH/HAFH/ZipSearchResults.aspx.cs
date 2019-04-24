using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH
{
    public partial class ZipSearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Search = Request.QueryString["Search"];
            LBLSearchTerm.Text = Search;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("Listing.aspx?PropertyId=" + e.CommandArgument.ToString());
        }
    }
}