#!/bin/sh

#git remote -v
#git push origin master
#cat "https://thawing-bayou-56582.herokuapp.com/ | https://git.heroku.com/thawing-bayou-56582.git"

NOWTIME=`date "+%Y%m%d%H%M"`
echo $NOWTIME
git add -A
git commit -m $NOWTIME
git push origin master
git push heroku master
#heroku run rake db:migrate RAILS_ENV=production
#heroku config:add SECRET_TOKEN="$(bundle exec rake secret)"
