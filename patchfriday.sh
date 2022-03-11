#! /usr/bin/env bash

cd ~/Library/Application\ Support/Übersicht/widgets || exit
rm -f patchfriday.png

IMAGE=$(curl -s https://patchfriday.com/ | \
	 grep img | \
	 sed -e 's/^.*src="//' -e 's/".*$//' | \
     head -1)
curl -s -o /tmp/$$ "https://patchfriday.com/${IMAGE}"
/usr/local/bin/convert /tmp/$$ -resize 500 patchfriday.png
rm /tmp/$$
