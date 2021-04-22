FROM ruby:latest

# Description
# ===========
#
# This dockerfile provides you all required tools to run and package Zendesk Apps with 
# zendesk_apps_tools. 

ENV LC_CTYPE en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN gem install rake
RUN gem install zendesk_apps_tools

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
	 apt-get install -y nodejs
EXPOSE 4567	 
WORKDIR /data
