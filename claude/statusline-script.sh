#!/usr/bin/env bash
set -o pipefail

# --- input from Claude Code ---
input=$(cat)
model=$(echo "$input" | jq -r '.model.display_name // .model.id // "Claude"')
tpath=$(echo "$input" | jq -r '.transcript_path // empty')

# --- token sum ---
tok=0
if [[ -n "$tpath" && -f "$tpath" ]]; then
  tok=$(
    jq -s '
      [ .[]
        | select(.type=="assistant" and .message.usage!=null)
        | .message.usage.total_tokens
          // ((.message.usage.input_tokens // 0)
          + (.message.usage.output_tokens // 0))
      ] | add // 0
    ' "$tpath" 2>/dev/null || echo 0
  )
fi

# --- colors (24-bit truecolor) ---
BG="#5e5e5e"       # text color inside bubbles
BLUE="#c2c2c2"     # model
PURPLE="#ecf5ed"   # tokens

e=$'\033'
hex2rgb(){ local h=${1#\#}; printf '%d;%d;%d' $((16#${h:0:2})) $((16#${h:2:2})) $((16#${h:4:2})); }
FG(){ IFS=';' read -r r g b <<<"$(hex2rgb "$1")"; printf "%b" "${e}[38;2;${r};${g};${b}m"; }
BGc(){ IFS=';' read -r r g b <<<"$(hex2rgb "$1")"; printf "%b" "${e}[48;2;${r};${g};${b}m"; }
RST(){ printf "%b" "${e}[0m"; }
BOLD(){ printf "%b" "${e}[1m"; }

# Powerline rounded caps (Nerd Fonts / Powerline Extra)
L=$'\ue0b6'  # 
R=$'\ue0b4'  # 

# pill "TEXT" PILL_COLOR TEXT_COLOR
bubble() {
  local text="$1" col="$2" tcol="$3"
  printf "%b%b%s%b%b" \
    "$(RST)$(FG "$col")" "$L" \
    "$(BGc "$col")$(FG "$tcol")" \
    "$text" \
    "${e}[49m$(FG "$col")" "$R" "$(RST)"  # [49m resets bg only
}

# render: two bubbles, no space between them
printf " %s %s\n" \
  "$(bubble "${model,,}" "$BLUE" "$BG")" \
  "$(bubble "⛁ ${tok}" "$PURPLE" "$BG")"
