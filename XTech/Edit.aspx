﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="XTech.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 179px">Username:</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 179px; height: 38px">Password:</td>
            <td style="height: 38px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
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
                <asp:RadioButtonList ID="rdbGender" runat="server">
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
</asp:Content>