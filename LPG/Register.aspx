<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LPG.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <table class="auto-style9" align="center">
            <tr>
                <td class="text-right" style="width: 472px; height: 38px">&nbsp;</td>
                <td style="height: 38px; " class="text-center" colspan="2">
                    <asp:Label ID="LabelError" runat="server"></asp:Label>
                </td>
                <td style="height: 38px; width: 10px;">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-center" style="width: 472px; " rowspan="7" "vertical-align:top">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="437px" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <Columns>
                            <asp:TemplateField HeaderText="Serial">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("serial") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("serial") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Password">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date of Register">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                </td>
                <td style="height: 38px; color: #003300;" colspan="2">
                    <strong>User Name:</strong></td>
                <td style="height: 38px; width: 10px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 38px; " colspan="2">
                    <asp:TextBox ID="TextBoxUserName" runat="server" Height="35px" Width="260px" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="3px" style="font-size: xx-large"></asp:TextBox>
                </td>
                <td style="height: 38px; width: 10px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 38px; color: #003300;" colspan="2">
                    <strong>Password :</strong></td>
                <td style="height: 38px; width: 10px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 38px; " colspan="2">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Height="35px" Width="260px" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="3px" style="font-size: xx-large"></asp:TextBox>
                </td>
                <td style="height: 38px; width: 10px;"></td>
            </tr>
            <tr>
                <td style="height: 38px; color: #003300;" colspan="2">
                    <strong>Confirm Password :</strong></td>
                <td style="height: 38px; width: 10px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 38px; " colspan="2">
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Height="35px" Width="260px" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="3px" style="font-size: xx-large"></asp:TextBox>
                </td>
                <td style="height: 38px; width: 10px;"></td>
            </tr>
            <tr>
                <td style="height: 73px; width: 108px" class="text-left">
                    <strong>
                    <asp:Button ID="ButtonReset" runat="server" Height="29px" Text="Reset" Width="94px" OnClick="ButtonReset_Click" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="2px" Font-Bold="True" />
                    </strong>
                </td>
                <td style="height: 73px; width: 115px" class="text-center">
                    <strong>
                    <asp:Button ID="ButtonRegister" runat="server" Height="29px" Text="Register" Width="152px" OnClick="ButtonRegister_Click" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="2px" Font-Bold="True" />
                    </strong>
                </td>
                <td style="height: 73px; width: 10px;"></td>
            </tr>
        </table>

    </div>
</asp:Content>
