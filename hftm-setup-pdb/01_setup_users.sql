alter profile DEFAULT limit password_life_time UNLIMITED;

-- The Base Image is using a Pluggable Database (PDB).
alter session set container=xepdb1;

-- Create the tablespace and user for the emp-dept application
create tablespace emp_tablespace datafile '/opt/oracle/oradata/XE/emp.dbf' SIZE 1M AUTOEXTEND ON NEXT 1M MAXSIZE 100M;
create user scott identified by tiger default tablespace emp_tablespace QUOTA UNLIMITED ON emp_tablespace;
grant connect, resource to scott;

-- Create the tablespace and user for the verein application
create tablespace verein_tablespace datafile '/opt/oracle/oradata/XE/verein.dbf' SIZE 10M AUTOEXTEND ON NEXT 10M MAXSIZE 1024M;
create user vereinuser identified by vereinuser default tablespace verein_tablespace QUOTA UNLIMITED ON verein_tablespace;
grant connect, resource to vereinuser;

GRANT CREATE VIEW TO vereinuser,scott;
GRANT CREATE MATERIALIZED VIEW TO vereinuser,scott;