#!/bin/bash
cd `dirname $0`
cd ..
hexo clean && hexo g && hexo d -g

echo "pulication done"
echo "backup config"
cp themes/next/_config.yml go/backup/
git add *
current_dateTime="`date +%Y-%m-%d,%H:%m:%s`"
git commit -m "publicate and backup $current_dateTime"
git push
echo "\n backup done \n"
