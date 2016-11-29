source "https://rubygems.org"

gem "rails", "~> 5.0.0"

gem "coffee-rails", "~> 4.2.0" # Rails 5.0 default
gem "jquery-rails"
gem "jquery-ui-rails"
gem "uglifier", ">= 1.3.0" # Rails 5.0 default

gem "sass-rails", "~> 5.0" # Rails 5.0 default

source "https://rails-assets.org" do
  gem "rails-assets-js-cookie"
  gem "rails-assets-mousetrap"
end

gem "non-stupid-digest-assets"

gem "pg", :platforms => [:ruby, :mingw]
gem "activerecord-jdbcpostgresql-adapter", ">= 1.3.0", :platforms => :jruby
gem "foreigner"

gem "diff-lcs"
gem "dalli"
gem "connection_pool"
gem "acts_as_versioned_rails3"
gem "geoip"
gem "exception_notification"
gem "will_paginate"
gem "will-paginate-i18n"
gem "sitemap_generator"
gem "daemons", :require => false
gem "newrelic_rpm"
gem "nokogiri"
gem "rails-i18n"
gem "addressable", :require => "addressable/uri"
gem "mini_magick"
gem "image_size"
gem "ruby-filemagic"
gem "streamio-ffmpeg"
gem "i18n-js", ">= 3.0.0.rc7"
gem "i18n-tasks"

group :standalone do
  platform :mri do
    gem "unicorn", :require => false
    gem "unicorn-worker-killer", :require => false
  end
  gem "puma", :platforms => [:jruby, :rbx, :mswin], :require => false
end

group :test do
  gem "rails-controller-testing"
end

gem "pry", :group => [:development, :test]

gem "jbuilder", "~> 2.5" # Rails 5.0 default

# Must be last.
gem "rack-mini-profiler", :group => :development
