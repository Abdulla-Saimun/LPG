<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LPG.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 314px;
            text-align: center;
            height: 23px;
        }
        .auto-style7 {
            width: 314px;
            height: 70px;
        }
        .auto-style9 {
            text-align: center;
            margin-top: 85px;
        }
        .auto-style12 {
            color: #FF0000;
        }
        .auto-style15 {
            width: 314px;
            text-align: left;
            height: 23px;
            color: #003300;
        }
        .auto-style16 {
            width: 314px;
            text-align: left;
            color: #003300;
        }
        .auto-style19 {
            width: 314px;
            text-align: center;
            height: 70px;
        }
        .auto-style24 {
            margin-left: 9px;
        }
        .auto-style25 {
            text-align: center;
            color: #003300;
        }
        .auto-style27 {
            width: 314px;
            height: 74px;
        }
        .auto-style29 {
            font-size: xx-large;
        }
        .auto-style30 {
            width: 260px;
            height: 23px;
        }
        .auto-style31 {
            width: 260px;
        }
    </style>
</head>
<h2 class="auto-style25">
    LPG MANAGEMENT SYSTEM</h2>
    
<body>

    <form id="form1" runat="server">

        <div>

            <table class="auto-style9" align="center">
                <tr>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="LabelError" runat="server" CssClass="auto-style12"></asp:Label>
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style31" rowspan="5">
                        <asp:Image ID="Image2" runat="server" Height="206px" ImageUrl="~/Image/81184.png" Width="143px" />
                    </td>
                    <td class="auto-style15">
                        <strong>USER NAME:</strong></td>
                    <td class="auto-style31" rowspan="5">
                        <asp:Image ID="Image1" runat="server" Height="206px" ImageUrl="~/Image/81184.png" Width="143px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBoxUser" runat="server" Width="300px" Height="36px" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="3px" CssClass="auto-style29"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <strong>PASSWORD :</strong></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBoxPass" runat="server" Width="300px" Height="36px" TextMode="Password" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="3px" CssClass="auto-style29"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:Button ID="SignIN" runat="server" Text="Sign IN" Width="182px" OnClick="Button1_Click" Height="28px" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="2px" Font-Bold="True" />
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="99px" BackColor="#CCFFCC" CssClass="auto-style24">
                            <asp:ListItem>Staff</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        
    </form>
</body>
        
</html>
