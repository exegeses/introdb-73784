# Proyecto academia

-- tabla alumnos
create table alumnos
(
    idAlumno smallint unsigned auto_increment primary key not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    dni int unsigned unique not null,
    email varchar(60) not null,
    fecha_nac date not null
);

-- tabla areas
create table areas
(
    idArea tinyint unsigned auto_increment primary key not null,
    area varchar(50) not null
);

-- tabla niveles
create table niveles
(
    idNivel tinyint unsigned auto_increment primary key not null,
    nivel varchar(50) not null
);

-- tabla cursos
create table cursos
(
    idCurso smallint unsigned auto_increment primary key not null,
    nombre_curso varchar(70) unique not null,
    matricula decimal(10, 2) unsigned not null,
    idArea tinyint unsigned not null,
    idNivel tinyint unsigned not null,
    foreign key (idArea) references areas (idArea),
    foreign key (idNivel) references niveles (idNivel)
);

-- tabla cursos_alumnos
create table cursos_alumnos
(
    id mediumint unsigned auto_increment primary key not null,
    idCurso smallint unsigned not null,
    idAlumno smallint unsigned not null,
    activo boolean not null,
    foreign key (idCurso) references cursos (idCurso),
    foreign key (idAlumno) references alumnos (idAlumno)
);
