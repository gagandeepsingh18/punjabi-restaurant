<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="italian.aspx.cs" Inherits="italian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



	<div class="row">
  <div class="column">
    <img src="img_nature.jpg" alt="Nature" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="img_snow.jpg" alt="Snow" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="img_mountains.jpg" alt="Mountains" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="img_lights.jpg" alt="Lights" onclick="myFunction(this);">
  </div>
</div>

<!-- The expanding image container -->
<div class="container">
  <!-- Close the image -->
  <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>

  <!-- Expanded image -->
  <img id="expandedImg" style="width:100%">

  <!-- Image text -->
  <div id="imgtext"></div>
</div>










    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td style="width: 20%">
                    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="topic_name" DataValueField="tid">
                    </asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn<asp:SqlDataSource runat="server"></asp:SqlDataSource>sectionString %>"
                        SelectCommand="SELECT * FROM [Add_dish]"></:SqlDataSource>
                </td>
                <td>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="tid" 
                        DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            tid:
                            <asp:Label ID="tidLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            topic_name:
                            <asp:Label ID="topic_nameLabel" runat="server" 
                                Text='<%# Eval("name") %>' />
                            <br />
                            sub_topic:
                            <asp:Label ID="sub_topicLabel" runat="server" Text='<%# Eval("name") %>' />
                            <br />
                            course_id:
                            <asp:Label ID="course_idLabel" runat="server" Text='<%# Eval("specification") %>' />
                            <br />
                            price:
                            <asp:Label ID="descriptionLabel" runat="server" 
                                Text='<%# Eval("price") %>' />
                            <br />
                            image:
                            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                            <br />
                          
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Add_Dish] WHERE ([id] = @id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ListBox1" Name="tid" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    

</asp:Content>

