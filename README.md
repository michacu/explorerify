# README
* Ruby version - Ruby 2.4.3

* System dependencies - https://www.ruby-lang.org/en/documentation/installation/

* Other dependencies are present in Gemfile

* Configuration run commands:
1. git clone https://github.com/michacu/explorerify.git (download project throught git - need to have git configured - see git docs)
2. cd explorerify (go into project directory)
3. bundle install (install all project dependencies and libraries)

* Database creation:
1. rake db:create

* Database initialization:
1. rake db:migrate

* Database re-creation:
1. rake db:drop
2. rake db:reset
3. rake db:create db:migrate

* Run server:
1. rails s (run server on port 3000)
2. access web throught browser adress: localhost:3000

