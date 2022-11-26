#!/bin/bash

mkdir -p build
javac -d build com/craftinginterpreters/lox/Lox.java
java -cp build com.craftinginterpreters.lox.Lox $@