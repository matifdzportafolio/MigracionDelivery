use [MIGRACION]
go


---------------------------------------------------------------------------------------------------------
--------------------------------------- CREACION DE TABLAS BI -------------------------------------------
---------------------------------------------------------------------------------------------------------

create procedure  BI_Creacion_Tablas
as
begin

create table  BI_Tiempo(
	TIEMPO_COD int identity(1,1) not null,
	TIEMPO_ANIO int,
	TIEMPO_MES int
);

create table  BI_Dia(
	DIA_ID nvarchar(50) not null,
	DIA_DETALLE nvarchar(50),
	DIA_ORDEN_SEMANAL int
);

create table  BI_Rango_Horario(
	RANGO_HORARIO_COD int identity(1,1) not null,
	RANGO_HORARIO_DESDE time(0),
	RANGO_HORARIO_HASTA time(0)
);

create table  BI_Localidad(
	LOCALIDAD int identity(1,1) not null,
	LOCALIDAD_PROVINCIA nvarchar(255),
	LOCALIDAD_DETALLE nvarchar(255)
);

create table  BI_Rango_Etario(
	RANGO_ETARIO_COD nvarchar(50) not null,
	RANGO_ETARIO_DESDE int,
	RANGO_ETARIO_HASTA int
);

create table  BI_Medio_Pago_Tipo(
	MEDIO_PAGO_TIPO nvarchar(50) not null,
);

create table  BI_Tipo_Local(
	TIPO_LOCAL nvarchar(50) not null
);

create table  BI_Categoria_Local(
	CATEGORIA_LOCAL nvarchar(50) not null,
	CATEGORIA_LOCAL_TIPO nvarchar(50)
);

create table  BI_Local_Tienda(
	LOCAL_CODIGO int identity(1,1) not null,
	LOCAL_NOMBRE nvarchar(50)
);

create table  BI_Tipo_Movilidad(
	TIPO_MOVILIDAD nvarchar(50) not null
);

create table  BI_Paquete_Tipo(
	PAQUETE_TIPO nvarchar(50) not null
);

create table  BI_Tipo_Reclamo(
	TIPO_RECLAMO nvarchar(50) not null
);

create table  BI_Estado_Reclamo(
	ESTADO_RECLAMO nvarchar(50) not null
);

create table  BI_Estado_Pedido(
	ESTADO_PEDIDO nvarchar(50) not null
);

create table  BI_Estado_Envio_Mensajeria(
	ESTADO_ENVIO_MENSAJERIA nvarchar(50) not null
);

create table  BI_Pedidos(
	PEDIDOS_TIEMPO int not null,
	PEDIDOS_DIA nvarchar(50) not null,
	PEDIDOS_RANGO_HORARIO int not null,
	PEDIDOS_LOCAL int not null,
	PEDIDOS_LOCALIDAD int not null,
	PEDIDOS_TIPO_LOCAL nvarchar(50) not null,
	PEDIDOS_CATEGORIA_LOCAL nvarchar(50) not null,
	PEDIDOS_TIPO_MOVILIDAD nvarchar(50) not null,
	PEDIDOS_TIPO_MEDIO_DE_PAGO nvarchar(50) not null,
	PEDIDOS_RANGO_ETARIO_REPARTIDOR nvarchar(50) not null,
	PEDIDOS_RANGO_ETARIO_USUARIO nvarchar(50) not null,
	PEDIDOS_ESTADO nvarchar(50) not null,
	PEDIDOS_CANTIDAD_TOTAL int,
	PEDIDOS_MONTO_TOTAL decimal(18,2),
	PEDIDOS_MONTO_ENVIOS_PROMEDIO decimal(18,2),
	PEDIDOS_MONTO_CUPONES_TOTAL decimal(18,2),
	PEDIDOS_DESVIO_ENTREGA_PROMEDIO decimal(18,2),
	PEDIDOS_CALIFICACION_PROMEDIO decimal(18,0)
);

create table  BI_Envios_Mensajeria(
	ENVIOS_MENSAJERIA_TIEMPO int not null,
	ENVIOS_MENSAJERIA_DIA nvarchar(50) not null,
	ENVIOS_MENSAJERIA_RANGO_HORARIO int not null,
	ENVIOS_MENSAJERIA_LOCALIDAD int not null,
	ENVIOS_MENSAJERIA_TIPO_MOVILIDAD nvarchar(50) not null,
	ENVIOS_MENSAJERIA_TIPO_PAQUETE nvarchar(50) not null,
	ENVIOS_MENSAJERIA_TIPO_MEDIO_DE_PAGO nvarchar(50) not null,
	ENVIOS_MENSAJERIA_RANGO_ETARIO_REPARTIDOR nvarchar(50) not null,
	ENVIOS_MENSAJERIA_ESTADO nvarchar(50) not null,
	ENVIOS_MENSAJERIA_CANTIDAD_TOTAL int,
	ENVIOS_MENSAJERIA_MONTO_TOTAL decimal(18,2),
	ENVIOS_MENSAJERIA_DESVIO_ENTREGA_PROMEDIO decimal(18,2),
	ENVIOS_MENSAJERIA_VALOR_ASEGURADO_PROMEDIO decimal(18,2),
);

create table  BI_Reclamos(
	RECLAMOS_TIEMPO int not null,
	RECLAMOS_DIA nvarchar(50) not null,
	RECLAMOS_RANGO_HORARIO int not null,
	RECLAMOS_TIPO nvarchar(50) not null,
	RECLAMOS_LOCAL int not null,
	RECLAMOS_RANGO_ETARIO_OPERADOR nvarchar(50) not null,
	RECLAMOS_ESTADO nvarchar(50) not null,
	RECLAMOS_CANTIDAD_TOTAL int,
	RECLAMOS_TIEMPO_RESOLUCION_PROMEDIO int,
	RECLAMOS_MONTO_CUPONES_TOTAL decimal(18,2)
);


print 'Estructura de tablas BI creadas con exito ';
end
go



---------------------------------------------------------------------------------------------------------
--------------------------------------- CREACION DE PRIMARY KEYS ----------------------------------------
---------------------------------------------------------------------------------------------------------



create procedure  BI_Creacion_PKs
as
begin

alter table  BI_Tiempo
add primary key (TIEMPO_COD)

alter table  BI_Dia
add primary key (DIA_ID)

alter table  BI_Rango_Horario
add primary key (RANGO_HORARIO_COD)

alter table  BI_Localidad
add primary key (LOCALIDAD)

alter table  BI_Rango_Etario
add primary key (RANGO_ETARIO_COD)

alter table  BI_Medio_Pago_Tipo
add primary key (MEDIO_PAGO_TIPO)

alter table  BI_Tipo_Local
add primary key (TIPO_LOCAL)

alter table  BI_Categoria_Local
add primary key (CATEGORIA_LOCAL)

alter table  BI_Local_Tienda
add primary key (LOCAL_CODIGO)

alter table  BI_Tipo_Movilidad
add primary key (TIPO_MOVILIDAD)

alter table  BI_Paquete_tipo
add primary key (PAQUETE_TIPO)

alter table  BI_Estado_Envio_mensajeria
add primary key (ESTADO_ENVIO_MENSAJERIA)

alter table  BI_Estado_pedido
add primary key (ESTADO_PEDIDO)

alter table  BI_Estado_Reclamo
add primary key (ESTADO_RECLAMO)

alter table  BI_Tipo_reclamo
add primary key (TIPO_RECLAMO)

alter table  BI_Pedidos
add primary key (PEDIDOS_TIEMPO,PEDIDOS_DIA,PEDIDOS_RANGO_HORARIO,PEDIDOS_LOCAL,PEDIDOS_LOCALIDAD,PEDIDOS_TIPO_LOCAL,PEDIDOS_CATEGORIA_LOCAL,PEDIDOS_TIPO_MOVILIDAD,PEDIDOS_TIPO_MEDIO_DE_PAGO,PEDIDOS_RANGO_ETARIO_REPARTIDOR,PEDIDOS_RANGO_ETARIO_USUARIO,PEDIDOS_ESTADO)

alter table  BI_Envios_Mensajeria
add primary key (ENVIOS_MENSAJERIA_TIEMPO, ENVIOS_MENSAJERIA_DIA, ENVIOS_MENSAJERIA_RANGO_HORARIO, ENVIOS_MENSAJERIA_LOCALIDAD, ENVIOS_MENSAJERIA_TIPO_MOVILIDAD, ENVIOS_MENSAJERIA_TIPO_PAQUETE,ENVIOS_MENSAJERIA_TIPO_MEDIO_DE_PAGO, ENVIOS_MENSAJERIA_RANGO_ETARIO_REPARTIDOR, ENVIOS_MENSAJERIA_ESTADO)

alter table  BI_Reclamos
add primary key (RECLAMOS_TIEMPO, RECLAMOS_DIA,RECLAMOS_RANGO_HORARIO, RECLAMOS_TIPO,RECLAMOS_LOCAL,RECLAMOS_RANGO_ETARIO_OPERADOR,RECLAMOS_ESTADO)

print 'Primary Keys BI creadas con exito ';

end
go


---------------------------------------------------------------------------------------------------------
--------------------------------------- CREACION DE FOREING KEYS ----------------------------------------
---------------------------------------------------------------------------------------------------------




create procedure  BI_Creacion_Fks
as
begin

alter table  BI_Pedidos
	add constraint FK_BI_Tiempo_Pedidos foreign key (PEDIDOS_TIEMPO) references  BI_Tiempo (TIEMPO_COD)
alter table  BI_Pedidos
	add constraint FK_BI_Dia_Pedidos foreign key (PEDIDOS_DIA) references  BI_Dia(DIA_ID)
alter table  BI_Pedidos
	add constraint FK_BI_Rango_Horario_Pedidos foreign key (PEDIDOS_RANGO_HORARIO) references  BI_Rango_Horario(RANGO_HORARIO_COD)
alter table  BI_Pedidos
	add constraint FK_BI_Local_Pedidos foreign key (PEDIDOS_LOCAL) references  BI_Local_Tienda(LOCAL_CODIGO)
alter table  BI_Pedidos
	add constraint FK_BI_Localidad_Pedidos foreign key (PEDIDOS_LOCALIDAD) references  BI_Localidad(LOCALIDAD)
alter table  BI_Pedidos
	add constraint FK_BI_Tipo_Local_Pedidos foreign key (PEDIDOS_TIPO_LOCAL) references  BI_Tipo_Local(TIPO_LOCAL)
alter table  BI_Pedidos
	add constraint FK_BI_Categoria_Local_Pedidos foreign key (PEDIDOS_CATEGORIA_LOCAL) references  BI_Categoria_Local(CATEGORIA_LOCAL)
alter table  BI_Pedidos
	add constraint FK_BI_Tipo_Movilidad_Pedidos foreign key (PEDIDOS_TIPO_MOVILIDAD) references  BI_Tipo_Movilidad(TIPO_MOVILIDAD)
alter table  BI_Pedidos
	add constraint FK_BI_Tipo_Medio_De_Pago_Pedidos foreign key (PEDIDOS_TIPO_MEDIO_DE_PAGO) references  BI_Medio_Pago_Tipo(MEDIO_PAGO_TIPO)
alter table  BI_Pedidos
	add constraint FK_BI_Rango_Etario_Repartidor_Pedidos foreign key (PEDIDOS_RANGO_ETARIO_REPARTIDOR) references  BI_Rango_Etario(RANGO_ETARIO_COD)
alter table  BI_Pedidos
	add constraint FK_BI_Rango_Etario_Usuario_Pedidos foreign key (PEDIDOS_RANGO_ETARIO_USUARIO) references  BI_Rango_Etario(RANGO_ETARIO_COD)
alter table  BI_Pedidos
	add constraint FK_BI_Estado_Pedidos foreign key (PEDIDOS_ESTADO) references  BI_Estado_Pedido(ESTADO_PEDIDO)

alter table  BI_Envios_Mensajeria
	add constraint FK_BI_Tiempo_Envios_Mensajeria foreign key (ENVIOS_MENSAJERIA_TIEMPO) references  BI_Tiempo (TIEMPO_COD)
alter table  BI_Envios_Mensajeria
	add constraint FK_BI_Dia_Envios_Mensajeria foreign key (ENVIOS_MENSAJERIA_DIA) references  BI_Dia (DIA_ID)
alter table  BI_Envios_Mensajeria
	add constraint FK_BI_Rango_Horario_Envios_Mensajeria foreign key (ENVIOS_MENSAJERIA_RANGO_HORARIO) references  BI_Rango_Horario(RANGO_HORARIO_COD)
alter table  BI_Envios_Mensajeria
	add constraint FK_BI_Localidad_Envios_Mensajeria foreign key (ENVIOS_MENSAJERIA_LOCALIDAD) references  BI_Localidad (LOCALIDAD)
alter table  BI_Envios_Mensajeria
	add constraint FK_BI_Tipo_Movilidad_Envios_Mensajeria foreign key (ENVIOS_MENSAJERIA_TIPO_MOVILIDAD) references  BI_Tipo_Movilidad(TIPO_MOVILIDAD)
alter table  BI_Envios_Mensajeria
	add constraint FK_BI_Tipo_Paquete_Envios_Mensajeria foreign key (ENVIOS_MENSAJERIA_TIPO_PAQUETE) references  BI_Paquete_Tipo(PAQUETE_TIPO)
alter table  BI_Envios_Mensajeria
	add constraint FK_BI_Tipo_Medio_De_Pago_Envios_Mensajeria foreign key (ENVIOS_MENSAJERIA_TIPO_MEDIO_DE_PAGO) references  BI_Medio_Pago_Tipo(MEDIO_PAGO_TIPO)
alter table  BI_Envios_Mensajeria
	add constraint FK_BI_Rango_Etario_Repartidor_Envios_Mensajeria foreign key (ENVIOS_MENSAJERIA_RANGO_ETARIO_REPARTIDOR) references  BI_Rango_Etario(RANGO_ETARIO_COD)
alter table  BI_Envios_Mensajeria
	add constraint FK_BI_Estado_Envios_Mensajeria foreign key (ENVIOS_MENSAJERIA_ESTADO) references  BI_Estado_Envio_Mensajeria(ESTADO_ENVIO_MENSAJERIA)

alter table  BI_Reclamos
	add constraint FK_BI_Tiempo_Reclamos foreign key (RECLAMOS_TIEMPO) references  BI_Tiempo (TIEMPO_COD)
alter table  BI_Reclamos
	add constraint FK_BI_Tipo_Reclamos foreign key (RECLAMOS_TIPO) references  BI_Tipo_Reclamo(TIPO_RECLAMO)
alter table  BI_Reclamos
	add constraint FK_BI_Local_Reclamos foreign key (RECLAMOS_LOCAL) references  BI_Local_Tienda(LOCAL_CODIGO)
alter table  BI_Reclamos
	add constraint FK_BI_Dia_Reclamos foreign key (RECLAMOS_DIA) references  BI_Dia (DIA_ID)
alter table  BI_Reclamos
	add constraint FK_BI_Rango_Horario_Reclamos foreign key (RECLAMOS_RANGO_HORARIO) references  BI_Rango_Horario(RANGO_HORARIO_COD)
alter table  BI_Reclamos
	add constraint FK_BI_Rango_Etario_Operador_Reclamos foreign key (RECLAMOS_RANGO_ETARIO_OPERADOR) references  BI_Rango_Etario(RANGO_ETARIO_COD)
alter table  BI_Reclamos
	add constraint FK_BI_Estado_Reclamos foreign key (RECLAMOS_ESTADO) references  BI_Estado_Reclamo(ESTADO_RECLAMO)

print 'Foreign Keys BI creadas con exito ';

end
go



create procedure  Migracion_BI_Tiempo
as
begin

insert into  BI_Tiempo (TIEMPO_ANIO, TIEMPO_MES)

select year(E.ENVIO_MENSAJERIA_FECHA), MONTH(E.ENVIO_MENSAJERIA_FECHA) from  Envio_Mensajeria E
group by year(E.ENVIO_MENSAJERIA_FECHA), MONTH(E.ENVIO_MENSAJERIA_FECHA) 
union
(select year(P.PEDIDO_FECHA), MONTH(P.PEDIDO_FECHA) from  Pedido P
group by year(P.PEDIDO_FECHA), MONTH(P.PEDIDO_FECHA))
union 
(select year(R.RECLAMO_FECHA), month(R.RECLAMO_FECHA) from  Reclamo R
group by year(R.RECLAMO_FECHA), month(R.RECLAMO_FECHA))


print 'Dimension BI_Tiempo creada con exito ';

end
go



create procedure  Migracion_BI_Dia
as
begin

insert into  BI_Dia (DIA_ID, DIA_DETALLE)
select DIA_HORARIO_LOCAL, DIA_HORARIO_LOCAL_DETALLE from  Dia

update  BI_Dia
set DIA_ORDEN_SEMANAL = 1
where DIA_DETALLE = 'Domingo'

update  BI_Dia
set DIA_ORDEN_SEMANAL = 2
where DIA_DETALLE = 'Lunes'

update  BI_Dia
set DIA_ORDEN_SEMANAL = 3
where DIA_DETALLE = 'Martes'

update  BI_Dia
set DIA_ORDEN_SEMANAL = 4
where DIA_DETALLE = 'Miercoles'

update  BI_Dia
set DIA_ORDEN_SEMANAL = 5
where DIA_DETALLE = 'Jueves'

update  BI_Dia
set DIA_ORDEN_SEMANAL = 6
where DIA_DETALLE = 'Viernes'

update  BI_Dia
set DIA_ORDEN_SEMANAL = 7
where DIA_DETALLE = 'Sabado'

print 'Dimension BI_Dia creada con exito ';

end
go


create procedure  Migracion_BI_Rango_Horario
as
begin

insert into  BI_Rango_Horario (RANGO_HORARIO_DESDE, RANGO_HORARIO_HASTA)
values (cast('08:00:00' as time(0)), cast('10:00:00' as time(0)))
insert into  BI_Rango_Horario (RANGO_HORARIO_DESDE, RANGO_HORARIO_HASTA)
values (cast('10:00:00' as time(0)), cast('12:00:00' as time(0)))
insert into  BI_Rango_Horario (RANGO_HORARIO_DESDE, RANGO_HORARIO_HASTA)
values (cast('12:00:00' as time(0)), cast('14:00:00' as time(0)))
insert into  BI_Rango_Horario (RANGO_HORARIO_DESDE, RANGO_HORARIO_HASTA)
values (cast('14:00:00' as time(0)), cast('16:00:00' as time(0)))
insert into  BI_Rango_Horario (RANGO_HORARIO_DESDE, RANGO_HORARIO_HASTA)
values (cast('16:00:00' as time(0)), cast('18:00:00' as time(0)))
insert into  BI_Rango_Horario (RANGO_HORARIO_DESDE, RANGO_HORARIO_HASTA)
values (cast('18:00:00' as time(0)), cast('20:00:00' as time(0)))
insert into  BI_Rango_Horario (RANGO_HORARIO_DESDE, RANGO_HORARIO_HASTA)
values (cast('20:00:00' as time(0)), cast('22:00:00' as time(0)))
insert into  BI_Rango_Horario (RANGO_HORARIO_DESDE, RANGO_HORARIO_HASTA)
values (cast('22:00:00' as time(0)), cast('23:59:59' as time(0)))


print 'Dimension BI_Rango_Horario creada con exito ';

end
go



create procedure  Migracion_BI_Rango_Etario
as
begin

insert into  BI_Rango_Etario (RANGO_ETARIO_COD, RANGO_ETARIO_DESDE, RANGO_ETARIO_HASTA)
values ('<25',1,25)
insert into  BI_Rango_Etario (RANGO_ETARIO_COD, RANGO_ETARIO_DESDE, RANGO_ETARIO_HASTA)
values ('25-35',25,35)
insert into  BI_Rango_Etario (RANGO_ETARIO_COD, RANGO_ETARIO_DESDE, RANGO_ETARIO_HASTA)
values ('35-55',35,55)
insert into  BI_Rango_Etario (RANGO_ETARIO_COD, RANGO_ETARIO_DESDE, RANGO_ETARIO_HASTA)
values ('>55',55,105)


print 'Dimension BI_Rango_Etario creada con exito ';

end
go



create procedure  Migracion_BI_Localidad
as
begin

insert into  BI_Localidad

select PROVINCIA_DETALLE, LOCALIDAD_DETALLE from  Localidad
	join  Provincia on (LOCALIDAD_PROVINCIA = PROVINCIA)

print 'Dimension BI_Localidad creada con exito ';

end
go



create procedure  Migracion_BI_Medio_Pago_Tipo
as
begin

insert into  BI_Medio_Pago_Tipo 

select MEDIO_PAGO_DETALLE from  Medio_Pago_Tipo

print 'Dimension BI_Medio_Pago_Tipo creada con exito ';

end
go




create procedure  Migracion_BI_Tipo_Local
as
begin

insert into  BI_Tipo_Local

select TIPO_LOCAL_DETALLE from  Tipo_Local

print 'Dimension BI_Tipo_Local creada con exito ';

end
go



create procedure  Migracion_BI_Categoria_Local
as
begin

insert into  BI_Categoria_Local

select CL.CATEGORIA_LOCAL_DETALLE, BTL.TIPO_LOCAL_DETALLE  from  Categoria_Local CL
join  Tipo_Local BTL on BTL.TIPO_LOCAL = CATEGORIA_LOCAL_TIPO

insert into  BI_Categoria_Local
values ('Sin categoria',null)

print 'Dimension BI_Categoria_Local creada con exito ';

end
go



create procedure  Migracion_BI_Local_Tienda
as
begin

insert into  BI_Local_Tienda

select LOCAL_NOMBRE from  Local_Tienda L

print 'Dimension BI_Local_Tienda creada con exito ';

end
go



create procedure  Migracion_BI_Tipo_Movilidad
as
begin

insert into  BI_Tipo_Movilidad

select TIPO_MOVILIDAD_DETALLE from  Tipo_Movilidad

print 'Dimension BI_Tipo_Movilidad creada con exito ';

end
go




create procedure  Migracion_BI_Paquete_Tipo
as
begin

insert into  BI_Paquete_Tipo

select PAQUETE_TIPO from  Paquete_Tipo

print 'Dimension BI_Paquete_Tipo creada con exito ';

end
go



create procedure  Migracion_BI_Estado_Envio_Mensajeria
as
begin

insert into  BI_Estado_Envio_Mensajeria

select ESTADO_ENVIO_MENSAJERIA_DETALLE from  Estado_Envio_Mensajeria

print 'Dimension BI_Estado_Envio_Mensajeria creada con exito ';

end
go



create procedure  Migracion_BI_Estado_Pedido
as
begin

insert into  BI_Estado_Pedido

select ESTADO_PEDIDO_DETALLE from  Estado_Pedido

print 'Dimension BI_Estado_Pedido creada con exito ';

end
go




create procedure  Migracion_BI_Estado_Reclamo
as
begin

insert into  BI_Estado_Reclamo

select ESTADO_RECLAMO_DETALLE from  Estado_Reclamo

print 'Dimension BI_Estado_Reclamo creada con exito ';

end
go




create procedure  Migracion_BI_Tipo_Reclamo
as
begin

insert into  BI_Tipo_Reclamo
select TIPO_RECLAMO_DETALLE from  Tipo_Reclamo

print 'Dimension BI_Tipo_Reclamo creada con exito ';

end
go




create procedure  Migracion_BI_Envio_Mensajeria
as
begin

insert into  BI_Envios_Mensajeria

select T.TIEMPO_COD, D.DIA_ID, RH.RANGO_HORARIO_COD, EM.ENVIO_MENSAJERIA_LOCALIDAD, TM.TIPO_MOVILIDAD_DETALLE, PT.PAQUETE_TIPO, MPT.MEDIO_PAGO_DETALLE, RER.RANGO_ETARIO_COD, EEM.ESTADO_ENVIO_MENSAJERIA_DETALLE,
count(*),
SUM(EM.ENVIO_MENSAJERIA_TOTAL),
AVG(isNULL(DATEDIFF(minute,EM.ENVIO_MENSAJERIA_FECHA,EM.ENVIO_MENSAJERIA_FECHA_ENTREGA) - EM.ENVIO_MENSAJERIA_TIEMPO_ESTIMADO,0)),
AVG(EM.ENVIO_MENSAJERIA_VALOR_ASEGURADO)
from  Envio_Mensajeria EM
	join  BI_Tiempo T on (T.TIEMPO_ANIO = YEAR(EM.ENVIO_MENSAJERIA_FECHA) and T.TIEMPO_MES = MONTH(EM.ENVIO_MENSAJERIA_FECHA))
	join  BI_Dia D on (D.DIA_ORDEN_SEMANAL = DATEPART(WEEKDAY, EM.ENVIO_MENSAJERIA_FECHA))
	join  BI_Rango_Horario RH on (RH.RANGO_HORARIO_DESDE <= CONVERT(time(0),EM.ENVIO_MENSAJERIA_FECHA) and RH.RANGO_HORARIO_HASTA > CONVERT(time(0),EM.ENVIO_MENSAJERIA_FECHA))
	join  Repartidor on (REPARTIDOR_CODIGO = EM.ENVIO_MENSAJERIA_REPARTIDOR)
	join  Tipo_Movilidad TM on (TIPO_MOVILIDAD_REPARTIDOR = REPARTIDOR_TIPO_MOVILIDAD)
	join  BI_Paquete_Tipo PT on (PT.PAQUETE_TIPO = EM.ENVIO_MENSAJERIA_PAQUETE_TIPO)
	join  Medio_De_Pago MP on (MEDIO_PAGO_CODIGO = EM.ENVIO_MENSAJERIA_MEDIO_PAGO)
	join  Medio_Pago_Tipo MPT on (MPT.MEDIO_PAGO_TIPO = MP.MEDIO_PAGO_TIPO)
	join  BI_Rango_Etario RER on (RER.RANGO_ETARIO_DESDE <= DATEDIFF(YEAR, REPARTIDOR_FECHA_NAC,GETDATE()) and RER.RANGO_ETARIO_HASTA > DATEDIFF(YEAR, REPARTIDOR_FECHA_NAC,GETDATE()))
	join  Estado_Envio_Mensajeria EEM on (EEM.ESTADO_ENVIO_MENSAJERIA= EM.ENVIO_MENSAJERIA_ESTADO )
group by T.TIEMPO_COD, D.DIA_ID, RH.RANGO_HORARIO_COD, EM.ENVIO_MENSAJERIA_LOCALIDAD, TM.TIPO_MOVILIDAD_DETALLE, PT.PAQUETE_TIPO, MPT.MEDIO_PAGO_DETALLE, RER.RANGO_ETARIO_COD, EEM.ESTADO_ENVIO_MENSAJERIA_DETALLE

print 'Hecho BI_Envio_Mensajeria creado con exito ';

end
go




create procedure  Migracion_BI_Reclamos
as
begin

insert into  BI_Reclamos

select T.TIEMPO_COD, D.DIA_ID, RH.RANGO_HORARIO_COD, TR.TIPO_RECLAMO_DETALLE, LT.LOCAL_CODIGO, RE.RANGO_ETARIO_COD, ER.ESTADO_RECLAMO_DETALLE,
count(*),
AVG(DATEDIFF(MINUTE, RC.RECLAMO_FECHA, RC.RECLAMO_FECHA_SOLUCION)),
SUM(CUPON_RECLAMO_MONTO)
 from  Reclamo RC
	join  BI_Tiempo T on (T.TIEMPO_ANIO = YEAR(RC.RECLAMO_FECHA) and T.TIEMPO_MES = MONTH(RC.RECLAMO_FECHA))
	join  BI_Dia D on (D.DIA_ORDEN_SEMANAL = DATEPART(WEEKDAY, RC.RECLAMO_FECHA))
	join  BI_Rango_Horario RH on (RH.RANGO_HORARIO_DESDE <= CONVERT(time(0),RC.RECLAMO_FECHA) and RH.RANGO_HORARIO_HASTA > CONVERT(time(0),RC.RECLAMO_FECHA))
	join  Tipo_Reclamo TR on (TR.TIPO_RECLAMO = RC.RECLAMO_TIPO)
	join  Pedido P on (P.PEDIDO_NRO = RC.RECLAMO_PEDIDO)
	join  BI_Local_Tienda LT on (LT.LOCAL_CODIGO = P.PEDIDO_LOCAL)
	join  Operador OP on (OP.OPERADOR_CODIGO = RC.RECLAMO_OPERADOR)
	join  BI_Rango_Etario RE on (RE.RANGO_ETARIO_DESDE <= DATEDIFF(YEAR, OP.OPERADOR_RECLAMO_FECHA_NAC,GETDATE()) and RANGO_ETARIO_HASTA > DATEDIFF(YEAR, OPERADOR_RECLAMO_FECHA_NAC,GETDATE()))
	join  Estado_Reclamo ER on (ER.ESTADO_RECLAMO = RC.RECLAMO_ESTADO)
	join  Cupon_Reclamo on (CUPON_RECLAMO_CODIGO_RECLAMO = RC.RECLAMO_NUMERO)
group by T.TIEMPO_COD, TR.TIPO_RECLAMO_DETALLE, LT.LOCAL_CODIGO, D.DIA_ID, RH.RANGO_HORARIO_COD, RE.RANGO_ETARIO_COD , ER.ESTADO_RECLAMO_DETALLE

print 'Hecho BI_Reclamos creado con exito ';

end
go




create procedure  Migracion_BI_Pedidos
as
begin

insert into  BI_Pedidos 

select T.TIEMPO_COD, D.DIA_ID, RH.RANGO_HORARIO_COD, P.PEDIDO_LOCAL, LT.LOCAL_LOCALIDAD,TIPO_LOCAL_DETALLE, isNull(CATEGORIA_LOCAL_DETALLE,'Sin categoria'), TM.TIPO_MOVILIDAD_DETALLE, MPT.MEDIO_PAGO_DETALLE,RER.RANGO_ETARIO_COD, REU.RANGO_ETARIO_COD, EP.ESTADO_PEDIDO_DETALLE,
COUNT(*),
SUM(PEDIDO_TOTAL),
AVG(isNull(ENVIO_PRECIO,0)),
SUM(PEDIDO_TOTAL_CUPONES),
AVG(isNULL(DATEDIFF(minute,P.PEDIDO_FECHA,P.PEDIDO_FECHA_ENTREGA)- P.PEDIDO_TIEMPO_ESTIMADO_ENTREGA,0)),
AVG(PEDIDO_CALIFICACION)
from  Pedido P
	join  BI_Tiempo T on (T.TIEMPO_ANIO = YEAR(P.PEDIDO_FECHA) and T.TIEMPO_MES = MONTH(P.PEDIDO_FECHA))
	join  BI_Dia D on (D.DIA_ORDEN_SEMANAL = DATEPART(WEEKDAY, P.PEDIDO_FECHA))
	join  BI_Rango_Horario RH on (RH.RANGO_HORARIO_DESDE <= CONVERT(time(0),P.PEDIDO_FECHA) and RH.RANGO_HORARIO_HASTA > CONVERT(time(0),P.PEDIDO_FECHA))
	join  Local_Tienda LT on (P.PEDIDO_LOCAL = LT.LOCAL_CODIGO)
	join  Tipo_Local on (TIPO_LOCAL = LT.LOCAL_TIPO)
	left join  Categoria_Local on (CATEGORIA_LOCAL = LOCAL_CATEGORIA)
	join  Envio_Pedido on (ENVIO_PEDIDO_CODIGO = P.PEDIDO_NRO)
	join  Repartidor on (REPARTIDOR_CODIGO = ENVIO_REPARTIDOR)
	join  Tipo_Movilidad TM on (TIPO_MOVILIDAD_REPARTIDOR = REPARTIDOR_TIPO_MOVILIDAD)
	join  Medio_De_Pago MP on (MEDIO_PAGO_CODIGO = P.PEDIDO_MEDIO_PAGO)
	join  Medio_Pago_Tipo MPT on (MPT.MEDIO_PAGO_TIPO = MP.MEDIO_PAGO_TIPO)
	join  BI_Rango_Etario RER on (RER.RANGO_ETARIO_DESDE <= DATEDIFF(YEAR, REPARTIDOR_FECHA_NAC,GETDATE()) and RER.RANGO_ETARIO_HASTA > DATEDIFF(YEAR, REPARTIDOR_FECHA_NAC,GETDATE()))
	join  Usuario U on (USUARIO_CODIGO = P.PEDIDO_USUARIO)
	join  BI_Rango_Etario REU on (REU.RANGO_ETARIO_DESDE <= DATEDIFF(YEAR, U.USUARIO_FECHA_NAC,GETDATE()) and REU.RANGO_ETARIO_HASTA > DATEDIFF(YEAR, U.USUARIO_FECHA_NAC,GETDATE()))
	join  Estado_Pedido EP on (EP.ESTADO_PEDIDO= P.PEDIDO_ESTADO) 
group by T.TIEMPO_COD, D.DIA_ID, RH.RANGO_HORARIO_COD, P.PEDIDO_LOCAL, LT.LOCAL_LOCALIDAD,TIPO_LOCAL_DETALLE, CATEGORIA_LOCAL_DETALLE, TM.TIPO_MOVILIDAD_DETALLE, MPT.MEDIO_PAGO_DETALLE,RER.RANGO_ETARIO_COD, REU.RANGO_ETARIO_COD, EP.ESTADO_PEDIDO_DETALLE

print 'Hecho BI_Pedidos creado con exito ';

end
go



---------------------------------------------------------------------------------------------------------
--------------------------------------- MIGRACION DE TABLAS BI ------------------------------------------
---------------------------------------------------------------------------------------------------------


exec  BI_Creacion_Tablas
exec  BI_Creacion_PKs
exec  BI_Creacion_Fks
exec  Migracion_BI_Localidad
exec  Migracion_BI_Tiempo
exec  Migracion_BI_Dia
exec  Migracion_BI_Rango_Horario
exec  Migracion_BI_Rango_Etario
exec  Migracion_BI_Medio_Pago_Tipo
exec  Migracion_BI_Tipo_Local
exec  Migracion_BI_Categoria_Local
exec  Migracion_BI_Local_Tienda
exec  Migracion_BI_Tipo_Movilidad 
exec  Migracion_BI_Paquete_Tipo
exec  Migracion_BI_Estado_Pedido
exec  Migracion_BI_Estado_Envio_Mensajeria
exec  Migracion_BI_Estado_Reclamo
exec  Migracion_BI_Tipo_Reclamo
exec  Migracion_BI_Reclamos
exec  Migracion_BI_Envio_Mensajeria
exec  Migracion_BI_Pedidos

go

---------------------------------------------------------------------------------------------------------
-------------------------------------------- ARMADO DE VISTAS -------------------------------------------
---------------------------------------------------------------------------------------------------------


create view v_DiasYHorariosMasSolicitadosPorTiempo
as
select T.TIEMPO_ANIO ANIO, T.TIEMPO_MES Mes, LOCALIDAD_DETALLE, P.PEDIDOS_TIPO_LOCAL, DIA_DETALLE, P.PEDIDOS_RANGO_HORARIO
from  BI_Pedidos P
	join  BI_Tiempo T on (TIEMPO_COD = PEDIDOS_TIEMPO)
	join  BI_Localidad on (LOCALIDAD = P.PEDIDOS_LOCALIDAD)
	join  BI_Dia on (DIA_ID = P.PEDIDOS_DIA)
where P.PEDIDOS_DIA = (select top 1 PEDIDOS_DIA from  BI_Pedidos where PEDIDOS_TIEMPO = P.PEDIDOS_TIEMPO and PEDIDOS_LOCAL = P.PEDIDOS_LOCAL group by PEDIDOS_DIA order by SUM(PEDIDOS_CANTIDAD_TOTAL) DESC) and
	  P.PEDIDOS_RANGO_HORARIO = (select top 1 PEDIDOS_RANGO_HORARIO from  BI_Pedidos where PEDIDOS_TIEMPO = P.PEDIDOS_TIEMPO and PEDIDOS_LOCAL = P.PEDIDOS_LOCAL and PEDIDOS_DIA = P.PEDIDOS_DIA group by PEDIDOS_RANGO_HORARIO order by SUM(PEDIDOS_CANTIDAD_TOTAL))
group by T.TIEMPO_ANIO, T.TIEMPO_MES,LOCALIDAD, LOCALIDAD_DETALLE, P.PEDIDOS_TIPO_LOCAL, DIA_DETALLE, P.PEDIDOS_RANGO_HORARIO

go




create view v_TotalNoCobradoPorLocal
as

select LOCAL_NOMBRE, DIA_DETALLE, PEDIDOS_RANGO_HORARIO, SUM(PEDIDOS_MONTO_TOTAL) as 'Total no cobrado' from  BI_Pedidos
	join  BI_Local_Tienda on (LOCAL_CODIGO = PEDIDOS_LOCAL)
	join  BI_Dia on (DIA_ID = PEDIDOS_DIA)
where PEDIDOS_ESTADO = 'Estado Mensajeria Cancelado'
group by PEDIDOS_LOCAL, LOCAL_NOMBRE, PEDIDOS_DIA, DIA_DETALLE, PEDIDOS_RANGO_HORARIO

go




create view v_PromedioMensualEnvioPedidoPorLocalidad
as

select LOCALIDAD_DETALLE Localidad, TIEMPO_ANIO ANIO, TIEMPO_MES Mes, AVG(PEDIDOS_MONTO_ENVIOS_PROMEDIO) as 'Valor promedio mensual' from  BI_Pedidos
	join  BI_Tiempo on (TIEMPO_COD = PEDIDOS_TIEMPO)
	join  BI_Localidad on (LOCALIDAD = PEDIDOS_LOCALIDAD)
group by LOCALIDAD_DETALLE,TIEMPO_ANIO, TIEMPO_MES

go





create view v_DesvioEntregaPorMovilidadDiaHorario
as

select PEDIDOS_TIPO_MOVILIDAD as 'Tipo de movilidad', DIA_DETALLE as 'Dia de la semana', PEDIDOS_RANGO_HORARIO as 'Rango horario',AVG(PEDIDOS_DESVIO_ENTREGA_PROMEDIO) as 'Desvio promedio' from  BI_Pedidos
	join  BI_Dia on (DIA_ID = PEDIDOS_DIA)
group by PEDIDOS_TIPO_MOVILIDAD, DIA_DETALLE, PEDIDOS_RANGO_HORARIO
union
select ENVIOS_MENSAJERIA_TIPO_MOVILIDAD as 'Tipo de movilidad', DIA_DETALLE as 'Dia de la semana', ENVIOS_MENSAJERIA_RANGO_HORARIO as 'Rango horario',AVG(ENVIOS_MENSAJERIA_DESVIO_ENTREGA_PROMEDIO) as 'Desvio promedio' from  BI_Envios_Mensajeria
	join  BI_Dia on (DIA_ID = ENVIOS_MENSAJERIA_DIA)
group by ENVIOS_MENSAJERIA_TIPO_MOVILIDAD, DIA_DETALLE, ENVIOS_MENSAJERIA_RANGO_HORARIO

go





create view v_MontoTotalCuponPorMesPorRangoEtario
as

select T.TIEMPO_ANIO ANIO, T.TIEMPO_MES Mes, PEDIDOS_RANGO_ETARIO_USUARIO as 'Rango Etario Usuarios', SUM(PEDIDOS_MONTO_CUPONES_TOTAL) as 'Monto' from  BI_Pedidos
join  BI_Tiempo T on (T.TIEMPO_COD = PEDIDOS_TIEMPO)
group by T.TIEMPO_ANIO, T.TIEMPO_MES, PEDIDOS_RANGO_ETARIO_USUARIO

go





create view v_CalificacionMensualPorLocal
as

select T.TIEMPO_ANIO ANIO, T.TIEMPO_MES Mes, LOCAL_NOMBRE, AVG(PEDIDOS_CALIFICACION_PROMEDIO) as 'Calificacion promedio' from  BI_Pedidos
	join  BI_Tiempo T on (T.TIEMPO_COD = PEDIDOS_TIEMPO)
	join  BI_Local_Tienda on (LOCAL_CODIGO = PEDIDOS_LOCAL)
group by T.TIEMPO_ANIO, T.TIEMPO_MES, PEDIDOS_LOCAL, LOCAL_NOMBRE

go




create view v_TodosLosEnvios
as

select TIEMPO_ANIO ANIO,TIEMPO_MES Mes, PEDIDOS_LOCALIDAD codLocalidad, PEDIDOS_RANGO_ETARIO_REPARTIDOR RangoEtarioRepartidor, SUM(CASE WHEN PEDIDOS_ESTADO = 'Estado Mensajeria Entregado' THEN 1 ELSE 0 END) CantTotalEntregados, SUM(PEDIDOS_CANTIDAD_TOTAL) CantTotal
from  BI_Pedidos
	join  BI_Tiempo on (TIEMPO_COD = PEDIDOS_TIEMPO)
group by TIEMPO_ANIO,TIEMPO_MES, PEDIDOS_LOCALIDAD, PEDIDOS_RANGO_ETARIO_REPARTIDOR
union
select TIEMPO_ANIO ANIO,TIEMPO_MES Mes, ENVIOS_MENSAJERIA_LOCALIDAD Localidad, ENVIOS_MENSAJERIA_RANGO_ETARIO_REPARTIDOR RangoEtarioRepartidor, SUM(CASE WHEN ENVIOS_MENSAJERIA_ESTADO = 'Estado Mensajeria Entregado' THEN 1 ELSE 0 END) CantTotalEntregados, SUM(ENVIOS_MENSAJERIA_CANTIDAD_TOTAL) CantTotal
from  BI_Envios_Mensajeria
	join  BI_Tiempo on (TIEMPO_COD = ENVIOS_MENSAJERIA_TIEMPO)
group by TIEMPO_ANIO,TIEMPO_MES, ENVIOS_MENSAJERIA_LOCALIDAD, ENVIOS_MENSAJERIA_RANGO_ETARIO_REPARTIDOR
go




create view v_PorcentajeEnviosEntregadosMensual
as

select ANIO, Mes, LOCALIDAD_DETALLE, RangoEtarioRepartidor, SUM(CantTotalEntregados) * 100 / SUM(CantTotal) as 'Porcentaje de entregas' from v_TodosLosEnvios
	join  BI_Localidad on (LOCALIDAD = codLocalidad)
group by ANIO, Mes, codLocalidad, LOCALIDAD_DETALLE, RangoEtarioRepartidor

go




create view v_PromedioMensualValorAsegurado
as

select T.TIEMPO_ANIO ANIO, T.TIEMPO_MES Mes, EM.ENVIOS_MENSAJERIA_TIPO_PAQUETE 'Tipo paquete', AVG(ENVIOS_MENSAJERIA_VALOR_ASEGURADO_PROMEDIO) as 'Valor asegurado promedio' from  BI_Envios_Mensajeria EM
	join  BI_Tiempo T on (T.TIEMPO_COD = EM.ENVIOS_MENSAJERIA_TIEMPO)
group by T.TIEMPO_ANIO,T.TIEMPO_MES, EM.ENVIOS_MENSAJERIA_TIPO_PAQUETE

go




create view v_CantReclamosMensualPorLocal
as

select T.TIEMPO_ANIO ANIO, T.TIEMPO_MES, LOCAL_NOMBRE, DIA_DETALLE, RECLAMOS_RANGO_HORARIO, SUM(RECLAMOS_CANTIDAD_TOTAL) as 'Cantidad reclamos' from  BI_Reclamos
	join  BI_Tiempo T on (T.TIEMPO_COD = RECLAMOS_TIEMPO)
	join  BI_Local_Tienda on (LOCAL_CODIGO = RECLAMOS_LOCAL)
	join  BI_Dia on (DIA_ID = RECLAMOS_DIA)
group by T.TIEMPO_ANIO, T.TIEMPO_MES, LOCAL_NOMBRE, DIA_DETALLE, RECLAMOS_RANGO_HORARIO

go




create view v_TiempoPromedioResolucionReclamosPorRangoEtario
as

select T.TIEMPO_ANIO ANIO, T.TIEMPO_MES, RECLAMOS_TIPO, RECLAMOS_RANGO_ETARIO_OPERADOR, AVG(RECLAMOS_TIEMPO_RESOLUCION_PROMEDIO) as 'Tiempo promedio resolucion' from  BI_Reclamos
	join  BI_Tiempo T on (T.TIEMPO_COD = RECLAMOS_TIEMPO)
group by T.TIEMPO_ANIO, T.TIEMPO_MES, RECLAMOS_TIPO, RECLAMOS_RANGO_ETARIO_OPERADOR

go





create view v_MontoMensualGeneradoCuponReclamo
as

select T.TIEMPO_ANIO ANIO, T.TIEMPO_MES Mes, SUM(RECLAMOS_MONTO_CUPONES_TOTAL) as 'Monto Total Cupones' from  BI_Reclamos
join  BI_Tiempo T on (T.TIEMPO_COD = RECLAMOS_TIEMPO)
group by T.TIEMPO_ANIO, T.TIEMPO_MES

go




---------------------------------------------------------------------------------------------------------
---------------------------------------- CONSULTAS SOBRE VISTAS -----------------------------------------
---------------------------------------------------------------------------------------------------------


-- PRUEBA 1:  select * from v_DiasYHorariosMasSolicitadosPorTiempo order by 1,2,3,4

-- PRUEBA 2:  select * from v_TotalNoCobradoPorLocal order by 1,2,3

-- PRUEBA 3:  select * from v_PromedioMensualEnvioPedidoPorLocalidad order by 1,2,3

-- PRUEBA 4:  select * from v_DesvioEntregaPorMovilidadDiaHorario order by 1,2,3

-- PRUEBA 5:  select * from v_MontoTotalCuponPorMesPorRangoEtario order by 1,2,3

-- PRUEBA 6:  select * from v_CalificacionMensualPorLocal order by 1,2,3

-- PRUEBA 7:  select * from v_PorcentajeEnviosEntregadosMensual order by 1,2,3,4

-- PRUEBA 8:  select * from v_PromedioMensualValorAsegurado order by 1,2,3

-- PRUEBA 9:  select * from v_CantReclamosMensualPorLocal order by 1,2,3,4

-- PRUEBA 10: select * from v_TiempoPromedioResolucionReclamosPorRangoEtario order by 1,2,3,4

-- PRUEBA 11: select * from v_MontoMensualGeneradoCuponReclamo order by 1,2,3

