# Vistas en SQL
/*
    Una vista es una consulta
    que podemos almacenar dentro de nuestra base de datos
*/
##!!Parece una tabla independiente pero en realidad no lo es

CREATE VIEW lista_precios
  AS
    SELECT  idProducto AS id,
            prdNombre AS Producto,
            prdPrecio AS 'Precio Contado',
            prdPrecio * 1.05 AS 'Precio Lista',
            mkNombre AS Marca,
            catNombre AS Categoría
        FROM productos AS p
           JOIN marcas AS m
              ON p.idMarca = m.idMarca
           JOIN categorias c
              ON p.idCategoria = c.idCategoria;

/* Llamado a una vista */
SELECT * FROM lista_precios;

-- Obtener listado de las vistas dentro de una base de datos
SHOW FULL TABLES
    IN introdb
  WHERE Table_type = 'VIEW';

