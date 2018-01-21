<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PRAHRM2.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="placeHolderDiv" class="container-div" runat="server">

        <br />
        
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <asp:Image ID="home" CssClass="homelogo" runat="server" ImageUrl="images/prarims2.jpg"/>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp

        <b> Mission Statement </b>

        <br />
        <br />
        <br />

        To expedient to reform and modernize the system of taxation, to provide assistance to tax
        payers, to promote compliance with fiscal laws, to establish a progressive and professionally efficient tax management
        organization, and to provide for ancillary matters.

        <br />
        <br />
        <br />

        <b> Job Application Results:- </b> <br />
        'a' means approved, 'r' means rejected, 'i' means in progress <br />

        <asp:Gridview id ="jobs"
            runat="server"
            CssClass="mydatagrid"
            RowStyle-CssClass="rows"
            HeaderStyle-CssClass="header"
            AutoGenerateColumns="true"
            EnableViewState="true"
            ></asp:Gridview>

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
