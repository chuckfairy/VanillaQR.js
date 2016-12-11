#!/bin/bash

## Requires minify

__dirname=$( dirname "$0" );

echo $__dirname;

cat $__dirname/../VanillaQR.js | minify --js > $__dirname/../VanillaQR.min.js
