#!/bin/sh

pushd /vagrant
# Install local Elixir hex and rebar for the user
/usr/local/bin/mix local.hex --force && /usr/local/bin/mix local.rebar --force
# Set up and migrate database
mix deps.get && mix ecto.create && mix ecto.migrate
# Run Phoenix seed data script
mix run priv/repo/seeds.exs
# Ensure node modules are installed
npm install
popd
