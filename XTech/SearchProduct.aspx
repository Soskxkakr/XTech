<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="XTech.SearchProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Search Product</h1>
    <table class="table table-borderless mx-auto w-auto">
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
    <div class="d-flex justify-content-center p-3">
        <asp:Panel ID="Panel1" runat="server" CssClass="col-lg-6 text-center" BorderStyle="Groove">
            <table class="table table-striped">
                <tr>
                    <td>Name</td>
                    <td>Category</td>
                    <td>Price</td>
                    <td>Image</td>
                </tr>
                <%=fetchProduct() %>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
