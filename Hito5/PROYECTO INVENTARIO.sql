Use JUGUETERIA_TOYSMOON;

create table proveedor(
id_proveedor int identity primary key not null,
nombre varchar (50) not null,
correo varchar(60) not null,
telefono int not null,
id_insumo int
foreign key (id_insumo) references insumo(id_insumo)
);

create table insumo(
id_insumo int identity primary key not null,
descripcion varchar(100) not null,
cantidad int,
id_inventario int,
foreign key (id_inventario) references inventario (id_inventario)
);

create table movimientos(
id_movimientos int identity primary key not null,
tipo_movimiento varchar (20),
descripcion varchar(100) not null,
cantidad int,
fecha varchar (40),
id_inventario int,
foreign key (id_inventario) references inventario (id_inventario)
);
create table inventario(
id_inventario int identity primary key not null,
tipo varchar(30),
cantidad int,
nombre varchar(100)
);

create table categoria_productos(
id_cat int primary key,
tipo VARCHAR(30)
);

CREATE TABLE productos(
id_producto int PRIMARY KEY,
nombre varchar(100),
costo int,
descripcion VARCHAR(100),
cantidad int,
id_cat int
FOREIGN KEY (id_cat) REFERENCES categoria_productos (id_cat),
id_inventario int
FOREIGN KEY (id_inventario) references inventario (id_inventario)
);
--EMPLEADOS--sprint 3
create table empleados(
id_empleado int primary key not null,
id_usuario int
Foreign key (id_usuario) references usuarios(id_usuario),
id_inventario int
foreign key (id_inventario) references inventario(id_inventario)
);

Create Table usuarios(
id_usuario integer identity primary key not null,
nombres varchar(50) not null,
apellidos varchar(50) not null,
correo varchar(60) not null,
telefono int not null,
id_rol int,
foreign key (id_rol) references rol (id_rol)
);

create table rol(
id_rol int identity primary key not null,
rol varchar (20),
permisos varchar(40) 
);