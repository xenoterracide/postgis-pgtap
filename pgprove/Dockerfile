FROM perl:latest AS builder
RUN cpan TAP::Parser::SourceHandler::pgTAP

FROM perl:latest
ENV DEST /usr/local/lib/perl5/site_perl/
COPY --from=builder $DEST $DEST
WORKDIR '/'
CMD ['pg_prove']
