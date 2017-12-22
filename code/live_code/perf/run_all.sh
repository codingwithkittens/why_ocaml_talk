#!/usr/bin/env bash

./run.sh

echo
echo OCAML
ocamlopt -o test.exe test.ml
time ./test.exe

echo
echo OCAML2
ocamlopt -o test2.exe test2.ml
time ./test2.exe
