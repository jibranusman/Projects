<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="UserWorkingHours.aspx.cs" Inherits="PRAHRM2.UserWorkingHours" %>
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
            Edit user working hours
        </b>

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp

        <asp:Button id="editbutton" runat="server" Text="Cancel" CssClass="buttons" OnClick="cancel_click"/>

        <br />
        <br />
        <br />

        <div class="calendarWrapper">

            <asp:Calendar ID="cal" runat="server" OnSelectionChanged="getHours"
                CellPadding="0"
                CssClass="myCalendar">

                <OtherMonthDayStyle ForeColor="#b0b0b0" />
                <DayStyle CssClass="myCalendarDay" ForeColor="#2d3338" />
                <DayHeaderStyle CssClass="myCalendarDayHeader" ForeColor="#2d3338" />
                <SelectedDayStyle Font-Bold="True" Font-Size="12px" CssClass="myCalendarSelector" />
                <TodayDayStyle CssClass="myCalendarToday" />
                <SelectorStyle CssClass="myCalendarSelector" />
                <TitleStyle CssClass="myCalendarTitle" />
                    
            </asp:Calendar>

        </div>

        <br />
        <br />
        <br />

        <asp:GridView
            ID="timingGrid"
            runat="server"
            AutoGenerateColumns="true"
            AutoGenerateEditButton="true"
            EnableViewState="true"
            CssClass="mydatagrid"
            EditRowStyle-CssClass="selectedrow"
            RowStyle-CssClass="rows"
            OnRowCancelingEdit="cancelEditing"
            OnRowEditing="editUserRow"
            OnRowUpdating="updateTime"
            HeaderStyle-CssClass="header"
            DataKeyNames="userID, Day, FirstName"
            ></asp:GridView>

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
