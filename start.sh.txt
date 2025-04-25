#!/bin/bash

# Download Paper jar if it's not already present
if [ ! -f paper.jar ]; then
  curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/401/downloads/paper-1.21.4-401.jar
fi

# Agree to EULA
echo "eula=true" > eula.txt

# Start server
java -Xms1G -Xmx1G -jar paper.jar nogui

