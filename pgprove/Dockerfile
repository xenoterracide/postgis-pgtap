FROM perl:latest
RUN cpan TAP::Parser::SourceHandler::pgTAP
WORKDIR '/'
CMD ['pg_prove']
