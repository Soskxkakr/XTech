<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="XTech.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Search</h2>
    <div class="row">
        <div class="mx-auto">
            <div class="d-inline-block h4">Username:</div>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btn-block" />
        </div>
    </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="col-lg-6 mt-3 table table-bordered table-striped mx-auto">
            <tr>
                <td style="width: 179px">Username:</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">Gender:</td>
                <td>
                    <asp:RadioButtonList ID="rdbGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">Country:</td>
                <td>
                    <asp:DropDownList ID="ddlcountry" runat="server">
                        <asp:ListItem>Malaysia</asp:ListItem>
                        <asp:ListItem>Yemen</asp:ListItem>
                        <asp:ListItem>Africa</asp:ListItem>
                        <asp:ListItem>North America</asp:ListItem>
                        <asp:ListItem>Europe</asp:ListItem>
                        <asp:ListItem>South America</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">User Type:</td>
                <td>
                    <asp:DropDownList ID="ddlUserType" runat="server">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Customer</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit" />
                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p class="text-center m-4">
        <asp:Label ID="lblMessage" runat="server" Text=""  CssClass="h4"/>
    </p>
    <p class ="text-center">
        <asp:HyperLink ID="HomeHL6" NavigateUrl="~/Home.aspx" CssClass="primary-btn" runat="server">Home</asp:HyperLink>
    </p>
</asp:Content>
