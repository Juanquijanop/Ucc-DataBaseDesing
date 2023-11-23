docker run -d \
  --name flashservicepostgresql \
  -p 5432:5432 \
  -e POSTGRES_PASSWORD=toor \
  -e POSTGRES_DB=flashservice \
  postgres:latest