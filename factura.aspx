<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="factura.aspx.cs" Inherits="Proyecto_Gimnasio.ClienteDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="CSS/factura.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a href="datos.aspx">Datos</a></li>
                <li><a href="factura.aspx">Facturación</a></li>
            </ul>
        </div>
       <div id="general">
           <div id="facturar">
               <h2>Facturar:</h2>
               <table class="auto-style2">
                   <tr>
                       <td>Tipo de membresía:</td>
                       <td>Cédula de cliente:</td>
                       <td>Precio:</td>
                   </tr>
                   <tr>
                       <td>
                           <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Nombre">
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GimnasioUHConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Producto]"></asp:SqlDataSource>
                       </td>
                       <td>
                           <asp:TextBox ID="tced" runat="server"></asp:TextBox>
                       </td>
                       <td>
                           <asp:TextBox ID="tprecio" runat="server"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Button ID="bfacturar" runat="server" OnClick="bfacturar_Click" Text="Facturar" />
                       </td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
               </table>

           </div>
           <div id="gridview">

               <asp:GridView ID="datagrid" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Cedula" DataSourceID="SqlDataSource2">
                   <Columns>
                       <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                       <asp:BoundField DataField="Cedula" HeaderText="Cédula" ReadOnly="True" SortExpression="Cedula" />
                       <asp:BoundField DataField="Nombre" HeaderText="Nombre de cliente" SortExpression="Nombre" />
                       <asp:BoundField DataField="Nombre1" HeaderText="Tipo de membresía" SortExpression="Nombre1" />
                       <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                       <asp:BoundField DataField="IVA" HeaderText="IVA" SortExpression="IVA" />
                       <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GimnasioUHConnectionString %>" SelectCommand="select Factura.Fecha, Cliente.Cedula, Cliente.Nombre, Producto.Nombre, Factura.Precio, Factura.IVA, Factura.Total from ((Factura 
inner join Cliente on Factura.CedulaC = Cliente.Cedula) 
inner join Producto on Factura.NombreP = Producto.Nombre)"></asp:SqlDataSource>

           </div>
       </div>

    </form>
</body>
</html>
