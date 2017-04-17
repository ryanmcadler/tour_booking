TourBooking
============

## This is a proof of concept Rails 5 app built using TDD.

## Installation Instructions

Installation is easy; to install, clone the project, create databases referenced in config/database.yml, update global variables in /config/application.rb, install dependencies with `bundle install`, and prepare the database with `rake db:create` and `rake db:migrate`.  Run `rails server` to start the project with the development environment.

In production, you may want to configure an ActionMailer gateway.  For development and test environments, `config.action_mailer.raise_delivery_errors` is set to false.

## Testing

Assuming you have created a test database, run specs by using `rake test`.
