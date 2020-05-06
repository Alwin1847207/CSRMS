<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="Add_Timetable.aspx.cs" Inherits="Admin_Add_Timetable" %>

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
                <asp:Label ID="Label1" runat="server" Text="Department :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_dep" runat="server" Height="62px" Width="265px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList_dep" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Batch :"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList_batch" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList_batch_SelectedIndexChanged" Width="152px">
                    <asp:ListItem Value="1">I Year</asp:ListItem>
                    <asp:ListItem Value="2">II Year</asp:ListItem>
                    <asp:ListItem Value="3">III Year</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList_batch" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Sem :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_sem" runat="server" Width="184px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_sem_SelectedIndexChanged" Height="51px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList_sem" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Hour :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_hour" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_hour_SelectedIndexChanged" Width="182px" Height="57px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList_hour" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Day :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_day" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_day_SelectedIndexChanged" Width="273px" Height="53px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList_day" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Teacher :"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList_teacher" runat="server" AutoPostBack="True" Height="64px" OnSelectedIndexChanged="DropDownList_teacher_SelectedIndexChanged" Width="279px">
                </asp:DropDownList>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList_teacher" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Subject :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_sub" runat="server" Width="282px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_sub_SelectedIndexChanged" Height="53px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList_sub" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Time Table Item" ValidationGroup="a" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

