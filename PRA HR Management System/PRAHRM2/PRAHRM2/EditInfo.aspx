<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="EditInfo.aspx.cs" Inherits="PRAHRM2.EditInfo" %>
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
            Edit your information
        </b>

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp

        <asp:Button id="editbutton" runat="server" Text="Cancel" CssClass="buttons" OnClick="cancel_click"/>

        <br />
        <br />
        <br />

        <b> First Name:- </b> <asp:TextBox ID ="firstname" EnableViewState="false" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> Last Name:- </b> <asp:TextBox id="lastname" EnableViewState="false" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> Address:- </b> <asp:TextBox ID ="address" EnableViewState="false" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> E-mail:- </b> <asp:Label ID ="email" EnableViewState="false" CssClass="textboxes" runat="server"></asp:Label> <br /> <br /> <br />
        <b> Gender:- </b> <asp:TextBox ID ="gender" EnableViewState="false" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />

        <br />
        <br />
        <br />

        <asp:Button id="submitbutton" CssClass="buttons" runat="server" Text="Submit" OnClick="submitInfo"/>

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
