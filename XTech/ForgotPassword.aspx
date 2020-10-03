<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="XTech.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h3>Forgot Password</h3>
<table class="w-100">
    <tr>
        <td style="width: 225px">Email:</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="offset-sm-0" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 225px">&nbsp;</td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
