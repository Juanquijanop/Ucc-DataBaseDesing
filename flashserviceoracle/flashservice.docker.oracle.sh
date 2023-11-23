docker run --name oracle_final \
-p 1521:1521 \
-e ORACLE_DATABASE=flashservice \
-e ORACLE_RANDOM_PASSWORD=yes \
-e TARGET_PDB=flashservice \
-e APP_USER=flashservice \
-e APP_USER_PASSWORD=toor \
-v /home/juanquijano/UCC/Ucc-DataBaseDesing/graduationproject/scripts:/docker-entrypoint-startdb.d \
gvenzl/oracle-free
