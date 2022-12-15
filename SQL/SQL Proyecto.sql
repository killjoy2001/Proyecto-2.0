create database GimnasioUH

create table Cliente
(
 Cedula varchar(9) primary key,
 Nombre varchar(15),
 Apellido varchar(15),
 Correo varchar(30),
 Teléfono varchar(8)
)
create table Personal
(
 Cedula varchar(9) primary key,
 Nombre varchar(15),
 Apellido varchar(15),
 Correo varchar(30),
 Contrasena varchar(30),
)
create table Producto
(
 Codigo int identity (1,1) primary key,
 Nombre varchar(100),
)
create table Factura
(
 Codigo int identity (1,1),
 Fecha date constraint def_fecha default Getdate(),
 CedulaC varchar(9),
 NombreP varchar(100), 
 Precio money,
 IVA money,
 Total money, 
 constraint FK_ClienteCedula foreign key (CedulaC) references Cliente(Cedula)
)

insert into Producto values ('Membresía 1 mes'),
                            ('Membresía  1 trimestre'),
							('Membresía 1 año')


select Factura.Fecha, Cliente.Cedula, Cliente.Nombre, Producto.Nombre, Factura.Precio, Factura.IVA, Factura.Total from ((Factura 
inner join Cliente on Factura.CedulaC = Cliente.Cedula) 
inner join Producto on Factura.NombreP = Producto.Nombre)