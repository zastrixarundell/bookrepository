# Use Ruby 2.7.1
FROM ruby:2.7.1

# Directory where everything is stored
WORKDIR /code

# Cope all of the application files to code
COPY . /code

# Install all of the required dependencies
RUN bundle install

# Install Yarn.
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# Run yarn install to install JavaScript dependencies.
RUN yarn install --check-files

# Start the server
CMD ["rails", "server", "-b", "localhost"]