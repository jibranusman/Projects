<%@ Page Title="" Language="C#" MasterPageFile="~/PRAMaster.Master" AutoEventWireup="true" CodeBehind="userWH.aspx.cs" Inherits="PRAHRM2.userWH" %>
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
            Working Hours
        </b>

        <br />
        <br />
        <br />

        <div class="calendarWrapper">

            <asp:Calendar ID="cal" runat="server" OnSelectionChanged="cal_SelectionChanged"
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
            EnableViewState="false"
            CssClass="mydatagrid"
            HeaderStyle-CssClass="header"
            EditRowStyle-CssClass="selectedrow"
            RowStyle-CssClass="rows"
            DataKeyNames="userID, Day"
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
