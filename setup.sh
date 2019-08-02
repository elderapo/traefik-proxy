#!/usr/bin/env bash

set -e

rm -rf ./.caroot/*.pem

docker network create web || true

CAROOT=volumes/caroot ./.bin/mkcert -uninstall
CAROOT=volumes/caroot ./.bin/mkcert -install > /dev/null 2>&1
CAROOT=volumes/caroot ./.bin/mkcert -install
CAROOT=volumes/caroot .bin/mkcert -cert-file ./volumes/certs/wildcard_loc.crt -key-file ./volumes/certs/wildcard_loc.key "*.dev.loc"

touch volumes/acme/acme.json
chmod 600 volumes/acme/acme.json