FROM postgis/postgis:9.5-2.5-alpine

ENV PGTAP_VERSION = '1.1.0'

RUN apk add --update-cache \
        wget \
      && wget https://api.pgxn.org/dist/pgtap/$PG_TAP_VERSION/pgtap-$PGTAP_VERSION.zip
      && apk del wget
      && rm -rf /var/cache/apk/*
