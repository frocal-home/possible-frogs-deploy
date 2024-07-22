# homeserver-compose
 
docker-compose & env files for full homeserver setup

includes: 

- Media_Stack: Jellyfin & Jellyseer + Radarr, Sonarr, Lidarr, Prowlarr & Qbittorrent
- Books: Calibre, running the management interface on one port and the built in calibre webserver on another
- Dashboards: Running multiple instances of the heimdall dashboard (customizable for multiple users, external tailscale IP, etc)
- Gitea: A gitea container running in a stack with a mysql database
- Tools: Duplicati, Filezilla, Resilio Sync, Backblaze personal backup, youtube-dl