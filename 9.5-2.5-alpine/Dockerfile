FROM postgis/postgis:9.5-2.5-alpine

ENV PGTAP_VERSION '1.1.0'

RUN apk add --update-cache \
        build-base git \
      && git clone https://github.com/theory/pgtap.git \
      && git checkout $PGTAP_VERSION \
      && make \
      && make install \
      && make installcheck \
      && apk del build-base git \
      && rm -rf /var/cache/apk/*
