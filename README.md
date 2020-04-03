docker-oracle-xe-11g
============================
Oracle 11 XE-Image inklusive der Datenschemen für Kurse DB1 (scott) & DB2 (vereinuser)
  
Image basiert auf das Image von: https://github.com/wnameless/docker-oracle-xe-11g


## Einsatz über Docker-Hub
```
docker pull hftm/oracle-xe-11g
docker run -d --name oradb -p 1521:1521 hftm/oracle-xe-11g
```


## Anmelde-Optionen
```
sql sys/hftadmin AS SYSDBA
sql scott/tiger
sql vereinuser/vereinuser
```

## Troubleshooting mit Docker for Windows
1. Docker-Dienst neustarten!

2. Factory Reset der Docker-Installation

## Image lokal builden
```
docker build -t hftm/oracle-xe-11g .
```