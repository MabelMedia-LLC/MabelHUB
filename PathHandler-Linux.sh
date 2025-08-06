#!/usr/bin/env bash

: <<EOF

MabelHUB Binary Search Path Extender Utility - Linux Version
Copyright MabelMedia LLC.

This Script Hooks Into Bash's Init Process, And Extends The Search Path To
Allow You To Execute Any Of The Binaries Provided By MabelHUB, Or The Apps It Installs.

EOF

ExtendPath() {
    export PATH="$1:$PATH"
}

ExtendPath "$HOME/MabelHUB"
for AuthorFolder in "$HOME/MabelHUB/Apps"/*; do
    for AppFolder in "$AuthorFolder"/*; do
        ExtendPath "$AppFolder"
    done
done