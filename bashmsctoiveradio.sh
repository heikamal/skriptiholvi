#! /bin/bash
a=1
base="track"
filetype=".ogg"

for i in *.mp3; do
	filename=$(printf "%s%d%s" "$base" "$a" "$filetype")
	ffmpeg -i "$i" "$filename"
	printf "\ntrack %d done\n" "$a" 
	let a=a+1;
done
