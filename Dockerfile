FROM ocaml/opam:alpine
USER root
LABEL org.opencontainers.image.source=https://github.com/kuis-isle3sw/ocaml-docker
RUN apk add m4
RUN opam init --disable-sandboxing -y
RUN opam install menhir dune ounit -y --verbose
RUN echo $'#!/bin/bash -ex\n\
eval $(opam env)' > /root/.bash_profile
RUN chmod +rx /root/.bash_profile
