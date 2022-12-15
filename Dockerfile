FROM ruby:3.1.2

RUN apt update
RUN apt install libpq-dev libsqlite3-dev

COPY . .
RUN ./bin/setup skip-server

CMD ["ruby", "bin/rails", "server", "-b", "0.0.0.0"]