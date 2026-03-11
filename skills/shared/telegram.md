# Telegram Join — Shared Instructions

## Config

Source: `~/.libertee/telegram.conf`
Required: `BOT_TOKEN`, optional `CHAT_ID` (default), optional `CHAT_ID_<name>` for multiple contacts.

## Determining CHAT_ID

Three modes depending on how `--telegram` was called:

| Call | Behavior |
|------|----------|
| `--telegram` | Use `CHAT_ID` from config |
| `--telegram 987654321` | Use that specific chat_id |
| `--telegram new` | Bootstrap dynamically (even if CHAT_ID is set) |

## Step 0: Load config and resolve CHAT_ID

```bash
source ~/.libertee/telegram.conf

OFFSET=$(curl -s "https://api.telegram.org/bot$BOT_TOKEN/getUpdates" \
  | jq -r '[.result[].update_id] | max // 0')
OFFSET=$((OFFSET + 1))

# TELEGRAM_ARG = the value after --telegram ("", a number, or "new")
if [ "$TELEGRAM_ARG" = "new" ] || [ -z "$CHAT_ID" ]; then
  BOT_NAME=$(curl -s "https://api.telegram.org/bot$BOT_TOKEN/getMe" | jq -r '.result.username')
  echo "Share this link with your participant: https://t.me/$BOT_NAME"
  echo "Waiting for them to send any message to the bot..."
  CHAT_ID=""
  while [ -z "$CHAT_ID" ]; do
    UPDATES=$(curl -s "https://api.telegram.org/bot$BOT_TOKEN/getUpdates?offset=$OFFSET&timeout=30")
    CHAT_ID=$(echo "$UPDATES" | jq -r '.result[0].message.chat.id // empty')
    LAST_ID=$(echo "$UPDATES" | jq -r '[.result[].update_id] | max // empty')
    [ -n "$LAST_ID" ] && OFFSET=$((LAST_ID + 1))
  done
  echo "Participant connected (chat_id=$CHAT_ID). Starting session."
elif [ -n "$TELEGRAM_ARG" ] && [ "$TELEGRAM_ARG" != "new" ]; then
  CHAT_ID="$TELEGRAM_ARG"
fi
```

## Step 2: Send message

```bash
curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
  -H "Content-Type: application/json" \
  -d "{\"chat_id\": \"$CHAT_ID\", \"text\": \"MESSAGE_HERE\"}" > /dev/null
```

## Step 3: Poll for next message from this participant (5 min timeout)

```bash
REPLY=""
DEADLINE=$(($(date +%s) + 300))
while [ -z "$REPLY" ] && [ $(date +%s) -lt $DEADLINE ]; do
  UPDATES=$(curl -s "https://api.telegram.org/bot$BOT_TOKEN/getUpdates?offset=$OFFSET&timeout=30")
  REPLY=$(echo "$UPDATES" | jq -r \
    ".result[] | select(.message.chat.id == ($CHAT_ID | tonumber)) | .message.text" \
    | head -1)
  LAST_ID=$(echo "$UPDATES" | jq -r '[.result[].update_id] | max // empty')
  [ -n "$LAST_ID" ] && OFFSET=$((LAST_ID + 1))
done
echo "$REPLY"
```

## Timeout handling

If `$REPLY` is empty after the loop: inform the user in the terminal and offer to wait longer or skip.
