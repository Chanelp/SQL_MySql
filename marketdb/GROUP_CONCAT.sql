use platziblog;

-- Traer el total de etiquetas de cada post
SELECT posts.titulo, COUNT(*) total
FROM posts
	INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
	INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id
ORDER BY total DESC;

-- Traer etiquetas sobre las que no se ha escrito ningun post
SELECT *
FROM etiquetas
	LEFT JOIN posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
WHERE posts_etiquetas.etiqueta_id IS NULL;

-- Agrupar los posts por los nombres de categoria a los que pertenecen
SELECT posts.titulo, group_concat(nombre)
FROM posts
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id;

