<%@ Page Title="" Language="C#" MasterPageFile="~/Head of Department/MasterPage_HOD.master" AutoEventWireup="true" CodeFile="College_Callender.aspx.cs" Inherits="Head_of_Department_College_Callender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {}
        .auto-style6 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:GridView ID="GridView1" runat="server" Height="190px" Width="395px" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="year" HeaderText="Year" />
                        <asp:TemplateField HeaderText="Callender">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                                    ImageUrl="~/UplodedContents/images/pdf.png" OnClick="ImageButton1_Click" Width="36px"
                                     CommandArgument='<%# Eval("filename") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:Image ID="Image1" runat="server" Height="42px" ImageUrl="~/UplodedContents/images/pdf.png" Width="71px" />
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2" rowspan="6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

