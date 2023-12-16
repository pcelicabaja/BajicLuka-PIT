using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BajicLuka_PIT
{
    public partial class izvestaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.PreviousPage != null)
            {
                lblImeiPrezime.Text = PreviousPage.ImeiPrezime;
                lblEmail.Text = "(" + PreviousPage.Email + "), rodjen ";
                lblGodine.Text = PreviousPage.Godine + " godine, učenik ";
                lblRazred.Text = PreviousPage.Razred + " razreda, uspešno je popunio obrazac za prijavu...";
            }
        }

    }
}