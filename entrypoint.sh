#!/bin/sh

set -e

service="$1"
node="$(hostname)"

if [ "$service" = "api" ]; then
    echo "Starting $service on $node..."
    # ...
else
    exec "$@"
fi
