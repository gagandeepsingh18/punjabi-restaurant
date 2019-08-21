<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="food.aspx.cs" Inherits="food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="signinn">
   <asp:Button ID="Button1" runat="server" Text="mexican" onclick="Button1_Click" />
      <asp:Button ID="Button2" runat="server" Text="indian" 
        onclick="Button2_Click" />
         <asp:Button ID="Button3" runat="server" Text="italian" 
        onclick="Button3_Click" />

</div>
 

</asp:Content>

