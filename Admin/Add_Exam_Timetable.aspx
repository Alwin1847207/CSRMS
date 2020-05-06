<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="Add_Exam_Timetable.aspx.cs" Inherits="Admin_Add_Exam_Timetable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Select Date :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_date" runat="server" Width="160px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Admin/image/aaa.jpg" OnClick="ImageButton1_Click" Width="24px" />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_date" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Department :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_dep" runat="server" AutoPostBack="True" Height="61px" OnSelectedIndexChanged="DropDownList_dep_SelectedIndexChanged" Width="238px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList_dep" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Batch :"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList_batch" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList_batch_SelectedIndexChanged">
                    <asp:ListItem Value="1">I Year</asp:ListItem>
                    <asp:ListItem Value="2">II Year</asp:ListItem>
                    <asp:ListItem Value="3">IIIYear</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList_batch" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Semester :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_sem" runat="server" AutoPostBack="True" Height="57px" OnSelectedIndexChanged="DropDownList_sem_SelectedIndexChanged" Width="235px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList_sem" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Subject :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_subject" runat="server" AutoPostBack="True" Height="60px" OnSelectedIndexChanged="DropDownList_subject_SelectedIndexChanged" Width="233px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList_subject" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Time :"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList_time" runat="server" OnSelectedIndexChanged="RadioButtonList_time_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList_time" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Duration :"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList_duration" runat="server" OnSelectedIndexChanged="RadioButtonList_duration_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <asp:ListItem Value="2">2 Hrs</asp:ListItem>
                    <asp:ListItem Value="3">3 Hrs</asp:ListItem>
                </asp:RadioButtonList>
            </td>
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
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Exam" ValidationGroup="a" />
            </td>
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
    </table>
</asp:Content>

