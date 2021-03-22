#! /usr/bin/env bash

IMAGE=$(curl -s https://patchfriday.com/ | \
	 grep img | \
	 sed -e 's/^.*src="//' -e 's/".*$//')
curl -s -o /tmp/patchfriday.png "https://patchfriday.com/${IMAGE}"
