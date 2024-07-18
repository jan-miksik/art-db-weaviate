FROM semitechnologies/weaviate:1.24.7

# Install socat using apk
RUN apk add --no-cache socat

# Copy the startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Set the startup script as the entry point
ENTRYPOINT ["/start.sh"]
