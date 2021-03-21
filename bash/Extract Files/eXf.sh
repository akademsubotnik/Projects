#!/bin/bash

# archive formats to consider: .zip , .tar , .rar , .7z , .gz , .gzip , .bz2 , .tgz
if [ "$#" -ne 1 ]; then
	echo "Illegal number of parameters"
elif [ "${1: -4}" == ".zip" ]; then
	echo ".zip file"
	unzip $1
elif [ "${1: -3}" == ".gz" ]; then
	echo ".gz file"
	gunzip $1
elif [ "${1: -4}" == ".bz2" ]; then
	echo ".bz2 file"
	bzip2 -d $1
elif [ "${1: -3}" == ".7z" ]; then
	echo ".7z file"
	7zr e $1
elif [ "${1: -4}" == ".rar" ]; then
	echo ".rar file"
	unrar -e
elif [ "${1: -4}" == ".tgz" ]; then
	echo ".tgz file"
else 
	echo "unsupported file type"
fi
