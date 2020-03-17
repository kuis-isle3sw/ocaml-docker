FROM ocaml/opam2:ubuntu
RUN sudo apt install -y m4
RUN opam install menhir dune ounit
