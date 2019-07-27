FROM node:9.8.0-alpine as node_builder

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm install

FROM ruby:2.5.3

RUN touch /etc/app-env

COPY vendor/checksums/skeema-1.1.2-checksums.txt /tmp

RUN apt-key adv --no-tty --recv-keys --keyserver keyserver.ubuntu.com 5072E1F5 && \
    echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-5.7" > /etc/apt/sources.list.d/mysql.list && \
    apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev mysql-client

RUN cd /tmp && \
    curl -LO https://github.com/skeema/skeema/releases/download/v1.1.2/skeema_1.1.2_linux_amd64.tar.gz && \
    sha256sum -c /tmp/skeema-1.1.2-checksums.txt --ignore-missing && \
    tar xf skeema_1.1.2_linux_amd64.tar.gz && \
    mv skeema /bin

WORKDIR /app

COPY Gemfile* /app/
COPY vendor/cache /app/vendor/cache
RUN gem install bundler 
RUN bundle install --local
RUN mkdir /app/log

COPY . .
COPY --from=node_builder /app/node_modules /app/node_modules
RUN bundle exec rake assets:precompile

EXPOSE 3000
CMD ["bundle", "exec", "puma"]
