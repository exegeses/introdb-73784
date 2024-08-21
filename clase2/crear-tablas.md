# Crear tablas dentro de una base de datos

> Para crear una tabla dentro de una base de datos 
> utilizamos el comando **CREATE TABLE**

> Sintáxis:

    CREATE TABLE nombreTabla   
    ( 
        nombreCampo1 tipoDato características,
        nombreCampo2 tipoDato características,
        nombreCampo3 tipoDato características,
        nombreCampo4 tipoDato características
    );  

> Sintáxis:

    CREATE TABLE personas  
    ( 
        id smallint unsigned auto_increment primary key not null,  
        apellido varchar(50) not null,  
        nombre varchar(50) not null,  
        dni int unsigned unique not null, 
        alta date not null  
    );
