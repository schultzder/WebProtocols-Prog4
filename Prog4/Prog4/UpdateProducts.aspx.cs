using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Prog4.App_Code;

namespace Prog4
{
    public partial class UpdateProducts : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLDataClass.getAllProducts();
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            DetailsView1.PageIndex = e.NewPageIndex;
            DetailsView1.DataBind();
        }
    }
}