<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Detailview.aspx.vb" Inherits="reciper_incert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe Insert</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <header>Wicked Easy Recipes</header>
    <h1>Using 5 Ingredients or Less!</h1>
    <h2> <a href="./default.aspx">Home Page</a>
    <a href="./New Recipe.aspx">New Recipe</a>
    <a href="./About us.aspx">About Us</a>
    <a href="./Contact us.aspx">Contact Us</a></h2>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" DeleteCommand="DELETE FROM [sailiu_HW6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [sailiu_HW6] ([Recipe_Name], [Submition_Name], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Note]) VALUES (@Recipe_Name, @Submition_Name, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Note)" SelectCommand="SELECT * FROM [sailiu_HW6] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [sailiu_HW6] SET [Recipe_Name] = @Recipe_Name, [Submition_Name] = @Submition_Name, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Note] = @Note WHERE [ID] = @ID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Recipe_Name:
                <asp:TextBox ID="Recipe_NameTextBox" runat="server" Text='<%# Bind("Recipe_Name") %>' />
                <br />
                Submition_Name:
                <asp:TextBox ID="Submition_NameTextBox" runat="server" Text='<%# Bind("Submition_Name") %>' />
                <br />
                Ingredient_1:
                <asp:TextBox ID="Ingredient_1TextBox" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                <br />
                Ingredient_2:
                <asp:TextBox ID="Ingredient_2TextBox" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                <br />
                Ingredient_3:
                <asp:TextBox ID="Ingredient_3TextBox" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                <br />
                Ingredient_4:
                <asp:TextBox ID="Ingredient_4TextBox" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                <br />
                Ingredient_5:
                <asp:TextBox ID="Ingredient_5TextBox" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                <br />
                Preparation:
                <asp:TextBox ID="PreparationTextBox" runat="server" Text='<%# Bind("Preparation") %>' />
                <br />
                Note:
                <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
               
                Recipe_Name:
                <asp:TextBox ID="Recipe_NameTextBox" runat="server" Text='<%# Bind("Recipe_Name") %>' />
                <br />
                Submition_Name:
                <asp:TextBox ID="Submition_NameTextBox" runat="server" Text='<%# Bind("Submition_Name") %>' />
                <br />
                Ingredient_1:
                <asp:TextBox ID="Ingredient_1TextBox" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                <br />
                Ingredient_2:
                <asp:TextBox ID="Ingredient_2TextBox" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                <br />
                Ingredient_3:
                <asp:TextBox ID="Ingredient_3TextBox" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                <br />
                Ingredient_4:
                <asp:TextBox ID="Ingredient_4TextBox" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                <br />
                Ingredient_5:
                <asp:TextBox ID="Ingredient_5TextBox" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                <br />
                Preparation:
                <asp:TextBox ID="PreparationTextBox" runat="server" Text='<%# Bind("Preparation") %>' />
                <br />
                Note:
                <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
               
            </InsertItemTemplate>
            <ItemTemplate>
              
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Recipe_Name:
                <asp:Label ID="Recipe_NameLabel" runat="server" Text='<%# Bind("Recipe_Name") %>' />
                <br />
                Submition_Name:
                <asp:Label ID="Submition_NameLabel" runat="server" Text='<%# Bind("Submition_Name") %>' />
                <br />
                Ingredient_1:
                <asp:Label ID="Ingredient_1Label" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                <br />
                Ingredient_2:
                <asp:Label ID="Ingredient_2Label" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                <br />
                Ingredient_3:
                <asp:Label ID="Ingredient_3Label" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                <br />
                Ingredient_4:
                <asp:Label ID="Ingredient_4Label" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                <br />
                Ingredient_5:
                <asp:Label ID="Ingredient_5Label" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                <br />
                Preparation:
                <asp:Label ID="PreparationLabel" runat="server" Text='<%# Bind("Preparation") %>' />
                <br />

                Note:
                <asp:Label ID="NoteLabel" runat="server" Text='<%# Bind("Note") %>' />
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                
            </ItemTemplate>
        </asp:FormView>
    </form>
    
</body>
</html>
