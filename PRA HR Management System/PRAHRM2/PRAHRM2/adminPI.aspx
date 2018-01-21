<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="adminPI.aspx.cs" Inherits="PRAHRM2.adminPI" %>
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
            Employee Profile
        </b>

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            
        <asp:Button id="buttons" runat="server" Text="Edit" CssClass="buttons" OnClick="buttons_Click"/>

        <br />
        <br />
        <br />

        <b> Name:- &nbsp </b> <br /> <asp:Label ID ="name" runat="server"></asp:Label> <br /> <br />
        <b> Address:- &nbsp </b> <br /> <asp:Label ID ="address" runat="server"></asp:Label> <br /> <br />
        <b> Role:- &nbsp </b> <br /> <asp:Label ID ="role" runat="server"></asp:Label> <br /> <br />
        <b> E-mail:- &nbsp </b> <br /> <asp:Label ID ="email" runat="server"></asp:Label> <br /> <br />
        <b> Gender:- &nbsp </b> <br /> <asp:Label ID ="gender" runat="server"></asp:Label> <br /> <br />

        <br />
        <br />
        <br />

        <br />
        <br />
        <br />

        
        <asp:Button id="useredit" runat="server" Text="Edit Users" CssClass="buttons" onclick="editUsers"/>

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp

        <asp:Button id="addinfobutton" CssClass="buttons" runat="server" Text="Add New User" OnClick="addInfo"/>

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
