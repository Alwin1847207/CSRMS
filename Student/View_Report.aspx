<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage_Student.master" AutoEventWireup="true" CodeFile="View_Report.aspx.cs" Inherits="Student_View_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {}
        .auto-style3 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="margin-left: 23px; margin-right: 72px; margin-top: 39px;" Width="1070px">

    <table class="nav-justified">
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style3">Name: </td>
        <td class="auto-style7">
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style5">Email:</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">Contact Student:</td>
        <td>
            <asp:Label ID="Label12" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Semester:</td>
        <td class="auto-style8">
            <asp:Label ID="Label9" runat="server"></asp:Label>
        </td>
        <td class="auto-style6">Contact Parent:</td>
        <td class="auto-style2">
            <asp:Label ID="Label13" runat="server"></asp:Label>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style4">Admission Number:</td>
        <td class="auto-style8">
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style6">Address:</td>
        <td class="auto-style2">
            <asp:Label ID="Label14" runat="server"></asp:Label>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style3">Gender:</td>
        <td class="auto-style7">
            <asp:Label ID="Label10" runat="server"></asp:Label>
        </td>
        <td class="auto-style5">User Name:</td>
        <td>
            <asp:Label ID="Label15" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Photo:</td>
        <td class="auto-style7">
            <asp:Image ID="Image1" runat="server" Height="60px" Width="64px" ImageUrl="~/Admin/image/person-icon.png" />
        </td>
        <td class="auto-style5">Password:</td>
        <td>
            <asp:Label ID="Label16" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Date of Birth:</td>
        <td class="auto-style7">
            <asp:Label ID="Label11" runat="server"></asp:Label>
        </td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style8"></td>
        <td class="auto-style6"></td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style3">internal Mark&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">I st Internal Exam&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="subjectname" HeaderText="SUBJECT" />
                    <asp:BoundField DataField="sem" HeaderText="SEMESTER" />
                    <asp:BoundField DataField="maxmark" HeaderText="MAXMARK" />
                    <asp:BoundField DataField="mark" HeaderText="MARK" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="subjectname" HeaderText="SUBJECT" />
                    <asp:BoundField DataField="mark" HeaderText="MARK" />
                    <asp:BoundField DataField="max_mark" HeaderText="MAX MARK" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">II internal Exam&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style8"></td>
        <td class="auto-style6"></td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="subjectname" HeaderText="SUBJECT" />
                    <asp:BoundField DataField="mark" HeaderText="MARK" />
                    <asp:BoundField DataField="max_mark" HeaderText="MAX MARK" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">total hours absent</td>
        <td class="auto-style2">
            <asp:Label ID="Label17" runat="server"></asp:Label>
        </td>
        <td class="auto-style2" colspan="2" rowspan="4">
            <asp:GridView ID="GridView4" runat="server">
            </asp:GridView>
        </td>
        <td class="auto-style2"></td>
    </tr>
        <tr>
            <td class="auto-style3">total working hours</td>
            <td class="auto-style7">
                <asp:Label ID="Label18" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">total working days</td>
            <td class="auto-style7">
                <asp:Label ID="Label19" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">total absent days</td>
            <td class="auto-style7">
                <asp:Label ID="Label20" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PRINT" />
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
</table>

    </asp:Panel>

</asp:Content>

