<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="XTech.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p>
    LOGIN<table class="w-100">
        <tr>
            <td style="width: 408px; margin-left: 80px">Username:<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 408px">Password:<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>
