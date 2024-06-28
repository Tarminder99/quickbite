using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                ClearForm(Page.Form.Controls);
                Session.Remove("Cart");
                Response.Redirect("~/Confirmation.aspx");
            }
        }
        public void ClearForm(ControlCollection controls)
        {
            foreach (Control c in controls)
            {
                if (c.GetType() == typeof(System.Web.UI.WebControls.TextBox))
                {
                    System.Web.UI.WebControls.TextBox t = (System.Web.UI.WebControls.TextBox)c;
                    t.Text = String.Empty;
                }

                if (c.Controls.Count > 0) ClearForm(c.Controls);
            }
        }
    }
}