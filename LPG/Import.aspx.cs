using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LPG
{
    public partial class Import : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Identity"] == "Staff")
            {
                Response.Redirect("Default.aspx");
            }
            StockInfo();
            ImportInfo();
        }
        DataOperation op = new DataOperation();
        public void ImportInfo()
        {
            string quaryStock = @"select * from Import";
            GridView2.DataSource = op.getData(quaryStock);
            GridView2.DataBind();
        }
        public void StockInfo()
        {
            string quaryStock = @"select * from Stock";
            GridView1.DataSource = op.getData(quaryStock);
            GridView1.DataBind();
        }

        protected void ButtonImport_Click(object sender, EventArgs e)
        {

            try
            { 
            float UnitPrice = float.Parse(TextBoxUnitPrice.Text);
            float Quantity = float.Parse(TextBoxQuantity.Text);
            string totalPrice = (UnitPrice * Quantity).ToString();

            string saveData = @"INSERT INTO [dbo].[Import]
           ([Quantity]
           ,[UnitPrice]
           ,[TotalPrice]
           ,[Date])
     VALUES('"+TextBoxQuantity.Text+"','"+TextBoxUnitPrice.Text+"','"+totalPrice+"','"+DateTime.Now.ToString("D")+"')";
                string updateNew = "update Stock set New=New+" + TextBoxQuantity.Text + "";
                string updateOld = "update Stock set Empty=Empty-" + TextBoxQuantity.Text + "";
                op.executequary(saveData);
                op.executequary(updateNew);
                op.executequary(updateOld);
                TextBoxUnitPrice.Text = null;
                TextBoxQuantity.Text = null;
                StockInfo();
                ImportInfo();
            }
            catch(Exception)
            {
                LabelError.Text = "Invalid Input Please try again";
            }
            
        }
    }
}