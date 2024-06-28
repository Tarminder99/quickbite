using GroupProject.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button btnAdd = (Button)sender;
            DataListItem item = (DataListItem)btnAdd.NamingContainer;

            Model.Menu menu = new Model.Menu();
            menu.title = ((Label)item.FindControl("TitleLabel")).Text;
            menu.description = ((Label)item.FindControl("DescriptionLabel")).Text;
            menu.price = ((Label)item.FindControl("PriceLabel")).Text;

            TextBox quantityTxt = (TextBox)item.FindControl("txtQuantity");
            Label messageLabel = (Label)item.FindControl("MessageLabel");

            int quantity;

            if(quantityTxt.Text == "")
            {
                messageLabel.Text = "Please enter quantity";
                return;
            }
            if (!int.TryParse(quantityTxt.Text, out quantity) || quantity <= 0)
            {
                messageLabel.Text = "Enter Valid Quantity";
                quantityTxt.Text = "";
                return;
            }

            ItemList itemList = ItemList.GetCartDetails();
            itemList.AddItem(menu, quantity);

            btnAdd.Text = "Added";
        }
    }
}