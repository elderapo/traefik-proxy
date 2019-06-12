# traefik-proxy

## How to run

```bash
git clone git@github.com:elderapo/traefik-proxy.git
cd traefik-proxy
./setup.sh
docker-compose up -d
```

How to fix cloudflare letsencrypt (dns) integration:

1. Set cloudflare SSL mode to `Full`.

<!-- 1. https://www.nodehost.ca/community/d/131-make-let-s-encrypt-work-when-using-cloudflare-acme-challenge
2. Set cloudflre SSL mode to flexible. -->
