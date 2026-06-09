#!/bin/bash

# This script demonstrates the installation of MongoDB on Ubuntu 18.04 LTS.
# It follows the steps outlined in a typical DigitalOcean tutorial.

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Step 1: Update System Packages ---
echo "Updating package list and upgrading existing packages..."
sudo apt update
sudo apt upgrade -y

# --- Step 2: Install MongoDB ---
# MongoDB is available in Ubuntu's default repositories, but it's often
# recommended to use the official MongoDB repository for the latest versions.
# However, for simplicity in a single-file example, we'll use the default.
# If you were following a comprehensive guide, you'd add the MongoDB GPG key and repo.

echo "Installing MongoDB..."
sudo apt install -y mongodb

# --- Step 3: Start and Enable MongoDB Service ---
# Ensure the MongoDB service starts on boot and is currently running.

echo "Starting and enabling MongoDB service..."
sudo systemctl start mongodb
sudo systemctl enable mongodb

# --- Step 4: Verify MongoDB Status ---
# Check if the MongoDB service is active and running.

echo "Verifying MongoDB service status..."
sudo systemctl status mongodb --no-pager

# --- Step 5: Connect to MongoDB Shell ---
# Demonstrate connecting to the MongoDB instance using the mongo shell.

echo "Connecting to MongoDB shell. Type 'exit' to quit."

# The mongo shell command
# mongo

# For a non-interactive demonstration, we'll just print a success message.
# In a real scenario, you would run 'mongo' here.

echo "MongoDB installation and service start successful."
echo "You can now connect to MongoDB using the 'mongo' command."

exit 0
