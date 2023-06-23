# SELECT estatus, COUNT(*) AS posts_quantity FROM posts GROUP BY estatus;
# SELECT YEAR(fecha_publicacion) AS posts_year, COUNT(*) as posts_quantity FROM posts GROUP BY posts_year;
# SELECT monthname(fecha_publicacion) AS posts_month, COUNT(*) as posts_quantity FROM posts GROUP BY posts_month;

## Agrupar por varios criterios
SELECT estatus, monthname(fecha_publicacion) AS posts_month, COUNT(*) AS posts_quantity FROM posts GROUP BY estatus, posts_month;