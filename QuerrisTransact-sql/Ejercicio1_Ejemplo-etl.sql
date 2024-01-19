create database ejemploetl
use ejemploetl

select * from NORTHWND.dbo.Categories
select * from NORTHWND.dbo.Products

create table productos(
	productoId int not null identity(1,1),
	nombreProducto nvarchar(40) not null,
	precio money not null,
	stock smallint not null,
	importe as (precio * stock), --Campo calculado, se inserta solo al ser un calculo de otra columna
	categoria nvarchar(15) not null,
	
	constraint pk_producto primary key(productoId)
)

drop table productos

-- ver todas la tablas de las bases de datos y sus características
select * from sys.tables

alter table productos add categoria nvarchar(15) not null

select * from productos

insert into ejemploetl.dbo.productos
select p.ProductName, p.UnitPrice, p.UnitsInStock, c.CategoryName from NORTHWND.dbo.Products as p inner join NORTHWND.dbo.Categories as c on c.CategoryID = p.CategoryID


select * from productos;
