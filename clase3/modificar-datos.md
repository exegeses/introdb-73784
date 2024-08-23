# Modificación de datos (registros) en una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**

> Sintáxis: 

    UPDATE nombreTabla  
        SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2    
        WHERE colID = valorID; 


> Ejemplo práctico  

    UPDATE personas  
        SET  
            nombre = 'Vanessa'  
        WHERE id = 3; 


    UPDATE personas  
        SET  
            apellido = 'Álvares',    
            dni = 32912456    
        WHERE id = 4; 

