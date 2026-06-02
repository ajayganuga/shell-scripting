#!/bin/bash

# Source directory to backup
SOURCE_DIR="/home/user/data"

# Backup destination
BACKUP_DIR="/home/user/backups"

# Current date and time
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup file name
BACKUP_FILE="backup_$DATE.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Create compressed backup
tar -czf $BACKUP_DIR/$BACKUP_FILE $SOURCE_DIR

# Check status
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
    echo "Backup file: $BACKUP_DIR/$BACKUP_FILE"
else
    echo "Backup failed."
fi
