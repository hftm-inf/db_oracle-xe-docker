Oracle XE-Container-Image
============================
Oracle XE-Image mit Beispiel-Setup für die Datenbank-Kurse an der HFTM.  
Image basiert auf das Image von: https://github.com/gvenzl/oci-oracle-xe
  

## Unterstützte Tags

| Tag | Beschreibung |
| --- | --- |
| `21-db1` | Datenbank mit emp-dept Beispiel |
| `21-db2` | Datenbank mit emp-dept und Vereinsdatenbank-Beispiel |


## Einsatz-Beispiel
```
docker run -d --name oradb -p 1521:1521 ghcr.io/hftm-inf/oracle-db:21-db1
```

*Hinweis: der erste Start des Containers kann 2-3 Minuten in Anspruch nehmen bis du auf die Datenbank zugreifen kannst!*
<br>
<br>
  
Falls du die Daten in einem Volume persistieren möchtest: (Daten werden auf Host in 'oradata' gespeichert.)
```
docker run -d --name oradb -v oracle-volume:/opt/oracle/oradata -p 1521:1521 ghcr.io/hftm-inf/oracle-db:21-db1
```

## Anmeldezugriff mit lokaler SQLcl-Installation  
```
sql sys/hftadmin AS SYSDBA
sql scott/tiger
sql vereinuser/vereinuser
```

## Zugriffsbeispiel über SQLplus in Container
```
docker exec -it oradb sqlplus sys/hftadmin as sysdba
```

## Images anpassen
### Image builden
Wähle das gewünschte Dockerfile:  
- Dockerfile-db1: Datenbank mit emp-dept Beispiel
- Dockerfile-db2: Datenbank mit emp-dept und Vereinsdatenbank-Beispiel
  
```
docker build -t oracle-db -f Dockerfile-db1 .
docker run --rm --name oradb-testing -p 1521:1521 oracle-db
```

### Image pushen
```
docker tag oracle-db ghcr.io/hftm-inf/oracle-db:21-db1
docker push ghcr.io/hftm-inf/oracle-db:21-db1
```

Prüfe das Resultat unter: https://github.com/orgs/hftm-inf/packages/container/package/oracle-db