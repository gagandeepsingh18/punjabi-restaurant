<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Review.aspx.cs" Inherits="Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div  class="signinn">

                <div class="">

              <p><h3>Review</h3></p> 

                <div>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Leave review here" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
   
    </div>

                   
    <div class="">
        
    
    </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     
    </div>
   <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />




   </div>


</asp:Content>

