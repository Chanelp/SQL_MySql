-- Tu código aquí 👇
SELECT * FROM usuarios;
SELECT * FROM categorias;
SELECT * FROM etiquetas;
SELECT * FROM posts;
SELECT * FROM posts_etiquetas;

-- 1
CREATE TABLE IF NOT EXISTS comentarios(
  id INTEGER PRIMARY KEY NOT NULL,
  cuerpo_comentario TEXT NOT NULL,
  usuario_id INTEGER NOT NULL,
  post_id INTEGER NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
  FOREIGN KEY (post_id) REFERENCES posts(id)
);

--2 
INSERT INTO comentarios(id, cuerpo_comentario, usuario_id, post_id) VALUES (1, "Un mundo en calma", 2, 54), 
(2, "El enemigo del viento", 1, 43),
(3, "Zona gris", 1, 43);

--3 
SELECT * FROM comentarios;

-- 4
SELECT comentarios.cuerpo_comentario AS comentario ,
usuarios.login AS usuario,
posts.titulo AS post
FROM comentarios
INNER JOIN posts ON posts.id = comentarios.post_id
INNER JOIN usuarios ON usuarios.id = comentarios.usuario_id
WHERE comentarios.usuario_id = 1;


