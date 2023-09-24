#!/bin/sh -e

echo -e "${INPUT_KEY}" > KEY_FILE

chmod 600 KEY_FILE

ssh -o StrictHostKeyChecking=no \
    -i KEY_FILE \
    "${INPUT_USER}@${INPUT_HOST}" \
    "${INPUT_CMD}"

    