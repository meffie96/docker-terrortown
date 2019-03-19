# Dockerfile for Garry's Mod server
FROM cm2network/steamcmd

# Update steam and install Garry's Mod Server and download Counter Strike Source files
RUN ./home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir "/home/steam/gmod" +app_update 4020 validate +force_install_dir "/home/steam/css" +app_update 232330 +quit

# Add mount config so GMod can find CSS files
RUN  printf '"mountcfg"\n{\n"cstrike" "/home/steam/css/cstrike"\n}\n' >> /home/steam/gmod/garrysmod/cfg/mount.cfg

# Expose configuration folder of Garry's Mod
VOLUME /home/steam/gmod/garrysmod/cfg
VOLUME /home/steam/gmod/garrysmod/addons

# Set environment variables so Player count, startup map and steam workshop collection can easily be changed 
# by the 'docker run' command
ENV MAX_PLAYERS=16
ENV START_MAP=gm_construct
ENV GAME_MODE=terrortown
ENV STEAM_WS_COLL=xxxx

EXPOSE 27005 27015

# Entrypoint
ENTRYPOINT ./home/steam/gmod/srcds_run -console -game garrysmod +maxplayers ${MAX_PLAYERS} +map ${START_MAP} +gamemode ${GAME_MODE} +host_workshop_collection ${STEAM_WS_COLL}
