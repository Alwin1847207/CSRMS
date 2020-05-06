<%@ Page Title="" Language="C#" MasterPageFile="~/Head of Department/MasterPage_HOD.master" AutoEventWireup="true" CodeFile="View_Students_leave.aspx.cs" Inherits="Head_of_Department_View_Students_leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 43px;
        }
        .auto-style3 {
            height: 40px;
        }
        .auto-style4 {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style4">Select Department:</td>
        <td class="auto-style4">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="145px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Height="47px">
            </asp:DropDownList>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">select Semester</td>
        <td class="auto-style3">
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="52px" Width="146px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1">
            </asp:DropDownList>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">select Date</td>
        <td class="auto-style2">
            <asp:DropDownList ID="DropDownList3" runat="server" Width="145px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged1" Height="50px">
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Student Name" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

