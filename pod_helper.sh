#!/bin/bash
MY_PODS=(TmallClient-Search-Biz TmallClient-Search-UI-iPhone)

if [ $# -eq 0 ]; then
	for var in ${MY_PODS[*]}
	do
		echo "rm -rf ./Pods/$var"
		rm -rf ./Pods/$var
	done
else
	for var in "$@"
	do 
		echo "rm -rf ./Pods/$var"
		rm -rf ./Pods/$var
	done
fi 

echo "pod install --verbose"
pod install --verbose

echo "open TmallClient-iPhone.xcworkspace"
open TmallClient-iPhone.xcworkspace
