# Consultas en SQL

## Consultas a Server

    -- ver la base de datos activa  
    SELECT DATABASE();  

    -- listar todas las bases de datos
    SHOW DATABASES; 

    -- listar las tablas de una base de datos  
    SHOW TABLES;

> La palabra reservada más importante o al menos la más utilizada para consultas es la palabra **SELECT**

## Consulta a una tabla de una base de datos

> Para realizar consultas a una tabla 
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;  

    SELECT * FROM personas;  
    SELECT * FROM destinos;  

> Cuando hacemos SELECT * FROM nombreTabla estamos trayendo todos los datos de todas las columnas de una tabla.
 
> Si queremos traer los datos de **algunas columnas** de una tabla debemos mencionar los nombres de estas columnas 
> luego de la palabra reservada **SELECT** y separadas por comas.


    SELECT nombreCol2, nombreCol4, nombreCol5  
        FROM nombreTabla;

    SELECT aeropuerto, precio  
        FROM destinos; 

### Orden de resultados

> Para ordenar los resultados de una consulta utilizamos **ORDER BY** y debemos especificar qué columna funciona como criterio de orden

    SELECT *  
	  FROM regiones  
      ORDER BY idRegion;

    SELECT aeropuerto, precio
      FROM destinos  
      ORDER BY precio;

    SELECT aeropuerto, precio  
        FROM destinos  
        ORDER BY idRegion, precio;

### Filtrado de resultados

> Filtrar resultados de una consulta significa traer solamente los registros que cumplan una condición dada.
> Para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condición.

> Traer todos los destinos con un precio hasta 8000

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio <= 8000;  

> Traer todos los destinos con un precio entre 6600 y 8000

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio >= 6600  
      AND precio <= 8000;  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio BETWEEN 6600 AND 8000;  

> Traer todos los destinos de la región 5;

    SELECT aeropuerto, precio    
      FROM destinos  
      WHERE idRegion = 5;  

> Traer todos los destinos de la región 5 
> y además de la región 7

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 5  
        OR idRegion = 7;    

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion IN( 5, 7 );  