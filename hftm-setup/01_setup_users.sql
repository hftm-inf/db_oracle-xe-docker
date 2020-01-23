alter profile DEFAULT limit password_life_time UNLIMITED;

create tablespace emp_tablespace datafile '/u01/app/oracle/oradata/XE/EMP.DBF' SIZE 100M AUTOEXTEND ON;
create user scott identified by tiger default tablespace emp_tablespace;
grant connect, resource to scott;

create tablespace verein_tablespace datafile '/u01/app/oracle/oradata/XE/VEREIN.DBF' SIZE 100M AUTOEXTEND ON;
create user vereinuser identified by vereinuser default tablespace verein_tablespace;
grant connect, resource to vereinuser;

GRANT CREATE VIEW TO vereinuser,scott;

ALTER SYSTEM SET PROCESSES = 100 scope=spfile;

