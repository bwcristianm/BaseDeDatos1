INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero) VALUES
 ('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino',0),
 ('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino',0),
 ('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino',0),
 ('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino',0),
 ('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino',0);

SELECT est.* from estudiantes as est;

SELECT min(est.edad) as min_edad
from estudiantes as est;

SELECT count(est.id_est) as num_de_estudiantes_fem
From estudiantes AS est where est.genero = 'femenino';

SELECT count(est.id_est)
From estudiantes AS est where est.genero = 'femenino';

ALTER TABLE estudiantes ADD licencia_conducir bit;

INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero, licencia_conducir) VALUES
 ('Joel' ,'Tyrell Veliz', 20, 2832115, 'Joel@gmail.com', 'Av. 6 de Agosto', 'masculino',0),
 ('Belen' ,'Stark Veliz', 20, 2832115, 'Belen@gmail.com', 'Av. 6 de Agosto', 'femenino',1);

 INSERT INTO estudiantes (nombres, apellidos, edad, fono, email, direccion, genero, licencia_conducir) VALUES
 ('Jacarys' ,'Targeryan', 23, 2832115, 'jake@gmail.com', 'Av. 6 de Agosto', 'masculino',1);

SELECT count(est.id_est)
from estudiantes as est;

SELECT count(est.licencia_conducir) as numero_de_estudiantes_licencia
from estudiantes as est;

SELECT max(est.edad)
from estudiantes as est;

SELECT max(est.edad)
from estudiantes as est where est.genero = 'femenino' or est.genero = 'masculino' ;

SELECT count(est.id_est)
from estudiantes as est where est.apellidos LIKE '%el%' and est.genero = 'masculino';

SELECT count(est.id_est)
from estudiantes as est where est.edad>20 and edad<30 and est.licencia_conducir=1;

SELECT count(est.id_est)
from estudiantes as est where est.edad between 21 and 29 and est.licencia_conducir=1;

Create table escuela(
id_esc int primary key not null,
nombre varchar (100) not null,
direccion varchar (200) not null,
turno varchar (20) not null,
);

drop table estudiantes

INSERT INTO escuela (id_esc, nombre, direccion, turno) VALUES
 (1111,'San Cristobal' ,'Zona Ballivian calle aspiazu N22', 'tarde'),
 (2222,'Adv. Franz tamayo' ,'AV. TIWANACU N119', 'mañana');