<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="laptop.aspx.cs" Inherits="ShoppingCart.laptop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image4" runat="server" ImageUrl="~/img/str/buttons/laptop1.jpg" />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" CssClass="table table-striped table-bordered table-hover"
            RepeatColumns="3" >
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>' Visible='false'></asp:Label>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="250px"
                    Width="225px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='~/img/detail.jpg'   PostBackUrl='<%#"productDetail.aspx?pName="+Eval("productName") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            </ItemTemplate>
  </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopingConnectionString1 %>"
            SelectCommand="SELECT [id],[image], [productName] FROM [product] WHERE ([catagory] = @catagory)">
            <SelectParameters>
                <asp:Parameter DefaultValue="laptop" Name="catagory" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</asp:Content>
