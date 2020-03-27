FROM alpine:latest
RUN apk add --update-cache perl perl-utils perl-module-build perl-dbi perl-dbd-pg postgresql-client \
 && rm -rf /var/cache/apk/*
RUN cpan TAP::Parser::SourceHandler::pgTAP Term::ANSIColor && rm -r ~/.cpan
CMD ['pg_prove', '--help']
