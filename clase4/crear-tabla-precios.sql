create table precios
(
    id tinyint unsigned auto_increment primary key not null,
    aproximado float not null,
    exacto decimal(9,2) not null
);

insert into precios
    values
        ( DEFAULT, 22.5, 22.5 ),
        ( DEFAULT, 29.29, 29.29 ),
        ( DEFAULT, 11.38, 11.38 ),
        ( DEFAULT, 50, 50 ),
        ( DEFAULT, 12.12, 12.12 ),
        ( DEFAULT, 0.5, 0.5 );

-- totalizadores
SELECT SUM(aproximado), SUM(exacto)
    FROM precios;
