#!/bin/bash

mkdir -p build

# Generate Ast
javac -d build com/craftinginterpreters/tool/GenerateAst.java
java -cp build com.craftinginterpreters.tool.GenerateAst $@ com/craftinginterpreters/lox

javac -d build com/craftinginterpreters/lox/Lox.java
java -cp build com.craftinginterpreters.lox.Lox $@
