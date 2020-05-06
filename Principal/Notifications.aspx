<%@ Page Title="" Language="C#" MasterPageFile="~/Principal/MasterPage_Principal.master" AutoEventWireup="true" CodeFile="Notifications.aspx.cs" Inherits="Principal_Notifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackColor="#CCFFCC" BorderStyle="Inset" BorderWidth="3" Width="611px" style="margin-left: 164px" Height="211px">
<marquee direction="down"  onmouseover="this.stop()" onmouseout="this.start()" scrolldelay="100" style="height: 210px; width: 609px; margin-left: 2px;">
      <asp:Literal ID="lt2" runat="server"></asp:Literal>
</marquee>
</asp:Panel>
</asp:Content>

