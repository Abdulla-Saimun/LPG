using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace LPG
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Identity"] == "Staff")
            {
                Response.Redirect("Default.aspx");
            }
        }
        string connectionstring = ConfigurationManager.ConnectionStrings["LPG"].ConnectionString;
        protected void Button1_Click(object sender, EventArgs e)
        {
           if(DropDownList1.SelectedItem.Text=="Admin")
            {
                adminLogin();
            }
           if(DropDownList1.SelectedItem.Text=="Staff")
            {
                staffLogin();
            }
        }
        public void staffLogin()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionstring);
                con.Open();
                String userName = TextBoxUser.Text;
                String Password = TextBoxPass.Text;
                String query = @"SELECT [UserName]
      ,[Password]
  FROM [dbo].[Staff] where UserName='" + userName + "' and Password='" + Password + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["Identity"] = DropDownList1.SelectedItem.ToString();
                    Session["User"]  = TextBoxUser.Text;
                    con.Close();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    TextBoxUser.Text = null;
                    TextBoxPass.Text = null;
                    LabelError.Text = "User Name or Password is Invalid";
                }
            }
            catch (Exception)
            {
                LabelError.Text = "User Name or Password is Invalid";
            }
        }
        public void adminLogin()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionstring);
                con.Open();
                String userName = TextBoxUser.Text;
                String Password = TextBoxPass.Text;
                String query = @"SELECT [UserName]
      ,[Password]
  FROM [dbo].[Login] where UserName='" + userName + "' and Password='" + Password + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["Identity"] = DropDownList1.SelectedItem.ToString();
                    Session["User"] = TextBoxUser.Text;
                    con.Close();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    TextBoxUser.Text = null;
                    TextBoxPass.Text = null;
                    LabelError.Text = "User Name or Password is Invalid";
                }
            }
            catch(Exception)
            {
                LabelError.Text = "User Name or Password is Invalid";
            }
        }
    }
}