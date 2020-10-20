<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="XTech.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="about-section text-center">
            <h2 class="text-center">About Us Page</h2>
            <p>Some text about who we are and what we do.</p>
            <p>Resize the browser window to see that this page is responsive by the way.</p>
        </div>
        <h2 style="text-align:center">Our Team</h2>
        <div class="row justify-content-center text-center">
            <div class="column">
                <div class="card">
                    <img src="img/Ahmed_Profile_Pic.jpeg" alt="Ahmed" width="100px" height="100px" class="centered">
                    <div class="container">
                        <h2>Ahmed Al-Omari</h2>
                        <p class="title">CEO & Founder</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>alomri2014@gmail.com</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <img src="/w3images/team2.jpg" alt="Mike" style="width:100%">
                    <div class="container">
                        <h2>Reinaldo</h2>
                        <p class="title">Art Director</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>mike@example.com</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <img src="/w3images/team3.jpg" alt="John" style="width:100%">
                    <div class="container">
                        <h2>Nik Jejit</h2>
                        <p class="title">Designer</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>john@example.com</p>
                    </div>
                 </div>
            </div>
        </div>
    </div>
</asp:Content>
