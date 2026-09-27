#!/usr/bin/env bash
# Adds ElevenLabs music bed + SFX to the rendered reel.
# Needs ELEVENLABS_API_KEY (env or kit .env) and network access to api.elevenlabs.io.
# Paid: ~14 sound generations, once. Reruns reuse existing files for free.
set -euo pipefail
cd "$(dirname "$0")/.."                      # project root: video-projects/claude-business-reel
SKILL=../../.claude/skills/motion-showreel/scripts
node "$SKILL/sfx.mjs" audio/sfx-kit.json audio/sfx
node "$SKILL/mix.mjs" --bed audio/sfx/bed.mp3 --events audio/events.json --out audio/master.wav --length 15 --lufs -14 --bed-gain 0.35
[ -f renders/claude-business-reel.mp4 ] || npx hyperframes render --quality standard --output renders/claude-business-reel.mp4
ffmpeg -v error -y -i renders/claude-business-reel.mp4 -i audio/master.wav -map 0:v -map 1:a -c:v copy -c:a aac -b:a 256k -shortest renders/claude-business-reel-sound.mp4
echo "→ renders/claude-business-reel-sound.mp4"
