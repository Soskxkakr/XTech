<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="XTech.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Register</h2>
    <div class="row">
        <table class="col-lg-6 table table-bordered table-striped mx-auto w-auto">
            <tr>
                <td style="width: 210px">Username:</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 210px; height: 38px">Password:</td>
                <td style="height: 38px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
                    <tr>
                <td style="width: 210px; height: 38px">Retype Password:</td>
                <td style="height: 38px">
                    <asp:TextBox ID="txtRpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 210px">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 210px">Gender:</td>
                <td>
                    <asp:RadioButtonList ID="rdbGender" runat="server">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 210px">Country:</td>
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
                <td style="width: 210px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
