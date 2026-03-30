#!/bin/bash
set -e

# Start cron daemon as root (node has sudo access)
# We use sudo because the container runs as 'node' user
sudo service cron start || echo "Warning: Failed to start cron service"

# Execute the main command
exec "$@"
