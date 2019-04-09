using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH.Bounce
{
    public partial class SuccessBounce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.AddHeader("REFRESH", "3;URL=PaymentHistory.aspx");
            if (!IsPostBack)
            //check if the webpage is loaded for the first time. 
            {
                ViewState["PreviousPage"] =
                Request.UrlReferrer;//Saves the Previous page url in ViewState 
            }
            if (ViewState["PreviousPage"] != null) //Check if the ViewState  
                                                   //contains Previous page URL        {
                Response.Redirect(ViewState["PreviousPage"].ToString());
            //Redirect to
            //Previous page by retrieving the PreviousPage Url from ViewState. 
        }
    }
}