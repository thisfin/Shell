#!/bin/bash

if [[ ${#} != 1 ]]; then
    echo 'parameter: filename'
    exit
fi

iconv -f GBk -t UTF-8 ${1} > ${1}.tmp
mv ${1}.tmp ${1}
echo ${1} 'over'

