<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="adminWH.aspx.cs" Inherits="PRAHRM2.adminWH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="placeHolderDiv" class="container-div" runat="server">

        <br />
        <br />
        <br />

        <b> 
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            Working Hours
        </b>

        <br />
        <br />
        <br />

        Search for users via first name:- <br />
        <asp:TextBox ID="searchresult" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br />
        <asp:Button id="searchbutton" CssClass="buttons" Text="Search" runat="server" OnClick="searchUsers"/>

        <br />
        <br />
        <br />

        <asp:GridView
            ID="searchgrid"
            runat="server"
            AutoGenerateColumns="true"
            AutoGenerateSelectButton="true"
            EnableViewState="false"
            CssClass="mydatagrid"
            HeaderStyle-CssClass="header"
            OnSelectedIndexChanging="selectUser"
            RowStyle-CssClass="rows"
            DataKeyNames="userID"
            ></asp:GridView>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            
        © 2017 - Punjab Revenue Authority

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>

</asp:Content>
