<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addbook.aspx.cs" Inherits="LAB_CSA_2017_2018.addbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblid" runat="server" Text="ID"></asp:Label>
&nbsp;<asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lbltitle" runat="server" Text="Title"></asp:Label>
&nbsp;<asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lbltype" runat="server" Text="Type"></asp:Label>
&nbsp;<asp:TextBox ID="txttype" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblprice" runat="server" Text="Price"></asp:Label>
&nbsp;<asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:library1ConnectionString %>" ProviderName="<%$ ConnectionStrings:library1ConnectionString.ProviderName %>" SelectCommand="SELECT [NameAuthor] FROM [Author]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="author" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NameAuthor" DataValueField="NameAuthor">
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Add" />
            <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" />
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
