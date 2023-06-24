#!/bin/bash

mkdir -p build
clang -o build/clox main.c chunk.c debug.c memory.c value.c
build/clox