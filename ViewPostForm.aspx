<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewPostForm.aspx.cs" Inherits="ViewPostForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h3><asp:Label ID="Label1" runat="server" Text="View Post"></asp:Label></h3><br /><br />
    <asp:Label ID="Label10" runat="server" Text="SortBy:"></asp:Label>&nbsp;&nbsp;
    <asp:DropDownList ID="sortByDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sortByDropDownList_SelectedIndexChanged" >
        <asp:ListItem Selected="True">Date</asp:ListItem>
        <asp:ListItem>Subject</asp:ListItem>
        <asp:ListItem>Username</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:ListView ID="postsListView" runat="server">
     <ItemTemplate>
        
         <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
         <asp:Label ID="Label12" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
         <asp:Label ID="Label3" runat="server" Text='<%#Eval("username") %>'></asp:Label><br />
        <asp:Label ID="Label4" runat="server" Text="Date Of Post:"></asp:Label>
         <asp:Label ID="Label5" runat="server" Text='<%#Eval("date") %>'></asp:Label><br />
        <asp:Label ID="Label6" runat="server" Text="Subject:"></asp:Label>
         <asp:Label ID="Label7" runat="server" Text='<%#Eval("subject") %>'></asp:Label><br />
        <asp:Label ID="Label8" runat="server" Text="Post Text:"></asp:Label>
         <asp:Label ID="Label9" runat="server" Text='<%#Eval("post_text") %>'></asp:Label><br />
            
         <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="images/post_reply.gif" Height="15px" Width="80px" PostBackUrl='<%#GetReplyPostURL(Eval("id")) %>'/>
         <br />
        <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="fDeleteButton" runat="server"  Visible='<%#GetDeletableURL(Eval("username")) %>' ImageUrl="images/kuba_icon_delete.png" Height="30px" Width="30px" PostBackUrl='<%#GetDeleteURL(Eval("id")) %>' />
       <br />
         <asp:ListView ID="replyListView" runat="server" DataSource='<%#GetReplyDataTable(Eval("id")) %>'>
             <ItemTemplate>
                 <h2>
                 <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                 <asp:Label ID="Label16" runat="server" Text='<%#Eval("post_id") %>' Visible="false"></asp:Label><br />
                 <asp:Label ID="Label17" runat="server" Text="Username:"></asp:Label>
                 <asp:Label ID="Label18" runat="server" Text='<%#Eval("username") %>'></asp:Label><br />
                 <asp:Label ID="Label19" runat="server" Text="Date Of Reply:"></asp:Label>
                 <asp:Label ID="Label20" runat="server" Text='<%#Eval("date_of_reply") %>'></asp:Label><br />
                 <asp:Label ID="Label21" runat="server" Text="Reply Text:"></asp:Label>
                 <asp:Label ID="Label22" runat="server" Text='<%#Eval("reply_text") %>'></asp:Label><br />
                     </h2>
             </ItemTemplate>
         </asp:ListView>
     <hr />
  </ItemTemplate>
   </asp:ListView>
    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="postsListView" PageSize="5" OnPreRender="DataPager1_PreRender">

        <Fields>
            <asp:NumericPagerField ButtonCount="3" NextPageText="Next" PreviousPageText="Previous" />
        </Fields>

    </asp:DataPager>



   </asp:Content>

