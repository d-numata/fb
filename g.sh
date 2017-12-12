#!/bin/sh

git remote -v
git push origin master
<<<<<<< HEAD
cat "https://thawing-bayou-56582.herokuapp.com/ | https://git.heroku.com/thawing-bayou-56582.git"
=======
cat "https://boiling-falls-31557.herokuapp.com/ | https://git.heroku.com/boiling-falls-31557.git"
>>>>>>> origin/master
git add -A
git commit -m "201706231511"
git push heroku master
heroku run rake db:migrate RAILS_ENV=production
heroku config:add SECRET_TOKEN="$(bundle exec rake secret)"
