# postgresql-tree-example
Querys para crear tabla con jerarquía usando la extensión ltree de PG

### Crear extensión
```sql
create extension ltree;
```
### Crear Tabla

```sql
CREATE TABLE folder (
	folderId   	SERIAL not null,
	name 	   	TEXT,
	description	varchar(2000),
	label 		TEXT CHECK (label ~* '^[A-Za-z0-9_]{1,255}$'),
    path        ltree,
    level int default 1
);

CREATE INDEX folder_path_idx ON folder USING btree(path);
```
### Insertar data

Ver repositorio data.sql

### Links de referencia

https://hoverbear.org/blog/postgresql-hierarchical-structures/#solution-2-ltree-columns

https://dzone.com/articles/installing-the-postgres-ltree-extension

https://leonardqmarcq.com/posts/modeling-hierarchical-tree-data
