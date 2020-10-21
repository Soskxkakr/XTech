<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="XTech.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Edit Product</h2>
    <div class="row">
        <form id="frmUpload" name="frmUpload" method="post">
            <table class="col-lg-6 table table-bordered table-striped mx-auto w-auto">
                <tr>
                    <td>Image File:</td>
                    <td>
                        <label id="lblImage" runat="server"></label>
                        <p style="color:red">Unable to edit image</p>
                    </td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Category:</td>
                    <td>
                        <asp:DropDownList ID="ddlCategory" runat="server">
                            <asp:ListItem>Headset</asp:ListItem>
                            <asp:ListItem>Laptop</asp:ListItem>
                            <asp:ListItem>Mouse</asp:ListItem>
                            <asp:ListItem>Keyboard</asp:ListItem>
                            <asp:ListItem>Phone</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Stock:</td>
                    <td>
                        <asp:TextBox ID="stock" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td>
                        <asp:TextBox ID="price" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" OnClick="Button1_Click" Text="Confirm" />
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <p class="text-center">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/ViewAllProduct.aspx" CssClass="primary-btn" runat="server">Go back</asp:HyperLink>
    </p>
</asp:Content>
