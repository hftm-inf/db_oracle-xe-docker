FROM wnameless/oracle-xe-11g-r2

LABEL maintainer="Simeon Liniger <simeon.liniger@hftm.ch>"

ADD hftm-setup/99_syspw.sql /docker-entrypoint-initdb.d/