FROM alpine:latest AS builder
RUN apk add perl perl-util perl-module-build psql
RUN cpan TAP::Parser::SourceHandler::pgTAP

FROM alpine:latest
RUN apk add perl psql
ENV DEST /usr/local/lib/perl5/site_perl/
COPY --from=builder $DEST $DEST
WORKDIR '/'
CMD ['pg_prove']
