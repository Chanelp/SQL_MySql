use platziblog;

-- todos los usuarios tengan o no  un post relacionado
 select*
 from usuarios as u
 left join posts as p
 on u.id = p.usuario_id;
 
-- todos los usuarios que no han hecho post
 select*
 from usuarios as u
 left join posts as p
 on u.id = p.usuario_id
 where p.usuario_id IS NULL;

-- todos los post esten o no asociados con un usuario
 select*
 from usuarios as u
 right join posts as p
 on u.id = p.usuario_id;
 
 -- los post que no estan asociados con un usuario
 select*
 from usuarios as u
 right join posts as p
 on u.id = p.usuario_id
 where u.id is null;
 
 -- todos los usuarios que sí hayan hecho posts, con su respectivo post
  select*
 from usuarios as u
 inner join posts as p
 on u.id = p.usuario_id;
 
 -- conjunto universo UNION
  select*
 from usuarios as u
 left join posts as p
 on u.id = p.usuario_id
 UNION
  select*
 from usuarios as u
 right join posts as p
 on u.id = p.usuario_id;
 
 -- los usuarios que no hayan hecho un post, junto con los post que no tiene usuario
   select*
 from usuarios as u
 left join posts as p
 on u.id = p.usuario_id
 where p.usuario_id is NULL
 UNION
  select*
 from usuarios as u
 right join posts as p
 on u.id = p.usuario_id
 where p.usuario_id is NULL;