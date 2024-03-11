<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jugador.aspx.cs" Inherits="futbolclubUPI.jugador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>UPI Futbol Club</title>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #111;
                }

        .active {
            background-color: #04AA6D;
        }

        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Sistema de futbol Club
        </div>
        <div>
            <ul>
                <li><a class="active" href="#principal.aspx">Inicio</a></li>
                <li><a href="Jugador.aspx">Jugadores</a></li>
                <li><a href="Entrenador.aspx">Entrenadores</a></li>
                <li><a href="#about">Salir</a></li>
            </ul>
        </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sqljugador" ForeColor="#333333" GridLines="None" style="text-align: left">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqljugadores" runat="server" ConnectionString="<%$ ConnectionStrings:UFHCConnectionString2 %>" SelectCommand="SELECT * FROM [Jugador]"></asp:SqlDataSource>
     <div>
    </form>
</body>
</html>
