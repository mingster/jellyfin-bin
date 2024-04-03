#!/bin/bash

source ./setenv.sh
cd $JELLYFIN_SERVER_DIR

echo 'build jellyfin-server'
dotnet build

echo 'run jellyfin-server'
$JELLYFIN_SERVER_DIR/Jellyfin.Server/bin/Debug/net8.0/jellyfin
