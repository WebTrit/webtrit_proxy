# WebTrit Proxy

## Configuration via environment variables

Env variables descriptions:
* `WEBTRIT_CORE_HOST` - WebTrit Core Host

## Run

Generation of self-signed SSL certificate for testing
```bash
mkdir nginx/ssl && openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout nginx/ssl/private.key \
  -out nginx/ssl/certificate.crt \
  -subj "/C=US/ST=State/L=City/O=Organization/OU=OrgUnit/CN=localhost"
```

Build and run
```bash
docker build --tag webtrit-proxy .

docker run --detach --restart always \
--name webtrit-proxy \
--env WEBTRIT_CORE_HOST="core.demo.webtrit.com" \
-p 80:80 \
-p 443:443 \
webtrit-proxy
```
