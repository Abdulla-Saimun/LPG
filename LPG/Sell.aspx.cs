using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LPG
{
    public partial class Sell : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            StockInfo();
        }
        public void StockInfo()
        {
            string quaryStock = @"select * from Stock";
            GridView1.DataSource= op.getData(quaryStock);
            GridView1.DataBind();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBoxQuantity_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void ButtonSell_Click(object sender, EventArgs e)
        {
            
            try
            {
                float UnitPrice = float.Parse(TextBoxUnitPrice.Text);
                float Quantity = float.Parse(TextBoxQuantity.Text);
                TextBoxTotalPrice.Text = (UnitPrice * Quantity).ToString();

                string quary = @"INSERT INTO [dbo].[Sell]
           ([Quantity]
           ,[Unit_Price]
           ,[Condition]
           ,[Seller]
           ,[Date]
           ,[Time]
           ,[TotalPrice]
           ,[Branch])
     VALUES ('" + TextBoxQuantity.Text + "','" + TextBoxUnitPrice.Text + "','" + DropDownListCondition.SelectedItem + "','" + Session["User"].ToString() + "','" + DateTime.Now.ToString("D") + "','" + DateTime.Now.ToString("T") + "','" + TextBoxTotalPrice.Text + "','" + DropDownListBranch.SelectedItem + "')";
                if (op.executequary(quary) == 1)
                {
                    TextBoxTotalPrice.Text = "0";

                    if (DropDownListCondition.SelectedItem.Text == "New")
                    {
                        string updateNew = "update Stock set New=New-" + TextBoxQuantity.Text + "";
                        op.executequary(updateNew);
                    }
                    if (DropDownListCondition.SelectedItem.Text == "Old")
                    {
                        string updateNew = "update Stock set New=New-" + TextBoxQuantity.Text + "";
                        string updateOld = "update Stock set Empty=Empty+" + TextBoxQuantity.Text + "";
                        op.executequary(updateNew);
                        op.executequary(updateOld);
                    }
                    TextBoxUnitPrice.Text = null;
                    TextBoxQuantity.Text = null;
                }
                StockInfo();
            }
            catch(Exception)
            {
                LabelError.Text = "Please enter the valid input and try again";
            }
            
        }
        

        protected void ButtonCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                float UnitPrice = float.Parse(TextBoxUnitPrice.Text);
                float Quantity = float.Parse(TextBoxQuantity.Text);
                TextBoxTotalPrice.Text = (UnitPrice * Quantity).ToString();
            }
            catch(Exception)
            {

            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelError.Text = "Please enter the valid input and try again";
        }
    }
}