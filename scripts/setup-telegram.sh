#!/bin/bash
# One-time setup: creates ~/.libertee/telegram.conf
# Run: bash scripts/setup-telegram.sh

mkdir -p ~/.libertee

read -p "Enter bot token: " TOKEN
echo "BOT_TOKEN=$TOKEN" > ~/.libertee/telegram.conf

echo "Now ask your participant to send any message to your bot..."
echo "Waiting for a message (60 seconds)..."

RESPONSE=""
DEADLINE=$(($(date +%s) + 60))
while [ -z "$RESPONSE" ] && [ $(date +%s) -lt $DEADLINE ]; do
  UPDATES=$(curl -s "https://api.telegram.org/bot$TOKEN/getUpdates")
  CHAT_ID=$(echo "$UPDATES" | jq -r '.result[-1].message.chat.id // empty')
  NAME=$(echo "$UPDATES" | jq -r '.result[-1].message.from.first_name // empty')
  [ -n "$CHAT_ID" ] && RESPONSE="$CHAT_ID"
  sleep 3
done

if [ -n "$RESPONSE" ]; then
  echo "CHAT_ID=$RESPONSE" >> ~/.libertee/telegram.conf
  echo "✓ Got chat_id from $NAME: $RESPONSE"
  echo "✓ Config written to ~/.libertee/telegram.conf"
else
  echo "✗ Timeout — no message received. Run setup again."
fi
