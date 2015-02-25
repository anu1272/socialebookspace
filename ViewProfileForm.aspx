<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewProfileForm.aspx.cs" Inherits="ViewProfileForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="profileListView" runat="server"  >
        <ItemTemplate>
            <div><asp:Image ID="displayImage" runat="server" Height="70px" Width="70px" ImageUrl='<%#GetUserImagePath(Eval("image_name")) %>'/><div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("first_name") %>'></asp:Label>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("last_name") %>'></asp:Label>
            <br /><br />
            <asp:Label ID="Label3" runat="server" Text="Sex:"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text='<%#Eval("sex") %>'>'></asp:Label>
            <br /><br />
            <asp:Label ID="Label6" runat="server" Text="Designation:"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text='<%#Eval("designation") %>'>'></asp:Label>
            <br /><br />
            <asp:Label ID="Label8" runat="server" Text="Date Of Birth:"></asp:Label>
            <asp:Label ID="Label9" runat="server" Text='<%#Eval("date_of_birth") %>'>'></asp:Label>
            <br /><br />
            <br /><br />
            </ItemTemplate>
    </asp:ListView>
</asp:Content>

