# Telegram Join — Shared Instructions

## Config

Source: `~/.libertee/telegram.conf`
Required: `BOT_TOKEN`, `CHAT_ID` (default), optional `CHAT_ID_<name>` for multiple contacts.

## Step 1: Get baseline (avoid stale messages)

```bash
source ~/.libertee/telegram.conf
OFFSET=$(curl -s "https://api.telegram.org/bot$BOT_TOKEN/getUpdates" \
  | jq -r '[.result[].update_id] | max // 0')
OFFSET=$((OFFSET + 1))
```

## Step 2: Send message, capture message_id

```bash
SENT=$(curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
  -d "chat_id=$CHAT_ID" \
  --data-urlencode "text=MESSAGE_HERE" \
  -d "parse_mode=Markdown")
MSG_ID=$(echo "$SENT" | jq -r '.result.message_id')
```

## Step 3: Poll for reply to that specific message (5 min timeout)

```bash
REPLY=""
DEADLINE=$(($(date +%s) + 300))
while [ -z "$REPLY" ] && [ $(date +%s) -lt $DEADLINE ]; do
  UPDATES=$(curl -s "https://api.telegram.org/bot$BOT_TOKEN/getUpdates?offset=$OFFSET&timeout=30")
  REPLY=$(echo "$UPDATES" | jq -r \
    ".result[] | select(.message.reply_to_message.message_id == $MSG_ID) | .message.text" \
    | head -1)
  LAST_ID=$(echo "$UPDATES" | jq -r '[.result[].update_id] | max // empty')
  [ -n "$LAST_ID" ] && OFFSET=$((LAST_ID + 1))
done
echo "$REPLY"
```

## Timeout handling

If `$REPLY` is empty after the loop: inform the user in the terminal and offer to wait longer or skip.
