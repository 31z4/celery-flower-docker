FROM python:3-alpine

ENTRYPOINT ["/docker-entrypoint.sh"]

# Install required packages and create a non-priveleged user
COPY requirements.txt /
RUN set -ex \
    && pip install --no-cache-dir -r requirements.txt \
    && apk add --no-cache su-exec \
    && adduser -DH flower

COPY docker-entrypoint.sh /
