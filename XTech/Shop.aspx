<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="XTech.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-7">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>Featured</h2>
                        </div>
                        <div class="row">
                            <div class="product__discount__slider owl-carousel">
                                <%  =SetFeaturedProduct(1) %>
                                <%  =SetFeaturedProduct(3) %>
                                <%  =SetFeaturedProduct(6) %>
                                <%  =SetFeaturedProduct(8) %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
