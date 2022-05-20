<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="mobile.aspx.cs" Inherits="ShoppingCart.mobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/img/str/buttons/phone1.jpg" />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal"
            RepeatColumns="3" CssClass="table table-striped table-bordered table-hover">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>' Visible='false'></asp:Label>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="250px"
                    Width="225px" />&emsp;&emsp;&emsp;&emsp;
                <br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("b") %>'></asp:Label>&emsp;
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("pn") %>'></asp:Label><br />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='~/img/detail.jpg'   PostBackUrl='<%#"productDetail.aspx?pName="+Eval("productName") %>' />
           <br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </ItemTemplate>
  </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopingConnectionString1 %>"
            SelectCommand="SELECT id,image,upper(productName) as pn,productName,upper(brand) as b FROM [product] WHERE ([catagory] = @catagory)">
            <SelectParameters>
                <asp:Parameter DefaultValue="mobile" Name="catagory" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>



</asp:Content>
