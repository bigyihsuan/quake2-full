#!/bin/bash

Q2DIR="/mnt/d/SteamLibrary/steamapps/common/Quake 2"
DLL="./game/release/gamex86.dll"
if [[ $# < 1 ]]; then
	echo "not enough args"
	echo "usage: $0 mod-folder-name [quake2-dir]"
	exit -1
elif [[ $# > 2 ]]; then
	echo "using given Quake2 directory: $2"
	Q2DIR=$2
else
	echo "using default Quake2 directory: $Q2DIR"
fi

folder_name=$1
echo "installing into $Q2DIR/$folder_name"
echo "copying dll..."
cp $DLL "$Q2DIR/$folder_name" && echo "copied" || echo "ERROR: Failed to copy"
