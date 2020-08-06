
/* Creando Base de datos. */
create database Complementario_BDD

/* Seleccionar base de datos. */
use Complementario_BDD

/* Creación de tablas. */

create table Producto(
id_producto varchar(8) primary key,
intvtid int,
tru_codigo varchar(10),
descr_producto varchar(50),
cod_marcha varchar(10),
desc_marcha varchar(50),
categoria varchar(30),
cod_seccion varchar(10),
desc_seccion varchar(30),
weight decimal(8,2),
volume decimal (8,2)

)

create table Lugar_Compra(
id_lugar_compra varchar(10) primary key,
n_region varchar(10),
region varchar(50),
provincia varchar(50),
comuna varchar(50),
ciudad varchar(50)
)



create table Sector_Venta(
id_sector_venta varchar(10) primary key,
canal_1 varchar(10),
canal_2 varchar(10),
cod_zona varchar(10),
zona varchar(30)

)

create table Vendedor(
id_vendedor varchar(10) primary key,
cod_vendedor varchar(10),
cod_persona varchar(10),
vendedor varchar(50),
supervisor varchar(50),
jefe_regional varchar(50),
subgerente varchar(50)
)

create table Fecha(
id_fecha varchar(10) primary key,
año int,
mes_nombre varchar(20),
mes int,
semestre varchar(20),
trimestre varchar(20),
semana varchar(20),
dia_nombre varchar(20),
dia int,
fecha_completa date
)

create table Venta(
id_producto varchar (8) not null,
id_lugar_compra varchar(10) not null,
id_sector_venta varchar(10) not null,
id_vendedor varchar(10) not null,
id_fecha varchar(10) not null,
num_nota_venta varchar(10) not null,
not_cod_cd varchar(10) not null,
MontoVenta decimal(8,2),
MontoCosto decimal(8,2),
Ganancia decimal(8,2),
Utilidades decimal(8,2),
Volumen decimal(8,2),
Kilos decimal (8,2)


)



alter table Venta add  primary key (id_producto,id_lugar_compra,id_sector_venta,id_vendedor,id_fecha,num_nota_venta,not_cod_cd)

/* Agregando llaves foráneas. */

alter table Venta add foreign key (id_producto) references Producto(id_producto)

alter table Venta add foreign key (id_lugar_compra) references Lugar_Compra(id_lugar_compra)

alter table Venta add foreign key (id_sector_venta) references Sector_Venta(id_sector_venta)

alter table Venta add foreign key (id_vendedor) references Vendedor(id_vendedor)

alter table Venta add foreign key (id_fecha) references Fecha(id_fecha)

