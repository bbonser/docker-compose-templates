# Example backup script
# This script assumes your docker-compose project is in a directory called "my-docker-project"

# Define variables
TIMESTAMP=$(date +%Y%m%d%H%M%S)
BACKUP_DIR="/path/to/backup/folder"
PROJECT_DIR="/path/to/my-docker-project"

# Create a backup directory with a timestamp
mkdir -p "$BACKUP_DIR/$TIMESTAMP"

# Copy docker-compose.yml and related files
cp "$PROJECT_DIR/docker-compose.yml" "$BACKUP_DIR/$TIMESTAMP/"
# Copy other configuration files, secrets, etc.

# Tar the backup folder for easy distribution
tar -czvf "$BACKUP_DIR/$TIMESTAMP.tar.gz" "$BACKUP_DIR/$TIMESTAMP"

# Clean up older backups if needed
# Implement a retention policy based on your requirements