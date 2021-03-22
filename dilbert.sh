#! /usr/bin/env bash

cd ~/Library/Application\ Support/Übersicht/widgets
rm -f dilbert.gif

date=$(date +"%Y-%m-%d")
image=$(curl -s https://dilbert.com/strip/"${date}" | \
	 grep data-image | \
	 sed -e 's/^.*data-image="//' -e 's/".*//')
curl -s -o /tmp/$$ "${image}"
/usr/local/bin/convert /tmp/$$ -resize 500 dilbert.gif
rm /tmp/$$
