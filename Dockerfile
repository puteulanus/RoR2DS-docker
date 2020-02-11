FROM cm2network/steamcmd as steam

RUN ./steamcmd.sh +login anonymous \
    +force_install_dir /home/steam/RoR2DS \
    +@sSteamCmdForcePlatformType windows \
    +app_update 1180760 validate \
    +quit
    
FROM ubuntu:18.04

COPY --from=steam /home/steam/RoR2DS /root/RoR2DS
RUN ln -s /root/RoR2DS/Risk\ of\ Rain\ 2_Data/Config /Config

RUN apt-get update
RUN apt-get -y install xvfb wine-stable lib32gcc1

WORKDIR /root/RoR2DS
EXPOSE 27015/udp

CMD xvfb-run wine ./"Risk of Rain 2.exe"
