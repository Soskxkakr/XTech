<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ViewAll.aspx.cs" Inherits="XTech.ViewAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>View All</h2>
        <table class="w-100" border="1" style="background-color: #FFFFCC">
        <tr style="font-weight: bold;">
            <td style="height: 42px">Username</td>
            <td style="height: 42px">Email</td>
            <td style="height: 42px">Gender</td>
            <td style="height: 42px">Country</td>
            <td style="height: 42px">Edit</td>
        </tr>
        <%=fetchData() %>
    </table>
</asp:Content>
