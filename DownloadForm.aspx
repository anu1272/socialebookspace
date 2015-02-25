<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DownloadForm.aspx.cs" Inherits="DownloadForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText="no files uploaded">
        <Columns>
            <asp:BoundField DataField="Text" HeaderText="File Name" />
            <asp:TemplateField>
                <ItemTemplate>
                <asp:ImageButton ID="linkDownload" runat="server" CommandArgument='<%#Eval("value") %>' OnClick="DownloadFile" ImageUrl="images/Download_button.png" Width="75 px" Height="25px"/>
                </ItemTemplate>
            </asp:TemplateField>
              </Columns>
         </asp:GridView>
    </asp:Content>

