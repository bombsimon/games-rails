# GamesRails

This is an application to keep track of your (video) game inventory. This
application was originally written in PHP and used to keep track of all my PS3
and PS4 games which does not have a service like Steam.

Years later i decided that it would be fund to re-write this idé in Ruby and
Rails.

## Setup

I've tested this code with Ruby 2.4.1 and Rails 5.1.6. The current version uses
a sqlite3 database.

```
$ bundle install
$ rake db:migrate
$ rake db:seed
$ rake assets:precompile

# Start the server...
$ rails server
```

Both consoles and games are added as `resources` to the routes so to view the
game list, browse to [http://localhost:3000](http://localhost:3000).
