#!/bin/bash
python - << EOF
print("Uploading file...")
EOF
gdrive upload /app/downloads/* | tee so.txt;
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
gdrive share "$longword" > /dev/null 2>&1 ;
rm /app/downloads/* > /dev/null 2>&1;
echo "Link: drive.google.com/file/d/$longword" | tee /app/cac/link.txt;
#"$longest"
