<%@ Page Title="" Language="C#" MasterPageFile="~/Principal/MasterPage_Principal.master" AutoEventWireup="true" CodeFile="View_Timetable.aspx.cs" Inherits="Principal_View_Timetable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 42px;
        }
        .auto-style3 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Department :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:DropDownList ID="DropDownList_dep" runat="server" Height="58px" OnSelectedIndexChanged="DropDownList_dep_SelectedIndexChanged" Width="185px">
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList_dep" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Batch :"></asp:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList_year" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList_year_SelectedIndexChanged">
                <asp:ListItem Value="1">I Year</asp:ListItem>
                <asp:ListItem Value="2">II Year</asp:ListItem>
                <asp:ListItem Value="3">III Year</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList_year" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="Semester :"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="DropDownList_sem" runat="server" AutoPostBack="True" Width="155px" Height="52px">
            </asp:DropDownList>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList_sem" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Time Table" ValidationGroup="a" />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="GridView_timetable" runat="server" OnSelectedIndexChanged="GridView_timetable_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="613px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </td>
    </tr>
    </table>
</asp:Content>

