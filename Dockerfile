FROM wnameless/oracle-xe-11g-r2

LABEL maintainer="Simeon Liniger <simeon.liniger@hftm.ch>"

# ENV NLS_LANG=AMERICAN_AMERICA.UTF8

ADD hftm-setup/01_setup_users.sql /docker-entrypoint-initdb.d/
ADD hftm-setup/02_emp-dept_tables.sql /docker-entrypoint-initdb.d/
ADD hftm-setup/03_emp-dept_data.sql /docker-entrypoint-initdb.d/
ADD hftm-setup/04_verein_tables.sql /docker-entrypoint-initdb.d/
ADD hftm-setup/05_verein_data.sql /docker-entrypoint-initdb.d/
ADD hftm-setup/99_syspw.sql /docker-entrypoint-initdb.d/
