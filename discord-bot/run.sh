set -e

# Configuration paths
CONFIG_PATH=/data/options.json

# Read configuration with defaults
DISCORD_TOKEN=$(jq --raw-output ".DISCORD_TOKEN // empty" $CONFIG_PATH)
CLIENT_ID=$(jq --raw-output ".CLIENT_ID // empty" $CONFIG_PATH)
CHANNEL_ID=$(jq --raw-output ".CHANNEL_ID // empty" $CONFIG_PATH)
LOG_CHANNEL_ID=$(jq --raw-output ".LOG_CHANNEL_ID // empty" $CONFIG_PATH)

export DISCORD_TOKEN
export CLIENT_ID
export CHANNEL_ID
export LOG_CHANNEL_ID

# Print all environment variables
echo "=== Environment Variables ==="
echo "DISCORD_TOKEN: ${DISCORD_TOKEN:0:10}..."
echo "CLIENT_ID: $CLIENT_ID"
echo "CHANNEL_ID: $CHANNEL_ID"
echo "LOG_CHANNEL_ID: $LOG_CHANNEL_ID"
echo "============================"

# ถ้า image ของนายแค่ต้องถูก start ตาม default CMD/ENTRYPOINT:
exec "$@"
