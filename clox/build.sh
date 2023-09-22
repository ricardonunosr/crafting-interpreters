#!/bin/bash

mkdir -p build
clang -g -o build/clox main.c chunk.c debug.c memory.c value.c vm.c scanner.c compiler.c object.c table.c
build/clox