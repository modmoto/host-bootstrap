docker network create web
cd ./caddy
docker-compose up -d

cd ../portainer/
docker-compose up -d