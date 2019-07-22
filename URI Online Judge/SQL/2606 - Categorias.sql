select p.id,p.name from products p,categories c where p.id_categories=c.id and c.name like 'super%';
