drop database if exists aw;
drop tablespace if exists aw;
drop role if exists aw;

CREATE ROLE aw LOGIN
  ENCRYPTED PASSWORD 'md5733b5e6a2e24f2764086325a28b6013d'
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;

CREATE TABLESPACE aw
  OWNER aw
  LOCATION 'C:\\aw';

CREATE DATABASE aw
  WITH OWNER = aw
       ENCODING = 'UTF8'
       TABLESPACE = aw
       LC_COLLATE = 'German_Germany.1252'
       LC_CTYPE = 'German_Germany.1252'
       CONNECTION LIMIT = -1;