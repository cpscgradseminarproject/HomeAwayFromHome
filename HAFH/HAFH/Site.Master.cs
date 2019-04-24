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
            int Type = Convert.ToInt32(DDLFilter.SelectedValue);

            if (Type == 1)
            {
                Response.Redirect("SearchResults.aspx?Search=" + Search);
            }
            else
            {
                Response.Redirect("ZipSearchResults.aspx?Search=" + Search);
            }
            
        }
    }
}