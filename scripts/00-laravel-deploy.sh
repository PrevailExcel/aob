#!/usr/bin/env bash
set -e  # Stop execution if any command fails

echo "Running composer install..."
composer install --no-dev --optimize-autoloader

echo "Generating application key..."
php artisan key:generate --show

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

echo "Running migrations..."
php artisan migrate --force

echo "Installing Node.js and building Vue frontend..."
sudo apt update && sudo apt install -y nodejs npm
apk add --no-cache nodejs npm

npm install
npm run build

echo "Deployment script completed successfully."
