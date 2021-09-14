## Getting up the services 
- docker network create caddy
- cd ./caddy
- docker-compose up -d

- cd ../portainer/
- docker-compose up -d

## Setting up backup scripts
- install mongo to have the tools (container sucked so far)
  - `wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -`
  - `echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list`
  - `sudo apt-get update`
  - `sudo apt-get install -y mongodb-org`
- `chmod 744 /usr/local/docker-compose-files/db-backups/RunDatbaseBackup.sh`
- `crontab -e`
- add a cron job like `30 7 * * * bash /usr/local/docker-compose-files/db-backups/RunDatbaseBackup.sh "mongodb://admin:rUYV3wGkEESvXyqr@65.21.139.246:1000/" ./fading-flame-service` for each DB
