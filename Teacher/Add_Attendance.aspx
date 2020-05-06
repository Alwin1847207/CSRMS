<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="Add_Attendance.aspx.cs" Inherits="Teacher_Add_Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 138px;
        }
    .auto-style3 {
        width: 138px;
        height: 24px;
    }
    .auto-style4 {
        height: 24px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Date :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_date" runat="server" Width="209px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Batch :"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList_batch" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList_batch_SelectedIndexChanged">
                    <asp:ListItem Value="1">I Year</asp:ListItem>
                    <asp:ListItem Value="2">II Year</asp:ListItem>
                    <asp:ListItem Value="3">III Year</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList_batch" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Semester :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_sem" runat="server" AutoPostBack="True" Height="27px" OnSelectedIndexChanged="DropDownList_sem_SelectedIndexChanged" Width="219px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList_sem" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Department :"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList_dep" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_dep_SelectedIndexChanged" Width="218px" Height="29px">
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList_dep" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Subject :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_subject" runat="server" AutoPostBack="True" Height="28px" OnSelectedIndexChanged="DropDownList_subject_SelectedIndexChanged" Width="217px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList_subject" ErrorMessage="Required Field" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView_attendance" runat="server" AutoGenerateColumns="False" DataKeyNames="sid" CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" Width="387px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:RadioButtonList ID="RadioButtonList2" runat="server"
                                     AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal" Width="191px">
                                    <asp:ListItem>Present</asp:ListItem>
                                    <asp:ListItem>Absent</asp:ListItem>
                                </asp:RadioButtonList>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="186px">
                                    <asp:ListItem>Present</asp:ListItem>
                                    <asp:ListItem>Absent</asp:ListItem>
                                </asp:RadioButtonList>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Attendance" ValidationGroup="a" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

