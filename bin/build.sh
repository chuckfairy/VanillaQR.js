#!/bin/bash

## Requires minify

__dirname=$( dirname "$0" );

echo $__dirname;

cat $__dirname/../VanillaQR.js | minify --js > $__dirname/../VanillaQR.min.js


## module build

module_file="$__dirname/../VanillaQR.module.js"
rm $module_file

cat $__dirname/../VanillaQR.js >> $module_file
cat $__dirname/../footer.js >> $module_file
