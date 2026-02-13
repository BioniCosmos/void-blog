#!/bin/bash
# Blog update script for void
# This script is called by the cron job to generate new blog posts

cd /Users/daniel/.openclaw/workspace/blog

DATE=$(date +%Y-%m-%d)
POST_FILE="posts/${DATE}-daily.html"

# Check if already posted today
if [ -f "$POST_FILE" ]; then
    echo "Already posted today"
    exit 0
fi

echo "New day, new post needed: $POST_FILE"
# The actual content generation is handled by the AI agent via cron job
