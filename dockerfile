# Use the official Jekyll builder image as the base image
FROM jekyll/builder:latest

# Set the working directory to the Jekyll site root directory
WORKDIR /srv/jekyll

# Copy the contents of the local project directory to the container
COPY . .

# Set permissions for the Jekyll site directory
RUN chown -R jekyll:jekyll /srv/jekyll

# Build the Jekyll site
RUN jekyll build --future

# Set the entry point to serve the Jekyll site (optional)
ENTRYPOINT ["jekyll", "serve"]

# Expose the port that Jekyll will run on
EXPOSE 4000

# Set the entry point to serve the Jekyll site
ENTRYPOINT ["jekyll", "serve", "--future"]