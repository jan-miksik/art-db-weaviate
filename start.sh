#!/bin/sh

# Start socat to forward port 80 to 8080
socat TCP-LISTEN:80,fork TCP:localhost:8080 &

# Start socat to forward port 443 to 50051
socat TCP-LISTEN:443,fork TCP:localhost:50051 &

# Start Weaviate
/bin/weaviate --host 0.0.0.0 --port 8080 --scheme http
