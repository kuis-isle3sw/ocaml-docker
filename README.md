# ocaml-docker

Dockerfile and toolchain for IoPL.

## How to update ocaml-docker

### Update base-compiler, menhir, dune, ounit, or kernel

- (Recommend) Just click "Run workflow" Button in https://github.com/kuis-isle3sw/ocaml-docker/actions/workflows/build.yml
- Or clone this
  - `docker push . -t ghcr.io/kuis-isle3sw/ocaml-docker:${date here}`
  - Get your personal access token in github setting pages
    - cf. https://docs.github.com/ja/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
    - (FIXME) repo, write:packages, delete:packages
  - `echo ${your token here} | docker login ghcr.io -u ${your username here} --password-stdin`
  - `docker push ghcr.io/kuis-isle3sw/ocaml-docker:${date here}`
  - `docker logout`
- Change scratches tag
  - https://github.com/kuis-isle3sw/ocaml-exercise-scratch/blob/54926abd7c09a76d18facf37d0adfcc97149f716/.github/workflows/unittest.yml#L11
  - https://github.com/kuis-isle3sw/interpreter-scratch/blob/1bfd7ab8c44c8f2e264672c233096471f43513cd/.github/workflows/unittest.yml#L11

### Update Dockerfile

- Just push your changes to master and check github actions.
- Change scratches tag
  - https://github.com/kuis-isle3sw/ocaml-exercise-scratch/blob/54926abd7c09a76d18facf37d0adfcc97149f716/.github/workflows/unittest.yml#L11
  - https://github.com/kuis-isle3sw/interpreter-scratch/blob/1bfd7ab8c44c8f2e264672c233096471f43513cd/.github/workflows/unittest.yml#L
