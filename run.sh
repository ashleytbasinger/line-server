#!/bin/bash
# so, maybe rake db:migrate, export the text file, rake db:seed, and start the server
echo "Bundling gems..."
bundle
echo "Creating your database..."
rake db:create
echo "Setting up your database. Shouldn't take too long..."
rake db:setup
echo "Starting your server..."
rails server unicorn