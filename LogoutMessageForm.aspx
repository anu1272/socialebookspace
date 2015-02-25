<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogoutMessageForm.aspx.cs" Inherits="LogoutMessageForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>
        <asp:Label ID="Label1" runat="server" Text="You have successfully been logged-out"></asp:Label>
    </h3><br />
    <asp:Button ID="fOkeyButton" runat="server" Text="Okey" OnClick="fOkeyButton_Click" />
    <br /><br />
    <br />
    <br />
    <br /><br />
    <br />
    <br />
</asp:Content>

