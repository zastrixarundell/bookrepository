# Book Repository

This is a simple webapp which I personally use to see all of the books I have. It always shows the count and the price of all of the books I've bought, the series which they belong to, etc. 

Unlike a specific website (\*khm\* bookdepo- ... \*khm\*) it supports multiple induviduals authors when they've written a specific book, huzzah!

## Setup

The only thing which is needed to be setup out of the standard Rails commands is just to set the `ADMIN_USERNAME` and `ADMIN_PASSWORD` environment variables for basic auth. I plan to use Devise here but this was just a quick fix as I intend to ver-much use the app ASAP.

* To install the gems: `bundle install`
* To start the database: `bundle exec rails db:create`
* To start the migrations: `bundle exec rails db:migrate`
* To start the server: `bundle exec rails s`

## Additional info

As to not create bad data, I have not implemented functionality to automatically create authors, series and categories when you create a book. You will need to make sure all of the wanted categories, authors and series exist before you try to add a book to the database.

## TODOs

Use Devise for auth rather than basic auth.
