FROM petecheslock/sensu:latest
MAINTAINER Tsuyoshi Hoshino <guitarpopnot330+web@gmail.com>

# use sensu-embedded-ruby like systems-ruby
RUN rm -rf /usr/local/bin
RUN ln -s /opt/sensu/embedded/bin /usr/local/bin

# use curl-haxx-se's pem
RUN wget http://curl.haxx.se/ca/cacert.pem
RUN mv cacert.pem /opt/sensu/embedded/ssl/cert.pem

# install gem 'mail' (to use plugins/mailer.rb)
RUN gem install mail
