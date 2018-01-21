<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="AddNewUser.aspx.cs" Inherits="PRAHRM2.AddNewUser" %>
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
            Add new user
        </b>

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp    

        <asp:Button id="buttons" runat="server" Text="Cancel" CssClass="buttons" OnClick="cancel"/>

        <br />
        <br />
        <br />

        <b> First Name:- </b> <asp:TextBox ID="fname" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> Last Name:- </b> <asp:TextBox ID="lname" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> E-mail:- </b> <asp:TextBox ID="em" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> Address:- </b> <asp:TextBox ID="add" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> Gender:- </b> <asp:TextBox ID="gen" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> Password:- </b> <asp:TextBox ID="pswd" TextMode="Password" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> Confirm password:- </b> <asp:TextBox ID="rpswd" TextMode="Password" CssClass="textboxes" runat="server"></asp:TextBox> <br /> <br /> <br />
        <b> Role:- </b>
        
        <asp:DropDownList ID="rle" CssClass="dropDownLists" runat="server">

            <asp:ListItem Text="Select Role" Value="0"></asp:ListItem>
            <asp:ListItem Text="User" Value="1"></asp:ListItem>
            <asp:ListItem Text="Administrator" Value="2"></asp:ListItem>
            <asp:ListItem Text="Super Administrator" Value="3"></asp:ListItem>

        </asp:DropDownList> <br /> <br /> <br />

        <br />
        <br />
        <br />

        <asp:Button ID="submitbutton" runat="server" CssClass="buttons" Text="Submit" OnClick="addNewUser"/>

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
