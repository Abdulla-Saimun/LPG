using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LPG
{
    public partial class _Default : Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Identity"]=="Staff")
            {
                GridView1.Columns[9].Visible = false;
            }

            loadGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void loadGrid()
        {
            GridView1.DataSource = op.getData("select * from Sell");
            GridView1.DataBind();
        }
        
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lb = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string query = @"DELETE FROM [dbo].[Sell]
      WHERE serial=" + lb.Text;
            if (op.executequary(query) == 1)
            {
                loadGrid();
            }
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            
        }
    }
}