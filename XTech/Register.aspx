<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="XTech.Register" UnobtrusiveValidationMode="none" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Add User</h2>
    <div class="row">
        <table class="col-lg-6 table table-bordered table-striped mx-auto w-auto">
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 192px; height: 27px;">Username:</td>
                <td style="height: 27px">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="offset-sm-0" Width="292px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required!" ControlToValidate="txtUsername" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 192px; height: 38px">Password:</td>
                <td style="height: 38px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="16" Width="292px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required!" ControlToValidate="txtPassword" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password must between 8 - 16 characters!" ForeColor="#CC3300" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="292px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Required!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Incorrect Email!" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">Gender:</td>
                <td>
                    <asp:RadioButtonList ID="rdbGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">Country:</td>
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
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">User Type</td>
                <td>
                    <asp:DropDownList ID="ddlUserType" runat="server">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Customer</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Clear" />
                </td>
                <td><asp:Label ID="lblMessage" runat="server"></asp:Label></td>
            </tr>
        </table>
    </div>
    <p class ="text-center">
        <asp:HyperLink ID="HomeHL" NavigateUrl="~/Home.aspx" CssClass="primary-btn" runat="server">Home</asp:HyperLink>
    </p>
</asp:Content>
