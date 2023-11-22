docker run --name banco-domain-oracle -d -e ORACLE_RANDOM_PASSWORD=true -e APP_USER=root -e APP_USER_PASSWORD=toor -p 1521:1521 gvenzl/oracle-xe:latest
