#!/bin/bash
echo "Uploading to gdrive..."
gdrive upload /app/downloads/* | tee so.txt >/dev/null 2>&1;
clear;
cat -n so.txt | sed '1d' >m.txt; 
longest=0
for word in $(<m.txt)
do
    len=${#word}
    if (( len > longest ))
    then
        longest=$len
        longword=$word
    fi
done
gdrive share "$longword" ;
clear;
rm /app/downloads/*;
echo "Link: drive.google.com/file/d/$longword" | tee /app/cac/link.txt;
clear;
#"$longest"
