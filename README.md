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
- `mkdir /usr/local/db-backups/`
- `crontab -e`
- add a cron job like `30 7 * * * bash /usr/local/docker-compose-files/db-backups/RunDatbaseBackup.sh "mongodb://admin:secret@ip:port/" ./identity-service` for each DB

## Setuph SSH
- mkdir .ssh
- cd .ssh
- touch config
- vim config
  ```
  Host shetzi
    Hostname 65.21.139.246
    User root
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/shetzi.ed25519
  ```
- ssh-keygen -t ed25519 -a 420 -f ./shetzi.ed25519 -C "root key simon"
- ssh-copy-id -i shetzi.ed25519.pub shetzi
- ssh-add ./shetzi.ed25519
