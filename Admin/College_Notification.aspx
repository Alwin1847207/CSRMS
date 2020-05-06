﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="College_Notification.aspx.cs" Inherits="Admin_College_Notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Date :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_date" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Notification :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_notification" runat="server" Height="239px" TextMode="MultiLine" Width="627px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_notification" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
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
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Notification" ValidationGroup="a" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

