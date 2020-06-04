#!/usr/bin/env bash

# diff is called by git with 7 parameters:
# path old-file old-hex old-mode new-file new-hex new-mode

/usr/local/bin/diffmerge "$2" "$5" &> /dev/null
