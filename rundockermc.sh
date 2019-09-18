#!/bin/sh
docker build ./bedrock
docker run -d --name=minecraft\
    -v '/minecraft/worlds:/bedrock-server/worlds'\
    -v '/minecraft/server.properties:/bedrock-server/server.properties'\
    --network host\
    --restart=always\
    bedrock
