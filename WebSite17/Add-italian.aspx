<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Add-italian.aspx.cs" Inherits="Add_italian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <div  class="signinn">


				<form >


                <div class="">

              <p><h3> Name of dish</h3></p> 

                <div>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Username Is Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
   
    </div>

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     
    </div>
   

    <div class="">
    <p><h3>specification</h3></p>


   
    <asp:TextBox ID="TextBox2"  runat="server"></asp:TextBox>
    </div>
    <div>
    <p><h3>Price</h3>
        
        </p>
    <div>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Enter Price" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>


    
       
    </div>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </div>

     <div>
    <p><h3>Image</h3>
        
        </p>
         
    <div>
        
    <asp:FileUpload ID="FileUpload1" runat="server" /> 



    
       
    </div>
        
    </div>








                
    <div class="">
    <asp:Button ID="Button1"  runat="server" Text="Register" onclick="Button1_Click" />
    </div>
   
				</form>
    </div>



</asp:Content>

