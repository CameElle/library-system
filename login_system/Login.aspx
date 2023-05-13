<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="login_system.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style5 {
            width: 124px;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="frame" onload="initClock()">
        
            <br />

        
            <div class="phlog"><h1>LOG</h1></div>
            <div><h1 class="phin">IN</h1></div>


            <table class="auto-style2">
                <tr>
                    <td>
        
            <div class="idnum">ID NUMBER: </div>
                    </td>
                    <td> <asp:TextBox ID="IDnumber" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td> <asp:Button ID="L_In0" runat="server" Text="Login" BackColor="gray" style="border-radius: 5px;" /> &nbsp;<asp:Button ID="L_Out" runat="server" Text="Logout" BackColor="gray" style="border-radius: 5px"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="datetime">
                            <div class="date">
                                <div <p="" class="digcock">
                                    DIGITAL COCK</p>
                                </div>
                                <span id="dayname">Day</span>, <span id="month">Month</span> <span id="daynum">00</span>, <span id="year">Year</span>
                            </div>
                            <div class="time">
                                <span id="hour">00</span>: <span id="minutes">00</span>: <span id="seconds">00</span> <span id="period">AM</span>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"> <button style="background: white; border-radius: 10px; font-weight: bolder;" href="Register.aspx" class="auto-style5">Register</button> </td>
                </tr>
    </table>

            <br />
            <!--digital clock start-->
           
            <!--digital clock end-->
            <br />

        
        </main>
</asp:Content>
