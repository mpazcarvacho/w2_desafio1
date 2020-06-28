--Semana2 - Desafío 1 - Modelamiento de datos

--CASO1

CREATE DATABASE s1d1c2;

\c s1d1c2

CREATE TABLE departamentos(
    id SERIAL,
    nombre VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE cursos(
    id SERIAL,
    nombre VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE alumnos(
    id SERIAL,
    rut VARCHAR(14) NOT NULL,
    nombre VARCHAR(250) NOT NULL,
    id_curso SMALLINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_curso) REFERENCES cursos(id)
);

CREATE TABLE profesores(
    id SERIAL,
    nombre VARCHAR(200) NOT NULL,
    id_departamento SMALLINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
);

CREATE TABLE pruebas(
    id SERIAL,
    puntaje INT,
    id_profesor SMALLINT,
    id_alumno SMALLINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_profesor) REFERENCES profesores(id),
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id)
);