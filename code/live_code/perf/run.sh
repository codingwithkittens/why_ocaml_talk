#!/usr/bin/env bash

echo
echo C
gcc -O3 test.c
time ./a.out

echo
echo PYTHON
time ./test.py
