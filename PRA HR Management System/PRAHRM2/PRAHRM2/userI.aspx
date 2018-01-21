<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="userI.aspx.cs" Inherits="PRAHRM2.userI" %>
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
            Internships 
        </b>

        <br />
        <br />
        <br />

        Please select jobs to apply for from below:- <br /> <br />

        <asp:GridView ID="jobs" runat="server"
            EnableViewState="true"
            AutoGenerateColumns="true"
            AutoGenerateSelectButton="true"
            CssClass="mydatagrid"
            RowStyle-CssClass="rows"
            HeaderStyle-CssClass="header"
            OnSelectedIndexChanging="selectJob"
            DataKeyNames="ID"></asp:GridView>

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
