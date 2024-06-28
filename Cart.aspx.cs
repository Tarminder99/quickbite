using GroupProject.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class Cart : System.Web.UI.Page
    {
        private ItemList itemList;

        protected void Page_Load(object sender, EventArgs e)
        {
            itemList = ItemList.GetCartDetails();
            var itemsEnumerable = itemList.Items.AsEnumerable();

            if (!IsPostBack)
            {
                CartRepeater.DataSource = itemsEnumerable;
                CartRepeater.DataBind();
                if (itemList.Items.Count == 0)
                {
                    btnCheckOut.Visible = false;
                    MessageLabel.Text = "Please add items to order";
                }
            }

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
           Button btnRemove = (Button)sender;
           RepeaterItem item = (RepeaterItem)btnRemove.NamingContainer;
           int index = item.ItemIndex;
           itemList.RemoveAt(index);
           CartRepeater.DataSource = itemList.Items;
           CartRepeater.DataBind();
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Checkout.aspx");
        }
    }
}