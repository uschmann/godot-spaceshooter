#!/bin/sh
echo -ne '\033c\033]0;spaceshooter\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/spaceshooter.x86_64" "$@"
