CREATE DATABASE universidad2
USE universidad2;
CREATE TABLE materias(
id_mat integer identity PRIMARY KEY not null,
nombre_mat VARCHAR (100) not null,
cod_mat VARCHAR (100) not null

);
CREATE TABLE escuela(
id_esc integer identity PRIMARY KEY not null,
nombre VARCHAR (100) not null,
direccion VARCHAR (100) not null

);
CREATE TABLE periodo(
id_per integer identity PRIMARY KEY not null,
ano_gestion integer not null,
semestre VARCHAR (100) not null

);
CREATE TABLE estudiantes(
id_est_cedula integer identity PRIMARY KEY not null,
nombres VARCHAR (100) not null,
apellidos VARCHAR (100) not null,
sexo VARCHAR (10) not null,
direccion VARCHAR (200) not null,
telefono integer not null,
email VARCHAR (100) not null,
edad integer not null,
id_esc integer not null,

);
CREATE TABLE kardex(
id_kar integer identity PRIMARY KEY not null,
nota_num  integer not null,
nota_alfabe VARCHAR (100) not null,
estado VARCHAR (10) not null,
id_mat integer not null,
id_est_cedula integer not null,
id_per integer not null

FOREIGN KEY (id_mat) REFERENCES materias(id_mat),
FOREIGN KEY (id_est_cedula) REFERENCES estudiantes(id_est_cedula),
FOREIGN KEY (id_per) REFERENCES  periodo(id_per),
);
select * from escuela;
select * from estudiantes;
select * from periodo;
select * from kardex;
select * from materias;
INSERT INTO escuela (nombre, direccion) VALUES ('San Felipe Asturias II', 'Zona Illampu Av. Prol. San Lorenzo');

INSERT INTO estudiantes (nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc) VALUES

  ( 'Ximena', 'Arias Ballesteros', 'femenino', 'Av. 6 de Agosto', 79617575, 'xime@gmail.com', 25, 1);

INSERT INTO estudiantes (nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc) VALUES

  ('Saul', 'Montes Valenzuela', 'masculino', 'Av. 6 de Agosto', 79617576, 'saul@gmail.com', 24, 1);

INSERT INTO estudiantes (nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc) VALUES

  ( 'Carla', 'Mavir Uria', 'femenino', 'Av. 6 de Agosto', 79617577, 'carla@gmail.com', 28, 1);

INSERT INTO estudiantes (nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc) VALUES

  ('Joel', 'Castillo Fuentes', 'masculino', 'Av. 6 de Agosto', 79617578, 'joel@gmail.com', 21, 1);

INSERT INTO estudiantes (nombres, apellidos, sexo, direccion, telefono, email, edad, id_esc) VALUES

  ( 'Augusto', 'Copar Copar', 'femenino', 'Av. 6 de Agosto', 79617579, 'augusto@gmail.com', 20, 1);

INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Introduccion a la Arquitectura','ARQ-101');

INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Urbanismo y Diseno','ARQ-102');

INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Dibujo y Pintura Arquitectonico','ARQ-103');

INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Matematica discreta','ARQ-104');

INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Fisica Basica','ARQ-105');

INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 1');

INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 2');

INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 1');

INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 2');

INSERT INTO periodo (ano_gestion, semestre) VALUES (2018, 'Semestre 1');

INSERT INTO kardex (nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per)
 VALUES ( 51,'cincuenta y uno','APROBADO', 1,6677812, 1 );

 INSERT INTO kardex (nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per)
 VALUES ( 31,'treinta uno','REPROBADO', 2 ,6677813, 2 );

INSERT INTO kardex (nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per)
 VALUES ( 61,'sesenta y uno','APROBADO', 1 ,6677814, 1 );

INSERT INTO kardex (nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per)
 VALUES ( 41,'cuarenta y uno','REPROBADO', 2 ,6677815, 2 );

 INSERT INTO kardex (nota_num, nota_alfabe, estado, id_mat, id_est_cedula, id_per)
 VALUES ( 81,'ochenta y uno','APROBADO', 4 ,6677816, 4 );


select est.nombres, est.apellidos from estudiantes AS est
where est.sexo = 'masculino' and est.edad >= 24;

select est.nombres, est.apellidos, kar.nota_num
from estudiantes as est
INNER JOIN kardex AS kar ON kar.id_est_cedula = est.id_est_cedula
where  kar.nota_num >= 51;

select est.nombres, est.apellidos, est.sexo
 from estudiantes AS est
 inner join kardex AS kar ON kar.id_est_cedula = est.id_est_cedula
where est.sexo = 'masculino' and  kar.nota_num < 51;