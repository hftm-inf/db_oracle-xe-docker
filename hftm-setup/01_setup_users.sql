alter profile DEFAULT limit password_life_time UNLIMITED;

-- The Base Image is using a Pluggable Database (PDB). There you need to care on which container you store the tablespace.
-- For this reason, the existing tablespace USERS from the base image is uses. Old aproach was:
-- create tablespace emp_tablespace datafile '/opt/oracle/oradata/XE/EMP.DBF' SIZE 100M AUTOEXTEND ON;
-- create user scott identified by tiger default tablespace emp_tablespace;

create user scott identified by tiger quota unlimited on users;
grant connect, resource to scott;

create user vereinuser identified by vereinuser quota unlimited on users;
grant connect, resource to vereinuser;

GRANT CREATE VIEW TO vereinuser,scott;