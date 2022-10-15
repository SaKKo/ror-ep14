FROM ruby:3.0.2-buster

RUN apt-get install -y libpq-dev

WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
ENV BUNDLE_FROZEN=true
RUN bundle install

COPY . .

RUN rm config/database.yml
COPY config/database.production.cloudrun.yml config/database.yml

ENV RAILS_LOG_TO_STDOUT=true

RUN chmod +x /usr/src/app/entrypoint_production.sh
ENTRYPOINT ["/usr/src/app/entrypoint_production.sh"]
