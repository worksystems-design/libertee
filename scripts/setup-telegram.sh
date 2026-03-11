#!/bin/bash
# One-time setup: creates ~/.libertee/telegram.conf
# Only BOT_TOKEN is required. CHAT_ID is optional — sessions can bootstrap dynamically.
# Run: bash scripts/setup-telegram.sh

mkdir -p ~/.libertee

read -p "Enter bot token: " TOKEN
echo "BOT_TOKEN=$TOKEN" > ~/.libertee/telegram.conf

BOT_NAME=$(curl -s "https://api.telegram.org/bot$TOKEN/getMe" | jq -r '.result.username')
echo "✓ Bot token saved."
echo ""
echo "Optional: store a default participant's chat_id for convenience."
echo "Ask them to send any message to: https://t.me/$BOT_NAME"
echo "Waiting 60 seconds (press Ctrl+C to skip)..."

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
  echo "✓ Default participant $NAME (chat_id=$RESPONSE) saved."
else
  echo "Skipped — no default participant stored."
  echo "Sessions will bootstrap dynamically: share https://t.me/$BOT_NAME when prompted."
fi

echo ""
echo "✓ Config written to ~/.libertee/telegram.conf"
