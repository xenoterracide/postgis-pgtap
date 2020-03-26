FROM postgis/postgis:9.5-2.5-alpine

ENV PGTAP_VERSION '1.1.0'

RUN apk add --update-cache \
        wget zip \
      && wget https://api.pgxn.org/dist/pgtap/${PGTAP_VERSION}/pgtap-${PGTAP_VERSION}.zip \
      && unzip pgtap-${PGTAP_VERSION}.zip \
      && apk del wget zip \
      && rm -rf /var/cache/apk/*
