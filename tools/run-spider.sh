#!/bin/bash


date

/data/code/my-calibre-server/tools/spider.py

cnt=`ls /data/books/download/weiphone.com/ | wc -l`
if [ $cnt -eq 0 ]; then
    exit 0;
fi

for f in /data/books/download/weiphone.com/*; do
    echo "## Import $f"
    calibredb add --with-library /data/books/library/ "$f"
    mv "$f" /data/books/download/feng.com/;
done

