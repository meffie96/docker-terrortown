#!/bin/bash

./home/steam/gmod/srcds_run -console -game garrysmod +maxplayers ${MAX_PLAYERS} +map ${START_MAP} +gamemode ${GAME_MODE} +host_workshop_collection ${STEAM_WS_COLL}
