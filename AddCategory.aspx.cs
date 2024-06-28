using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            var param = dataSource3.InsertParameters;
            param["category_id"].DefaultValue = txtCategoryID.Text;
            param["category"].DefaultValue = txtCategory.Text;
            dataSource3.Insert();
            txtCategoryID.Text = "";
            txtCategory.Text = "";
            GridView1.DataBind();
        }
    }
}