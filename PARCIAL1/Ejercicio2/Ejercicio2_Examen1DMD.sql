

create database Floreria

use Floreria

create table Ventas(

id varchar(50) primary key, Rosas int,
Claveles int, Macetas int,
Tierra int, Girasoles int,
Hortensia int, Globos int,
Tarjetas int, Forquídeas int,
Carmesí int, Lidios int,
Aurora int, Tulipanes int,
Listón int, Sucursal varchar(50)
)

select * from Ventas

/* Consulta para calcular los mejores "productos" (productos más vendidos) en las sucursales */
select Sucursal,sum(Rosas) as 'Compras de Rosa', sum(Claveles) as 'Compras de Claveles', 
sum(Macetas) as 'Compras de Macetas ', sum(Tierra) as 'Compras de Tierra ',
sum(Girasoles) as 'Compras de Girasoles', 
sum(Hortensia) as 'Compras de Hortensia ', sum(Globos) as 'Compras de  Globos ', 
sum(Tarjetas) as 'Compras de Tarjetas ',sum(Forquídeas) as 'Compras de Forquídeas ', 
sum(Carmesí) as 'Compras de Carmesí', sum(Lidios) as 'Compras de Lirios ', 
sum(Aurora) as 'Compras de Aurora ',
sum(Tulipanes) as 'Compras de Tulipanes ',sum(Listón) as 'Compras de Listón'
from Ventas
group by Sucursal

/* Consulta para calcular los mejores "productos" (productos más vendidos) en todo el país */
select sum(Rosas) as 'Compras de Rosa', sum(Claveles) as 'Compras de Claveles', 
sum(Macetas) as 'Compras de Macetas ', sum(Tierra) as 'Compras de Tierra ',
sum(Girasoles) as 'Compras de Girasoles', 
sum(Hortensia) as 'Compras de Hortensia ', sum(Globos) as 'Compras de  Globos ', 
sum(Tarjetas) as 'Compras de Tarjetas ',sum(Forquídeas) as 'Compras de Forquídeas ', 
sum(Carmesí) as 'Compras de Carmesí', sum(Lidios) as 'Compras de Lirios ', 
sum(Aurora) as 'Compras de Aurora ',
sum(Tulipanes) as 'Compras de Tulipanes ',sum(Listón) as 'Compras de Listón'
from Ventas



/* Consulta para calcular los mejores "combinaciones" en la Sucursal de Santa Ana. */

select concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón) as 'Combinaciones', 
count(concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)) as 'Cantidad'
from Ventas
where Sucursal='Santa Ana'
group by concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)
order by count(concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)) desc

/* Consulta para calcular los mejores "combinaciones" en la Sucursal de San Miguel. */

select concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón) as 'Combinaciones', 
count(concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)) as 'Cantidad'
from Ventas
where Sucursal='San Miguel'
group by concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)
order by count(concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)) desc

/* Consulta para calcular los mejores "combinaciones" en la Sucursal de San Salvador. */

select concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón) as 'Combinaciones', 
count(concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)) as 'Cantidad'
from Ventas
where Sucursal='San Salvador'
group by concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)
order by count(concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)) desc

/* Consulta para calcular los mejores "combinaciones" en el país. */

select concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón) as 'Combinaciones', 
count(concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)) as 'Cantidad'
from Ventas
group by concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)
order by count(concat(Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,Tarjetas,Forquídeas,Carmesí,Lidios,Aurora,Tulipanes,Listón)) desc