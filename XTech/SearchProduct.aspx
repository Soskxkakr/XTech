<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="XTech.SearchProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Search Product</h1>
    <table class="w-100">
        <tr>
            <td>Product Name:</td>
            <td>
                <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table class="w-100" border="1">
            <tr style=""font-weight: bold;">
                <td>Name</td>
                <td>Category</td>
                <td>Price</td>
                <td>Image</td>
            </tr>
            <%=fetchProduct() %>
        </table>
    </asp:Panel>
    <br />
</asp:Content>
