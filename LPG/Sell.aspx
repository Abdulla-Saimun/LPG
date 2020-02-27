<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="LPG.Sell" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div>

        <table class="auto-style9" align="center" style="height: 173px">
            <tr>
                <td class="text-center" style="height: 22px; " colspan="5">
                    <asp:Label ID="LabelError" runat="server" style="color: #FF0000"></asp:Label>
                    <br />
                    <br />
                </td>
                
                <td style="height: 22px">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="height: 55px; width: 109px; color: #003300;"><strong>UNIT PRICE :</strong></td>
                <td style="height: 55px; " colspan="2">
                    <asp:TextBox ID="TextBoxUnitPrice" runat="server" Width="255px" Height="35px" OnTextChanged="TextBox1_TextChanged" style="font-size: xx-large" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="3px"></asp:TextBox>
                  
                </td>
                <td class="text-right" style="height: 55px; width: 89px">BRANCH :</td>
                <td class="text-center" style="height: 55px; width: 143px">
                    <asp:DropDownList ID="DropDownListBranch" runat="server" Height="21px" Width="120px" BackColor="#CCFFCC">
                        <asp:ListItem>Farmgate</asp:ListItem>
                        <asp:ListItem>Dhanmondi</asp:ListItem>
                        <asp:ListItem>Uttora</asp:ListItem>
                        <asp:ListItem>Mohammadpur</asp:ListItem>
                        <asp:ListItem>Azimpur</asp:ListItem>
                        <asp:ListItem>Mohakhali</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 55px"></td>
            </tr>
            <tr>
                <td class="text-right" style="width: 109px; height: 56px; color: #003300;"><strong>QUANTITY :</strong></td>
                <td style="height: 56px" colspan="2">
                    <asp:TextBox ID="TextBoxQuantity" runat="server" Width="255px" Height="35px" OnTextChanged="TextBoxQuantity_TextChanged" style="font-size: xx-large" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="3px"></asp:TextBox>
                </td>
                <td class="text-right" style="width: 89px; height: 56px">CONDITON :</td>
                <td class="text-center" style="width: 143px; height: 56px">
                    <asp:DropDownList ID="DropDownListCondition" runat="server" Height="21px" Width="119px" BackColor="#CCFFCC">
                        <asp:ListItem>Old</asp:ListItem>
                        <asp:ListItem>New</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 56px"></td>
            </tr>
            <tr>
                <td style="width: 109px; height: 45px; color: #003300;" class="text-right"><strong>TOTAL PRICE :</strong></td>
                <td style="height: 45px;" colspan="2">
                    <asp:TextBox ID="TextBoxTotalPrice" runat="server" Height="35px" ReadOnly="True" style="font-size: xx-large" Width="255px" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="3px" Font-Size="XX-Large">0</asp:TextBox>
                </td>
                <td class="text-right" rowspan="2">
                    <br />
                    <asp:Button ID="ButtonCalculate" runat="server" Height="85px" OnClick="ButtonCalculate_Click" Text="Calculate" Width="93px" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="2px" Font-Bold="True" />
                </td>
                <td class="text-center" rowspan="2">
                    <br />
                    <asp:Button ID="ButtonSell" runat="server" Height="85px" OnClick="ButtonSell_Click" style="margin-left: 18; font-size: xx-large;" Text="Sell" Width="124px" BackColor="#CCFFCC" BorderColor="#003300" BorderWidth="2px" />
                </td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td style="width: 109px; height: 20px;" class="text-right">&nbsp;</td>
                <td style="width: 266px; height: 20px;" class="text-center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: larger; margin-left: 0px; margin-top: 6px" Width="255px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <Columns>
                            <asp:TemplateField HeaderText=".....Available.....">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("New") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("New") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText=".....Empty.....">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Empty") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Empty") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                </td>
                <td style="width: 49px; height: 20px;" class="text-center">
                    &nbsp;</td>
                <td style="height: 20px">&nbsp;</td>
            </tr>
        </table>
        <br />

    </div>
</asp:Content>
