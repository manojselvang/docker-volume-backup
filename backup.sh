#!/bin/bash

set -e

VOLUME_NAME="transaction-logs"
OUTPUT_DIR="$(pwd)/archive"
BACKUP_FILE="backup-$(date +%F-%H%M%S).tar.gz"

mkdir -p "$OUTPUT_DIR"

docker run --rm \
  --name backup-agent \
  -v ${VOLUME_NAME}:/input:ro \
  -v ${OUTPUT_DIR}:/output \
  alpine \
  sh -c "tar -czf /output/${BACKUP_FILE} -C /input ."

echo "Backup created at ${OUTPUT_DIR}/${BACKUP_FILE}"
