#!/bin/sh
docker build ./bedrock -t bedrock
docker run -d --name=minecraft\
    -v '/dockerdata/minecraft/worlds:/bedrock-server/worlds'\
    -v '/dockerdata/minecraft/server.properties:/bedrock-server/server.properties'\
    --network host\
    --restart=always\
    bedrock
