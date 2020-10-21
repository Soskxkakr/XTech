<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShopCart.aspx.cs" Inherits="XTech.ShopCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-center h1">My Cart</p>      
    <div class="col-lg-12 mt-4">
        <table id="cartTable" class="table table-borderless table-secondary mx-auto w-auto">
            <% =SetUpTable() %>
        </table>

        <div class="d-flex justify-content-center p-3">
            <%  if (Session["currentCart"] != null)
                {%>
                <asp:Button runat="server" ID="btnCheckout" Text="Checkout" CssClass="primary-btn" OnClick="btnCheckout_Click" />
            <%  }%>
        </div>
    </div>
    <div class="d-flex justify-content-center">
        <asp:Label runat="server" CssClass="align h1 m-1" ForeColor="Green" ID="checkOutMessage" />
    </div>
    <script>
        function row(num) {
            document.getElementById("cartTable").deleteRow(num);
        }
    </script>
    <p class ="text-center">
        <asp:HyperLink ID="HomeHL3" NavigateUrl="~/Shop.aspx" CssClass="primary-btn" runat="server">Go back to Shop</asp:HyperLink>
    </p>
</asp:Content>
