#!/bin/sh -eu

printf '%s\n' "$INPUT_KEY" > KEY_FILE

chmod 600 KEY_FILE

ssh \
    -o StrictHostKeyChecking=no \
    -i KEY_FILE \
    -p "${INPUT_PORT}" \
    "${INPUT_USER}@${INPUT_HOST}" \
    "${INPUT_CMD}"