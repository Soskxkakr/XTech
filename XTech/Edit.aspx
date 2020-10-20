<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="XTech.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="h2 text-center">Edit</p>
    <table class="col-lg-3 mx-auto table table-bordered table-striped">
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
            <td style="width: 179px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click1" Text="Edit" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click1" Text="Delete" />
            </td>
        </tr>
    </table>
    <p class="text-center">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/ViewAll.aspx" CssClass="primary-btn" runat="server">Go back</asp:HyperLink>
    </p>
</asp:Content>
