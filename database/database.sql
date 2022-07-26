CREATE TABLE ESTUDIANTES(
     id_estudiante INT NOT NULL AUTO_INCREMENT,
     numero_documento VARCHAR(50) NOT NULL,
     tipo_documento VARCHAR(2) NOT NULL,
     nombre VARCHAR(30) NOT NULL,
     apellido VARCHAR(30) NOT NULL,
     codigo VARCHAR(20) NOT NULL,
     estado BOOLEAN NOT NULL DEFAULT 0,
     PRIMARY KEY(id_estudiante)
);

CREATE TABLE MATERIAS(
    id_materia INT NOT NULL AUTO_INCREMENT,
    nombre_materia VARCHAR(80) NOT NULL,
    creditos INT(2) NOT NULL,
    codigo VARCHAR(10) NOT NULL,
    cupos INT(3) NOT NULL,
    estado BOOLEAN NOT NULL DEFAULT 0,
    PRIMARY KEY(id_materia)
);

CREATE TABLE INSCRIPCION_MATERIAS(
    estado_inscripcion BOOLEAN NOT NULL,
    id_estudiante INT NOT NULL,
    id_materia INT NOT NULL,
    PRIMARY KEY(id_estudiante,id_materia)
);

ALTER TABLE INSCRIPCION_MATERIAS ADD (
    CONSTRAINT ins_fk_ide FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTES(id_estudiante),
    CONSTRAINT ins_fk_idm FOREIGN KEY (id_materia) REFERENCES MATERIAS(id_materia)
);

-- ################################ Insertar datos en Estudiantes #######################
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('1073385271', 'CC', 'Camilo', 'Aguilar', '201521392');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('2184496382', 'CC', 'Santiago', 'Moreno', '201521393');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('3295597493', 'CC', 'Diego', 'Cepeda', '201521394');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('4306608504', 'CC', 'Jerson', 'Ruge', '201521395');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('5417719615', 'CC', 'Guillermo', 'Paez', '201521396');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('6528820726', 'CC', 'Sebastian', 'Chaparro', '201521397');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('7639931837', 'CC', 'Dario', 'Baron', '201521398');
INSERT INTO ESTUDIANTES (numero_documento, tipo_documento, nombre, apellido, codigo) 
VALUES('8740042948', 'CC', 'Maria', 'Latorre', '201521399');

-- ################################ Insertar datos en Materias #######################
-- ########### Primer Semestre #################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Algoritmos y Programacion', 4, '11', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Calculo I', 4, '12', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Catedra Universidad y Entorno', 3, '13', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Competencias Comunicativas', 4, '14', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Socio Humanistica I', 3, '15', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
-- ########### Segundo Semestre #################
VALUES('Algebra Lineal', 3, '21', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Calculo II', 3, '22', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Etica y Politica', 4, '23', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Fisica I', 4, '24', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Programacion I', 4, '25', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Ingles I', 0, '26', 20);
-- ########### Tercer Semestre #################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Calculo III', 3, '31', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Economia', 3, '32', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Expresion Grafica y Geometria Descriptiva', 3, '33', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Fisica II', 4, '34', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Programacion II', 4, '35', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Socio Humanistica II', 3, '36', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Ingles II', 0, '37', 20);
-- ########### Cuarto Semestre #################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Calculo IV', 3, '41', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Fisica III', 4, '42', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Metodologia de la Investigacion y el Desarrollo Experimental', 3, '43', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Probabilidad y Estadistica', 3, '44', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Programacion III', 4, '45', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Ingles III', 0, '46', 20);
-- ########### Quinto Semestre #################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Bases de Datos I', 4, '51', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Electronica General', 4, '52', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Ingenieria de Requisitos', 4, '53', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Metodos Numericos', 3, '54', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Teoria General de Sistemas', 3, '55', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Ingles IV', 0, '56', 20);
-- ########### Sexto Semestre #################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Bases de Datos II', 4, '61', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Comunicaciones', 4, '62', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Ingenieria de Software I', 4, '63', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Investigacion de Operaciones', 4, '64', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Matematicas Discretas', 3, '65', 20);
-- ########### Septimo Semestre #################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Ingenieria de Software II', 4, '71', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Lenguajes Formales', 4, '72', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Sistemas Distribuidos', 3, '73', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Sistemas Operativos', 4, '74', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Transmision de Datos', 4, '75', 20);
-- ########### Octavo Semestre #################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Administracion', 3, '81', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Arquitectura de Computadores', 3, '82', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Inteligencia Computacional', 4, '83', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Redes de Datos', 4, '84', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Trabajo de Campo', 4, '85', 20);
-- ########### Noveno Semestre #################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Auditoria de Sistemas', 3, '91', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Electiva I', 3, '92', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Electiva II', 3, '93', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Gerencia Informatica', 3, '94', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Seminario de Trabajo de Grado', 3, '95', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Simulacion por Computador', 4, '96', 20);
-- ########### Decimo Semestre #################
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Electiva III', 3, '101', 20);
INSERT INTO MATERIAS (nombre_materia, creditos, codigo, cupos) 
VALUES('Electiva IV', 3, '102', 20);