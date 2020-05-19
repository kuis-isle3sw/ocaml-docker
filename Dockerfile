FROM ocaml/opam2:alpine-3.10-opam
USER root
RUN apk add m4
RUN opam init --disable-sandboxing
RUN opam install menhir dune ounit -y --verbose