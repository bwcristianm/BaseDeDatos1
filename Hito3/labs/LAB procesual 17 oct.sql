CREATE DATABASE defensa_hito3_unifranzitos;
USE defensa_hito3_unifranzitos;
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

SELECT j1.nombres, j1.apellidos from jugador as j1 where nombres like 'S%' and apellidos like '%S';

SELECT j1.nombres, j1.apellidos, j1.edad from jugador as j1 where id_equipo = 'equ-222' and j1.edad<=20;

SELECT j1.nombres, j1.apellidos, j1.edad, j1.id_equipo, eq.nombre_equipo, ca.sede from jugador as j1 
INNER JOIN equipo as eq on eq.id_equipo=j1.id_equipo
INNER JOIN campeonato as ca on ca.id_campeonato=eq.id_campeonato
where j1.id_equipo = 'equ-333' and j1.edad>20 and ca.sede='El alto';

SELECT j1.nombres, j1.apellidos, j1.edad, j1.id_equipo, eq.categoria from jugador as j1 
INNER JOIN equipo as eq on eq.id_equipo=j1.id_equipo
where eq.categoria = 'VARONES' and j1.edad>=21;

SELECT COUNT(*)FROM jugador where id_equipo='eq-222';

SELECT COUNT(*)FROM equipo where categoria='VARONES';

SELECT j1.nombres, j1.apellidos, j1.edad, j1.id_equipo, eq.nombre_equipo, ca.sede from jugador as j1 
RIGHT JOIN equipo as eq on eq.id_equipo=j1.id_equipo
RIGHT JOIN campeonato as ca on ca.id_campeonato=eq.id_campeonato
where j1.id_equipo = 'equ-333';

CREATE TABLE premios(
id_campeonato Varchar(25),
id_equipo Varchar(25),
premio VARCHAR(100),
posicion varchar (30)
);
insert into premios(id_campeonato,id_equipo,premio,posicion)values
('camp-111','equ-222','1 televisor','1er lugar'),
('camp-111','equ-111','poleras','2do lugar');
select*from premios;

SELECT j1.nombres, j1.apellidos, eq.id_equipo, pr.posicion, pr.premio from jugador as j1 
INNER JOIN equipo as eq on j1.id_equipo= eq.id_equipo
INNER JOIN premios as pr on pr.id_equipo= j1.id_equipo where pr.posicion='1er lugar';


