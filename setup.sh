#!/usr/bin/env bash

rm -rf ./.caroot/*.pem

docker network create web

CAROOT=volumes/caroot ./.bin/mkcert -uninstall
CAROOT=volumes/caroot ./.bin/mkcert -install > /dev/null 2>&1
CAROOT=volumes/caroot ./.bin/mkcert -install
CAROOT=volumes/caroot .bin/mkcert -cert-file ./volumes/certs/wildcard_loc.crt -key-file ./volumes/certs/wildcard_loc.key "*.dev.loc"