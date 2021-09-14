## Getting up the services 
- docker network create caddy
- cd ./caddy
- docker-compose up -d

- cd ../portainer/
- docker-compose up -d

## Setting up backup scripts
- install mongo to have the tools (container sucked so far)
- crontab -e
- add a cron job like `30 7 * * * bash /usr/local/docker-compose-files/DbBackups/RunDatbaseBackup.sh "connectionstring" ./identity-server` for each DB
