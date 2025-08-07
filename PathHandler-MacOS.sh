#!/usr/bin/env bash

: <<EOF

MabelHUB Executable Search Path Extender Utility - MacOS Version
Copyright MabelMedia LLC.

This Script Extends The Executable Search Path To Allow You To Execute Any Of The Binaries Provided By MabelHUB, Or The Apps It Installs.

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