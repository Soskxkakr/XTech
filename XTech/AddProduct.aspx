<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="XTech.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Add Product</h2>
    <div class="row">
        <form id="frmUpload" name="frmUpload" method="post">
            <table class="col-lg-6 table table-bordered table-striped mx-auto w-auto">
                <tr>
                    <td style="width: 267px">Image File:</td>
                    <td>
                        <asp:FileUpload ID="imageUpload" runat="server" width="359"/>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px">Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px">Category:</td>
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
                    <td style="height: 39px; width: 267px">Stock:</td>
                    <td style="height: 39px">
                        <asp:TextBox ID="stock" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px">Price:</td>
                    <td>
                        <asp:TextBox ID="price" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 267px">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Add Product" />
                        <asp:Label ID="lblMessage" runat="server" ForeColor="#00CC00"></asp:Label>
                    </td>
                </tr>
            </table>
        </form>       
    </div>
    <p class="text-center">
        <asp:HyperLink ID="HLAddprod" runat="server" NavigateUrl="~/AddProduct.aspx" CssClass="primary-btn">Add Another Product</asp:HyperLink>
    </p>          
</asp:Content>
