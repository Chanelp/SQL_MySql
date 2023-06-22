## La sentencia SELECT permite proyectar la información, filtrar las columnas que queremos traer, renombrar las columnas y datos pero también hacer datos que se crean en el momento con COUNT

# Seleccionar todo
SELECT * FROM posts;

SELECT titulo, fecha_publicacion, estatus FROM posts;

# Alias- otra forma de llamar al campo
SELECT titulo AS encabezado, fecha_publicacion AS publicado_en, estatus AS estado FROM posts;

# Conteo total de los registros
SELECT COUNT(*) AS cantidadPosts FROM posts;