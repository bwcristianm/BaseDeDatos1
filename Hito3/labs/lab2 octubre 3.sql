use LETRAS;
create table conjunto1(
letra char NOT NULL
);
create table conjunto2(
letra char NOT NULL

);
insert INTO conjunto1 (letra)
VALUES ('D'); 
insert INTO conjunto1 (letra)
VALUES ('E'); 
insert INTO conjunto1 (letra)
VALUES ('F'); 
insert INTO conjunto1 (letra)
VALUES ('G'); 
insert INTO conjunto1 (letra)
VALUES ('H');

insert INTO conjunto2 (letra)
VALUES ('A'); 
insert INTO conjunto2 (letra)
VALUES ('B'); 
insert INTO conjunto2 (letra)
VALUES ('E'); 
insert INTO conjunto2 (letra)
VALUES ('H');

SELECT c1.* FROM conjunto1 as c1;
SELECT c2.* FROM conjunto2 as c2;

SELECT c1.letra, c2.letra
 from conjunto1 as c1
 INNER JOIN conjunto2 as c2 on c1.letra=c2.letra;


create table NUMEROS_A(
numero int NOT NULL
);
create table NUMEROS_B(
numero int NOT NULL
);
insert INTO NUMEROS_A (numero)
VALUES ('1'); 
insert INTO NUMEROS_A (numero)
VALUES ('2'); 
insert INTO NUMEROS_A (numero)
VALUES ('3'); 
insert INTO NUMEROS_A (numero)
VALUES ('4'); 
insert INTO NUMEROS_A (numero)
VALUES ('5'); 
insert INTO NUMEROS_A (numero)
VALUES ('6'); 
insert INTO NUMEROS_A (numero)
VALUES ('7'); 

insert INTO NUMEROS_B (numero)
VALUES ('4'); 
insert INTO NUMEROS_B (numero)
VALUES ('5'); 
insert INTO NUMEROS_B (numero)
VALUES ('6'); 
insert INTO NUMEROS_B (numero)
VALUES ('7');
insert INTO NUMEROS_B (numero)
VALUES ('8');
insert INTO NUMEROS_B (numero)
VALUES ('9');


SELECT n1.* FROM NUMEROS_A as n1;
SELECT n2.* FROM NUMEROS_B as n2;

SELECT n1.numero, n2.numero
 from NUMEROS_A as n1
 INNER JOIN NUMEROS_B as n2 on n1.numero=n2.numero;

SELECT n1.numero, n2.numero
 from NUMEROS_A as n1
 INNER JOIN NUMEROS_B as n2 on n1.numero=n2.numero
 where n1.numero>5 and n2.numero>5;





create table NOTAS_P1(
nota int NOT NULL
);
create table NOTAS_P2(
nota int NOT NULL
);
create table NOTAS_P3(
nota int NOT NULL
);
insert INTO NOTAS_P1(nota) VALUES
(51),
(40),
(60),
(75),
(30);
 
 insert INTO NOTAS_P2(nota) VALUES
(60),
(51),
(100);

insert INTO NOTAS_P3(nota) VALUES
(20),
(21),
(23),
(48),
(51),
(60);

SELECT np1.* FROM NOTAS_P1 as np1;
SELECT np2.* FROM NOTAS_P2 as np2;
SELECT np3.* FROM NOTAS_P3 as np3;

SELECT np1.nota, np2.nota, np3.nota
 from NOTAS_P1 as np1
 INNER JOIN NOTAS_P2 as np2 on  np1.nota=np2.nota
 INNER JOIN NOTAS_P3 as np3 on  np2.nota=np3.nota
 where np1.nota>50 and np2.nota>50 and np3.nota>50;