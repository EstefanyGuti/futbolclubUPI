<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entrenador.aspx.cs" Inherits="futbolclubUPI.entrenador" %>

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
            text-align: center;
        }

        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style2">Sistema de futbol Club</span>
        </div>
        <div>
            <ul>
                <li><a class="active" href="#principal.aspx">Inicio</a></li>
                <li><a href="Jugador.aspx">Jugadores</a></li>
                <li><a href="Entrenador.aspx">Entrenadores</a></li>
                <li><a href="#about">Salir</a></li>
            </ul>
        </div>
        </div><br />
        <br />
        Codigo:
        <asp:TextBox ID="Tcodigo" runat="server"></asp:TextBox>
        Nombre:
        <asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
        Titulos:
        <asp:TextBox ID="Ttitulo" runat="server"></asp:TextBox>
        <div>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SQLEntrenador" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="titulos" HeaderText="titulos" SortExpression="titulos" />
                    </Columns>
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
                <asp:SqlDataSource ID="SQLEntrenador" runat="server" ConnectionString="<%$ ConnectionStrings:UFHCConnectionString2 %>" ProviderName="<%$ ConnectionStrings:UFHCConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [entrenador]"></asp:SqlDataSource>
                <div>
                </div>
                <asp:Button ID="Bagregar" runat="server" Text="Agregar" />
                <asp:Button ID="Bborrar" runat="server" Text="Borrar" />
                <asp:Button ID="Bmodificar" runat="server" Text="Modificar" />
                <asp:Button ID="Bconsultar" runat="server" Text="Consultar" />
            </div>
    </form>
</body>
</html>
