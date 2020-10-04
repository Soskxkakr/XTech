<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="XTech.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Register</h2>
    <div class="row">
        <form id="frmUpload" name="frmUpload" method="post">
            <table class="col-lg-6 table table-bordered table-striped mx-auto w-auto">
                <tr>
                    <td>Image File:</td>
                    <td>
                        <asp:FileUpload ID="imageUpload" runat="server" width="359"/>
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
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                    </td>
                </tr>
            </table>
        </form>
        
    </div>
</asp:Content>
