use platziblog;

-- Traer la cantidad de posts escritos por categoria
select c.nombre, count(*) cant_posts
from categorias c
inner join posts on c.id = posts.categoria_id
group by c.id
order by cant_posts desc;

-- Traer la cantidad de posts escritos por usuario
select u.nickname, count(*) cant_posts
from usuarios u
inner join posts on u.id = posts.usuario_id
group by u.id
order by cant_posts desc;

-- Tambien la categoria de la que escriben
select u.nickname, count(*) cant_posts, group_concat(distinct nombre)
from usuarios u
inner join posts p on u.id = p.usuario_id
inner join categorias c on c.id = p.categoria_id
group by u.id;

-- Usuarios que no han escrito nada
select *
from usuarios u 
left join posts p on u.id = p.usuario_id
where p.usuario_id IS NULL;

select *
from usuarios u
left join posts p on u.id = p.usuario_id;