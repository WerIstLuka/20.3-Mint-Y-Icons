#!/bin/bash

mkdir package
cp -r usr/ package
cp -r DEBIAN package
dpkg-deb --root-owner-group --build "package" > /dev/null
mv package.deb 20.3-Mint-Y-Icons.deb
rm -rf package
