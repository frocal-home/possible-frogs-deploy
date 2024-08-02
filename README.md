
 docker-compose & env files for full homeserver setup

## Includes: 

Base: 

- Media: Jellyfin + Radarr, Sonarr, Lidarr, Prowlarr & Qbittorrent

- Books: Calibre, running the management interface on one port and the built in calibre webserver on another

- Dashboards: Running multiple instances of the heimdall dashboard (customizable for multiple users, external tailscale IPs, etc)

- Tools: Duplicati, Filezilla, Resilio Sync, Backblaze personal backup, youtube-dl, nginx proxy manager

Optional:

- Jellyseer: jellyseer is a user request platform for media
- Watchtower: updates containers automatically (you may not want to do this if you are worried about compatibility-breaking-updates, etc)
- Gitea: A gitea container running in a stack with a mysql database


# If you're interested in deploying for yourself:

Install [docker](https://docs.docker.com/engine/install/) on your host machine... & then:

## Method 1 (Portainer + Git, files were designed with this in mind):
- Fork the repo 
- Spin up a container for [Portainer](https://docs.portainer.io/start/install-ce/server/docker/linux)
- Fill in the envs with your information
- Deploy from Stacks > Build Method > Repository

## Method 2 (Docker Compose, more manual but little knowledge of Git or Portainer required): 
- Clone the repo or download a .zip (green code button > download as zip, then unzip in a location of your choice)
- "fill out" the env files in each subfolder with your own info using a text editor
- Uncomment the lines as directed in the yaml files (look for "# uncomment lines below to deploy with docker-compose" in the files)
- Then `cd` into each subfolder and run a `docker compose up` command 
- Recommend starting with *tools* as it includes Portainer, which can be helpful


# In development:
- script to automate some of method 2
