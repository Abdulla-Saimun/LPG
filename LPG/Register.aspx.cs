using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LPG
{
    public partial class Register : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Identity"] == "Staff")
            {
                Response.Redirect("Default.aspx");
            }
            loadGrid();
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            TextBoxUserName.Text = null;
            TextBoxPassword.Text = null;
            TextBoxConfirmPassword.Text = null;
        }
        public void loadGrid()
        {
            GridView1.DataSource = op.getData("select * from Staff");
            GridView1.DataBind();
        }

        protected void ButtonReset_Click1(object sender, EventArgs e)
        {
            
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            if(TextBoxPassword.Text==TextBoxConfirmPassword.Text)
            {
                try
                {
                    string query = @"INSERT INTO [dbo].[Staff]
           ([UserName]
           ,[Password]
           ,[Date])
     VALUES('" + TextBoxUserName.Text + "','" + TextBoxPassword.Text + "','" + DateTime.Now.ToString("D") + "')";
                    op.executequary(query);
                    TextBoxUserName.Text = null;
                    TextBoxPassword.Text = null;
                    TextBoxConfirmPassword.Text = null;
                    
                    LabelError.Attributes["style"] = "color:green;";
                    LabelError.Text = "Registration Successful";
                    loadGrid();
                }
                catch (Exception)
                {

                }
            }
            else
            {
                LabelError.Attributes["style"] = "color:red;";
                LabelError.Text = "Password doesn't match please try again";
            }
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lb = (Label)GridView1.Rows[e.RowIndex].FindControl("Label4");
            string queryDel = @"DELETE FROM [dbo].[Staff]
      WHERE serial =" + lb.Text;
            if (op.executequary(queryDel) == 1)
            {
                loadGrid();
            }
        }

        protected void ButtonRegister_Click1(object sender, EventArgs e)
        {

        }
    }
}