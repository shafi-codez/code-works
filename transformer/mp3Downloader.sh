#!/usr/bin/env bash

# Uses ffmped and youtube-dl to download or strip songs from youtube links
# links must be specified in the file which will be input to this program

cat list.txt | while read line
do
  echo $line
  if [ "$line" == "[START]" ]; then
    continue;
  elif [ "$line" == "[END]" ]; then
    echo "End of Scan"
  else
      val=`echo $line | cut -d'=' -f 2`
      echo $val
      if [[ $line =~ .*$val.* ]]; then
        echo "File already downloaded !"
        youtube-dl -x --audio-format mp3 "$line"
      else
        echo "Downloading file ...."
        youtube-dl -x --audio-format mp3 "$line"
      fi
  fi
done

echo "--- Listing all files ----"
echo `ls *`
