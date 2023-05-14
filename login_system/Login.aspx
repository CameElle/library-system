<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="login_system.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            margin-left: 12%;
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
                    <td> <asp:TextBox ID="IDInput" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td> <asp:Button ID="L_In0" runat="server" Text="Login" BackColor="gray" style="border-radius: 5px;" OnClick="Login_Click" /> &nbsp;<asp:Button ID="L_Out" runat="server" Text="Logout" BackColor="gray" Style="border-radius: 5px" OnClick="Logout_Click" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="datetime">
                            <div class="date">
                                <div> <p class="digcock">
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
                    <td colspan="2"> <asp:Button style="background: white; border-radius: 10px; font-weight: bolder;" ID="Button1" runat="server" Text="Register" PostBackUrl="~/Register.aspx" />  </td>
                    </tr>
    
    </table>   
        </main>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main>
         <style type="text/css">
            .auto-style1 {
                width: 100%;
                height: 402px;
            }
            .auto-style2 {
                width: 180px;
                margin-right:5%;
            }
        </style>

        <div class="frame-stat">
            <div> 
            <table>
                <tr>
                    <td><asp:Image ID="img" runat="server" Height="150px" Width="150px"></asp:Image></td>
                </tr>
                <tr>
                    <td class="auto-style2">ID NUMBER:</td>
                    <td><asp:Label ID="ID_number" runat="server"></asp:Label> </td>
                </tr>
                <tr>
                    <td class="auto-style2">NAME:</td>
                    <td><asp:Label ID="Label1" runat="server"></asp:Label> </td>
                </tr>
                <tr>    
                    <td class="auto-style2">COURSE & YEAR:</td>
                    <td> <asp:Label ID="Label2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style2">MAJOR:</td>
                    <td> <asp:Label ID="Label3" runat="server"></asp:Label></td>
                </tr>
            </table>
            </div>
       </div>
    </main>
</asp:Content>
