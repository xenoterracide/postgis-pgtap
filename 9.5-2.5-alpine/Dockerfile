FROM postgis/postgis:9.5-2.5-alpine AS builder

ENV PGTAP_VERSION '1.1.0'

RUN apk add --update-cache build-base git perl cpan
RUN cpan TAP::Parser::SourceHandler::pgTAP
RUN git clone https://github.com/theory/pgtap.git
WORKDIR pgtap
RUN git checkout v$PGTAP_VERSION
RUN make
RUN make install
