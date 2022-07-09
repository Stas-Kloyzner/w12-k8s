#!/bin/bash
cat > ./.env << EOL

# Host configuration

PORT=8080
HOST=0.0.0.0
HOST_URL=http://$1:8080
COOKIE_ENCRYPT_PWD=superAwesomePasswordStringThatIsAtLeast32CharactersLong!
NODE_ENV=development

# Okta configuration
OKTA_ORG_URL=$2
OKTA_CLIENT_ID=$3
OKTA_CLIENT_SECRET=$4
# Postgres configuration

PGHOST=$5
PGUSERNAME=$6
PGDATABASE=postgres
PGPASSWORD=$7
PGPORT=$8

POSTGRES_USER=$6
POSTGRES_PASSWORD=$7
EOL