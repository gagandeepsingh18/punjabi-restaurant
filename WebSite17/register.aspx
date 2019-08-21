<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div  class="signinn">


				<form >


                <div class="">

              <p><h3>First Name</h3></p> 

                <div>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Username Is Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
   
    </div>

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     
    </div>
   

    <div class="">
    <p><h3>Last Name</h3></p>


    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Password is Required" ControlToValidate="TextBox2" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
   
    <asp:TextBox ID="TextBox2"  runat="server"></asp:TextBox>
    </div>
    <div>
    <p><h3>Email Adress</h3>
        
        </p>
    <div>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Email is required" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>


    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Enter a valid email" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
       
       
    </div>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </div>





    <div>
    <p><h3>Confirm Email Adress</h3></p>
    <div>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Email address does not match" ControlToCompare="TextBox3" 
            ControlToValidate="TextBox4" ForeColor="Red"></asp:CompareValidator>
       
    </div>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </div>


    
    <div>

    </div>




    <div>
    <p><h3>Password</h3>&nbsp;</p>
    <div>
       
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
       
       
    </div>
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
    </div>






    <div>
    <p><h3>Confirm Password</h3>&nbsp;</p>
    <div>
       
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Password Required" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
            ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
    </div>
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
    </div>




                
    <div class="">
    <asp:Button ID="Button1"  runat="server" Text="Register" onclick="Button1_Click" />
    </div>
   
				</form>
    </div>

</asp:Content>

