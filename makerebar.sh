#!/bin/bash

git clone https://github.com/basho/rebar.git rebar-tmp
cd rebar-tmp
make
cp rebar ..
cd ..
rm -rf rebar-tmp
