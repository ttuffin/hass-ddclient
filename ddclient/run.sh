#!/bin/bash

# Ensure the configuration directory exists
mkdir -p /data

# Write the user-provided ddclient configuration
echo "$DDCLIENT_CONF" > /data/ddclient.conf

# Set appropriate permissions for security
chmod 600 /data/ddclient.conf

# Start ddclient with the generated configuration
exec ddclient -foreground -file /data/ddclient.conf

