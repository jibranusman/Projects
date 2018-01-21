<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PRAHRM2.login" %>

<!DOCTYPE html>

<style>

    #pralogo {
        width:200px;
        height:100px;
        left:0%;
        top:2%;
        position:absolute;
    }

    #goplogo {
        width:100px;
        height:90px;
        right:2%;
        top:2%;
        position:absolute;
        z-index:10;
    }

    #userbox {
        position:absolute;
        display:block;
        height: 17px;
        padding: 6px 12px;
        font-size: 14px;
        line-height: 1.428571429;
        color: #555;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    }

    #passbox {
        position:absolute;
        display:block;
        height: 17px;
        padding: 6px 12px;
        font-size: 14px;
        line-height: 1.428571429;
        color: #555;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    }

    #loginbutton {
        position:absolute;
        display: inline-block;
        padding: 6px 12px;
        margin-bottom: 0;
        font-size: 14px;
        font-weight: normal;
        line-height: 1.428571429;
        text-align: center;        
        background-color:lightgrey;
        white-space:nowrap;
        border: 1px solid transparent;
        border-radius: 4px;
        cursor:pointer;
    }

    #loginbutton:hover {
        background-color:cadetblue;
    }

    .loginDiv 
    {
        position:absolute;
        top:35%;
        left:39%;
        z-index:0;
        font-family:Calibri;
    }

    .dataEntryDiv
    {
        font-family:Calibri;
        border: 5px ridge green;
        background-color:whitesmoke;
        display: inline-block;
        width:188px;
        padding: 6px 12px;
        white-space:nowrap;
        border-radius: 4px
    }

    h1 {
        top:3%;
        left:35%;
        font-family:Calibri;
        position:absolute;
    }

    #pracopyright {
        position:absolute;
        left:6%;
        top:90%;
    }

</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Image id="pralogo" CssClass="pralogo" runat="server" ImageUrl="images/pra.jpg"/>
        <asp:Image ID="goplogo" CssClass="goplogo" runat="server" ImageUrl="images/gop.jpg" />

        <h1> Punjab Revenue Authority <br /> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp HRM </h1>

        <div id ="logindiv" class="loginDiv" runat="server">

            <b> Enter e-mail and password to log in</b> <br />

            <br />

            <div id="dataEntry" class="dataEntryDiv" runat="server">

                Email:-
                <asp:TextBox ID="userbox" runat="server" CssClass="userbox"></asp:TextBox>
            
                <br />
                <br />
                <br />

                Password:-
                <asp:TextBox ID="passbox" runat="server" CssClass="passbox" TextMode="Password"></asp:TextBox>

                <br />
                <br />
                <br />

            </div>

            <br />
            <br />
            <br />

            <asp:Button ID="loginbutton" runat="server" Text="Login" OnClick="loginUser"/>

            <br />
            <br />
            <br />

            <br />
            <br />
            <br />

        </div>

        <a ID="pracopyright" class="pracopyright"> © 2017 - Punjab Revenue Authority </a>

    </form>
</body>
</html>
