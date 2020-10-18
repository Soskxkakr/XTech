<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ViewAllProduct.aspx.cs" Inherits="XTech.ViewAllProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">View All Product</h2>
    <div class="row">
        <table class="col-lg-7 table table-bordered table-striped mx-auto w-auto text-center" border="1" style="background-color: #f1cdcd">
            <tr style="font-weight: bold;">
                <td style="height: 42px">Image</td>
                <td style="height: 42px">Product Name</td>
                <td style="height: 42px">Category</td>
                <td style="height: 42px">Stock</td>
                <td style="height: 42px">Price</td>
                <td style="height: 42px">Edit</td>
            </tr>
            <%=fetchData() %>
        </table>
    </div>
</asp:Content>
