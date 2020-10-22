# Book Repository

This is a webapp which I personally use to see all of the books I have. It always shows the count and the price of all of the books I've bought, the series which they belong to, etc.

It shows all of the data with the administrate panel.

Unlike a specific website (\*khm\* bookdepo- ... \*khm\*) it supports multiple induviduals authors when they've written a specific book, huzzah!

## Setup

The only thing which is needed to be setup out of the standard Rails commands is just to set the environment variables.

If you're in development or test mode, you can just edit the `config/application.yml` provided by the [figaro](https://github.com/laserlemon/figaro) gem. There is an `config/application.yml.bak` file you should copy without the `bak` extension and just edit the variables there with the ones you want to use. 

It is preferred that you use normal variables when runing in production though...

For a list of all existing and used variables just look into the `config/application.yml.bak` as it's always listed there.

I plan to use Devise here but this was just a quick fix as I intend to ver-much use the app ASAP.

* To install the gems: `bundle install`
* To start the database: `bundle exec rails db:create`
* To start the migrations: `bundle exec rails db:migrate`
* To start the server: `bundle exec rails s`

## Additional info

As to not create bad data, I have not implemented functionality to automatically create authors, series and categories when you create a book. You will need to make sure all of the wanted categories, authors and series exist before you try to add a book to the database.

## Screenshot

![Books page](https://raw.githubusercontent.com/zastrixarundell/bookrepository/main/github_assets/screenshot.png)

## TODOs

* Use Devise for auth rather than basic auth.
