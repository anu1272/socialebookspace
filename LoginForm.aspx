<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h3>
        <asp:Label ID="Label1" runat="server" Text="Authenticate Yourself"></asp:Label>
    </h3>
    <br /><br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:Login ID="fLoginControl" runat="server" DestinationPageUrl="~/Homepage.aspx" DisplayRememberMe="False" OnAuthenticate="Login1_Authenticate" BackColor="Maroon" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" Height="109px" Width="260px" ForeColor="White">
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    </asp:Login><br />
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <img src="images/login_loader.gif" alt="" />
                </ProgressTemplate>
            </asp:UpdateProgress>
            </ContentTemplate>
        </asp:UpdatePanel>
    <br />

    <b><i>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUpForm.aspx">You don't have an account yet?Register here.</asp:HyperLink>
        </i></b>
</asp:Content>

