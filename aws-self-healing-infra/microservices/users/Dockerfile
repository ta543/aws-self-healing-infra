# Use the official Ruby image as the base image
FROM ruby:2.7

# Install dependencies required for Rails
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock into the container
COPY src/Gemfile src/Gemfile.lock ./

# Install the Ruby gems, including Rails
RUN bundle install

# Copy the main application
COPY src/ .

# Add a script to be executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Expose the port the app runs on
EXPOSE 3000

# Start the main process (Puma server by default in Rails)
CMD ["rails", "server", "-b", "0.0.0.0"]
