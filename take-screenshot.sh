#!/bin/sh
set -x

YEAR=$(date +"%Y");
MONTH=$(date +"%m");
DAY=$(date +"%d");
HOUR=$(date +"%H");
MINUTE=$(date +"%M");

# Create a directory tree for the day 
# using the current year, month, and day
mkdir -p $BASEDIRECTORY/$YEAR/$MONTH/$DAY

ffmpeg \
    -stats \
    -i http://192.168.1.16:8888/video \
    -strftime 1 \
    -strftime_mkdir 1 \
    -frames:v 1 \
    "$BASEDIRECTORY/$YEAR/$MONTH/$DAY/$HOUR-$MINUTE.jpeg"
