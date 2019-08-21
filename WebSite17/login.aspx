<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="signinn">

				<form >
                <div class="">
              <p><h3>Username</h3></p> 
                <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Username Is Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     
    </div>
   

    <div class="">
    <p><h3>Password</h3></p>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Password is Required" ControlToValidate="TextBox2" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <asp:TextBox ID="TextBox2"  runat="server" TextMode="Password"></asp:TextBox>
    </div>
                
    <div class="">
    <asp:Button ID="Button1"  runat="server" Text="login" onclick="Button1_Click" />
    </div>
    <div> 
    
    
    
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
        <br />
                </div>
   
				</form>
    </div>
</asp:Content>

