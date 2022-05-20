﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="default.aspx.cs" Inherits="ShoppingCart._default"  %>
   

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" EnableViewState="false">
    <table width=100%>
    <tr><th><asp:Image ID="Image4" runat="server" ImageUrl="~/img/str/buttons/laptop1.jpg" /></th>
    <th><asp:Image ID="Image3" runat="server" ImageUrl="~/img/str/buttons/car2.jpg" /></th>
    <th><asp:Image ID="Image2" runat="server" ImageUrl="~/img/str/buttons/phone1.jpg" /></th></tr>
    <tr><td><%--<asp:Image ID="Image4" runat="server" ImageUrl="~/img/str/buttons/lap.bmp" />--%>
    
        <asp:DataList ID="DataList1"  runat="server" DataSourceID="SqlDataSource1" 
            onitemdatabound="sd" EnableViewState="False" 
            CssClass="table table-striped table-bordered table-hover" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="8" GridLines="Both"  >
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemStyle BackColor="White" ForeColor="#003399" />
            <ItemTemplate>
                
                <asp:Image ID="Image1" runat="server"   ImageUrl='<%# Eval("image") %>' Height="250px" Width="250px" />
                &emsp;&emsp;<br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("b") %>' />&emsp;
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("p") %>' /> <br />
               <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='~/img/detail.jpg'   PostBackUrl='<%#"productDetail.aspx?pName="+Eval("productName") %>' />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopingConnectionString1 %>"
            
            SelectCommand="SELECT top 3 id,upper(productName) as p,productName,upper(brand) as b,image FROM [product] WHERE ([catagory] = @catagory)">
            <SelectParameters>
                <asp:Parameter DefaultValue="laptop" Name="catagory" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/laptop.aspx" BackColor="#BBFFFF">CLICK TO SEE ALL LAPTOPS</asp:HyperLink>
    </td>
    <!-- pnel 2 start here -->
   <td><%--<asp:Image ID="Image3" runat="server" ImageUrl="~/img/str/buttons/car.bmp" />--%>
   
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" CssClass="table table-striped table-bordered table-hover" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="8" GridLines="Both">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemStyle BackColor="White" ForeColor="#003399" />
            <ItemTemplate>
                <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="250px"
                    Width="225px" />
                <br />
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />--%>
                 <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("image") %>' Height="250px" Width="250px" />
                &emsp;&emsp;<br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("b") %>' />&emsp;
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("p") %>' /> <br />
               <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='~/img/detail.jpg'   PostBackUrl='<%#"productDetail.aspx?pName="+Eval("productName") %>' />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:shopingConnectionString1 %>"
            SelectCommand="SELECT top 3 id,upper(productName) as p,productName,upper(brand) as b,image FROM [product] WHERE ([catagory] = @catagory)">
            <SelectParameters>
                <asp:Parameter DefaultValue="car" Name="catagory" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/car.aspx" BackColor="#BBFFFF">CLICK TO SEE ALL CARS</asp:HyperLink>
    </td>
    <td><%--<asp:Image ID="Image2" runat="server" ImageUrl="~/img/str/buttons/mob.bmp" />--%>
    
        <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" 
            CssClass="table table-striped table-bordered table-hover" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="8" GridLines="Both">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <ItemStyle BackColor="White" ForeColor="#003399" />
            <ItemTemplate>
                <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="250px"
                    Width="225px" />
                <br />
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />--%>
                 <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("image") %>' Height="250px" Width="250px" />
                &emsp;&emsp;<br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("b") %>' />&emsp;
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("p") %>' /> <br />
               <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='~/img/detail.jpg'   PostBackUrl='<%#"productDetail.aspx?pName="+Eval("productName") %>' />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:shopingConnectionString1 %>"
            SelectCommand="SELECT top 3 id,upper(productName) as p,productName,upper(brand) as b,image FROM [product] WHERE ([catagory] = @catagory)">
            <SelectParameters>
                <asp:Parameter DefaultValue="mobile" Name="catagory" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/mobile.aspx" BackColor="#BBFFFF">CLICK TO SEE ALL MOBILES</asp:HyperLink>
        <br />
    </td>
    </tr></table>
</asp:Content>
