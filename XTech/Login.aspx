<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="XTech.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    LOGIN<table class="w-100">
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
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required!" ControlToValidate="txtPassword" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 226px">&nbsp;</td>
            <td>
                <asp:Label ID="lblMessage0" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
