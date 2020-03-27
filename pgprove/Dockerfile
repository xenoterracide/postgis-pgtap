FROM alpine:latest AS builder
RUN apk add --update-cache perl perl-utils perl-module-build
RUN cpan TAP::Parser::SourceHandler::pgTAP

FROM alpine:latest
RUN apk add --update-cache perl postgresql-client && && rm -rf /var/cache/apk/*
ENV DEST /usr/local/lib/perl5/site_perl/
COPY --from=builder $DEST $DEST
CMD ['pg_prove', '--help']
