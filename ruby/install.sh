#!/bin/sh

command -v rvm >/dev/null 2>&1 || { gpg --keyserver hkp://keys.gnupg.net --recv-keys \
409B6B1796C275462A1703113804BB82D39DC0E3; \curl -sSL https://get.rvm.io | bash -s stable --ruby; \
source "$HOME/.rvm/scripts/rvm"; exit 1;}

rvm install ruby

rvm default

gem install bundler

