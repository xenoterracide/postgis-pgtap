FROM postgis/postgis:9.5-2.5-alpine

ENV PGTAP_VERSION '1.1.0'

RUN apk add --update-cache build-base git
RUN git clone https://github.com/theory/pgtap.git
WORKDIR pgtap
RUN git checkout $PGTAP_VERSION
RUN make
RUN make install
RUN make installcheck
