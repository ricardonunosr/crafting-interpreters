#!/bin/bash

mkdir -p build
clang -o build/clox main.c
build/clox