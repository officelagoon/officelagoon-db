CREATE ROLE ol_admin_group
  SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION CONNECTION LIMIT 40;


CREATE ROLE ol_admin LOGIN
  PASSWORD 'prince'
  SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION CONNECTION LIMIT 40; 

--connect to ol_admin
--create directories in os
-- Tablespace: ol_db_ts

-- DROP TABLESPACE ol_db_ts

CREATE TABLESPACE ol_db_ts
  OWNER ol_admin_group
  LOCATION 'C:\\Program Files\\PostgreSQL\\9.4\\data\\pg_ol_db_ts';
  
-- Tablespace: ol_db_idx_ts

-- DROP TABLESPACE ol_db_idx_ts

CREATE TABLESPACE ol_db_idx_ts
  OWNER ol_admin_group
  LOCATION 'C:\\Program Files\\PostgreSQL\\9.4\\data\\pg_ol_db_idx_ts'; 

--Create database ol_db  
  
CREATE DATABASE ol_db
  WITH OWNER = ol_admin_group
       ENCODING = 'UTF8'
       TABLESPACE = ol_db_ts
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = 40;
	   
-- Schema: ol_main

-- DROP SCHEMA ol_main;

--switch to ol_db
-- use ol_db

CREATE SCHEMA ol_main
  AUTHORIZATION ol_admin_group;
   