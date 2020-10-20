<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="XTech.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Contact Form</h2>
    <table class="col-lg-5 mx-auto table table-bordered table-striped text-center">
        <tr>
            <td>First Name</td>
        </tr>
        <tr>
            <td><asp:TextBox ID="txtFirstName" runat="server" Columns="105" /></td>
        </tr>
        <tr>
            <td>Last Name</td>
        </tr>
        <tr>
            <td><asp:TextBox ID="txtLastName" runat="server" Columns="105"/></td>
        </tr>
        <tr>
            <td>Email</td>
        </tr>
        <tr>
            <td><asp:TextBox ID="txtContactEmail" runat="server" Columns="105" TextMode="Email" /></td>
        </tr>
        <tr>
            <td>Subject</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtSubject" TextMode="multiline" Columns="105" Rows="5" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSubmitContact" runat="server" Text="Submit" CssClass="primary-btn" OnClick="btnSubmitContact_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMessageContact" runat="server" Text="" />
            </td>
        </tr>
    </table>
</asp:Content>
