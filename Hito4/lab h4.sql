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

alter function F1_CantidadJugadores()