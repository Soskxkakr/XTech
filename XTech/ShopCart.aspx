<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShopCart.aspx.cs" Inherits="XTech.ShopCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-center h1">My Cart</p>      
    <div class="col-lg-12 mt-4">
        <table class="table table-borderless table-secondary mx-auto w-auto">
            <% =SetUpTable() %>
        </table>

        <div class="d-flex justify-content-center p-3">
            <%  if (Session["currentCart"] != null)
                {%>
                <asp:Button runat="server" ID="btnCheckout" Text="Checkout" CssClass="primary-btn" OnClick="btnCheckout_Click" />
            <%  }%>
        </div>
    </div>
</asp:Content>
