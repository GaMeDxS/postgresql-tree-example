--obtiene nivel principal  
SELECT *
FROM folder where level  = 1

-- obtiene 2do nivel del path comercial
SELECT *
FROM folder
WHERE path @ 'comercial' and level = 2

-- obtiene hijos de comercial 
SELECT *
FROM folder
WHERE path < @ (
    SELECT path
    FROM folder
    WHERE label = 'comercial' 
);

-- obtiene padres desde rrhh, último nivel
SELECT *
FROM folder
WHERE path  @> (
    SELECT path
    FROM folder
    WHERE label = 'rrhh' 
);
