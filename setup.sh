#!/bin/bash

mkdir -p /usr/local/src
git clone https://github.com/sstephenson/rbenv.git /usr/local/src/.rbenv
pushd /usr/local/src/.rbenv
git checkout 615f8443fe947f114fb358815b50978f6ab1881c
popd
git clone https://github.com/sstephenson/ruby-build.git /usr/local/src/.rbenv/plugins/ruby-build
pushd /usr/local/src/.rbenv/plugins/ruby-build
git checkout 476d09b66a14392989c3c65793428742e1d9f951
PATH=/usr/local/src/.rbenv/bin:$PATH
eval "$(rbenv init -)"
rbenv install 2.4.1
rbenv global 2.4.1
gem update -f rdoc ri
gem update
gem install -v 2.1.1 jekyll
gem install pandoc-ruby RedCloth
rbenv install 2.4.0
rbenv global 2.4.0
gem update -f rdoc ri
gem update
gem install -v 3.5.2 jekyll
gem install pandoc-ruby pygments.rb RedCloth jekyll-feed jekyll-paginate jekyll-paginate-multiple jekyll-redirect-from jekyll-sitemap
