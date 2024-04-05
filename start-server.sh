#!/bin/bash


source ./setenv.sh

if [ ! -f "$JELLYFIN_SERVER_DIR/Jellyfin.Server/bin/Debug/net8.0/jellyfin" ]
  then
  echo 'build jellyfin-server'
  cd $JELLYFIN_SERVER_DIR
  dotnet build
fi;

echo 'run jellyfin-server'
$JELLYFIN_SERVER_DIR/Jellyfin.Server/bin/Debug/net8.0/jellyfin
