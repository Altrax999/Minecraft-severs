#!/bin/bash

echo "Starting Minecraft server..."

# Accept the EULA
echo "eula=true" > eula.txt

# Download Paper if it's not already downloaded
if [ ! -f paper-1.21.4.jar ]; then
  echo "Downloading Paper 1.21.4 build 429..."
  curl -o paper-1.21.4.jar https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/429/downloads/paper-1.21.4-429.jar
fi

# Start the server
java -Xms1G -Xmx2G -jar paper-1.21.4.jar nogui




