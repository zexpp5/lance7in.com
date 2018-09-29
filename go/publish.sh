#!/bin/bash
cd `dirname $0`
cd ..
hexo clean && hexo g && hexo d -g
echo  "\033[46;37m \n pulication done \n \033[0m"
echo  "\033[46;37m \n backup config \n \033[0m"
cp themes/next/_config.yml go/backup/
git add *
current_dateTime="`date +%Y-%m-%d,%H:%m:%s`"
git commit -m "publicate and backup $current_dateTime"
git push
echo  "\033[46;37m \n backup done \n \033[0m"

