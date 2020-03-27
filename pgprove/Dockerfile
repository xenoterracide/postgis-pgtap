FROM alpine:latest AS builder
RUN apk add --update-cache perl perl-utils perl-module-build
RUN cpan TAP::Parser::SourceHandler::pgTAP

FROM alpine:latest
RUN apk add --update-cache perl postgresql-client tree && rm -rf /var/cache/apk/*
ENV DEST /usr/local/lib/perl5/site_perl/
COPY --from=builder $DEST $DEST
RUN tree $DEST
COPY --from=builder /usr/local/bin/pg_tapgen /usr/local/bin/pg_tapgen
COPY --from=builder /usr/local/bin/pg_prove /usr/local/bin/pg_prove
CMD ['pg_prove', '--help']
