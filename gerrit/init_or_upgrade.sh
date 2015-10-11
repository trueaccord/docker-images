#!/usr/bin/env sh
echo Installing plugins
java -jar $GERRIT_WAR init --batch -d /gerrit --no-auto-start --install-plugin=replication --install-plugin=reviewnotes --install-plugin=download-commands

echo Running step 2...
# Rerun the script to download MySQL-connector, bouncy castle, etc.
java -jar $GERRIT_WAR init --batch -d /gerrit --no-auto-start

