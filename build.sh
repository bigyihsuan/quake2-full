#!/bin/bash

Q2DIR="/mnt/d/SteamLibrary/steamapps/common/Quake 2"
DLL="./game/release/gamex86.dll"

if [[ $# < 1 ]]; then
	echo "not enough args"
	echo "usage: $0 mod-folder-name"
	exit -1
fi

folder_name=$1
echo "installing into $Q2DIR/$folder_name"
echo "copying dll..."
cp $DLL "$Q2DIR/$folder_name"
echo "copied"
