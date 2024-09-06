# Consultas con relaciones entre tablas

> Si queremos consultar datos provenientes de dos o más tablas tenemos dos técnicas para lograrlo

## 1.- Table relation

> La técnica **table relation** se logra mencionando en el listado de las tablas (después del **FROM**) todas las tabla necesarias separadas por comas.
> Y luego mediante un filtro (**WHERE**) igualamos la columna en común.

> Sintáxis: 
 
    SELECT colTabla11, colTabla1, colTabla2  
      FROM nombreTabla1, nombreTabla2  
      WHERE nombreTabla1.fk = nombreTabla2.pk;  
 

> Ejemplo práctico: 

    SELECT aeropuerto, precio, nombre, destinos.idRegion  
      FROM destinos, regiones  
      WHERE destinos.idRegion = regiones.idRegion;

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre   
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;


## 2.- Join

> En la técnica **JOIN** no mencionamos 
> en el listado de tablas (después del **FROM**)  todas las tablas necesarias.
> Sólo mencionamos la tabla principal
> Utilizamos la palabra **JOIN** para mencionar la tabla secundaria.
> Y finalizamos igualando la columna en común 
> después de la palabra **ON**

> Sintáxis:

    SELECT colTabla11, colTabla1, colTabla2  
      FROM nombreTabla1  
      JOIN nombreTabla2  
        ON nombreTabla1.fk = nombreTabla2.pk;

> Ejemplo práctico:

    SELECT aeropuerto, precio, nombre    
      FROM destinos  
      JOIN regiones  
        ON destinos.idRegion = regiones.idRegion;

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;

