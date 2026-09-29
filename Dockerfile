# Match .ruby-version and the Ruby 3.3 series used by GitHub Pages CI.
FROM ruby:3.3.6-slim-bookworm

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential libcurl4 libssl-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Ignore host Bundler settings and keep gems out of the checkout. Frozen mode
# installs exactly Gemfile.lock and fails if the dependency files disagree.
ENV BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_IGNORE_CONFIG=1 \
    BUNDLE_FROZEN=true

WORKDIR /srv/jekyll
COPY Gemfile Gemfile.lock .ruby-version ./
RUN ruby -e 'abort "Update the Docker Ruby image to match .ruby-version" unless RUBY_VERSION == File.read(".ruby-version").strip' \
    && gem install bundler -v 2.5.22 --no-document \
    && bundle _2.5.22_ install --jobs 4 --retry 3

COPY . .

EXPOSE 4000 35729
ENTRYPOINT ["bundle", "exec", "jekyll"]
CMD ["serve", "--host", "0.0.0.0", "--port", "4000", "--livereload", "--force_polling", "--destination", "/tmp/jekyll-site", "--disable-disk-cache"]
