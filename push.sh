#!/bin/sh

#git remote -v
#git push origin master
#cat "https://boiling-falls-31557.herokuapp.com/ | https://git.heroku.com/boiling-falls-31557.git"

NOWTIME=`date "+%Y%m%d%H%M"`
echo $NOWTIME
git add -A
git commit -m $NOWTIME
git push origin master
git push heroku master
#heroku run rake db:migrate RAILS_ENV=production
#heroku config:add SECRET_TOKEN="$(bundle exec rake secret)"
