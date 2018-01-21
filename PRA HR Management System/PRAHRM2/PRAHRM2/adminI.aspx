<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="adminI.aspx.cs" Inherits="PRAHRM2.adminI" %>
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

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
        
        <asp:Button id="buttons" runat="server" Text="New Job Posting" CssClass="buttons" OnClick="newJob"/>

        <br />
        <br />
        <br />

        Job Applications <br /> <br />

        <asp:GridView ID="jobs" runat="server"
            EnableViewState="true"
            AutoGenerateColumns="false"
            CssClass="mydatagrid"
            RowStyle-CssClass="rows"
            HeaderStyle-CssClass="header"
            EmptyDataText="No files uploaded!"
            AutoGenerateSelectButton="true"
            OnSelectedIndexChanging="DownloadFile">

            <Columns>
                <asp:BoundField DataField="Text" HeaderText="File Name" />
            </Columns>

        </asp:GridView>

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
