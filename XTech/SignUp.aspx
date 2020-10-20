<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="XTech.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 class="text-center">SignUp</h2>
    <div class="row">
        <table class="col-lg-6 table table-bordered table-striped mx-auto w-auto">
            <tr>
                <td style="width: 359px">Username:</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required!" ControlToValidate="txtUsername" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 359px; height: 38px">Password:</td>
                <td style="height: 38px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="16"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password must between 8 - 16 characters!" ForeColor="#CC3300" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
                    <tr>
                <td style="width: 359px; height: 38px">Retype Password:</td>
                <td style="height: 38px">
                    <asp:TextBox ID="txtRpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtRpassword" ControlToValidate="txtPassword" EnableClientScript="False" ErrorMessage="*Password Not Matching!" ForeColor="#CC3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 359px">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Required!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Incorrect Email!" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 359px">Gender:</td>
                <td>
                    <asp:RadioButtonList ID="rdbGender" runat="server">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 359px">Country:</td>
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
                <td style="width: 359px">User Type</td>
                <td>
                    <asp:DropDownList ID="ddlUserType" runat="server">
                        <asp:ListItem>Customer</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 359px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;<asp:Button ID="btnSignup" runat="server" OnClick="btnSignup_Click" Text="Signup" />
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click1" Text="Clear" />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
