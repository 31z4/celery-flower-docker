FROM python:2.7-alpine
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>

# Install required packages, create user and cleanup
RUN set -ex \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir flower==0.9.1 \
    && apk add --no-cache su-exec \
    && adduser -DH flower

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
