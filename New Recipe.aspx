<%@ Page Language="VB" AutoEventWireup="false" CodeFile="New Recipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Recipe</title>
   <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
      <header>Wicked Easy Recipes</header>
    <h1>Using 5 Ingredients or Less!</h1>
    <h2> <a href="./default.aspx">Home Page</a>
    <a href="./New Recipe.aspx">New Recipe</a>
    <a href="./About us.aspx">About Us</a>
    <a href="./Contact us.aspx">Contact Us</a></h2>
    <form id="form1" runat="server">
    
        <div class="table">
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" DeleteCommand="DELETE FROM [sailiu_HW6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [sailiu_HW6] ([Recipe_Name], [Submition_Name], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Note]) VALUES (@Recipe_Name, @Submition_Name, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Note)" SelectCommand="SELECT * FROM [sailiu_HW6]" UpdateCommand="UPDATE [sailiu_HW6] SET [Recipe_Name] = @Recipe_Name, [Submition_Name] = @Submition_Name, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Note] = @Note WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submition_Name" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submition_Name" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            
            <InsertItemTemplate>
                <tr>
                    <td>
                        Recipe Name:
                    </td>
                    <td>
                      
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                      
                      
                        <asp:TextBox ID="Recipe_NameTextBox" runat="server" Text='<%# Bind("Recipe_Name") %>' />

                    </td>
                </tr>
              
                <tr>
                    <td>
                        Submition Name:
                    </td>
                    <td>
                      
                     
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Submition_Name") %>' />
                       
                    </td>

                </tr>
                <tr>
                    <td>
                         Ingredient 1:
                    </td>
                    <td>
                
                             
                              <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                            
                    </td>

                </tr>
                <tr>
                    <td>
                         Ingredient 2:
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                    </td>

                </tr>
                <tr>
                    <td>
                        Ingredient 3:
                    </td>
                    <td>
                          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                    </td>

                </tr>
                <tr>
                    <td>
                         Ingredient 4:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                    </td>

                </tr>
                <tr>
                    <td>
                         Ingredient 5:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                    </td>

                </tr>
                 <tr>
                    <td>
                         Preparation:
                    </td>
                    <td>
                      
                         <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Preparation") %>' />
                    </td>

                </tr>
                 <tr>
                    <td>
                         Note:
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Note") %>' />
                    </td>

                </tr>
                 <tr>
                    <td>
                         <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>

                </tr>
               
            </InsertItemTemplate>
            
        </asp:FormView>
   
    </div>
    </form>
</body>
</html>
