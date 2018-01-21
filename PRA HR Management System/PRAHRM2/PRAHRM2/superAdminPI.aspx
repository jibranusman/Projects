<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="superAdminPI.aspx.cs" Inherits="PRAHRM2.superAdminPI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="placeHolderDiv" class="container-div" runat="server">

        Name:- &nbsp <asp:Label ID ="name" runat="server"></asp:Label> <br />
        Address:- &nbsp <asp:Label ID ="address" runat="server"></asp:Label> <br />
        Role:- &nbsp <asp:Label ID ="role" runat="server"></asp:Label> <br />
        E-mail:- &nbsp <asp:Label ID ="email" runat="server"></asp:Label> <br />
        Gender:- &nbsp <asp:Label ID ="gender" runat="server"></asp:Label> <br />

    </div>

</asp:Content>
