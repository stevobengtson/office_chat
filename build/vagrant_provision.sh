#!/bin/sh

# Set language and locale
apt-get update -qq
apt-get install -yq language-pack-en
locale-gen --purge en_US.UTF-8
echo "LC_ALL='en_US.UTF-8'" >> /etc/environment
dpkg-reconfigure locales

# Install basic packages
# inotify is installed because it's a Phoenix dependency
apt-get install -y -q wget git unzip build-essential ntp inotify-tools

# Install Erlang
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
dpkg -i erlang-solutions_1.0_all.deb
rm erlang-solutions_1.0_all.deb
apt-get -qq update && apt-get install -yq -f esl-erlang elixir

# Postgres
apt-get install -yq postgresql postgresql-contrib
cat << EOF | su - postgres -c psql
ALTER USER postgres WITH ENCRYPTED PASSWORD 'postgres';
EOF

# Make sure we can access the database externally
cd /etc/postgresql/9.5/main/
echo "host all all 192.168.55.0/24 trust" >> pg_hba.conf
echo "listen_addresses='*'" >> postgresql.conf
/etc/init.d/postgresql restart

# Install nodejs and npm
apt-get install -yq nodejs nodejs-legacy npm

# Install imagemagick
apt-get install -yq imagemagick
