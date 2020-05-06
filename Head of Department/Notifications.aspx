<%@ Page Title="" Language="C#" MasterPageFile="~/Head of Department/MasterPage_HOD.master" AutoEventWireup="true" CodeFile="Notifications.aspx.cs" Inherits="Head_of_Department_Notifications" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackColor="#FFFFCC" BorderStyle="Inset" BorderWidth="3" Width="565px" style="margin-left: 193px">
<marquee direction="down"  onmouseover="this.stop()" onmouseout="this.start()" scrolldelay="100" style="height: 127px; width: 457px;">
      <asp:Literal ID="lt2" runat="server"></asp:Literal>
</marquee>
</asp:Panel>
</asp:Content>

