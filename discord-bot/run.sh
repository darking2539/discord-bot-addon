export DISCORD_TOKEN="$(bashio::config 'DISCORD_TOKEN')"
export CLIENT_ID="$(bashio::config 'CLIENT_ID')"
export CHANNEL_ID="$(bashio::config 'CHANNEL_ID')"
export LOG_CHANNEL_ID="$(bashio::config 'LOG_CHANNEL_ID')"

# Print all environment variables
echo "=== Environment Variables ==="
echo "DISCORD_TOKEN: ${DISCORD_TOKEN:0:10}..."
echo "CLIENT_ID: $CLIENT_ID"
echo "CHANNEL_ID: $CHANNEL_ID"
echo "LOG_CHANNEL_ID: $LOG_CHANNEL_ID"
echo "============================"

exec "$@"
