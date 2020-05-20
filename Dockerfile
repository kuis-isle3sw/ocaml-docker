FROM ocaml/opam2:alpine-3.10-opam
USER root
RUN apk add m4
RUN opam init --disable-sandboxing -y
RUN opam install menhir dune ounit -y --verbose
RUN echo $'#!/bin/bash -ex\n\
eval $(opam env)' > /root/.bash_profile
RUN chmod +rx /root/.bash_profile