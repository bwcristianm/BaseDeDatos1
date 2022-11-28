CREATE DATABASE defensa_hito4_unifranzitos;
USE defensa_hito4_unifranzitos;
CREATE TABLE campeonato(
id_campeonato Varchar (25) PRIMARY KEY,
nombre_campeonato VARCHAR(100),
sede varchar (30)
);
CREATE TABLE equipo(
id_equipo Varchar (25) PRIMARY KEY,
nombre_equipo VARCHAR(100),
categoria varchar (30),
id_campeonato varchar(30) 
);
CREATE TABLE jugador(
id_jugador Varchar (25) PRIMARY KEY,
nombres VARCHAR(100),
apellidos VARCHAR(100),
ci VARCHAR(50),
edad INTEGER,
id_equipo varchar(50)
);
insert into campeonato(id_campeonato,nombre_campeonato,sede)values
('camp-111','campeonato unifranz','El alto'),
('camp-222','campeonato unifranz','Cochabamba');

insert into equipo(id_equipo,nombre_equipo,categoria,id_campeonato)values
('equ-111','Google','VARONES','camp-111'),
('equ-222','484 Not Found','VARONES','camp-111'),
('equ-333','Girls unifranz','MUJERES','camp-111');

insert into jugador(id_jugador,nombres,apellidos,ci,edad,id_equipo)values
('jug-111','CARLOS','VILLA','8997811LP',19,'equ-222'),
('jug-222','PEDRO','SALAS','8997822LP',20,'equ-222'),
('jug-333','SAUL','ARAJ','8997833LP',21,'equ-222'),
('jug-444','SANDRA','SOLIS','8997844LP',20,'equ-333'),
('jug-555','ANA','MICA','8997855LP',23,'equ-333');
SELECT * from jugador 
SELECT * from equipo
SELECT * from campeonato
SELECT j1.*FROM jugador as j1;

SELECT COUNT(*)FROM jugador where id_equipo='equ-222';

SELECT AVG(edad)FROM jugador;

SELECT MAX(edad)FROM jugador;

SELECT * FROM jugador where id_equipo='equ-333';

alter function F1_CantidadJugadores()returns int as begin  declare @Cantidad_Jugadores int;  select @Cantidad_Jugadores = count(jug.nombres)  from jugador as jug  return @Cantidad_JugadoresEnd;select dbo.F1_CantidadJugadores() as jugadorescreate function F2_CantidadJugadoresParam(@categoria varchar(30))returns integer as  begin   declare @Cantidad_Jugadores int;   select @Cantidad_Jugadores = Count(jug.nombres)   from jugador as jug   inner join equipo as equ on jug.id_equipo = equ.id_equipo   where equ.categoria = @categoria   return @Cantidad_Jugadores end; select dbo.F2_CantidadJugadoresParam('VARONES')as jugadores_inscritos create function F4_ConcatItems( @p1 varchar(100), @p2 varchar(100), @p3 varchar(100) ) returns varchar(100) as begin declare @respuesta varchar(100) declare @concat1 varchar(100) declare @concat2 varchar(100) declare @concat3 varchar(100) set @concat1 = CONCAT('Nombre de los jugadores: ',@p1); set @concat2 = CONCAT('Nombre del equipo: ',@p2); set @concat3 = CONCAT('Sede: ',@p3); set @respuesta = @concat1 + @concat1 + @concat3 return @respuesta; end;alter function funcion_fibonacci(@max int)returns @numbers table(number int)asbegin declare @n1 int=0, @n2 int=1, @i int=0, @temp int insert into @numbers values(@n1),(@n2) while(@i<=@max-2) begin		insert into @numbers values(@n2+@n1)	set @temp = @n2	set @n2 = @n2 + @n1	set @n1 = @temp	set @i += 1 end returnendselect * from dbo.funcion_fibonacci(15);