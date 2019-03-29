# docker-terrortown
A Server for Garry's Mod with default gamemode Trouble in Terrorist Town (TTT)

## Easy setup:
Initial setup:  
`docker run -ti -d -p 27015:27015/udp -p 27015:27015 -p 27005:27005/udp -p 27005:27005 --name terrortown meffie96/terrortown`

The server runs in the background. If you want to see the latest output, use:  
`docker logs terrortown`

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
`-e STEAM_WS_COLL=YOUR_WORKSHOP_COLLECTION_ID_HERE`  
You can find your Workshop Collection ID at the end of the URL.

change the gamemode (default terrortown):  
`-e GAME_MODE=terrortown`

Example:  
`docker run -ti -d -e START_MAP=ttt_minecraft_b5 -e STEAM_WS_COLL=298502203 -p 27015:27015/udp -p 27015:27015 -p 27005:27005/udp -p 27005:27005 --name terrortown meffie96/terrortown`

## Build your own image

1. Save the Dockerfile to your system.
2. (Optional) View and edit the Dockerfile.
3. Build your own image with `docker build -t YOUR_NAME_HERE .` This will take some time.
4. Run your own image with `docker run -ti -d -p 27015:27015/udp -p 27015:27015 -p 27005:27005/udp -p 27005:27005 --name terrortown YOUR_NAME_HERE`
