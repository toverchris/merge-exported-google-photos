#!/bin/sh

#You have to enter your own Path where your Google Photos are located#
cd /Users/christopherhohm/Private/Google-Photos

mkdir All-Merged-Google-Photos

for f in *
do 
	if [ $f != "All-Merged-Google-Photos" ]
	then
		rsync -arv --exclude="*.json" "$f/Google Fotos/" All-Merged-Google-Photos/
		rm -R $f
	fi
done

echo "All your photos are merged now!"


echo "Let's delete all the stuff you dont want"

cd All-Merged-Google-Photos

rm -R Archiv
rm -R "Failed Videos"
rm -R Papierkorb

