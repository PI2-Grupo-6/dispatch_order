#!/bin/bash

LAST_MODIFIED_CONFIG=$(grep -e '.*' .last_modified_config)
CURRENT_MODIFIED_CONFIG=$(date -r .config +%s)
DIFF=$(echo "$LAST_MODIFIED_CONFIG - $CURRENT_MODIFIED_CONFIG" | bc)
if [ "$DIFF" -lt "0" ]; then
    echo "$CURRENT_MODIFIED_CONFIG" > .last_modified_config
    gcc rotina_principal.c -o rotina_principal && ./rotina_principal
fi
