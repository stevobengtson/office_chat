#!/bin/sh

cd /vagrant
# Install local Elixir hex and rebar for the user
/usr/local/bin/mix local.hex --force && /usr/local/bin/mix local.rebar --force
# Install local phoenix archive for the user
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
# Set up and migrate database
mix deps.get && mix ecto.create && mix ecto.migrate
# Run Phoenix seed data script
mix run priv/repo/seeds.exs
# Ensure node modules are installed
npm install
