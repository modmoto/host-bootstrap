docker network create caddy
cd ./caddy
docker-compose up -d

cd ../portainer/
docker-compose up -d