#!/bin/bash

make distclean

rm -rf /home/astrol/tcc/*

if [ ! "$1" = "" ]; then
	./configure --prefix=/home/astrol/tcc --extra-cflags="-g3 -ggdb -save-temps" --disable-static 
else
	./configure --prefix=/home/astrol/tcc --extra-cflags="-g3 -ggdb -save-temps" 
fi

# bear make ONE_SOURCE=yes 2>&1 | tee build.log && make install
bear make 2>&1 | tee build.log && make install

