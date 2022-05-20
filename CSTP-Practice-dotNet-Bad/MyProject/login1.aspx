<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="ShoppingCart.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    User Name<br />
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ControlToValidate="TextBox1" ErrorMessage="fill usename "></asp:RequiredFieldValidator>
<br />

Password<br />
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ControlToValidate="TextBox2" ErrorMessage="fill password"></asp:RequiredFieldValidator>
<br />
<br />


<asp:ImageButton ID="ImageButton3" runat="server" AlternateText="sign in" 
    onclick="ImageButton3_Click" ImageUrl="~/img/str/buttons/login_button_01.jpg" />


<br />
<asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="false" ImageAlign="Left" ImageUrl="~/reg/register1.png" OnClick="ImageButton1_Click" PostBackUrl="~/reg/Register.aspx" Width="100px" />


<br />
<br />
<asp:Label ID="Label1" runat="server"></asp:Label>


    <br />


    <a href="reg/Password recover.aspx" style={color:red;} >Forgot password</a>

    
</asp:Content>
