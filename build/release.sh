#!/bin/sh

# Build the assets
cd apps/office_web
./node_modules/brunch/bin/brunch b -p
cd ../../

# Build the digest
mix phoenix.digest

# Build the release
MIX_ENV=prod mix release --env=prod
