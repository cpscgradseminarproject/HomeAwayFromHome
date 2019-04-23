using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchSubmit_Click(object sender, EventArgs e)
        {
            String Search = SearchInput.Text;
            String Type = DDLFilter.SelectedValue;
            Response.Redirect("SearchResults.aspx?Search=" + Search + "&Type=" + Type);
        }
    }
}