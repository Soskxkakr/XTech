<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ViewAll.aspx.cs" Inherits="XTech.ViewAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h2 class="text-center">View All</h2>
       <div class="row">  
       <table class="col-lg-6 table table-bordered table-striped mx-auto w-auto" border="1" style="background-color: #f1cdcd">
            <tr style="font-weight: bold;">
                <td style="height: 42px">Username</td>
                <td style="height: 42px">Email</td>
                <td style="height: 42px">Gender</td>
                <td style="height: 42px">Country</td>
                <td style="height: 42px">User Type</td>
                <td style="height: 42px">Edit</td>
            </tr>
            <% =fetchData() %>
        </table>
    </div>
</asp:Content>
