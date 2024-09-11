# consulta a través de una tabla intermedia (pivot)
/*
Traer nombre de producto (productos)
Traer nombre de proveedor (proveedores)
*/

SELECT prdNombre AS Producto,
       prvNombre AS Proveedor
  FROM productos AS p
   JOIN productos_proveedores AS pp
     ON p.idProducto = pp.idProducto
   JOIN proveedores p2
     ON p2.idProveedor = pp.idProveedor
   ORDER BY p.idProducto;