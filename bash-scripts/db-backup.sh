#!/bin/bash

# === Load credentials from .env ===
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
else
  echo " .env file not found!"
  exit 1
fi

# === Configuration ===
BACKUP_DIR="./backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

echo " Backing up database..."
mysqldump -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_DIR/db_backup_$TIMESTAMP.sql"

if [ $? -eq 0 ]; then
  echo " Backup successful: $BACKUP_DIR/db_backup_$TIMESTAMP.sql"
else
  echo " Backup failed."
fi
