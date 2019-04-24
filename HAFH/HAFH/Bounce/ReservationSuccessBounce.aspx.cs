using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAFH.Bounce
{
    public partial class ReservationSuccessBounce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext.Current.Response.AddHeader("REFRESH", "3;URL=../CustomerDash/ViewReservation.aspx");
        }
    }
}