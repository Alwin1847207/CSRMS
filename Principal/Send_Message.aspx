<%@ Page Title="" Language="C#" MasterPageFile="~/Principal/MasterPage_Principal.master" AutoEventWireup="true" CodeFile="Send_Message.aspx.cs" Inherits="Principal_Send_Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Select :"></asp:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem Value="0">Head of Department</asp:ListItem>
                <asp:ListItem Value="1">Teacher</asp:ListItem>
                <asp:ListItem Value="2">Student</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td colspan="2" rowspan="7">
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" ForeColor="#333333" />
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>Message:&nbsp;
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("message") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("messid") %>' OnClick="LinkButton1_Click">Replay</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>Replay:
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("replay") %>'></asp:Label>
                                &nbsp; </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox2" runat="server" Height="17px" Visible="False" Width="203px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send" Visible="False" Width="210px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="height: 22px" Width="179px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td rowspan="3">
            <asp:TextBox ID="TextBox1" runat="server" Height="54px" TextMode="MultiLine" Width="257px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Message:</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Type Message" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Message" style="height: 26px" ValidationGroup="a" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

