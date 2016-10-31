#!/bin/bash

path=$(pwd)/${0}
path=$(dirname ${path}})
path=${path}/podspec

echo $path

if [[ ${#} != 1 || ( ${1} != 'tm' && ${1} != 'tb' ) ]]; then
    echo 'parameter [tm/tb]'
    exit
fi

if [${1} == 'tm' ]; then
    echo 'tm'
elif [ ${1} == 'tb' ]; then
    echo 'tb'
fi
