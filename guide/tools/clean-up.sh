#!/bin/bash

# Replace non-ascii ligatures etc. to clean up text/code copied from
# powerpoint or similar. Modifies file in place.
#
# Usage: clean-up.sh file

if [ "$#" -ne 1 ];
then
    echo ""
    echo "Usage: clean-up.sh file"
    echo ""
    exit 1
fi

sed -i -e 's|–|--|g' -e 's|…|\.\.\.|g' \
    -e 's|“|"|g' -e 's|”|"|g' -e "s|’|'|" -e 's|\\\\|\\|g' $1
