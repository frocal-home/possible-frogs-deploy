
 docker-compose & env files for full homeserver setup

## Includes: 

- Media: Jellyfin & Jellyseer + Radarr, Sonarr, Lidarr, Prowlarr & Qbittorrent

- Books: Calibre, running the management interface on one port and the built in calibre webserver on another

- Dashboards: Running multiple instances of the heimdall dashboard (customizable for multiple users, external tailscale IP, etc)

- Gitea: A gitea container running in a stack with a mysql database

- Tools: Duplicati, Filezilla, Resilio Sync, Backblaze personal backup, youtube-dl


# If you're interested in deploying for yourself:

Install [docker](https://docs.docker.com/engine/install/) on your host machine... & then:

## Method 1 (Docker Compose): 
- Clone the repo or download a .zip (green code button > download as zip, then unzip in a location of your choice)
- "fill out" the env files in each subfolder with your own info using a text editor
- Uncomment the lines as directed in the yaml files (look for "# uncomment lines below to deploy with docker-compose" in the files)
- Then `cd` into each subfolder and run a `docker compose up` command 
- Recommend starting with *tools* as it includes Portainer, which can be helpful

## Method 2 (Portainer + Git):
- Fork the repo 
- Spin up a container for Portainer ([portainer doc here](https://docs.portainer.io/start/install-ce/server/docker/linux))
- Deploy from Stacks > Build Method > Repository


## In development:
- script to automate some of method 1
