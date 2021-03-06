#!/bin/bash

cd /usr/local/src
git clone https://github.com/sstephenson/rbenv.git rbenv
pushd rbenv
git checkout 615f8443fe947f114fb358815b50978f6ab1881c
popd
git clone https://github.com/sstephenson/ruby-build.git rbenv/plugins/ruby-build
pushd rbenv/plugins/ruby-build
git checkout 476d09b66a14392989c3c65793428742e1d9f951
export PATH=/usr/local/src/rbenv/bin:$PATH
export RBENV_ROOT=/usr/local/src/rbenv
eval "$(rbenv init -)"
rbenv install 2.4.1
rbenv global 2.4.1
gem update -f rdoc ri
gem install -v 2.5.3 jekyll
gem install pandoc-ruby RedCloth
rbenv install 2.4.0
rbenv global 2.4.0
gem update -f rdoc ri
gem install -v 3.5.2 jekyll
gem install pandoc-ruby pygments.rb RedCloth jekyll-feed jekyll-paginate jekyll-paginate-multiple jekyll-redirect-from jekyll-sitemap
chmod -R ugo+rx /usr/local/src/rbenv
