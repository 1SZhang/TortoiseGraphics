#!/bin/sh

# Directories
SELF_DIR=$(cd $(dirname $0);pwd)
FROM_DIR=$SELF_DIR/../
TO_DIR=$SELF_DIR/Tortoise.playground/
echo "  From: $FROM_DIR"
echo "  To: $TO_DIR"

# Sync sources
echo "Sync sources..."
FROM_SOURCES_DIR=$FROM_DIR/Sources
TO_SOURCES_DIR=$TO_DIR/Sources
if [ ! -e $TO_SOURCES_DIR ]; then
  mkdir -p $TO_SOURCES_DIR
fi
rm -f $TO_SOURCES_DIR/*
cp $FROM_SOURCES_DIR/* $TO_SOURCES_DIR

echo "Done."
