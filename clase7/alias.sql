# Alias en SQL
/*
En SQL podemos renombrar el enunciado de una columna
con el motivo de que quede mejor en el reporte.
Nota: No se cambia realmente el nombre de la columna
sino que temporalmente cambia el enunciado para el reporte
Implementamos un alias con la palabra reservada **AS**
(se puede omitir)
*/

SELECT prdNombre AS Producto,
       prdPrecio AS Precio,
       mkNombre AS Marca,
       catNombre AS Categoría
    FROM productos AS p
         JOIN marcas AS m
              ON p.idMarca = m.idMarca
         JOIN categorias as c
              ON p.idCategoria = c.idCategoria;


SELECT  idProducto AS id,
        prdNombre AS Producto,
        prdPrecio AS 'Precio Contado',
        prdPrecio * 1.05 AS 'Precio Lista',
        mkNombre AS Marca,
        catNombre AS Categoría
    FROM productos AS p
    JOIN marcas m
      ON m.idMarca = p.idMarca
    JOIN categorias c
      ON c.idCategoria = p.idCategoria;
