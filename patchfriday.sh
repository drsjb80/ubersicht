#! /usr/bin/env bash

cd ~/Library/Application\ Support/Übersicht/widgets
rm -f patchfriday.png

IMAGE=$(curl -s https://patchfriday.com/ | \
	 grep img | \
	 sed -e 's/^.*src="//' -e 's/".*$//')
curl -s -o /tmp/$$ "https://patchfriday.com/${IMAGE}"
/usr/local/bin/convert /tmp/$$ -resize 500 patchfriday.png
rm /tmp/$$
