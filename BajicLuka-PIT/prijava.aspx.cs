using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BajicLuka_PIT
{
    public partial class prijava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtImeiPrezimeValidator.IsValid && txtEmailValidator.IsValid
                && txtEmailExpression.IsValid && txtAgeValidator.IsValid &&
                txtConfirmValidator.IsValid && PorediEmailValidator.IsValid &&
                rblRazredValidator.IsValid && GodineValidator.IsValid)
            {
                lblPoruka.Text = "Uspešno su popunjena sva polja!";
                btnSubmit.PostBackUrl = "~/izvestaj.aspx";
            }
            else
            {
                lblPoruka.Text = "Neka polja nisu ipravno popunjena!";
            }
        }
        public string ImeiPrezime
        {
            get { return txtImeiPrezime.Text; }

        }
        public string Email
        {
            get { return txtEmail.Text; }
        }

        public string Godine
        {
            get { return txtAge.Text; }
        }
        public string Razred
        {
            get { return rblRazred.Text; }
        }
    }
}