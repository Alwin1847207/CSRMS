<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="Add internal mark.aspx.cs" Inherits="Teacher_Add_internal_mark" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        height: 41px;
    }
    .auto-style3 {
        height: 38px;
    }
    .auto-style4 {
        height: 26px;
    }
    .auto-style5 {
        height: 40px;
    }
    .auto-style6 {
        height: 24px;
    }
    .auto-style7 {
        height: 27px;
    }
    .auto-style8 {
        height: 20px;
    }
    .auto-style9 {
        height: 52px;
    }
    .auto-style10 {
        height: 29px;
    }
    .auto-style11 {
        height: 59px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style11">internal exam marks</td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            </tr>
        <tr>
            <td class="auto-style2">select semester</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" Height="21px" Width="161px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList5" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style7">
            </td>
            <td class="auto-style7">
            </td>
            </tr>
        <tr>
            <td class="auto-style5">select subject</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList8" runat="server" Height="29px" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged" Width="171px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList8" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style8">
            </td>
            <td class="auto-style8">
            </td>
            <td class="auto-style8"></td>
            </tr>
        <tr>
            <td class="auto-style3">select student:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="24px" Width="172px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3"></td>
            </tr>
        <tr>
            <td class="auto-style9">select maximum marks</td>
            <td class="auto-style9">
                10</td>
            <td class="auto-style9">
                </td>
            </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            </tr>
        <tr>
            <td class="auto-style6">enter the students mark</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Width="159px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="a" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

