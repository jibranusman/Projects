<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="PRAHRM2.Apply" %>
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
            Application 
        </b>

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        
        <asp:Button id="buttons" runat="server" Text="Cancel" CssClass="buttons" OnClick="cancel"/>

        <br />
        <br />
        <br />

        <asp:Label ID="jobname" runat="server" Font-Bold="true"></asp:Label> <br /> <br />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        Please upload your CV and submit <br /> <br />
        <asp:FileUpload ID="uploader" runat="server" CssClass="fileupload"/> <br /> <br />
        <asp:Button id="submit" runat="server" Text ="Submit" CssClass="buttons" OnClick="uploadFile"/>
        <br /> <br />

        <asp:Label ID="noFileChosen" runat="server"></asp:Label>

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
