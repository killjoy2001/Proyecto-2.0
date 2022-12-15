<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datos.aspx.cs" Inherits="Proyecto_Gimnasio.ClienteInicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/datos.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 35px;
            width: 517px;
            height: 289px;
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
            <div id="agregar">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Cédula:</td>
                        <td>
                            <asp:TextBox ID="tced" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Nombre:</td>
                        <td>
                            <asp:TextBox ID="tnom" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Apellido:</td>
                        <td>
                            <asp:TextBox ID="tapellido" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Correo:</td>
                        <td>
                            <asp:TextBox ID="tcorreo" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Teléfono:</td>
                        <td>
                            <asp:TextBox ID="ttel" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:Button ID="bAgregar" runat="server" Text="Agregar cliente" OnClick="bAgregar_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="clienteslist">
                <asp:GridView ID="datagrid" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Cedula" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" ReadOnly="True" SortExpression="Cedula" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="Teléfono" HeaderText="Teléfono" SortExpression="Teléfono" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GimnasioUHConnectionString %>" SelectCommand="SELECT * FROM [Cliente]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Cliente] WHERE [Cedula] = @original_Cedula AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([Apellido] = @original_Apellido) OR ([Apellido] IS NULL AND @original_Apellido IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Teléfono] = @original_Teléfono) OR ([Teléfono] IS NULL AND @original_Teléfono IS NULL))" InsertCommand="INSERT INTO [Cliente] ([Cedula], [Nombre], [Apellido], [Correo], [Teléfono]) VALUES (@Cedula, @Nombre, @Apellido, @Correo, @Teléfono)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Cliente] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Correo] = @Correo, [Teléfono] = @Teléfono WHERE [Cedula] = @original_Cedula AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([Apellido] = @original_Apellido) OR ([Apellido] IS NULL AND @original_Apellido IS NULL)) AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL)) AND (([Teléfono] = @original_Teléfono) OR ([Teléfono] IS NULL AND @original_Teléfono IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Cedula" Type="String" />
                        <asp:Parameter Name="original_Nombre" Type="String" />
                        <asp:Parameter Name="original_Apellido" Type="String" />
                        <asp:Parameter Name="original_Correo" Type="String" />
                        <asp:Parameter Name="original_Teléfono" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Cedula" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Teléfono" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Teléfono" Type="String" />
                        <asp:Parameter Name="original_Cedula" Type="String" />
                        <asp:Parameter Name="original_Nombre" Type="String" />
                        <asp:Parameter Name="original_Apellido" Type="String" />
                        <asp:Parameter Name="original_Correo" Type="String" />
                        <asp:Parameter Name="original_Teléfono" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
