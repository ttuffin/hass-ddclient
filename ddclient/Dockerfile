FROM debian:stable-slim

# Install ddclient and dependencies
RUN apt-get update && \
    apt-get install -y ddclient curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the startup script
COPY run.sh /run.sh

# Make the script executable
RUN chmod +x /run.sh

# Set the entrypoint to the script
ENTRYPOINT ["/run.sh"]

