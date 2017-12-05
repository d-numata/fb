#!/bin/sh
NOWTIME=`date "+%Y%m%d%H%M"`
echo $NOWTIME
git add -A
git commit -m $NOWTIME
git push origin master
bundle exec cap production deploy
