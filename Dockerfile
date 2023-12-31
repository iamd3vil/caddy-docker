FROM caddy:2.7.6-builder AS builder
LABEL org.openco ntainers.image.source="https://github.com/iamd3vil/caddy-docker"

RUN xcaddy build  --with \
    github.com/caddy-dns/cloudflare

FROM caddy:2.7.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy