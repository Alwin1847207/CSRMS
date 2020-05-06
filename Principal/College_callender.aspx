<%@ Page Title="" Language="C#" MasterPageFile="~/Principal/MasterPage_Principal.master" AutoEventWireup="true" CodeFile="College_callender.aspx.cs" Inherits="Principal_College_callender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
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
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

