<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
    This is Home Page
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g1ConnectionString %>" DeleteCommand="DELETE FROM [sailiu_HW6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [sailiu_HW6] ([Recipe_Name], [Submition_Name]) VALUES (@Recipe_Name, @Submition_Name)" SelectCommand="SELECT [Recipe_Name], [Submition_Name], [ID] FROM [sailiu_HW6]" UpdateCommand="UPDATE [sailiu_HW6] SET [Recipe_Name] = @Recipe_Name, [Submition_Name] = @Submition_Name WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submition_Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submition_Name" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" PageSize="5" Width="343px">
            <Columns>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Submition_Name" HeaderText="Submition Name" SortExpression="Submition_Name" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="Detailview.aspx?ID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
