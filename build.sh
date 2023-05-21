#!/bin/bash

if [ -f "./winbox.flatpak" ]; then rm ./winbox.flatpak; fi


echo "Build"
flatpak-builder --force-clean winbox com.github.thethink3r.winbox.yml >/dev/null
echo "build-export"
flatpak build-export export winbox >/dev/null
echo "build-bundle"
flatpak build-bundle export winbox.flatpak com.github.thethink3r.winbox >/dev/null




echo "Cleanup"
if [ -d "./.flatpak-builder" ]; then rm -rf ./.flatpak-builder; fi
if [ -d "./export" ]; then rm -rf ./export; fi
if [ -d "./winbox" ]; then rm -rf ./winbox; fi
