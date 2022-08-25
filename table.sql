create extension ltree;

CREATE TABLE folder (
	folderId   	SERIAL not null,
	name 	   	TEXT,
	description	varchar(2000),
	label 		TEXT CHECK (label ~* '^[A-Za-z0-9_]{1,255}$'),
    path        ltree,
    level int default 1
);

CREATE INDEX folder_path_idx ON folder USING btree(path);
