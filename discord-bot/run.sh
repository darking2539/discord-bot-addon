#!/usr/bin/env bash
set -e

DISCORD_TOKEN=$(bashio::config 'DISCORD_TOKEN')
CLIENT_ID=$(bashio::config 'CLIENT_ID')
CHANNEL_ID=$(bashio::config 'CHANNEL_ID')
LOG_CHANNEL_ID=$(bashio::config 'LOG_CHANNEL_ID')

export DISCORD_TOKEN
export CLIENT_ID
export CHANNEL_ID
export LOG_CHANNEL_ID

# ถ้า image ของนายแค่ต้องถูก start ตาม default CMD/ENTRYPOINT:
exec "$@"
