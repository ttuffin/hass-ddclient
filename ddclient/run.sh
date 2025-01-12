#!/bin/bash

# Ensure the configuration directory exists
mkdir -p /data

# Write the user-provided configuration to ddclient.conf
echo "$DDCLIENT_CONF" > /data/ddclient.conf

# Set appropriate permissions for the configuration file
chmod 600 /data/ddclient.conf

# Start ddclient
exec ddclient -foreground -file /data/ddclient.conf

