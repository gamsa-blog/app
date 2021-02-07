FROM ruby:2.6.5

ENV RAILS_PORT 3000

RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y nodejs yarn sqlite3

RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install
RUN yarn install --check-files
COPY . .

RUN rake assets:precompile

EXPOSE $RAILS_PORT

CMD rails server -b 0.0.0.0
