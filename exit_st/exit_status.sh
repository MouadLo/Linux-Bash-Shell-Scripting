#!/bin/bash

# exit status range: 0-255
# 256 > 0
# 257 > 1
# 258 > 2


VAR=1

let VAR++
let VAR++
echo "var: $VAR"

let VAR++
let VAR++
echo "var: $VAR"
exit 258

let VAR++
let VAR++
echo "var: $VAR"
