FROM alpine:latest AS builder
RUN apk add perl perl-utils perl-module-build
RUN cpan TAP::Parser::SourceHandler::pgTAP

FROM alpine:latest
RUN apk add perl postgresql-client
ENV DEST /usr/local/lib/perl5/site_perl/
COPY --from=builder $DEST $DEST
CMD ['pg_prove']
