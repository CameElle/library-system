<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="database.aspx.cs" Inherits="login_system.database" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
                <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Handler.ashx" />
                         <img src="<%#Eval("ID_NUMBER", "~/Handler.ashx?id={0}") %>" height="150" width="150"/>
                    </ItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink
                            ID="MyLink" Target="_blank"
                            NavigateUrl= '<%# Eval("ID_NUMBER", "~/Handler.ashx?id={0}")  %>'
                            runat="server">
                            Display
                        </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            </asp:GridView>
        </div>
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text="Number"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                    <img src="img/<%#Eval("ImageName") %>" height="150" width="150"/>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
