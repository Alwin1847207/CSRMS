<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage_Student.master" AutoEventWireup="true" CodeFile="Submit_Assignment.aspx.cs" Inherits="Student_Submit_Assignment" %>

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
            <asp:Label ID="Label1" runat="server" Text="Subjects :"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList_subject" runat="server" AutoPostBack="True" Width="125px" OnSelectedIndexChanged="DropDownList_subject_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList_subject" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Assignment Topic :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:DropDownList ID="DropDownList_topic" runat="server" AutoPostBack="True" Width="164px">
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList_topic" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        <td rowspan="9">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Upload Assignment :"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload_assignment" runat="server" onchange="this.form.submit();" Width="234px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" ValidationGroup="a" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
   
</asp:Content>

