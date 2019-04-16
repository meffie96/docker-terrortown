# docker-terrortown
A Server for Garry's Mod with default gamemode Trouble in Terrorist Town (TTT)

## Easy setup:
Initial setup:  
`docker run -ti -d -p 27015:27015/udp -p 27015:27015 -p 27005:27005/udp -p 27005:27005 --name terrortown meffie96/terrortown`

The server runs in the background. If you want to see the latest output, use:  
`docker logs terrortown`

To see the live-output of your server and insert server-commands, use:  
`docker attach terrortown`

Disconnect with:  
`ctrl + p` `ctrl + q`  
Do NOT use ctrl + c, it will stop your server.

Stop the server with:  
`docker stop terrortown`

Restart the server with:  
`docker start terrortown`

## Customize your server by adding the following variables
Change max. players (default 16):  
`-e MAX_PLAYERS=20`

Change the start map (default ttt_bb_teenroom_b2):  
`-e START_MAP=ttt_minecraft_b5`

Change the Steam Workshop Collection (default [298502203](https://steamcommunity.com/sharedfiles/filedetails/?id=298502203)):  
`-e COLLECTION=YOUR_WORKSHOP_COLLECTION_ID_HERE`  
You can find your Workshop Collection ID at the end of the URL. If you want to test something, use my tiny collection with just one map: [1697272655](https://steamcommunity.com/sharedfiles/filedetails/?id=1697272655)

Change the gamemode (default terrortown):  
`-e GAME_MODE=terrortown`

Change the server hostname (default 'TTT-Server powered by Docker')  
`-e HOSTNAME='Hostname with Spaces'`

Change the server password (default Docker)  
`-e PASSWORD=YOUR_PASSWORD_HERE`

Make yourself Admin (default garry):  
`-e ADMIN_NAME=YOUR_STEAM_NAME_HERE -e ADMIN_ID=YOUR_STEAM_ID_HERE`  
To get your Steam-ID:
1. Open `C:\Program Files (x86)\Steam\logs\connection_log.txt` on your PC/Laptop.
2. Go to the bottom of the document and search for `SetSteamID( [U:1:12345678] )`
3. Replace `U` with `0`. Your Steam ID should look like this: `[0:1:12345678]`

Example:  
`docker run -ti -d -e START_MAP=ttt_minecraft_b5 -e COLLECTION=298502203 -p 27015:27015/udp -p 27015:27015 -p 27005:27005/udp -p 27005:27005 --name terrortown meffie96/terrortown`

## Build your own image
1. Save the Dockerfile to your system.
2. (Optional) View and edit the Dockerfile.
3. Build your own image with `docker build -t my_terrortown_image .` This will take some time.
4. Run your own image with `docker run -ti -d -p 27015:27015/udp -p 27015:27015 -p 27005:27005/udp -p 27005:27005 --name my_terrortown_container my_terrortown_image`
