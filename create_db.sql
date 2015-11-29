--connect to postgres

-- Role: ol_admin_group

-- DROP ROLE ol_admin_group;

CREATE ROLE ol_admin_group
  SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION CONNECTION LIMIT 40;
  
-- Role: ol_admin

-- DROP ROLE ol_admin;

CREATE ROLE ol_admin LOGIN
  PASSWORD 'prince'
  SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION CONNECTION LIMIT 40;
GRANT ol_admin_group TO ol_admin;  

--connect to ol_admin

-- Tablespace: ol_db_ts

-- DROP TABLESPACE ol_db_ts

CREATE TABLESPACE ol_db_ts
  OWNER ol_admin_group
  LOCATION 'C:\\Program Files\\PostgreSQL\\9.5\\data\\pg_ol_db_ts';
  
-- Tablespace: ol_db_idx_ts

-- DROP TABLESPACE ol_db_idx_ts

CREATE TABLESPACE ol_db_idx_ts
  OWNER ol_admin_group
  LOCATION 'C:\\Program Files\\PostgreSQL\\9.5\\data\\pg_ol_db_idx_ts';

-- Database: ol_db

-- DROP DATABASE ol_db;

CREATE DATABASE ol_db
  WITH OWNER = ol_admin_group
       ENCODING = 'UTF8'
       TABLESPACE = ol_db_ts
       LC_COLLATE = 'English_United States.1252'
       LC_CTYPE = 'English_United States.1252'
       CONNECTION LIMIT = 40;
	   
-- Schema: ol_main

-- DROP SCHEMA ol_main;

CREATE SCHEMA ol_main
  AUTHORIZATION ol_admin_group;

--Create tables.

--@db_create_postgresql  

--insert data

--@ol_db_seed_data.sql

	   