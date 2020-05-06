<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="Teacher_Registration.aspx.cs" Inherits="Admin_Teacher_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 419px;
        }
        .auto-style4 {
            height: 23px;
            width: 419px;
        }
        .auto-style5 {
            height: 38px;
        }
        .auto-style6 {
            width: 419px;
            height: 38px;
        }
        .auto-style7 {
            width: 126px;
        }
        .auto-style8 {
            width: 126px;
            height: 38px;
        }
        .auto-style9 {
            height: 23px;
            width: 126px;
        }
        .auto-style10 {
            height: 64px;
        }
        .auto-style11 {
            width: 126px;
            height: 64px;
        }
        .auto-style12 {
            width: 419px;
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;    <table class="auto-style1">
        <tr>
            <td colspan="4">TEACHER REGISTRATION</td>
        </tr>
        <tr>
            <td>
                Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox_name" runat="server" Width="174px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_name" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_name" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Add Photo</td>
            <td class="auto-style7">
                <asp:FileUpload ID="FileUpload_photo" runat="server" />
            </td>
            <td class="auto-style3">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload_photo" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td rowspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Gender:</td>
            <td class="auto-style7">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="81px">
                    <asp:ListItem Value="0">Male</asp:ListItem>
                    <asp:ListItem Value="1">Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style3">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Date Of Birth:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox_dob" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Admin/image/aaa.jpg" OnClick="ImageButton1_Click" style="margin-top: 0px" Width="18px" CausesValidation="false"/>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="350px" BorderWidth="1px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td class="auto-style3">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_dob" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_dob" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:Image ID="Imagebox" runat="server" Height="109px" Width="104px" ImageUrl="~/Admin/image/person-icon.png" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                Department:</td>
            <td class="auto-style11">
                <asp:DropDownList ID="DropDownList_department" runat="server" Height="72px" Width="229px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList_department" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList_department" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Role:</td>
            <td class="auto-style7">
                <asp:RadioButtonList ID="RadioButtonList_Role" runat="server" Width="212px">
                    <asp:ListItem Value="0">Teacher</asp:ListItem>
                    <asp:ListItem Value="1">Head Of Department</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style3">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList_Role" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList_Role" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                Email:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox_email" runat="server" TextMode="Email" Width="217px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_email" ErrorMessage="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Contact Number:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_contact" runat="server" TextMode="Phone" Width="183px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox_contact" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_contact" ErrorMessage="error" ValidationExpression="[0-9]"></asp:RegularExpressionValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox_contact" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_contact" ErrorMessage="Error" ValidationExpression="[0-9]{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Address:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_address" runat="server" Height="49px" TextMode="MultiLine" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox_address" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox_address" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                User Name:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_uname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox_uname" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox_uname" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_password" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox_password" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox_password" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Confirm Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_cpassword" runat="server" Height="24px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox_cpassword" ErrorMessage="Required Field"></asp:RequiredFieldValidator>--%>
                <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_password" ControlToValidate="TextBox_cpassword" ErrorMessage="password desnot match"></asp:CompareValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox_cpassword" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_password" ControlToValidate="TextBox_cpassword" ErrorMessage="Not matching" ValidationGroup="a"></asp:CompareValidator>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register Teacher" ValidationGroup="a" />
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

