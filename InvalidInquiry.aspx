<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InvalidInquiry.aspx.cs" Inherits="InvalidInquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>
        <asp:Label ID="Label1" runat="server" Text="Invalid Inquiry!!!"></asp:Label>
    </h3><br /><br />
    <asp:Button ID="fOkeyButton" runat="server" Text="Okey" OnClick="fOkeyButton_Click" />

</asp:Content>

