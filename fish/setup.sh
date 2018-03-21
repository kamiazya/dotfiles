#! /usr/bin/env sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.config/fish)"

mkdir -p "$DESTINATION/functions"
mkdir -p "$DESTINATION/completions"
mkdir -p "$DESTINATION/conf.d"

find * -name "*.fish" | while read fn; do
    ln -sfnv "$SOURCE/$fn" "$DESTINATION/$fn"
done
