FROM python:2.7-alpine
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>

ENTRYPOINT ["/docker-entrypoint.sh"]

# Install required packages, create user and cleanup
COPY requirements.txt /
RUN set -ex \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && apk add --no-cache su-exec \
    && adduser -DH flower

COPY docker-entrypoint.sh /
