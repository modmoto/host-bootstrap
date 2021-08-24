# Getting Started
To get ssh on every container run this here first:

1.	docker network create nginx-proxy
2.	cd /usr/local/w3champions-docker-compose/nginx-proxy
3.  curl https://raw.githubusercontent.com/jwilder/nginx-proxy/master/nginx.tmpl > nginx.tmpl
4.	docker-compose pull && docker-compose up -d

Run a certified container afterwards like
1.  cd ./w3champions-ui
2.  Add the env variables for LETSENCRYPT_HOST and LETSENCRYPT_EMAIL
2.  MONGO_CONNECTION_STRING=http://123.de docker-compose pull && MONGO_CONNECTION_STRING=http://123.de docker-compose up -d

## Backups
We do backups every day at 7:30, into folder `/usr/local/backups-w3c/` on the server. The Script `RunDatbaseBackup.sh` from this repo is run there. List the cronjobs with `crontab -l`, `crontab -e` to edit. 
