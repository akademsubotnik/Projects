#!/bin/bash

# archive formats to consider: .zip , .tar , .rar , .7z , .gz , .gzip , .bz2 , .tgz
if [ "$#" -ne 1 ]; then
	echo "Illegal number of parameters"
elif [ "${1: -4}" == ".zip" ]; then
	echo ".zip file"
elif [ "${1: -4}" == ".tar" ]; then
	echo ".tar file"
elif [ "${1: -4}" == ".rar" ]; then
	echo ".rar file"
elif [ "${1: -3}" == ".7z" ]; then
	echo ".7z file"
elif [ "${1: -3}" == ".gz" ]; then
	echo ".gz file"
	gunzip $1
elif [ "${1: -4}" == ".gzip" ]; then
	echo ".gzip file"
elif [ "${1: -4}" == ".bz2" ]; then
	echo ".bz2 file"
elif [ "${1: -4}" == ".tgz" ]; then
	echo ".tgz file"
else 
	echo "unsupported file type"
fi

