create database asistencias;
use asistencias;


-- tabla solvencias


create table solvencia(
id_solvencia int auto_increment primary key,
estado_solvencia varchar(15)
);
insert into solvencia(estado_solvencia) values("Solvente");
insert into solvencia(estado_solvencia) values("Insolvente");

-- tabla estudiantes

create table estudiante(
id_estudiante int auto_increment primary key,
nombre_estudiante varchar(20),
apellido_estudiante varchar(20),
carnet_estudiante varchar(50) unique,
password_estudiante varchar(20),
solvenciaID int
);

alter table estudiante add 
FOREIGN KEY (solvenciaID) REFERENCES solvencia (id_solvencia);  

--agregar nuevos estudiantes 

insert into estudiante (nombre_estudiante,apellido_estudiante,carnet_estudiante,password_estudiante,solvenciaID)
values ("Maria Jose","Alvares Flores","1990-12-15892","0000",1);

insert into estudiante (nombre_estudiante,apellido_estudiante,carnet_estudiante,password_estudiante,solvenciaID)
values ("Maria Ester","Martinez","1990-11-15892","0000",1);

insert into estudiante (nombre_estudiante,apellido_estudiante,carnet_estudiante,password_estudiante,solvenciaID)
values ("Jose Antonio","Esteves Chaves","1990-10-15892","0000",2);

insert into estudiante (nombre_estudiante,apellido_estudiante,carnet_estudiante,password_estudiante,solvenciaID)
values ("Mario Alfredo","Tubac Gomez","1990-14-15892","0000",1);

insert into estudiante (nombre_estudiante,apellido_estudiante,carnet_estudiante,password_estudiante,solvenciaID)
values ("Maria Jose","Alvares Flores","1990-13-15892","0000",1);


-- reales
insert into estudiante (nombre_estudiante,apellido_estudiante,carnet_estudiante,password_estudiante,solvenciaID)
values ("Henry Giovani","QUEXEL SOLIS ","1990-18-15829","c029",1);

insert into estudiante (nombre_estudiante,apellido_estudiante,carnet_estudiante,password_estudiante,solvenciaID)
values ("José","Zapeta Pérez","1990-09-4775","c029",1);

insert into estudiante (nombre_estudiante,apellido_estudiante,carnet_estudiante,password_estudiante,solvenciaID)
values ("Jorge Ricardo","Ubico Brooks","1990-09-15892","1234",1);





-- tabla de cursos 


create table cursos(
id_curso int auto_increment primary key,
codigo_curso varchar(50) unique,
nombre_curso varchar(50),
ciclo_curso varchar(50)
);




insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Desarrollo humano y profesional","1990-001","1.er Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Metodologia de la investigacion","1990-002","1.er Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Contabilidad I","1990-003","1.er Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Introduccion a los sistemas de computo","1990-004","1.er Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Logica de sistemas","1990-005","1.er Ciclo");

insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Precalculo","1990-006","2.do Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Algebra lineal","1990-007","2.do Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Algoritmos","1990-008","2.do Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Contabilidad II","1990-009","2.do Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Matematica discreta", "1990-010","2.do Ciclo");

insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Fisica I","1990-011","3.er Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Programacion I","1990-012","3.er Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Calculo I","1990-013","3.er Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Proceso administrativo","1990-014","3.er Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Derecho informatico","1990-015","3.er Ciclo");

insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Microeconomia","1990-016","4.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Programacion II","1990-017","4.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Calculo II","1990-018","4.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Estadistica II","1990-019","4.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Fisica II","1990-020","4.to Ciclo");

insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Metodos numericos","1990-021","5.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Programacion III","1990-022","5.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Emprendedores de negocios","1990-023","5.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Electronica analogica","1990-024","5.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("estadistica II","1990-025","5.to Ciclo");

insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Investigacion de operaciones","1990-026","6.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Base de datos I","1990-027","6.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Automatas y lenguajes formales","1990-028","6.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Sistemas operativos I","1990-029","6.to Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Electronica digital","1990-030","6.to Ciclo");

insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Base de dats II","1990-031","7.mo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Analisis de sistemas I","1990-032","7.mo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Sistemas operativos II","1990-033","7.mo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Arquitectura de computadoras I","1990-034","7.mo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Compiladores","1990-035","7.mo Ciclo");

insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Desarrollo web","1990-036","8.vo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Analisis de sistemas II","1990-037","8.vo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Redes de computadoras I","1990-038","8.vo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Etica profesional","1990-039","8.vo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Arquitectura de computadoras II","1990-040","8.vo Ciclo");

insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Administracion de tecnologias de informacion","1990-041","9.no Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Ingenieria de software","1990-042","9.no Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Proyecto de graduacion I","1990-043","9.no Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Redes de computadoras II","1990-044","9.no Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Inteligencia Artificial","1990-045","9.no Ciclo");

insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Telecomunicaciones","1990-046","10.mo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Seminario de tecnologias de informacion","1990-047","10.mo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Aseguramiento de la calidad del software","1990-048","10.mo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Proyecto de graduarion II","1990-049","10.mo Ciclo");
insert into cursos(nombre_curso, codigo_curso,ciclo_curso) 
values("Seguridad y auditoria de sistemas","1990-050","10.mo Ciclo");


-- table de cursos de estudiantes 

create table curso_estudiante(
id_curso_estudiante int auto_increment primary key,
cursoID int,
estudianteID int
);

alter table curso_estudiante add 
FOREIGN KEY (estudianteID) REFERENCES estudiante (id_estudiante),
add
FOREIGN KEY (cursoID) REFERENCES cursos (id_curso);


--asignar cursos a un estudiante

insert into curso_estudiante (cursoID, estudianteID)
values(1,1);
insert into curso_estudiante (cursoID, estudianteID)
values(2,1);
insert into curso_estudiante (cursoID, estudianteID)
values(3,1);
insert into curso_estudiante (cursoID, estudianteID)
values(4,1);
insert into curso_estudiante (cursoID, estudianteID)
values(5,1);

insert into curso_estudiante (cursoID, estudianteID)
values(6,2);
insert into curso_estudiante (cursoID, estudianteID)
values(7,2);
insert into curso_estudiante (cursoID, estudianteID)
values(8,2);
insert into curso_estudiante (cursoID, estudianteID)
values(9,2);
insert into curso_estudiante (cursoID, estudianteID)
values(10,2);

insert into curso_estudiante (cursoID, estudianteID)
values(11,3);
insert into curso_estudiante (cursoID, estudianteID)
values(12,3);
insert into curso_estudiante (cursoID, estudianteID)
values(13,3);
insert into curso_estudiante (cursoID, estudianteID)
values(14,3);
insert into curso_estudiante (cursoID, estudianteID)
values(15,3);

insert into curso_estudiante (cursoID, estudianteID)
values(36,4);
insert into curso_estudiante (cursoID, estudianteID)
values(37,4);
insert into curso_estudiante (cursoID, estudianteID)
values(38,4);
insert into curso_estudiante (cursoID, estudianteID)
values(39,4);
insert into curso_estudiante (cursoID, estudianteID)
values(40,4);

insert into curso_estudiante (cursoID, estudianteID)
values(1,5);
insert into curso_estudiante (cursoID, estudianteID)
values(2,5);
insert into curso_estudiante (cursoID, estudianteID)
values(3,5);
insert into curso_estudiante (cursoID, estudianteID)
values(4,5);
insert into curso_estudiante (cursoID, estudianteID)
values(5,5);

insert into curso_estudiante (cursoID, estudianteID)
values(1,6);
insert into curso_estudiante (cursoID, estudianteID)
values(2,6);
insert into curso_estudiante (cursoID, estudianteID)
values(3,6);
insert into curso_estudiante (cursoID, estudianteID)
values(4,6);
insert into curso_estudiante (cursoID, estudianteID)
values(5,6);


-- tabla catedratico 

create table catedratico(
id_catedratico int auto_increment primary key,
nombre_catedratico varchar(50),
apellido_catedratico varchar(50),
email_catedratico varchar(50),
password_catedratico varchar(50)
);

--registrar un catedratico 

insert into catedratico(nombre_catedratico,apellido_catedratico,email_catedratico,password_catedratico)
values("catedratico 1","UMG","catedratico1@umg.edu.gt","c28");

insert into catedratico(nombre_catedratico,apellido_catedratico,email_catedratico,password_catedratico)
values("catedratico ","1er ciclo","catedratico2@umg.edu.gt","0000");


-- tabla de cursos que imparte el catedratico

create table curso_catedratico(
id_curso_catedratico int auto_increment primary key,
catedraticoID int,
cursoID int
);

alter table curso_catedratico add 
FOREIGN KEY (catedraticoID) REFERENCES catedratico (id_catedratico),
add  
FOREIGN KEY (cursoID) REFERENCES cursos (id_curso);




-- TABLE DE ASISTENCIAS 


create table asistencias(
id_asistencia int auto_increment primary key,
fecha_asistencia date, 
cursoID int,
estudianteID int
);

ALTER TABLE asistencias ADD 
FOREIGN KEY (cursoID) REFERENCES cursos (id_curso),
add 
FOREIGN KEY (estudianteID) REFERENCES estudiantes (id_estudiante);

-- YYYY-MM-DD

insert into asistencias (fecha_asistencia, cursoID, estudianteID) 
values ("2021-08-27",36,4);
insert into asistencias (fecha_asistencia, cursoID, estudianteID) 
values ("2021-08-27",1,5);
insert into asistencias (fecha_asistencia, cursoID, estudianteID) 
values ("2021-08-27",1,6);


-- insert curso by catedratico

insert into curso_catedratico(catedraticoID,cursoID)
values(1,1);
insert into curso_catedratico(catedraticoID,cursoID)
values(1,36);




















// ============= CONSULTAS  =============== //



--  ver solvencia por carnet 

select nombre_estudiante , s.estado_solvencia"estado" 
from solvencia s, estudiante e where e.solvenciaID = id_solvencia 
and e.carnet_estudiante ="1990-11-15892"
group by nombre_estudiante;

-- ver todos los insolventes 

select nombre_estudiante , s.estado_solvencia"estado" 
from solvencia s, estudiante e where e.solvenciaID = id_solvencia 
and e.solvenciaID = 2
group by nombre_estudiante;

-- ver todos los solventes 

select nombre_estudiante , s.estado_solvencia"estado" 
from solvencia s, estudiante e where e.solvenciaID = id_solvencia 
and e.solvenciaID = 1
group by nombre_estudiante;

-- todos los cursos de un estudiante 

select nombre_curso , nombre_estudiante, apellido_estudiante, carnet_estudiante
from curso_estudiante cc
inner JOIN estudiante e on e.id_estudiante = cc.estudianteID
inner JOIN cursos c on cc.cursoID = c.id_curso 
where cc.estudianteID = 3 
group by nombre_curso;

-- todos los estudiantes de un curso 

select nombre_curso , nombre_estudiante, apellido_estudiante, carnet_estudiante
from curso_estudiante cc
inner JOIN estudiante e on e.id_estudiante = cc.estudianteID
inner JOIN cursos c on cc.cursoID = c.id_curso 
where cc.cursoID = 1 
group by nombre_estudiante;


-- pseudo login 

SELECT id_estudiante, nombre_estudiante, apellido_estudiante,
carnet_estudiante
FROM estudiante
WHERE carnet_estudiante = "1990-09-15892" and password_estudiante = "1234"
group by nombre_estudiante;


-- SELECCIONAR FECHA PARA VER ASISTENCIAS 

select nombre_estudiante, carnet_estudiante, nombre_curso , fecha_asistencia
from asistencias a 
inner JOIN estudiante e on a.estudianteID = e.id_estudiante  
inner JOIN cursos c on a.cursoID = c.id_curso 
where a.cursoID = 1 and a.fecha_asistencia = "2021-08-27"
group by nombre_estudiante;


-- ver los cursos que imparte el catedratico 

select nombre_curso , nombre_catedratico, apellido_catedratico
from curso_catedratico cc
inner JOIN catedratico ca on ca.id_catedratico = cc.catedraticoID
inner JOIN cursos c on cc.cursoID = c.id_curso 
where cc.catedraticoID = 1
group by nombre_curso;




























-- STORE PROCEDURA FOR LOGIN 

CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(_carnet varchar(50), _pass varchar(20))
BEGIN
SELECT id_estudiante, nombre_estudiante, apellido_estudiante,
carnet_estudiante, solvenciaID
FROM estudiante
WHERE carnet_estudiante = _carnet and password_estudiante = _pass
group by nombre_estudiante;
END


-- STORE PROCEDURE FOR USER COURSES 

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserCourses`(_id int)
BEGIN
select nombre_curso , nombre_estudiante, apellido_estudiante, carnet_estudiante
from curso_estudiante cc
inner JOIN estudiante e on e.id_estudiante = cc.estudianteID
inner JOIN cursos c on cc.cursoID = c.id_curso 
where cc.estudianteID = _id
group by nombre_curso;
END



-- STORE PROCEDURE PARA ENVAIR ASISTENCIAS 

CREATE PROCEDURE `sendAssist` (_date date, _cursoID int, _estudianteID int)
BEGIN
insert into asistencias (fecha_asistencia, cursoID, estudianteID) 
values (_date,_cursoID,_estudianteID);
END



-- STORE PROCEDURES FOR SEE ASSISTS

CREATE PROCEDURE `seeAssists` (_idCourse int, _date date)
BEGIN
select nombre_estudiante, carnet_estudiante, nombre_curso , fecha_asistencia
from asistencias a 
inner JOIN estudiante e on a.estudianteID = e.id_estudiante  
inner JOIN cursos c on a.cursoID = c.id_curso 
where a.cursoID = _idCourse and a.fecha_asistencia = _date
group by nombre_estudiante;
END



-- STORE PROCEDURE FOR CATEDRATICO LOGIN 

CREATE PROCEDURE `loginCatedratico` (_email varchar(50),_pass varchar(50))
BEGIN
SELECT id_catedratico, nombre_catedratico, apellido_catedratico
FROM catedratico
WHERE email_catedratico = _email and password_catedratico = _pass
group by nombre_catedratico;
END


-- STORE PROCEDURE CURSOS QUE IMPARTE EL CATEDRATICO 


CREATE PROCEDURE `catCourses` (_id int)
BEGIN
select nombre_curso , nombre_catedratico, apellido_catedratico
from curso_catedratico cc
inner JOIN catedratico ca on ca.id_catedratico = cc.catedraticoID
inner JOIN cursos c on cc.cursoID = c.id_curso 
where cc.catedraticoID = _id
group by nombre_curso;
END



-- STORE PROCEDURE PARA CONTAR FECHAS ENVIADAS

CREATE PROCEDURE `viewStudents` (_id int)
BEGIN
SELECT nombre_estudiante, apellido_estudiante,carnet_estudiante, COUNT(*)"Sabados",
COUNT(*)/0.14"punteo"
FROM asistencias a
inner JOIN estudiante e on e.id_estudiante = a.estudianteID
inner JOIN cursos c on a.cursoID = c.id_curso 
where a.cursoID = _id
group by nombre_estudiante;
END