#!/usr/bin/env bash
set -e

ORIGIN=$(xdg-user-dir DOCUMENTS)
FOLDER="workspace"
DRIVE="my_drive:backups/bkp_notes"
DATE=$(date +%Y-%m-%d_%H-%M)
BKP_FILE="/tmp/backup_${FOLDER}_$DATE.tar.gz"

echo "===> [INFO] Start of Backup Script" && cd "$ORIGIN" || exit 1
echo "===> [INFO] Compressing Folders and Files..." && tar -czf "$BKP_FILE" "$FOLDER" > /dev/null 2>&1
echo "===> [INFO] Making a Copy to the Drive..." && rclone copy "$BKP_FILE" "$DRIVE"
echo "===> [INFO] Deleting Temporarily Created File..." && rm -rfv "$BKP_FILE" > /dev/null 2>&1
echo "===> [SUCCESS] Backup Successfully Completed - $DATE!"
