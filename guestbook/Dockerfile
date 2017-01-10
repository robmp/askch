FROM ruby:2.2.5

# Install dependencies:
RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev postgresql-client --no-install-recommends

# Set an environment variable to store where the app is installed to inside of the Docker image.
ENV INSTALL_PATH /guestbook
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

# Copy in the application code
COPY . .

# Install gems
RUN bundle install

# Start application
CMD bundle exec rake db:migrate && bundle exec rackup -s Puma
