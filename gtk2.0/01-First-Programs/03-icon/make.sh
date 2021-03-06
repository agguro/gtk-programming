#!/bin/bash
rm -rf build/
echo "configure ..."
aclocal
autoconf
automake --add-missing --foreign
echo "building ..."
mkdir build
cp favicon.png /build
cd build
../configure
make
cd ..
rm -rf aclocal.m4 autom4te.cache/ compile configure depcomp install-sh Makefile.in missing
echo "done."
