#!/usr/bin/env bash

rm -rf ./.caroot/*.pem

CAROOT=.caroot ./.bin/mkcert -uninstall
CAROOT=.caroot ./.bin/mkcert -install > /dev/null 2>&1
CAROOT=.caroot ./.bin/mkcert -install
CAROOT=.caroot .bin/mkcert -cert-file ./volumes/certs/wildcard_loc.crt -key-file ./volumes/certs/wildcard_loc.key "*.aaa.loc"