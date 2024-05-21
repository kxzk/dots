#!/bin/bash

SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"

if [ -d "$SCREENSHOTS_DIR" ]; then
  rm -f "$SCREENSHOTS_DIR"/*
  echo "[deleted] all screenshots in $SCREENSHOTS_DIR"
else
  echo "[error] directory $SCREENSHOTS_DIR does not exist"
fi
