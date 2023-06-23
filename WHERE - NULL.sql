-- WHERE | IS NULL, AND, IS NOT NULL | year() | month()
# SELECT * FROM posts WHERE fecha_publicacion > '2025-12-31';
# SELECT * FROM posts WHERE month(fecha_publicacion) = '04';
SELECT * FROM posts WHERE usuario_id IS NOT NULL AND estatus = 'activo' AND id < 50 AND categoria_id = 2 AND year(fecha_publicacion) = '2025';
