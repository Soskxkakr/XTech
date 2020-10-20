<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="XTech.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">LOGIN</h2>
    <table class="col-lg-6 table table-bordered table-striped mx-auto w-auto">
        <tr>
            <td style="width: 226px; margin-left: 80px">Username:</td>
            <td><asp:TextBox ID="txtUsername" runat="server" Width="224px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required!" ControlToValidate="txtUsername" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 226px">Password:<br />
            </td>
            <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="224px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required!" ControlToValidate="txtPassword" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 226px">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />    
            </td>
        </tr>
    </table>
    <div class="text-center">
        <a href="Register.aspx" class="primary-btn">Register</a>
        <a href="ForgotPassword.aspx" class="primary-btn">Forgot Password?</a>
    </div>
</asp:Content>
