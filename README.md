# homeserver-compose
 
docker-compose & env files for full homeserver setup

## Includes: 

- Media: Jellyfin & Jellyseer + Radarr, Sonarr, Lidarr, Prowlarr & Qbittorrent

- Books: Calibre, running the management interface on one port and the built in calibre webserver on another

- Dashboards: Running multiple instances of the heimdall dashboard (customizable for multiple users, external tailscale IP, etc)

- Gitea: A gitea container running in a stack with a mysql database

- Tools: Duplicati, Filezilla, Resilio Sync, Backblaze personal backup, youtube-dl


# If you're interested in deploying for yourself:

Install docker on your host machine... & then:

## Method 1: 
- Clone the repo, "fill out" the env files in each subfolder with your own info 
- Then `cd` into each subfolder and run a `docker-compose up` command 
- Recommend starting with *tools* as it includes Portainer, which can be helpful

## Method 2:
- Fork the repo 
- Spin up a container for Portainer (ref example: https://github.com/ChristianLempa/boilerplates/blob/main/docker-compose/portainer/compose.yaml)
- Deploy from Stacks > Build Method > Repository