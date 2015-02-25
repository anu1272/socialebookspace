<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InvalidAccess.aspx.cs" Inherits="InvalidAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/404_error.jpg" OnClick="ImageButton1_Click" Height="1200px" style="margin-top: 9px" Width="408px"  />
</asp:Content>

