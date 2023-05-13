<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="login_system.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 402px;
        }
        .auto-style2 {
            width: 247px;
        }
        .auto-style3 {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <main class="frame">
      <div class="table"> 
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">ID NUMBER:</td>
                <td> <asp:TextBox ID="numberID" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">LAST NAME:</td>
                <td> <asp:TextBox ID="LName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">FIRST NAME:</td>
                <td> <asp:TextBox ID="FName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">COURSE:</td>
                <td> <asp:TextBox ID="Course" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">YEAR:</td>
                <td> <asp:TextBox ID="Year" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">MAJOR:</td>
                <td> <asp:TextBox ID="Major" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">PICTURE:</td>
                <td> <asp:FileUpload ID="File" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style3">
            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" /> <asp:Button ID="Update" runat="server" Text="Edit" /> <asp:Button ID="Delete" runat="server" Text="Delete" /></td>
            </tr>
        </table>
    </div>

    </main>
</asp:Content>
