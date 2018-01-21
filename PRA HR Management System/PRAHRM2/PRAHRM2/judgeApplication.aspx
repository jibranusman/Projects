<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="judgeApplication.aspx.cs" Inherits="PRAHRM2.judgeApplication" %>
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
            Judge Application
        </b>

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp

        <asp:Button id="editbutton" runat="server" Text="Cancel" CssClass="buttons" OnClick="cancel"/>

        <br />
        <br />
        <br />

        <b> UserID:- </b> <asp:Label ID="ud" runat="server"></asp:Label> <br />
        <b> Job:- </b> <asp:Label ID="ina" runat="server"></asp:Label> <br />

        <br />
        <br />
        <br />

        <asp:DropDownList ID ="dd" runat="server" CssClass="dropDownLists">

            <asp:ListItem Text="Rejected" Value ="0"></asp:ListItem>
            <asp:ListItem Text="Accepted" Value="1"></asp:ListItem>

        </asp:DropDownList>

        <br />
        <br />

        <asp:Button CssClass="buttons" runat="server" Text="Submit" OnClick="submit"/>
        
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
