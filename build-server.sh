#!/bin/bash

source ./setenv.sh

echo 'build jellyfin-server'
cd $JELLYFIN_SERVER_DIR
dotnet build
